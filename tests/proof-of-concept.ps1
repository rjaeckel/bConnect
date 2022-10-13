[CmdletBinding()]param()
if ($NestedPromptLevel -eq 0) {

    Clear-Host
    <#
    Import-module ..
    Initialize-bConnect SERVER USER@DOMAIN -SkipCertificateCheck
    #>
    $script:cycles=0
    function script:cycle {
        [CmdletBinding()]param(
            [string]$Title=("#{0}" -F ++$script:cycles),
            [scriptblock]$Process
        )
        try {
           "Cycle $Title" | Write-Host -ForegroundColor Cyan
           #"" | Write-Host -BackgroundColor black -NoNewLine #-ForegroundColor $Host.UI.RawUI.ForegroundColor -BackgroundColor $Host.UI.RawUI.BackgroundColor
            & $Process
        } catch {
            $_
            #<#$_.Exception.Message |#> Write-Error -Message $_.Message -Exception $_.Exception
            #$_.ScriptStackTrace | Write-Error
        }
    }
    $PSDefaultParameterValues['*-b*:Verbose']=$VerbosePreference
    
    cycle Basic` Info -Process {
        $script:Info=Get-bInfo
        $Info
    }
    cycle Root-OrgUnits {
        $OUs = get-bOrgUnit
        $OUs | Where-Object ParentId -NotIn $OUs.Id |
               Select-Object Name,ID,ParentId |
               Sort-Object ParentId,@{E="Id";Ascending=$false} <#|
               Foreach-Object {
                   $_|Add-Member -NotePropertyName OUs ( Get-bOrgUnit -OrgUnit $_.Id | Select-Object Name,Id )
                   $_
               }#>
    }
    cycle Default-Client-OrgUnit {
        $script:ClientRoot = Get-bOrgUnit -Id C1A25EC3-4207-4538-B372-8D250C5D7908
        "{0} ({1})" -F $ClientRoot.Name,$ClientRoot.Id
        #$ClientRoot | Select-Object Name,*Id,*Path # -ExpandProperty Extension
    }

    cycle Endpoint -Process { # Endpoint
        $draft=New-bEndpoint -DisplayName bConnect-testClient -Type WindowsEndpoint -GuidOrgUnit $ClientRoot.Id -Domain mydomain.local
        $draft
        $existing = ($draft | Add-bEndpoint).Endpoint # Todo: not that nice, should return Entpoint instantly
        $existing # > $null
        $existing | Remove-bEndpoint
    }
    <#
    cycle -Process { # Application
        $draft = New-bApplication -By bConnect -Name testApp -For Windows10_x64,Windows8_x64,WindowsServer2012_x64,WindowsServer2016_x64
        $existing = $draft | Add-bApplication
        $existing # > $null
        $existing | Remove-bApplication
    }
    cycle -Process  { # OrgUnit
        $draft = New-bOrgUnit -Name bConnect-TestOU -ParentId $ClientRoot.Id
        $existing = $draft | Add-bOrgUnit
        $existing # > $null
        $existing | Remove-bOrgUnit
    } 
    cycle -Process  { # DynamicGroup
        $Ver=[version]$Info.bMSVersion
        $draft = New-bDynamicGroup -Name bMA-Old -Statement ("WHERE (clientagent_version < '{0}.{1}') " -F $Ver.Major,$Ver.Minor) -Comment 'Created by bConnect Tester'
        $existing = $draft | Add-bDynamicGroup
        $existing  # > $null
        "Found {0} Clients" -F (Get-bEndpoint -DynamicGroup $existing.Id).Count | Write-Host
        $existing | Remove-bDynamicGroup
    }
    cycle -Process  { # StaticGroup
        $EPs=(Get-bEndpoint |? OSVersionMajor -EQ 10).Id
        $draft = New-bStaticGroup -Name Win` 10 -EndpointIds $EPs -Comment "Created by bConnect Tester"
        $existing = $draft | Add-bStaticGroup
        $existing # > $null
        $existing | Remove-bStaticGroup
    }
    cycle -Process  { # JobInstance
        
    }
    
    #>
    $PSDefaultParameterValues.Clear()
}
