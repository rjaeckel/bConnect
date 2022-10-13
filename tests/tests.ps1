clear-host
<#Import-Module ./bConnect.psd1 # -Force

Initialize-bConnect itz-swv1.xd.uni-halle.de abewm@xd 
Search-bEndpoint test- | Get-bEndpoint |% {
    New-Object psobject -Property @{
        Endpoint=$_
        PendingJobs=Get-bJobInstance -EndpointId $_.Id |? State -NE [bConnect.Job.State]::FinishedSuccess
    }
} | fl

#Clear-bConnect


#>
. ../bConnect.psm1
#. ../lib/bTypes.ps1
function script:mkparam {
    [cmdletbinding(PositionalBinding=$false)]
    param(
        [parameter(ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [Alias('Type')]
        [type]$ParamType=[Object],
        [parameter(ValueFromPipeline)]
        [object]$Name,
        [parameter(ValueFromPipelineByPropertyName)]
        [switch]$Mandatory,
        [parameter(ValueFromPipelineByPropertyName)]
        [switch]$Positioned,
        [uint16]$startPosition=0
    )
    begin {
        $state=@{
            Position=[int]$startPosition
            ParamType=[object]
            Mandatory=[bool]$Mandatory
            Positioned=[bool]$Positioned
        }
        
    }
    process {
        $bound=$PSBoundParameters.Keys
        'ParamType','Mandatory','Positioned' |% {
            if($_ -in $bound) {
                "* $_ = {0}" -F $PSBoundParameters[$_] | Write-Host
                $state.$_=[string]$PSBoundParameters[$_]
            }
        }
        if($bound -contains 'Name' -and $Name -is 'string') {
            $pattr=@('ValueFromPipelineByPropertyName')
            if($state.Mandatory) {$pattr+='Mandatory'}
            if($state.Positioned) {$pattr+="Position="+($state.Position++)}
            "[parameter({0})][{1}]`${2}" -F ($pattr -join ','),$state.ParamType,$Name
        }
    }
}



function script:setableParameters {
    param(
        [string]$ForEntity,
        [switch]$New
    )
    # contains mandatory,positioned,setable per Object
    $ParametersByType=@{
        OrgUnit=@{
            mandatory=@([string],'Name',[guid],'ParentId')
            setable=@([string],'Comment',[object],'Extension')
        }
        OrgUnitExtension=@{
            setable=@(
                [string],
                'DIP','Domain','LocalAdminPassword',
                'SubnetMask','DefaultGateway','DnsServer','DnsServer2',
                'WinsServer','WinsServer2'
                [guid[]],
                'AutoInstallJobs','HardwareProfiles','RequestableJobs',
                [switch],'EnableDHCP','InheritAutoInstallJobs'
            )
        }
        DynamicGroup=@{
            mandatory=@([string],'Name','Statement')
            setable=@([string],'Comment',[guid],'ParentId')
        }
        StaticGroup=@{
            mandatory=@([string],'Name')
            setable=@([string],'Comment',[guid],'ParentId',[guid[]],'EndpointIds')
        }
        Endpoint=@{
            mandatory=@(
                [string],'DisplayName',
                [bConnect.Endpoint.Types],'Type',
                [guid],'GuidOrgUnit'
            )
            setable=@(
                # Comment_S_ instead of Comment
                [string],'Comments','PrimaryUser','HostName','Domain','PrimaryMac',
                         'UserCategory','SerialNumber','PublicKey',
                [uint32],'Options',
                [guid],'GuidHardwareProfile','GuidBootEnvironment',
                [datetime],'ComplianceCheckDisabledFrom','ComplianceCheckDisabledUntil',
                [switch],'ExtendedInternetMode',
                [bConnect.Endpoint.Owner],'Owner',
                [bConnect.Endpoint.ComplianceCheckCategory],'ComplianceCheckCategory',
                [bConnect.Endpoint.Mode],'Mode'
                )
        }
        Variable=@{
            mandatory=@([string],'Category','Name')
            positioned=@([string],'Value')
            setable=@([switch],'UseDefault')
        }
        
        Application=@{
            mandatory=@(
                [string],'Name','Vendor',
                [bConnect.Application.ValidForOS[]],'ValidForOs'
            )
            setable=@(
                [string],'Comment','Category','Version','ConsistencyChecks',
                [guid],'ParentId',
                [float],'Cost',
                [object],'Installation','Uninstallation', #ApplicationData validation???
                [object[]],'Files','Licenses','AUT',
                [bConnect.Application.SecurityContext],'SecurityContext'
            )
        }
        ApplicationData=@{ #switch between un-/install
            mandatory=@([string],'Command','Parameter')
            setable=@(
                [string],'ResponseFile','EngineFile','Engine', #engine has three options
                [object],'Options','UserSettings' #both require validation depending on un-/install
            )
        }
        ApplicationOption=@{ #uninstall
            setable=@(
                [switch],'RemoveUnknownSoftware','UseBbt','CopyLocally','DisableInputDevices',
                [bConnect.Application.RebootBehaviour],'RebootBehaviour',
                [bConnect.Application.VisibleExecution],'VisibleExecution'
            )
        }
        ApplicationInstallOption=@{#extends ApplicationOption
            setable=@(
                [string],'Target',
                [switch],'AllowReinstall','DontSetAsInstalled','MapShare','Target'
            )
        }
        ApplicationUserSettings=@{#uninstall
            setable=@(
                [string],'baramundiDeployScript',
                [switch],'ValidForInstallUser','RunBdsVisible','CopyScriptToClient'
            )
        }
        ApplicationInstallUserSettings=@{#extends ApplicationUserSettings
            setable=@(
                [switch],'ExecuteAtEveryLogin'
            )
        }
        ApplicationFile=@{
            mandatory=@([bConnect.Application.FileType],'Type',[string],'Source')
        }
        ApplicationLicense=@{
            mandatory=@([string],'LicenseKey',[uint16],'Count','Offline')
        }
        AutFileRule=@{
            setable=@(
                [string],'FileName','Date','Version','Company','ProductName',
                         'ProductVersion','InternalName','Language',
                         'FileDescription','FileVersionNumeric','CommandLine',
                [uint64],'FileSize','CRC'
            )
        }
    } #end parameters hash
    $build={
        if($ParametersByType.$ForEntity.mandatory) {
            $params+=$ParametersByType.$ForEntity.mandatory|
                mkparam -positioned -mandatory:$New
        }
        if($ParametersByType.$ForEntity.positioned) {
            $params+=$ParametersByType.$ForEntity.positioned|
                mkparam -positioned -StartPosition $params.Count
        }
        if($ParametersByType.$ForEntity.setable) {
            $params+=$ParametersByType.$ForEntity.setable|
                mkparam
        }
    }
    [string[]]$params=@()

    switch -Wildcard ($ForEntity) {
        * { 
            . $build
        }
        OrgUnit {
            $params=$params -replace ']\$Extension$','][ValidateScript({$XXX|New-OrgUnitExtension})]$Extension'
        }
        Application {
            $params=$params `
                -replace ']\$Files$','][ValidateScript({$XXX|New-ApplicationFile})]$Files' `
                -replace ']\$Licenses$','][ValidateScript({$XXX|New-ApplicationLicense})]$Licenses' `
                -replace ']\$AUT$','][ValidateScript({$XXX|New-AutFileRule})]$AUT' `
                -replace ']\$Installation$','][ValidateScript({$XXX|New-ApplicationInstallData})]$Installation' `
                -replace ']\$Uninstallation$','][ValidateScript({$XXX|New-ApplicationUninstallData})]$Uninstallation'
        }
        * {
            $params=$params -replace 'XXX','_'
        }
    }
    $params
}

# actual entities:
# new-*
# OrgUnit,DynamicGroup,StaticGroup,Endpoint,Application

# data entities:
# use-*?? set-*
# OrgUnitExtension,
# ApplicationData,Application[Install]Option,Application[Install]UserSettings
# add-*
# Variable
# ApplicationFile,ApplicationLicense,AutFileRule



& {

    "OrgUnit","OrgUnitExtension","DynamicGroup","StaticGroup","Endpoint","Variable",
    "Application","ApplicationFile","ApplicationLicense",
    "ApplicationInstallData",        "ApplicationUninstallData",
    "ApplicationInstallOption",      "ApplicationUninstallOption",
    "ApplicationInstallUserSettings","ApplicationUninstallUserSettings",
    "AutFileRule" | % {
        "New-$_"
        script:setableParameters -New -ForEntity $_
    }
    #script:setableParameters -ForEntity OrgUnit -New
    <#
    $params = (
        [pscustomobject]@{positioned=$true;mandatory=$true},
        [string], 'DIP','Domain',
        [pscustomobject]@{positioned=$false;mandatory=$false},
        'LocalAdminPassword','SubnetMast','Defaultgateway',
        'DnsServer','DnsServer2','DnsDomain','WinsServer','WinsServer2',
        [switch],
        'EnableDHCP','InheritAutoInstallJobs',
        [guid[]],
        'AutoInstallJobs','HardwareProfiles','RequestableJobs' |
    mkparam -Verbose ) -join ",`n"

    . ([scriptblock]::create("function test-params {param($params)process{`$PSBoundParameters}}"))
    (Get-Help test-params).Synopsis
    [pscustomobject]@{DIP='testdip';domain='xd.uni-halle.de'}|test-params
    #>
}