Import-Module ./bConnect.psd1 -Force
& {
    "# Cmdlets exported by this module"
    ""
    "## Initialize"
    '```'
    (Get-Help Initialize-bConnect).Synopsis.trim()
    '```'
    ""
    "## Commands by Controller"
    ( Get-Command -Module bConnect |? {$_ -notmatch '^(New|Merge|Expand|Search|Initialize)-'}|
    Sort-Object Noun,Verb|Group-Object Noun
    ) | % {
        ""
        "### Controller "+($_.Name -replace '^b')
        $_.Group.Name |% {
            "#### $_"
            '```'
            (Get-Help $_).Synopsis.trim()
            '```'
        }
    }
    ""
    "### Controller Search"
    (Get-Command -Module bConnect -Verb Search).Name |% {
        "#### $_"
        '```'
        (Get-Help $_).Synopsis.trim()
        '```'
    }
    ""
    "## Helper Commands"
    ""
    (Get-Command -Module bConnect |? {$_ -match '^(New|Merge|Expand)-'} | Sort-Object Verb,Noun).Name|% {
        "### $_"
        '```'
        (Get-Help $_).Synopsis.trim()
        '```'
    }
} > ./Commands.md