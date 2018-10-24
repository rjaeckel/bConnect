[CmdletBinding()]param()
if ($NestedPromptLevel -eq 0) {

    Clear-Host
    <#
    Import-module ..
    Initialize-bConnect SERVER USER@DOMAIN -SkipCertificateCheck
    #>
    function cycle {
        [CmdletBinding()]param([scriptblock]$Process)
        try { & $Process } catch { $_.Exception.Message,$_.ScriptStackTrace | Write-Error }
    }
    $Info=Get-bInfo
    $Info
    $ClientRoot = Get-bOrgUnit -Id C1A25EC3-4207-4538-B372-8D250C5D7908
    $ClientRoot | Select-Object Name,*Id,*Path # -ExpandProperty Extension
    
    cycle { # Endpoint
        $draft=New-bEndpoint -DisplayName bConnect-testClient -Type WindowsEndpoint -GuidOrgUnit $ClientRoot.Id -Domain mydomain.local
        $existing = ($draft | Add-bEndpoint).Endpoint # Todo: not that nice, should return Entpoint instantly
        $existing > $null
        $existing | Remove-bEndpoint
    }
    cycle { # Application
        $draft = New-bApplication -By bConnect -Name testApp -For Windows10_x64,Windows8_x64,WindowsServer2012_x64,WindowsServer2016_x64
        $existing = $draft | Add-bApplication
        $existing > $null
        $existing | Remove-bApplication
    }
    cycle { # OrgUnit
        $draft = New-bOrgUnit -Name bConnect-TestOU -ParentId $ClientRoot.Id
        $existing = $draft | Add-bOrgUnit
        $existing > $null
        $existing | Remove-bOrgUnit
    }#>
    cycle { # DynamicGroup
        $Ver=[version]$Info.bMSVersion
        $draft = New-bDynamicGroup -Name bMA-Old -Statement ("WHERE (clientagent_version < '{0}.{1}') " -F $Ver.Major,$Ver.Minor) -Comment 'Created by bConnect Tester'
        $existing = $draft | Add-bDynamicGroup
        $existing  > $null
        "Found {0} Clients" -F (Get-bEndpoint -DynamicGroup $existing.Id).Count | Write-Host
        $existing | Remove-bDynamicGroup
    }
    cycle { # StaticGroup
        $EPs=(Get-bEndpoint |? OSVersionMajor -EQ 10).Id
        $draft = New-bStaticGroup -Name Win` 10 -EndpointIds $EPs -Comment "Created by bConnect Tester"
        $existing = $draft | Add-bStaticGroup
        $existing > $null
        $existing | Remove-bStaticGroup
    }
    cycle { # JobInstance
        
    }
}
