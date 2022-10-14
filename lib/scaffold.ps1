#!/opt/microsoft/powershell/7/pwsh
function script:docComment {
    [cmdletbinding()]
    param($Description)
    process { "<#`n.S$("ynopsis")", $Description,'#>','' -join "`n" }
}

function script:editable {
    param([parameter(Position=0)][string]$Controller,[string]$Ref='Id',
          [string]$Verb="Edit",[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun"
    )
    process {
        script:removable $Controller -Ref $Ref
        script:setable $Controller -Ref $Ref
        script:addible $Controller
    } #end process
}

function script:addibleGet {
    param([parameter(Position=0)][string]$Controller,
          [string[]]$ParamNames,[string[]]$CommonFlags,
          [string]$Verb='Add',[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun"
    )
    process {
        ([scriptblock]::Create(
            "Function $CmdName{`n"+
            (script:docComment "Add $Noun using ``GET``")+
            "`n[cmdletbinding()]param(`n"+
            ((&{
                $ParamNames|% {"[Parameter(Mandatory,ValueFromPipelineByPropertyName)][guid]`${0}" -F $_}
                $CommonFlags|% {'[Parameter()][switch]${0}' -F $_}
             }) -join ",`n")+
            ")`nprocess{`n`tInvoke-Connect -Controller $Controller -Parameters `$PSBoundParameters`n}} # END $CmdName`n"
        ))
    }
}

Set-Alias addable script:addibleGet -Scope script
#. addable JobInstances -ParamNames EndpointId,JobId -CommonFlags StartIfExists
function script:addible {
    param([parameter(Position=0)][string]$Controller,
        [string]$Verb="Add",[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
        [string]$CmdName="$Verb-$Noun",
        [string[]]$ParamNames=@()
    )
    process {
     ([scriptblock]::Create(
        "Function $CmdName {`n"+
        (script:docComment "Add $Noun using ``POST``. Use [``New-b$Noun``](#New-b$Noun) to create a draft object to pipe in.")+
        "[cmdletbinding()]param(`n"+
        ((&{
            $ParamNames |% {"[Parameter(Mandatory,ValueFromPipelineByPropertyName)][string]`${0}" -F $_ }
            if(-not $ParamNames.Count) { "[Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline,Mandatory)]`$InputObject" }
        }) -join ",`n") + @"
)
process {
    'InputObject'| % { if(`$PSBoundParameters.`$_){`$PSBoundParameters.Remove(`$_)>`$null; }}
    `$InputObject|Invoke-Connect -Method post -Controller $Controller -Parameters `$PSBoundParameters
}} # END $CmdName
"@
    ))
    }
}
function script:setableGet {
    param([parameter(Position=0)][string]$Controller,[string]$Ref='Id',
          [string[]]$SetParameters,
          [string]$Verb='Set',[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun")
    process {
        ([scriptblock]::Create(
            "Function $CmdName{`n"+
            (script:docComment "Set $Noun using ``GET``")+
            "[cmdletbinding()]param(`n"+
            ((&{
                "[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]`$$Ref"
                $SetParameters | % {$_}
             }) -join ",`n")+
            ")`nprocess{`n`tInvoke-Connect -Controller $Controller -Parameters `$PSBoundParameters`n}} # END $CmdName`n"
        ))
    }
}

function script:setable {
    param([parameter(Position=0)][string]$Controller,[string]$Ref='Id',
        [string]$Verb="Set",[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
        [string]$CmdName="$Verb-$Noun",
        [string[]]$CommonFlags=@()
    )
    process {
    ([scriptblock]::Create(
        "Function $CmdName {`n"+
        (script:docComment "Set $Noun using ``PATCH``. Use [``New-b$Noun -update``](#New-b$Noun) to create a draft object to pipe in.")+
        "[cmdletbinding()]param(`n"+
        "[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]`$$Ref,`n"+
        (($CommonFlags|% {'[Parameter()][switch]${0},' -F $_})-join "`n")+
        "[Parameter(Mandatory,ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]`$InputObject"+
        ")`nprocess{`n`t`$InputObject|Invoke-Connect -Method patch -Controller $Controller -Parameters @{$Ref=`$$Ref}`n}} # END $CmdName`n"
    ))
    } #end process
}

function script:removable {
    param([parameter(Position=0)][string]$Controller,[string]$Ref='Id',
          [string]$Verb='Remove',[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun")
    process {
        ([scriptblock]::Create(
            "Function $CmdName{`n"+
            (script:docComment "Remove $Noun using ``DELETE``")+
            "[cmdletbinding()]param(`n"+
            "[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]`$$Ref"+
            ")`nprocess{`n`tInvoke-Connect -Method delete -Controller $Controller -Parameters `$PSBoundParameters`n}} # END $CmdName`n"
        ))
    }
}
Set-Alias deletable script:removable -Scope script

function script:gettable {
    param([parameter(Position=0)][string]$Controller,
          [string[]]$ParamNames=@(),[string[]]$CommonFlags=@(),[string]$Preferred='Any',
          [string]$Verb='Get',[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun"
    )
    process {
        if($ParamNames.Count) { $first=$ParamNames[0] }
        ([scriptblock]::Create(
            "Function $CmdName{`n"+
            (script:docComment "Get $Controller using ``GET``")+
            "[cmdletbinding(DefaultParameterSetName='By$preferred')]param(`n"+
            ((&{
                $ParamNames|% {"[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='By{0}'$(
                    if($first -eq $_){ ',ValueFromPipeline,Position=0' }
                ))][guid]`${0}" -F $_}
                $CommonFlags|% {'[Parameter()][switch]${0}' -F $_}
             }) -join ",`n")+
            ")`nprocess{`n`tInvoke-Connect -Controller $Controller -Parameters `$PSBoundParameters`n}} # END $CmdName`n"
        ))
    }
}
Set-Alias getable script:gettable -Scope script
function script:getableTpl {
    param([parameter(Position=0)][string]$Controller,[switch]$EpRequired,
          [string]$Verb='Get',[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun"
    )
    process {
        [scriptblock]::Create(
            ((&{
                "Function $CmdName {"
                (script:docComment "List $($Noun)s using ``GET``")
                "[cmdletbinding(DefaultParameterSetName='all')]param("
                ""
@"
[Parameter(Mandatory,ParameterSetName='latest')][switch]`$Latest,

[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all'$(if($EpRequired){",Mandatory"}))]
[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='latest'$(if($EpRequired){",Mandatory"}))]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[Alias('Id','Endpoint')][guid]`$EndpointId,

[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='latest')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[Alias('Template')][string]`$TemplateName,

[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[ValidatePattern('^(?>\d{4}-(?>0\d|1[0-2])-(?>[0-2]\d|[3][01])T(?>[01]\d|2[0-3])(?>:[0-5]\d){2}Z)$')]
[Alias('Time')][string]`$Scan
)
process{
    'Latest'| % {if(`$PSBoundParameters.`$_){
        `$PSBoundParameters.Remove(`$_)>`$null
        `$PSBoundParameters.Scan=`$_
    }}
    Invoke-Connect -Controller $Controller -Parameters `$PSBoundParameters
}}
"@

        }) -join "`n")
    )
}}
function script:searchable {
    [cmdletbinding()]
    param([bConnect.Search.Type]$Type)
    ([scriptblock]::Create(
        "Function Search-$Type {`n"+
        (script:docComment "Search $($Type)s using ``GET``")+
@"
[cmdletbinding()]param(
    [Parameter(Mandatory,Position=0,ValueFromPipeline)]
    [ValidateLength(2,255)]
    [string]`$Term)
process{
    Invoke-Connect -Controller Search -Parameters @{Type='$Type';Term=`$Term}
}} # END $CmdName
"@
    ))
}

