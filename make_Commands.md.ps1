Import-Module ./bConnect.psd1 -Force
function syntax ($cmd,$header=4) {
    '#'*$header+" "+$cmd
    '```'
    (Get-Help $cmd).Synopsis.trim()
    '```'
    '#'+('#'*$header)+" Parameters"
    ""
    params $cmd
    ""
}
function params ($cmd) {
    #$replace=[regex]'^-'
    (Get-Help $cmd).Parameters.parameter|Sort-Object Position,Required,Name |% {
        $param=$_
        "* {0}" -F $param.Name
        '  ```'
        'Position Required PipelineInput Aliases ParameterValue' -split ' '|% {
            "  {0} : {1}" -F $_,$param.$_
        }
        '  ```'
    }
}
function toc () {
    $tocs=0
    [string[]]$cmds=@()

    $cmds+=(Get-Command -Module bConnect -Verb Initialize).Name
    $cmds+=(Get-Command -Module bConnect|? {$_ -notmatch '^(New|Merge|Expand|Search|Initialize)-'}|Sort-Object Noun,Verb).Name
    $cmds+=(Get-Command -Module bConnect -Verb Search).Name
    $cmds+=(Get-Command -Module bConnect |? {$_ -match '^(New|Merge|Expand)-'} | Sort-Object Verb,Noun).Name
    
    foreach($cmd in $cmds) {
        $paramAnchor=if($tocs){$tocs}else{""}
        "* [$cmd](#{0}) ( *[Parameters](#parameters{1})* )" -F $cmd.tolower(),$paramAnchor
        $tocs--
    }
}
& {
    "# Cmdlets exported by this module"
    ""
    toc
    ""
    "## Initialize"
    syntax Initialize-bConnect 3
    ""
    "## Commands by Controller"
    ( Get-Command -Module bConnect |? {$_ -notmatch '^(New|Merge|Expand|Search|Initialize)-'}|
    Sort-Object Noun,Verb|Group-Object Noun
    ) | % {
        ""
        "### Controller "+($_.Name -replace '^b')
        $_.Group.Name |% {
            syntax $_
        }
    }
    ""
    "### Controller Search"
    (Get-Command -Module bConnect -Verb Search).Name |% {
        syntax $_
    }
    ""
    "## Helper Commands"
    ""
    (Get-Command -Module bConnect |? {$_ -match '^(New|Merge|Expand)-'} | Sort-Object Verb,Noun).Name|% {
        syntax $_ 3
    }
} > ./Commands.md