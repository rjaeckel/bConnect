#!/opt/microsoft/powershell/7/pwsh

(& {

"OrgUnits","DynamicGroups","StaticGroups" |% {
    getable  $_ -ParamNames Id,OrgUnit
    editable $_ 
}
"Endpoints" |% {
    getable  $_ -ParamNames Id,OrgUnit,DynamicGroup,StaticGroup,User,UniversalDynamicGroup `
                  -CommonFlags PubKey,InstalledSoftware,SnmpData
    editable $_
}
"Jobs" |% {
    getable  $_ -ParamNames Id,OrgUnit,User `
                  -CommonFlags Steps
                  
    # todo: post,delete,patch -functionality #2019R1
    removable $_
    setable $_ -CommonFlags ignoreAssignments
    addible $_
}
"JobInstances" |% {
    getable    $_ -ParamNames Id,EndpointId,JobId `
                    -CommonFlags Steps,IncludeJobDefinition
    setableGet $_ -SetParameters '[parameter(Mandatory)][bConnect.Job.Action]$cmd'
    deletable  $_
    # deprecated fore post-preference
    # todo: post-functionality
    addable    $_ -ParamNames EndpointId,JobId `
                    -CommonFlags StartIfExists
    # todo: user-functionality #2019R1
}
"HardwareProfiles","BootEnvironment" |% {
    getable $_ -ParamNames Id
}

"Apps","Applications" |% {
    getable $_ -ParamNames Id,OrgUnit,EndpointId
}

"Applications" |% {
    editable $_
}
"InventoryDataRegistryScans","InventoryDataFileScans" |% {
    getable $_ -ParamNames EndpointId
    deletable $_ -Ref EndpointId
}
"InventoryDataWmiScans","InventoryDataCustomScans" |% {
    getableTpl $_
}
"InventoryDataHardwareScans" |% {
    getableTpl -EpRequired $_
}
"InventoryDataSnmpScans" |% {
    getable $_ -ParamNames EndpointId -Preferred EndpointId #required parameter
}
"InventoryOverviews","InventoryAppScans" |% {
    getable $_ -ParamNames EndpointId
}
"SoftwareScanRules","EndpointInvSoftware","../Version","../Info"  |% {
    getable $_
}
"KioskJobs" |% {
    getable $_ -ParamNames JobDefinitionId,EndpointId,GroupId,User -Preferred JobDefinitionId
    addible $_
    removable $_ -Ref KioskJobId
    #todo: post with username and jobid
}

"UniversalDynamicGroup" |% {
    getable $_ -ParamNames Id,Orgunit -CommonFlags IsArgusSynced
}

"EndpointSecrets"|% {
    getable $_ -ParamNames EndpointId -Preferred EndpointId
    setable $_ -Ref EndpointId
}
"ServerState" |% {
    getable $_
}
"MicrosoftUpdateInventories" |% {
    getable $_ -ParamNames EndpointId,GroupId `
                -CommonFlags ExtendedInformation,Recursive `
                -Noun MicrosoftUpdateInventory
        # Todo: Recursive only allowed for GroupID
}

[System.Enum]::GetNames('bConnect.Search.Type')|% {
    searchable $_
}

}) -replace "\[guid\]\`$User",'[string]$User' > $PSScriptRoot/bActions.s.ps1
. $PSScriptRoot/bActions.s.ps1

function Get-Variable {
    <#
    .Synopsis
    Get variables defined in specific Object-Scope (Client, Software, ...)
    #>
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
        Invoke-Connect -Controller Variables -Parameters $PSBoundParameters
    }
}
function Set-Variable {
    <#
    .Synopsis
    Set variables on specific Object (Client, Software, ...)
    #>
    [cmdletbinding()]param(
        [Parameter(Mandatory,Position=0,ValueFromPipelineByPropertyName)]
            [bConnect.Variable.Scope]$Scope,
        [Parameter(Mandatory,Position=1,ValueFromPipelineByPropertyName)]
            [Alias('Id')][guid]$ObjectId,
        [Parameter(Mandatory,Position=2,ValueFromPipelineByPropertyName)]
            [object[]]$Variables
    )
    process {
        $PSBoundParameters|Invoke-Connect -Method Put -Controller Variables
    }
}

function Get-Icon {
    <#
    .Synopsis
    TODO
    #>
    [cmdletbinding(DefaultParameterSetName='ByAny')]param(
        [Parameter(Mandatory,ParameterSetName='ByAppId',ValueFromPipeline,ValueFromPipelineByPropertyName)]
            [Alias('Id')][guid]$AppId,
        [Parameter(Mandatory,ParameterSetName='ByScope',ValueFromPipelineByPropertyName)]
            [bConnect.Application.IconScope]$Scope
    )
    process{
        Invoke-Connect -Controller Icons -Parameters $PSBoundParameters
    }
}

# Todo: VariableDefinitions
# Todo: EndpointEnrollment
# Todo: VPPUsers
# Todo: VPPLicenseAssociations
