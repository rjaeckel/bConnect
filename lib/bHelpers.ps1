Function Script:Test-MacAddr(
    <#
    .Synopsis
    (internal)
    #>
    
    [Parameter(Mandatory,ValueFromPipeline)][string]$MAC) {
    Process { $MAC -match "\b[A-F0-9]{2}(?:\:[A-F0-9]{2}){5}\b" }
}
Function Script:ExpandEnumFlags {
    <#
    .Synopsis
    (internal)
    #>
    
    [cmdletbinding()]param(
        [Parameter(Mandatory,Position=0)][ValidateScript({$_.BaseType -eq [System.Enum]})][type]$As,
        [Parameter(Mandatory,Position=1,ValueFromPipeline)][uint32]$Value
    )
    process {
        [System.Enum]::GetValues($As) | % { if($Value -band $_) {$_} }
    }
}
Function Expand-EndpointOptions {
    <#
    .Synopsis
    Helper to split up EndpointOptions
    #>

    [OutputType([bConnect.Endpoint.ClientOptions],[bConnect.Endpoint.UserJobOptions],[bConnect.Endpoint.PrimaryUserOptions])]
    [cmdletbinding()]param(
        [parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [uint64]$options
    )
    process {
        [bConnect.Endpoint.PrimaryUserOptions]($options -band [bConnect.Endpoint.PrimaryUserOptions]::NeverUpdate)
        [bConnect.Endpoint.UserJobOptions]($options -band [bConnect.Endpoint.UserJobOptions]::ExecuteForPrimaryUser)
        $Options|ExpandEnumFlags $([bConnect.Endpoint.Clientoptions])
    }
}
Function Merge-EndpointOptions {
    <#
    .Synopsis
    Helper to join up EndpointOptions
    #>

    [cmdletbinding()]param(
        [Parameter(ValueFromPipeline)]
        [bConnect.Endpoint.ClientOptions]$ClientOptions,
        [Parameter(ValueFromPipeline)]
        [bConnect.Endpoint.PrimaryUserOptions]$UserOptions,
        [Parameter(ValueFromPipeline)]
        [bConnect.Endpoint.UserJobOptions]$UserJobOptions
    )
    begin { [uint32]$res = 0 }
    process {
        $res=$res -bor $ClientOptions -bor $UserOptions -bor $UserJobOptions
    }
    end {$res}
}


<#
 # object helpers
 #>

Function New-OrgUnit {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding()]param(
        [parameter(ParameterSetName='update',Mandatory)][switch]$update,

        [parameter(ValueFromPipelineByPropertyName,ParameterSetName='update')]
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='new',Mandatory,Position=0)]
        [string]$Name,
        [parameter(ValueFromPipelineByPropertyName,ParameterSetName='update')]
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='new',Mandatory,Position=1)]
        [guid]$ParentId,

        [Parameter(ValueFromPipelineByPropertyName)][string]$Comment,
        [Parameter(ValueFromPipelineByPropertyName)][object]$Extension
    )

    $PSBoundParameters.Remove($PSCmdlet.ParameterSetName) > $null
    New-Object psobject -Property $PSBoundParameters
}
Function New-OrgUnitExtension {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding(PositionalBinding=$false)]param(
        [Parameter(ValueFromPipelineByPropertyName)][string]$DIP,
        [Parameter(ValueFromPipelineByPropertyName)][string]$Domain,
        [Parameter(ValueFromPipelineByPropertyName)][string]$LocalAdminPassword,
        [Parameter(ValueFromPipelineByPropertyName)][switch]$EnableDHCP,
        [Parameter(ValueFromPipelineByPropertyName)][switch]$InheritAutoInstallJobs,
        [Parameter(ValueFromPipelineByPropertyName)][string]$SubnetMast,
        [Parameter(ValueFromPipelineByPropertyName)][string]$Defaultgateway,
        [Parameter(ValueFromPipelineByPropertyName)][string]$DnsServer,
        [Parameter(ValueFromPipelineByPropertyName)][string]$DnsServer2,
        [Parameter(ValueFromPipelineByPropertyName)][string]$DnsDomain,
        [Parameter(ValueFromPipelineByPropertyName)][string]$WinsServer,
        [Parameter(ValueFromPipelineByPropertyName)][string]$WinsServer2,
        [Parameter(ValueFromPipelineByPropertyName)][guid[]]$AutoInstallJobs,
        [Parameter(ValueFromPipelineByPropertyName)][guid[]]$HardwareProfiles,
        [Parameter(ValueFromPipelineByPropertyName)][guid[]]$RequestableJobs
    )
    New-Object psobject -Property $PSBoundParameters
}
Function New-DynamicGroup {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding()]param(
        [Parameter(ParameterSetName='update',Mandatory)][switch]$update,

        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='update')]
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='new',Mandatory,Position=0)]
        [string]$Name,
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='update')]
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='new',Mandatory,Position=1)]
        [string]$Statement,
        [Parameter(ValueFromPipelineByPropertyName)][guid]$ParentId,
        [Parameter(ValueFromPipelineByPropertyName)][string]$Comment
    )
    $PSBoundParameters.Remove($PSCmdlet.ParameterSetName) > $null
    New-Object psobject -Property $PSBoundParameters
}
Function New-StaticGroup {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding()]param(
        [parameter(ParameterSetName='update',Mandatory)][switch]$update,
        [parameter(ValueFromPipelineByPropertyName,ParameterSetName='update')]
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='new',Mandatory,Position=0)]
        [string]$Name,
        [Parameter(ValueFromPipelineByPropertyName)][guid]$ParentId,
        [Parameter(ValueFromPipelineByPropertyName)][guid[]]$EndpointIds,
        [Parameter(ValueFromPipelineByPropertyName)][string]$Comment
    )
    $PSBoundParameters.Remove($PSCmdlet.ParameterSetName) > $null
    New-Object psobject -Property $PSBoundParameters
}
Function New-Endpoint {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding()]param(
        [parameter(ParameterSetName='update',Mandatory)][switch]$update,

        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='update')]
        [Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='new',Position=0)]
        [string]$DisplayName,
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='update')]
        [Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='new',Position=1)]
        [bConnect.Endpoint.Type]$Type,
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='update')]
        [Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='new',Position=2)]
        [guid]$GuidOrgUnit,

        [Parameter(ValueFromPipelineByPropertyName)][string]$Comments,
        [Parameter(ValueFromPipelineByPropertyName)][string]$PrimaryUser,
        [Parameter(ValueFromPipelineByPropertyName)][string]$Hostname=$DisplayName,
        [Parameter(ValueFromPipelineByPropertyName)][string]$Domain,
        [Parameter(ValueFromPipelineByPropertyName)][uint32]$Options,
        [Parameter(ValueFromPipelineByPropertyName)][ValidateScript({$_|Test-MacAddr})][string]$PrimaryMac,
        [Parameter(ValueFromPipelineByPropertyName)][guid]$GuidHardwareProfile,
        [Parameter(ValueFromPipelineByPropertyName)][guid]$GuidBootEnvironment,
        [Parameter(ValueFromPipelineByPropertyName)][string]$UserCategory,
        [Parameter(ValueFromPipelineByPropertyName)][bConnect.Endpoint.Owner]$Owner,
        [Parameter(ValueFromPipelineByPropertyName)][bConnect.Endpoint.ComplianceCheckCategory]$ComplianceCheckCategory,
        [Parameter(ValueFromPipelineByPropertyName)][datetime]$ComplianceCheckDisabledFrom,
        [Parameter(ValueFromPipelineByPropertyName)][datetime]$ComplianceCheckDisabledUntil,
        [Parameter(ValueFromPipelineByPropertyName)][string]$SerialNumber,
        [Parameter(ValueFromPipelineByPropertyName)][string]$PublicKey,
        [Parameter(ValueFromPipelineByPropertyName)][switch]$ExtendedInternetMode,
        [Parameter(ValueFromPipelineByPropertyName)][bConnect.Endpoint.Mode]$Mode
        
    )
    $PSBoundParameters.Remove($PSCmdlet.ParameterSetName) > $null
    
    New-Object psobject -Property $PSBoundParameters
}
Function New-Variable {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding()]param(
        [Parameter(ValueFromPipelineByPropertyName,Mandatory,Position=0)][string]$Category,
        [Parameter(ValueFromPipelineByPropertyName,Mandatory,Position=1)][string]$Name,
        [Parameter(ValueFromPipelineByPropertyName,Position=2,ParameterSetName='value')][string]$Value="",
        [Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='defaults')][switch]$UseDefault,
        [Parameter(ValueFromPipelineByPropertyName)][bConnect.Variable.Type]$Type="String"
        
    )
    Process {
        New-Object psobject -Property $PSBoundParameters
    }
}

Function New-Application {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding()]param(
        [parameter(ParameterSetName='update',Mandatory)][switch]$update,

        [parameter(ParameterSetName='update',ValueFromPipelineByPropertyName)]
        [Parameter(ParameterSetName='new',Mandatory,ValueFromPipelineByPropertyName,Position=0)]
        [Alias('By')]
        [string]$Vendor,
        [parameter(ParameterSetName='update',ValueFromPipelineByPropertyName)]
        [Parameter(ParameterSetName='new',Mandatory,ValueFromPipelineByPropertyName,Position=1)]
        [string]$Name,
        [parameter(ParameterSetName='update',ValueFromPipelineByPropertyName)]
        [Parameter(ParameterSetName='new',Mandatory,ValueFromPipelineByPropertyName,Position=2)]
        [Alias('OS','For')]
        [bConnect.Application.ValidForOS[]]$ValidForOS,
        
        [parameter(ValueFromPipelineByPropertyName)][string]$Comment,
        [parameter(ValueFromPipelineByPropertyName)][string]$Category,
        [parameter(ValueFromPipelineByPropertyName)][string]$Version,
        [parameter(ValueFromPipelineByPropertyName)][guid]$ParentId,
        [parameter(ValueFromPipelineByPropertyName)][switch]$EnableAUT,
        [parameter(ValueFromPipelineByPropertyName)][ValidateScript({$_|New-bApplicationData -install})][object][Alias('InstallationData')]$Installation,
        [parameter(ValueFromPipelineByPropertyName)][ValidateScript({$_|New-bApplicationData})][object][Alias('UninstallationData')]$Uninstallation,
        [parameter(ValueFromPipelineByPropertyName)][string]$ConsistencyChecks,
        [parameter(ValueFromPipelineByPropertyName)][bConnect.Application.SecurityContext]$SecurityContext,
        [parameter(ValueFromPipelineByPropertyName)][float]$Cost,
        [parameter(ValueFromPipelineByPropertyName)][ValidateScript({$_|New-bApplicationFile})][object[]]$Files,
        [parameter(ValueFromPipelineByPropertyName)][ValidateScript({$_|New-bApplicationLicense})][object[]]$Licenses,
        [parameter(ValueFromPipelineByPropertyName)][ValidateScript({$_|New-bAutFileRule})][object[]]$AUT
    )
    $PSBoundParameters.Remove($PSCmdlet.ParameterSetName) > $null
    New-Object psobject -Property $PSBoundParameters
    <#$object = New-Object psobject -Property $PSBoundParameters
    if($object.ValidForOs) {
        $object.ValidForOS = ,($object.ValidForOS |% toString)
    }
    $object#>

}
Function New-ApplicationFile {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding()]param(
        [parameter(ValueFromPipelineByPropertyName,Mandatory)][string]$Source,
        [parameter(ValueFromPipelineByPropertyName,Mandatory)]
        #[ValidateSet("File","FolderWithSubFolders","SingleFolder")]
        [bConnect.Application.FileType]$Type
    )
    process {
        New-Object psobject -Property $PSBoundParameters
    }
}
Function New-ApplicationLicense {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding()]param(
        [parameter(Mandatory,ValueFromPipelineByPropertyName)][string]$LicenseKey,
        [parameter(ValueFromPipelineByPropertyName)][uint16]$Count=0,
        [parameter(ValueFromPipelineByPropertyName)][uint16]$Offline=0
    )
    process {
        New-Object psobject -Property $PSBoundParameters
    }
}
Function New-AutFileRule {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding(PositionalBinding=$false)]param(
        [parameter(ValueFromPipelineByPropertyName)][string]$FileName,
        [parameter(ValueFromPipelineByPropertyName)][uint64]$FileSize,
        [parameter(ValueFromPipelineByPropertyName)][string]$Date,
        [parameter(ValueFromPipelineByPropertyName)][uint64]$CRC,
        [parameter(ValueFromPipelineByPropertyName)][string]$Version,
        [parameter(ValueFromPipelineByPropertyName)][string]$Company,
        [parameter(ValueFromPipelineByPropertyName)][string]$ProductName,
        [parameter(ValueFromPipelineByPropertyName)][string]$ProductVersion,
        [parameter(ValueFromPipelineByPropertyName)][string]$InternalName,
        [parameter(ValueFromPipelineByPropertyName)][string]$Language,
        [parameter(ValueFromPipelineByPropertyName)][string]$FileDescription,
        [parameter(ValueFromPipelineByPropertyName)][string]$FileVersionNumeric,
        [parameter(ValueFromPipelineByPropertyName)][string]$CommandLine
    )
    process {
        New-Object psobject -Property $PSBoundParameters
    }
}
Function New-ApplicationData {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding(DefaultParameterSetName='all')]param(
        [Parameter(Mandatory,ParameterSetName='install')][switch]$install,
        [parameter(ValueFromPipelineByPropertyName,Position=0)][string]$Command,
        [parameter(ValueFromPipelineByPropertyName,Position=1)][string]$Parameter,
        [parameter(ValueFromPipelineByPropertyName)][string]$ResponseFile,
        [parameter(ValueFromPipelineByPropertyName)][string][ValidateSet('baramundi Deploy Package','Rational Visual Test 6.5','baramundi Deploy Script')]$Engine,
        [parameter(ValueFromPipelineByPropertyName)][string]$EngineFile,
        [parameter(ValueFromPipelineByPropertyName)][object][ValidateScript({$_|New-bApplicationOption -install:$install})]$Options, # switch between un-/install 
        [parameter(ValueFromPipelineByPropertyName)][object][ValidateScript({$_|New-bApplicationUserSettings -install:$install})]$UserSettings # switch between un-/install 
    )
    process {
        $PSBoundParameters.Remove('install') > $null
        New-Object psobject -Property $PSBoundParameters
    }
}
Function New-ApplicationOption {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding(DefaultParameterSetName='all')]param(
        [Parameter(Mandatory,ParameterSetName='install')][switch]$install,
        [parameter(ValueFromPipelineByPropertyName)][bConnect.Application.RebootBehaviour]$RebootBehaviour,
        [parameter(ValueFromPipelineByPropertyName)][switch]$RemoveUnknownSoftware,
        [parameter(ValueFromPipelineByPropertyName)][switch]$UseBbt,
        [parameter(ValueFromPipelineByPropertyName)][bConnect.Application.VisibleExecution]$VisibleExecution,
        [parameter(ValueFromPipelineByPropertyName)][switch]$CopyLocally,
        [parameter(ValueFromPipelineByPropertyName)][switch]$DisableInputDevices,
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='install')][switch]$AllowReinstall,
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='install')][switch]$DontSetAsInstalled,
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='install')][switch]$MapShare,
        [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='install')][string]$Target
    )
    process {
        $PSBoundParameters.Remove('install') > $null
        New-Object psobject -Property $PSBoundParameters
    }
}

Function New-ApplicationUserSettings {
    <#
    .Synopsis
    Creates draft object in memory
    #>

    [cmdletbinding(DefaultParameterSetName='all')]param(
        [Parameter(Mandatory,ParameterSetName='install')][switch]$install,
        [parameter(ValueFromPipelineByPropertyName)][string]$baramundiDeployScript,
        [parameter(ValueFromPipelineByPropertyName)][switch]$validForInstallUser,
        [parameter(ValueFromPipelineByPropertyName)][switch]$RunBdsVisible,
        [parameter(ValueFromPipelineByPropertyName)][switch]$CopyScriptToClient,
        [parameter(ValueFromPipelineByPropertyName,ParameterSetName='install')][switch]$ExecuteAtEveryLogin
    )
    process{
        $PSBoundParameters.Remove('install') > $null
        New-Object psobject -Property $PSBoundParameters
    }
}