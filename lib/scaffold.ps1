
function script:docComment {
    param($Description)
    # -- disabled as it breaks Command.md generation
    #'<#','.NOTES',$Description,'#>' -join "`n"
}
function script:editable {
    param([parameter(Position=0)][string]$Controller,[string]$Ref='Id',
          [string]$Verb="Edit",[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun"
    )
    process {
        <#. ([scriptblock]::Create(
            "function $CmdName {[cmdletbinding()]param("+
            "[Parameter(Mandatory,ParameterSetName='delete',ValueFromPipelineByPropertyName,Position=1)]"+
            "[Parameter(Mandatory,ParameterSetName='patch',ValueFromPipelineByPropertyName,Position=0)]"+
            "[guid]`$$Ref,"+
            "[Parameter(Mandatory,ParameterSetName='post',Position=0)][switch]`$Create,"+
            "[Parameter(Mandatory,ParameterSetName='delete',Position=0)][switch]`$Remove,"+
            "[Parameter(Mandatory,ParameterSetName='patch',ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]"+
            "[Parameter(Mandatory,ParameterSetName='post',ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]"+
            "`$InputObject"+
            ")process {`$InputObject|Invoke-Connect -Method `$PSCmdlet.ParameterSetName -Controller $Controller -Parameters @{$Ref=`$$Ref}}}"
        ))#>
        . script:removable $Controller -Ref $Ref
        . script:setable $Controller -Ref $Ref
        . script:addible $Controller
    } #end process
}

function script:addibleGet {
    param([parameter(Position=0)][string]$Controller,
          [string[]]$ParamNames,[string[]]$CommonFlags,
          [string]$Verb='Add',[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun"
    )
    process {
        . ([scriptblock]::Create(
            #(script:docComment "Add $Noun using GET")+
            "function $CmdName{[cmdletbinding()]"+"param("+
            ((&{
                $ParamNames|% {"[Parameter(Mandatory,ValueFromPipelineByPropertyName)][guid]`${0}" -F $_}
                $CommonFlags|% {'[Parameter()][switch]${0}' -F $_}
             }) -join ',')+
            ")process{Invoke-Connect -Controller $Controller -Parameters `$PSBoundParameters}}"
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
    . ([scriptblock]::Create(
        #(script:docComment "Add $Noun using POST")+
        "function $CmdName {[cmdletbinding()]param("+
        ((&{
            $ParamNames |% {"[Parameter(Mandatory,ValueFromPipelineByPropertyName)][string]`${0}" -F $_ }
            if(-not $ParamNames.Count) { "[Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline,Mandatory)]`$InputObject" }
        }) -join ',') +
        ")process {`$InputObject|Invoke-Connect -Method post -Controller $Controller -Parameters `$PSBoundParameters }}"
    ))
    }
}
function script:setableGet {
    param([parameter(Position=0)][string]$Controller,[string]$Ref='Id',
          [string[]]$SetParameters,
          [string]$Verb='Set',[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun")
    process {
        . ([scriptblock]::Create(
            #(script:docComment "Set $Noun using GET")+
            "function $CmdName{[cmdletbinding()]"+"param("+
            ((&{
                "[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]`$$Ref"
                $SetParameters | % {$_}
             }) -join ',')+
            ")process{Invoke-Connect -Controller $Controller -Parameters `$PSBoundParameters}}"
        ))
    }
}

function script:setable {
    param([parameter(Position=0)][string]$Controller,[string]$Ref='Id',
        [string]$Verb="Set",[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
        [string]$CmdName="$Verb-$Noun"
    )
    process {
    . ([scriptblock]::Create(
        #(script:docComment "Set $Noun using PATCH")+
        "function $CmdName {[cmdletbinding()]param("+
        "[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)]"+
        "[guid]`$$Ref,"+
        "[Parameter(Mandatory,ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]"+
        "`$InputObject"+
        ")process {`$InputObject|Invoke-Connect -Method patch -Controller $Controller -Parameters @{$Ref=`$$Ref}}}"
    ))
    } #end process
}

function script:removable {
    param([parameter(Position=0)][string]$Controller,[string]$Ref='Id',
          [string]$Verb='Remove',[string]$Noun=($Controller -replace '^\.\.\/','' -replace 's$',''),
          [string]$CmdName="$Verb-$Noun")
    process {
        . ([scriptblock]::Create(
            #(script:docComment "Remove $Noun using DELETE")+
            "function $CmdName{[cmdletbinding()]"+"param("+
            "[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]`$$Ref"+
            ")process{Invoke-Connect -Method delete -Controller $Controller -Parameters `$PSBoundParameters}}"
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
        . ([scriptblock]::Create(
            #(script:docComment "Get $Controller using GET")+
            "function $CmdName{[cmdletbinding(DefaultParameterSetName='By$preferred')]"+"param("+
            ((&{
                $ParamNames|% {"[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='By{0}'$(
                    if($first -eq $_){ ',ValueFromPipeline,Position=0' }
                ))][guid]`${0}" -F $_}
                $CommonFlags|% {'[Parameter()][switch]${0}' -F $_}
             }) -join ',')+
            ")process{Invoke-Connect -Controller $Controller -Parameters `$PSBoundParameters}}"
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
        . ([scriptblock]::Create(
            #(script:docComment "List $Noun using GET")+
            "function $CmdName {[cmdletbinding(DefaultParameterSetName='all')]param("+
            ((&{
                "
                [Parameter(Mandatory,ParameterSetName='latest')][switch]`$Latest"
                "
                [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all'$(if($EpRequired){",Mandatory"}))]
                [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='latest'$(if($EpRequired){",Mandatory"}))]
                [Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
                [Alias('Id','Endpoint')][guid]`$EndpointId"
                "
                [Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all')]
                [Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='latest')]
                [Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
                [Alias('Template')][string]`$TemplateName"
                "
                [Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
                [ValidatePattern('^(?>\d{4}-(?>0\d|1[0-2])-(?>[0-2]\d|[3][01])T(?>[01]\d|2[0-3])(?>:[0-5]\d){2}Z)$')]
                [Alias('Time')][string]`$Scan"
            })-join ',')+
            ")process{
                'Latest'| % {if(`$PSBoundParameters.`$_){`$PSBoundParameters.Remove(`$_)>`$null;`$PSBoundParameters.Scan=`$_}}
                Invoke-Connect -Controller $Controller -Parameters `$PSBoundParameters}
            }"
        ))
    }
}
function script:searchable {
    param([bConnect.Search.Type]$Type)
    . ([scriptblock]::Create(
        #(script:docComment "Search $Type using GET")+    
        @"
function Search-$Type {
    [cmdletbinding()]
    param(
        [Parameter(Mandatory,Position=0,ValueFromPipeline)]
        [ValidateLength(2,255)][string]`$Term
    )
    process{
        Invoke-Connect -Controller Search -Parameters @{Type='$Type';Term=`$Term}
    }
}
"@
    ))
}

