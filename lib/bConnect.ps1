Function Script:Get_ConnectCredentials {
    [cmdletbinding()]param (
        [string]$UserName=($env:USERNAME,$env:USERDOMAIN -join '@')
    )
    Write-Verbose "Requesting credentials for $UserName"
    Get-Credential -UserName $UserName -Message "bConnect API Credentials"
}
function Clear-Connect {
    [CmdletBinding()]param()
    process {
        $PSDefaultParameterValues.Clear()
    }
}
Function Test-Connect {
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
    [cmdletbinding(PositionalBinding=$false)]param(
        [Parameter(Mandatory,Position=0)]
        [ValidateSet("../Version","../Info","Search","OrgUnits","DynamicGroups","StaticGroups","Endpoints","Jobs","JobInstances",`
                     "HardwareProfiles","BootEnvironment","Variables","Apps","Icons","Applications",`
                     "InventoryDataRegistryScans","InventoryDataFileScans","InventoryDataWMIScans","InventoryDataCustomScans","InventoryDataSNMPScans",`
                     "InventoryDataHardwareScans","InventoryOverviews","InventoryAppScans","SoftwareScanRules","EndpointInvSoftware")]
            [string]$controller,
        [ValidateSet( "json" )] #, "xml")]
            [string]$format="json",
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
    $paramStr=($Parameters.keys|? {$_ -inotin $Script:IgnoreParameters}|% {"{0}={1}" -F $_,$Parameters.$_}) -join "&"
    [uri]$uri="$ApiRoot/v$bConnectVersion/$controller.$($format,$paramStr -join '?')"
    ### Achtung ohne klammern funktioniert mind. bei json-format das filtern �ber die pipeline nicht!!!
    [string]$data_json = (& "ConvertTo-$format" $data -EnumsAsStrings -Compress)
    $data_json|Write-Host -ForegroundColor Magenta  -ea Ignore
    #$PSDefaultParameterValues | Out-Host

    $res=(Invoke-RestMethod -Method $method -Uri $uri -Body $data_json -ContentType "application/$format")
    $res|convertto-json -Compress|write-host -ForegroundColor Cyan -ea Ignore
    #$res|out-host #-ForegroundColor Cyan -ea Ignore
    $res
}
