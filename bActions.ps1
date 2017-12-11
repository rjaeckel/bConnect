
"OrgUnits","DynamicGroups","StaticGroups" |% {
    . getable $_ -ParamNames Id,OrgUnit
    . editable $_ 
}
"Endpoints" |% {
    . getable $_ -ParamNames Id,OrgUnit,DynamicGroup,StaticGroup -CommonFlags PubKey,InstalledSoftware,SnmpData
    . editable $_
}
"Jobs" |% {
    . getable $_ -ParamNames Id,OrgUnit -CommonFlags Steps
}
"JobInstances" |% {
    . getable    $_ -ParamNames Id,EndpointId,JobId -CommonFlags Steps
    . setable    $_ -SetParameters '[parameter(Mandatory)][bConnect.Job.Action]$cmd'
    . deletable  $_
    . addable    $_ -ParamNames EndpointId,JobId -CommonFlags StartIfExists
}
"HardwareProfiles","BootEnvironment" |% {
    . getable $_ -ParamNames Id
}

"Apps","Applications" |% { . getable $_ -ParamNames Id,OrgUnit,EndpointId }

"Applications" |% {
    . editable $_
}
"InventoryDataRegistryScans","InventoryDataFileScans" |% {
    . getable $_ -ParamNames EndpointId
    . deletable $_ -Ref EndpointId
}
"InventoryDataWmiScans","InventoryDataCustomScans" |% {
    . getableTpl $_
}
"InventoryDataHardwareScans" |% {
    . getableTpl -EpRequired $_
}
"InventoryDataSnmpScans" |% {
    . getable $_ -ParamNames EndpointId -Preferred EndpointId #required parameter
}
"InventoryOverviews","InventoryAppScans" |% {
    . getable $_ -ParamNames EndpointId
}
"SoftwareScanRules","EndpointInvSoftware","../Version","../Info"  |% {
    . getable $_
}


function Get-bVariable {
    [cmdletbinding(DefaultParameterSetName='ByAny')]param(
        [parameter(ValueFromPipelineByPropertyName,Position=0,Mandatory)]
            [bConnect.Variable.Scope]$Scope,
        [parameter(ValueFromPipelineByPropertyName,Position=1,Mandatory,ParameterSetName='ByName')]
        [parameter(ValueFromPipelineByPropertyName,Position=1)]
            [string]$Category,
        [parameter(ValueFromPipelineByPropertyName,Position=2,Mandatory,ParameterSetName='ByName')]
            [string]$Name,
        [parameter(ValueFromPipelineByPropertyName)]
            [Alias('Id')][guid]$ObjectId
    )
    process{
        Invoke-bConnect -Controller Variables -Parameters $PSBoundParameters
    }
}
function Set-bVariable {
    [cmdletbinding()]param(
        [Parameter(Mandatory,Position=0,ValueFromPipelineByPropertyName)]
            [Alias('Id')][guid]$ObjectId,
        [Parameter(Mandatory,Position=1,ValueFromPipelineByPropertyName)]
            [bConnect.Variable.Scope]$Scope,
        [Parameter(Mandatory,Position=2,ValueFromPipelineByPropertyName)]
            [object[]]$Variables
    )
    process {
        $PSBoundParameters|Invoke-bConnect -Method Put -Controller Variables
    }
}

function Search-bConnect {
    [cmdletbinding()]param(
        [Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)]
            [bConnect.Search.Type]$Type,
        [Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=1)]
            [ValidateLength(2,255)][string]$Term
    )
    process{
        Invoke-bConnect -Controller Search -Parameters $PSBoundParameters
    }
}

function Get-bIcon {
    [cmdletbinding(DefaultParameterSetName='ByAny')]param(
        [Parameter(Mandatory,ParameterSetName='ByAppId',ValueFromPipeline,ValueFromPipelineByPropertyName)]
            [Alias('Id')][guid]$AppId,
        [Parameter(Mandatory,ParameterSetName='ByScope',ValueFromPipelineByPropertyName)]
            [bConnect.Application.IconScope]$Scope
    )
    process{
        Invoke-bConnect -Controller Icons -Parameters $PSBoundParameters
    }
}