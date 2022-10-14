#!/opt/microsoft/powershell/7/pwsh
Function Script:Get_ConnectCredentials {
    <#
    .Synopsis
    internal
    #>
    [cmdletbinding()]param (
        [string]$UserName=($env:USERNAME,$env:USERDOMAIN -join '@')
    )
    Write-Verbose "Requesting credentials for $UserName"
    Get-Credential -UserName $UserName -Message "bConnect API Credentials"
}
function Clear-Connect {
    <#
    .Synopsis
    Clear the memory from your server connection
    #>
    [CmdletBinding()]param()
    process {
        $PSDefaultParameterValues.Clear()
    }
}
Function Test-Connect {
    <#
    .Synopsis
    Verify the version of the server against your scripts
    #>
    [cmdletbinding(PositionalBinding=$false)]
    param(
        [version]$bMSVersion="17.1.230.0",
        [version]$bConnectVersion="1.0"
    )
    process {
        Write-Verbose -Message "Trying to receive information from backend"
        (($Versions=Get-Info) | Get-Member -Name *Version).Name | % {
            $PSDefaultParameterValues."$cmd$_"=$Versions.$_
            $_,$Versions.$_ -join ': '|Write-Verbose
        }
        if($MinimumVersion -gt $Versions.bMSVersion) {
            throw "The version of bMS outdated. Expected $MinimumVersion but got "+$Versions.bMSVersion
        } elseif ($MinimumVersion -lt $Versions.bMSVersion) {
            throw "The powershell module could be outdated. Expected $MinimumVersion but got "+$Versions.bMSVersion
        }
    }
}
Function Initialize-Connect {
    <#
    .Synopsis
    Setup this module for use against your server
    #>
    [CmdletBinding()]param(
        [Parameter(ValueFromPipelineByPropertyName,Mandatory)]
          [string][Alias('Host','Server')]$HostName,
        [Parameter(ValueFromPipelineByPropertyName)]
          [string][Alias('User')]$UserName=($env:USERNAME,$env:USERDOMAIN -join '@'),
        [Parameter(ValueFromPipelineByPropertyName,Mandatory)]
          [securestring]$Password,
        [switch]$SkipCertificateCheck
    )
    begin {
        if($PSDefaultParameterValues.Count -eq 4) { return }
    }
    process {
        $iR='Invoke-RestMethod:'
        $iC='Invoke-Connect:'
        try {
            if($SkipCertificateCheck) { $PSDefaultParameterValues."${iR}SkipCertificateCheck"=$true }

            $PSDefaultParameterValues."${iR}Credential"=new-object System.Management.Automation.PSCredential $UserName,$Password
            
            $PSDefaultParameterValues."${iC}ApiRoot"="https://$HostName/bConnect"
            $Info=Get-bInfo
            $PSDefaultParameterValues."${iC}bConnectVersion"=$Info.bConnectVersion
            $Info
        } catch {
            Throw $_
            ($Error | % {$_.Exception.Message}) | Write-Warning
            $Error.Clear()
        }
        Write-Verbose -Message ("Default parameters for $cmd "+($PSDefaultParameterValues.Keys -like "$cmd*" -replace $cmd,'' -join ', '))
    }
}
Function Invoke-Connect {
    <#
    .Synopsis
    (internal) Invoke webrequest against bConnect API
    #>
    [cmdletbinding(PositionalBinding=$false)]param(
        [Parameter(Mandatory,Position=0)]
        [ValidateSet("../Version","../Info","Search","OrgUnits","DynamicGroups","StaticGroups","Endpoints","Jobs","JobInstances",`
                     "HardwareProfiles","BootEnvironment","Variables","Apps","Icons","Applications","KioskJobs",`
                     "InventoryDataRegistryScans","InventoryDataFileScans","InventoryDataWMIScans","InventoryDataCustomScans","InventoryDataSNMPScans",`
                     "InventoryDataHardwareScans","InventoryOverviews","InventoryAppScans","SoftwareScanRules","EndpointInvSoftware",
                     "UniversalDynamicGroup","ServerState","EndpointSecrets")]
            [string]$controller,
        <#[ValidateSet( "json" )] #, "xml")]
            [string]$format="json",#>
        [Parameter(Position=1)]
        [ValidateSet("get","post","put","patch","delete")]
            [string]$method="get",
        [Parameter(Position=2)]
            [hashtable]$Parameters=@{},
        [Parameter(ValueFromPipeline)]
            [object]$Data,
        [Parameter(Mandatory)]
            [uri]$ApiRoot,
            
            [version]$bConnectVersion
        
        
    )
    $paramStr=($Parameters.keys|? {$_ -inotin ([System.Management.Automation.PSCmdlet]::CommonParameters)}|% {"{0}={1}" -F $_,$Parameters.$_}) -join "&"
    [uri]$uri="$ApiRoot/v$bConnectVersion/$controller.json?$paramStr"
    ### Achtung ohne klammern funktioniert mind. bei json-format das filtern �ber die pipeline nicht!!!
    [string]$data_json = ConvertTo-Json $Data -EnumsAsStrings -Compress
    "$($method.ToUpper()) $uri" | Write-Verbose
    $res=(Invoke-RestMethod -Method $method -Uri $uri -Body $data_json -ContentType "application/json" -Verbose:$false)
    
    #    if($data_json) { "_${data_json}_"|Write-Host -ForegroundColor Magenta  -ea Ignore }
    #    if($res) {$res|convertto-json -Compress |write-host -ForegroundColor Cyan -ea Ignore }
    
    
    #$res|out-host #-ForegroundColor Cyan -ea Ignore
    $res
}

Function Export-ConnectCredentials {
    [CmdletBinding()]param(
        [Parameter(Mandatory)]
        [System.IO.FileInfo]$Path,
        [switch]$Force,
        [switch]$Confirm
    )
    process {
        if($PSDefaultParameterValues.Count -gt 1) {
            $PSDefaultParameterValues | Export-Clixml @PSBoundParameters
        } else {
            throw "Initialize-bConnect first!"
        }
    }
}
Function Import-ConnectCredentials {
    [cmdletbinding()]param(
        [Parameter(Mandatory)]
        [ValidateScript({$_.Exists},ErrorMessage="File does not exist: {0}")]
        [System.IO.FileInfo]$Path
    )
    process {
        $data = Import-Clixml @PSBoundParameters -ea stop
        $data.keys |% { $PSDefaultParameterValues[$_]=$data.$_ } >$null
        "{0} parameters setup" -F $PSDefaultParameterValues.Count|Write-Verbose
        get-info
    }
}