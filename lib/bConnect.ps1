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
        [version]$MinimumVersion="17.1.230.0"
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
        [Parameter(ValueFromPipelineByPropertyName)]
        [string][Alias('Host','Server')]
        $HostName="acme.org",
        [Parameter(ValueFromPipelineByPropertyName)]
        [string][Alias('User')]
        $UserName=($env:USERNAME,$env:USERDOMAIN -join '@'),
        [Parameter(ValueFromPipelineByPropertyName)]
        [securestring]$Password=$PSDefaultParameterValues["Invoke-Connect:Password"],
        [switch]$SkipCertificateCheck,
        [switch]$retrying
    )
    begin {
        if($PSDefaultParameterValues.Count -eq 5) { return }
    }
    process {
        $cmd='Invoke-Connect:'
        $ApiRoot="https://$HostName/bConnect"
        
        if($SkipCertificateCheck) { $PSDefaultParameterValues['Invoke-RestMethod:SkipCertificateCheck']=$true }
        
        if (-not $Password) {
            Write-Verbose -Message "No password provided"
            if(-not $retrying) {
                Get_ConnectCredentials -UserName $UserName |
                    Initialize-Connect -HostName $HostName -retrying <#-MinimumVersion $MinimumVersion#>
            }
        } else {
            'ApiRoot','UserName','Password' | % {
                if($value=Microsoft.PowerShell.Utility\Get-Variable -ValueOnly -Name $_){
                    $PSDefaultParameterValues."$cmd$_"=$value
                }
            }
            try {
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
            } catch {
                ($Error | % {$_.Exception.Message}) | Write-Warning
                $Error.Clear()
            }
            Write-Verbose -Message ("Default parameters for $cmd "+($PSDefaultParameterValues.Keys -like "$cmd*" -replace $cmd,'' -join ', '))
        }
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
        [ValidateSet("json","xml")]
            [string]$format="json",
        [Parameter(Position=1)]
        [ValidateSet("get","post","put","patch","delete")]
            [string]$method="get",
        [Parameter(Position=2)]
            [hashtable]$Parameters=@{},
        [Parameter(ValueFromPipeline)]
            [object]$Data,
        [version]$bConnectVersion,
        [uri]$ApiRoot='https://baraServer.MyDomain.local/bConnect',
        [string][Alias('User')]$UserName=($env:USERNAME,$env:USERDOMAIN -join '@'),
        [securestring]$Password,
        [pscredential]$Credentials
        
    )
    
    if(-not $Credentials) {
        $Credentials=if($Password){
            new-object System.Management.Automation.PSCredential $UserName,$Password
        } else {
            Get_ConnectCredentials
        }
        Write-Verbose "Invoking as $($Credentials.UserName)"
    }
    $paramStr=($Parameters.keys|? {$_ -inotin ([System.Management.Automation.PSCmdlet]::CommonParameters)}|% {"{0}={1}" -F $_,$Parameters.$_}) -join "&"
    [uri]$uri="$ApiRoot/v$bConnectVersion/$controller.$($format,$paramStr -join '?')"
    ### Achtung ohne klammern funktioniert mind. bei json-format das filtern �ber die pipeline nicht!!!
    (Invoke-RestMethod -Method $method -Uri $uri -Body (&("ConvertTo-$format") $data) -Credential $Credentials -ContentType "application/$format")
}