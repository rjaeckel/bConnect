#!/opt/microsoft/powershell/7/pwsh

Start-Job {

    function _syntax {
        [CmdletBinding()]
        param(
            [parameter(ValueFromPipeline,Mandatory)][string]$cmd,
            [int]$header=4
        )
        process{
            $help=Get-Help($cmd)
            '#'*$header+" "+$cmd
            $s=$help.Synopsis.trim()
            if($s -ne "") {
                if($s -match '\[\<CommonParameters\>\]') { 
                    '```';$s;'```'
                } else {
                    "> $s "
                    '```';$help.Syntax;'```'
                }
            } else {
                '```';$help.Syntax;'```'
            }
            $help.Description
            '#'+('#'*$header)+" Parameters"
            ""
            params $help
            ""
        }} #end _syntax
        
        function params ($help) {
            <#
            .SYNOPSIS
            displays parameter definitions based on (get-help <function>).Parameters #>
        
            $help.Parameters.parameter|Sort-Object Position,Required,Name |
            Foreach-Object {
                $param = $_
                '* {0} `<{1}>`' -F $param.Name,$param.Type.Name
                if($param.Description.Text) { "  > {0}" -F $param.Description.Text }
                '  ```'
                'Position Required PipelineInput Aliases' -split ' '|
                Foreach-Object {
                    "  {0} : {1}" -F $_,$param.$_
                }
                '  ```'
                ""
            }
        }
    
        Remove-module bConnect -ea ignore
        Import-Module ./bConnect.psd1 -Force -ArgumentList {
            $_debug_cmdlets = "*"
        } -ea Stop -Debug -Verbose

        Push-Location doc -ea STOP

        $Module_CMDs = Get-Command -Module bConnect | Sort-Object Noun,Verb
        $_scaffolding_CMDs=($Module_CMDs |? Noun -EQ "") -match "b(le|doc|init)|Enum|mk_"
        $API_CMDs=$Module_CMDs|? Noun -IN bConnect,bInfo,bVersion,bConnectCredentials
        $Container_CMDs=$Module_CMDs|? Noun -IN bOrgUnit,bOrgUnitExtension,bGroup,bStaticGroup,bDynamicGroup
        $Jobs_CMDs=$Module_CMDs|? Noun -Match bJob
        $Endpoints_CMDs=$Module_CMDs|? Noun -Match 'Endpoint|Boot|HardwareProfile|MacAddr'
        $Software_CMDs=$Module_CMDs|? Noun -Match 'App(lication.*)?$|bSoftware|bAut'
        $Variablen_CMDs=$Module_CMDs|? Noun -Match Variable
        $Inventur_CMDs=$Module_CMDs|? Noun -Match Inventory
        $Kiosk_CMDs=$Module_CMDs|? Noun -Match 'Kiosk|Icon'

        & {
            "# Cmdlets exported by this module"
            
            "## API-Initialization"

            $API_CMDs.Name | _syntax -header 3
            
            & {"Container";"Jobs";"Endpoints";"Software";"Variablen";"Inventur";"Kiosk";"_scaffolding"} |
            ForEach-Object -Begin {"## API-Endpoints"} {
                $DOCFILE,$DOC_HEAD="$_.md","_h$_.md"
                "### Cmdlets zu $_"
                "# Cmdlets zu $_" > $DOC_HEAD
                "" > $DOCFILE
                (Get-Variable -ValueOnly ("{0}_CMDs" -F $_)).Name | % {
                    "* [$_]($DOCFILE#$_)" |% { $_ >>$DOC_HEAD; $_}
                    #"* [$_]($DOCFILE#$_)" >> $DOC_HEAD
                    $_|_syntax -header 2 >> $DOCFILE
                }
                (Get-Content $DOC_HEAD,$DOCFILE -Raw) -replace "`n+","`n" | Set-Content $DOCFILE
                Remove-Item $DOC_HEAD
            }
        } > ./Commands.md
        (Get-Content ./Commands.md -Raw) -replace "`n+","`n" | Set-Content ./Commands.md

        # Compare-Object $Module_CMDs.Name ($API_CMDs+$Scaffold_CMDs+$INV_CMDs+$EP_CMDs+$ORG_CMDs+$JOB_CMDs+$SW_CMDs+$VAR_CMDs+$KIO_CMDs).Name


<#
    & { ## start redirected output
    $

    "# Cmdlets exported by this module"
    ""
    toc
    ""
    "## Initialize"
    Get-Command -Noun bConnect| % { _syntax $_.Name 3 }
    #syntax Initialize-bConnect 3
    #syntax Clear-bConnect 3
    ""

    "## Commands by Controller"
    ( Get-Command -Module bConnect) -notmatch '^(New|Merge|Expand|Search|Initialize|Clear|Invoke)-'|
    Sort-Object Verb |
    Group-Object Noun | 
    ForEach-Object {
        ""
        "### Controller "+($_.Name -replace '^b(Connect)?')
        $_.Group.Name |% {
            _syntax $_
        }
    }
    "### Controller Search"
    (Get-Command -Module bConnect -Verb Search).Name |% {
        _syntax $_
    }
    ""
    "## Helper Commands"
    ""
    (Get-Command -Module bConnect |? {$_ -match '^(New|Merge|Expand)-'} | Sort-Object Verb,Noun).Name|% {
        _syntax $_ 3
    }
} > ./_Commands.md
(Get-Content ./_Commands.md -raw) -replace '\r\n',"`n" -replace '\r',"`n" -replace '[\n]+',"`n" > ./Commands.md
Remove-Item ./_Commands.md
# #>

} | receive-job -Wait



echo "DONE. $(get-date)"