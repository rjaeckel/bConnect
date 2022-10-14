Function Get-OrgUnit{
<#
.Synopsis
Get OrgUnits using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByOrgUnit')][guid]$OrgUnit)
process{
	Invoke-Connect -Controller OrgUnits -Parameters $PSBoundParameters
}} # END Get-OrgUnit

Function Remove-OrgUnit{
<#
.Synopsis
Remove OrgUnit using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id)
process{
	Invoke-Connect -Method delete -Controller OrgUnits -Parameters $PSBoundParameters
}} # END Remove-OrgUnit

Function Set-OrgUnit {
<#
.Synopsis
Set OrgUnit using `PATCH`. Use [`New-bOrgUnit -update`](#New-bOrgUnit) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]$InputObject)
process{
	$InputObject|Invoke-Connect -Method patch -Controller OrgUnits -Parameters @{Id=$Id}
}} # END Set-OrgUnit

Function Add-OrgUnit {
<#
.Synopsis
Add OrgUnit using `POST`. Use [`New-bOrgUnit`](#New-bOrgUnit) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline,Mandatory)]$InputObject)
process {
    'InputObject'| % { if($PSBoundParameters.$_){$PSBoundParameters.Remove($_)>$null; }}
    $InputObject|Invoke-Connect -Method post -Controller OrgUnits -Parameters $PSBoundParameters
}} # END Add-OrgUnit
Function Get-DynamicGroup{
<#
.Synopsis
Get DynamicGroups using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByOrgUnit')][guid]$OrgUnit)
process{
	Invoke-Connect -Controller DynamicGroups -Parameters $PSBoundParameters
}} # END Get-DynamicGroup

Function Remove-DynamicGroup{
<#
.Synopsis
Remove DynamicGroup using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id)
process{
	Invoke-Connect -Method delete -Controller DynamicGroups -Parameters $PSBoundParameters
}} # END Remove-DynamicGroup

Function Set-DynamicGroup {
<#
.Synopsis
Set DynamicGroup using `PATCH`. Use [`New-bDynamicGroup -update`](#New-bDynamicGroup) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]$InputObject)
process{
	$InputObject|Invoke-Connect -Method patch -Controller DynamicGroups -Parameters @{Id=$Id}
}} # END Set-DynamicGroup

Function Add-DynamicGroup {
<#
.Synopsis
Add DynamicGroup using `POST`. Use [`New-bDynamicGroup`](#New-bDynamicGroup) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline,Mandatory)]$InputObject)
process {
    'InputObject'| % { if($PSBoundParameters.$_){$PSBoundParameters.Remove($_)>$null; }}
    $InputObject|Invoke-Connect -Method post -Controller DynamicGroups -Parameters $PSBoundParameters
}} # END Add-DynamicGroup
Function Get-StaticGroup{
<#
.Synopsis
Get StaticGroups using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByOrgUnit')][guid]$OrgUnit)
process{
	Invoke-Connect -Controller StaticGroups -Parameters $PSBoundParameters
}} # END Get-StaticGroup

Function Remove-StaticGroup{
<#
.Synopsis
Remove StaticGroup using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id)
process{
	Invoke-Connect -Method delete -Controller StaticGroups -Parameters $PSBoundParameters
}} # END Remove-StaticGroup

Function Set-StaticGroup {
<#
.Synopsis
Set StaticGroup using `PATCH`. Use [`New-bStaticGroup -update`](#New-bStaticGroup) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]$InputObject)
process{
	$InputObject|Invoke-Connect -Method patch -Controller StaticGroups -Parameters @{Id=$Id}
}} # END Set-StaticGroup

Function Add-StaticGroup {
<#
.Synopsis
Add StaticGroup using `POST`. Use [`New-bStaticGroup`](#New-bStaticGroup) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline,Mandatory)]$InputObject)
process {
    'InputObject'| % { if($PSBoundParameters.$_){$PSBoundParameters.Remove($_)>$null; }}
    $InputObject|Invoke-Connect -Method post -Controller StaticGroups -Parameters $PSBoundParameters
}} # END Add-StaticGroup
Function Get-Endpoint{
<#
.Synopsis
Get Endpoints using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByOrgUnit')][guid]$OrgUnit,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByDynamicGroup')][guid]$DynamicGroup,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByStaticGroup')][guid]$StaticGroup,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByUser')][string]$User,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByUniversalDynamicGroup')][guid]$UniversalDynamicGroup,
[Parameter()][switch]$PubKey,
[Parameter()][switch]$InstalledSoftware,
[Parameter()][switch]$SnmpData)
process{
	Invoke-Connect -Controller Endpoints -Parameters $PSBoundParameters
}} # END Get-Endpoint

Function Remove-Endpoint{
<#
.Synopsis
Remove Endpoint using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id)
process{
	Invoke-Connect -Method delete -Controller Endpoints -Parameters $PSBoundParameters
}} # END Remove-Endpoint

Function Set-Endpoint {
<#
.Synopsis
Set Endpoint using `PATCH`. Use [`New-bEndpoint -update`](#New-bEndpoint) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]$InputObject)
process{
	$InputObject|Invoke-Connect -Method patch -Controller Endpoints -Parameters @{Id=$Id}
}} # END Set-Endpoint

Function Add-Endpoint {
<#
.Synopsis
Add Endpoint using `POST`. Use [`New-bEndpoint`](#New-bEndpoint) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline,Mandatory)]$InputObject)
process {
    'InputObject'| % { if($PSBoundParameters.$_){$PSBoundParameters.Remove($_)>$null; }}
    $InputObject|Invoke-Connect -Method post -Controller Endpoints -Parameters $PSBoundParameters
}} # END Add-Endpoint
Function Get-Job{
<#
.Synopsis
Get Jobs using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByOrgUnit')][guid]$OrgUnit,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByUser')][string]$User,
[Parameter()][switch]$Steps)
process{
	Invoke-Connect -Controller Jobs -Parameters $PSBoundParameters
}} # END Get-Job

Function Remove-Job{
<#
.Synopsis
Remove Job using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id)
process{
	Invoke-Connect -Method delete -Controller Jobs -Parameters $PSBoundParameters
}} # END Remove-Job

Function Set-Job {
<#
.Synopsis
Set Job using `PATCH`. Use [`New-bJob -update`](#New-bJob) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id,
[Parameter()][switch]$ignoreAssignments,[Parameter(Mandatory,ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]$InputObject)
process{
	$InputObject|Invoke-Connect -Method patch -Controller Jobs -Parameters @{Id=$Id}
}} # END Set-Job

Function Add-Job {
<#
.Synopsis
Add Job using `POST`. Use [`New-bJob`](#New-bJob) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline,Mandatory)]$InputObject)
process {
    'InputObject'| % { if($PSBoundParameters.$_){$PSBoundParameters.Remove($_)>$null; }}
    $InputObject|Invoke-Connect -Method post -Controller Jobs -Parameters $PSBoundParameters
}} # END Add-Job
Function Get-JobInstance{
<#
.Synopsis
Get JobInstances using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId')][guid]$EndpointId,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByJobId')][guid]$JobId,
[Parameter()][switch]$Steps,
[Parameter()][switch]$IncludeJobDefinition)
process{
	Invoke-Connect -Controller JobInstances -Parameters $PSBoundParameters
}} # END Get-JobInstance

Function Set-JobInstance{
<#
.Synopsis
Set JobInstance using `GET`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id,
[parameter(Mandatory)][bConnect.Job.Action]$cmd)
process{
	Invoke-Connect -Controller JobInstances -Parameters $PSBoundParameters
}} # END Set-JobInstance

Function Remove-JobInstance{
<#
.Synopsis
Remove JobInstance using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id)
process{
	Invoke-Connect -Method delete -Controller JobInstances -Parameters $PSBoundParameters
}} # END Remove-JobInstance

Function Add-JobInstance{
<#
.Synopsis
Add JobInstance using `GET`
#>

[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName)][guid]$EndpointId,
[Parameter(Mandatory,ValueFromPipelineByPropertyName)][guid]$JobId,
[Parameter()][switch]$StartIfExists)
process{
	Invoke-Connect -Controller JobInstances -Parameters $PSBoundParameters
}} # END Add-JobInstance

Function Get-HardwareProfile{
<#
.Synopsis
Get HardwareProfiles using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id)
process{
	Invoke-Connect -Controller HardwareProfiles -Parameters $PSBoundParameters
}} # END Get-HardwareProfile

Function Get-BootEnvironment{
<#
.Synopsis
Get BootEnvironment using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id)
process{
	Invoke-Connect -Controller BootEnvironment -Parameters $PSBoundParameters
}} # END Get-BootEnvironment

Function Get-App{
<#
.Synopsis
Get Apps using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByOrgUnit')][guid]$OrgUnit,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId')][guid]$EndpointId)
process{
	Invoke-Connect -Controller Apps -Parameters $PSBoundParameters
}} # END Get-App

Function Get-Application{
<#
.Synopsis
Get Applications using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByOrgUnit')][guid]$OrgUnit,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId')][guid]$EndpointId)
process{
	Invoke-Connect -Controller Applications -Parameters $PSBoundParameters
}} # END Get-Application

Function Remove-Application{
<#
.Synopsis
Remove Application using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id)
process{
	Invoke-Connect -Method delete -Controller Applications -Parameters $PSBoundParameters
}} # END Remove-Application

Function Set-Application {
<#
.Synopsis
Set Application using `PATCH`. Use [`New-bApplication -update`](#New-bApplication) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]$InputObject)
process{
	$InputObject|Invoke-Connect -Method patch -Controller Applications -Parameters @{Id=$Id}
}} # END Set-Application

Function Add-Application {
<#
.Synopsis
Add Application using `POST`. Use [`New-bApplication`](#New-bApplication) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline,Mandatory)]$InputObject)
process {
    'InputObject'| % { if($PSBoundParameters.$_){$PSBoundParameters.Remove($_)>$null; }}
    $InputObject|Invoke-Connect -Method post -Controller Applications -Parameters $PSBoundParameters
}} # END Add-Application
Function Get-InventoryDataRegistryScan{
<#
.Synopsis
Get InventoryDataRegistryScans using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId',ValueFromPipeline,Position=0)][guid]$EndpointId)
process{
	Invoke-Connect -Controller InventoryDataRegistryScans -Parameters $PSBoundParameters
}} # END Get-InventoryDataRegistryScan

Function Remove-InventoryDataRegistryScan{
<#
.Synopsis
Remove InventoryDataRegistryScan using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$EndpointId)
process{
	Invoke-Connect -Method delete -Controller InventoryDataRegistryScans -Parameters $PSBoundParameters
}} # END Remove-InventoryDataRegistryScan

Function Get-InventoryDataFileScan{
<#
.Synopsis
Get InventoryDataFileScans using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId',ValueFromPipeline,Position=0)][guid]$EndpointId)
process{
	Invoke-Connect -Controller InventoryDataFileScans -Parameters $PSBoundParameters
}} # END Get-InventoryDataFileScan

Function Remove-InventoryDataFileScan{
<#
.Synopsis
Remove InventoryDataFileScan using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$EndpointId)
process{
	Invoke-Connect -Method delete -Controller InventoryDataFileScans -Parameters $PSBoundParameters
}} # END Remove-InventoryDataFileScan

Function Get-InventoryDataWmiScan {
<#
.Synopsis
List InventoryDataWmiScans using `GET`
#>

[cmdletbinding(DefaultParameterSetName='all')]param(

[Parameter(Mandatory,ParameterSetName='latest')][switch]$Latest,

[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all')]
[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='latest')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[Alias('Id','Endpoint')][guid]$EndpointId,

[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='latest')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[Alias('Template')][string]$TemplateName,

[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[ValidatePattern('^(?>\d{4}-(?>0\d|1[0-2])-(?>[0-2]\d|[3][01])T(?>[01]\d|2[0-3])(?>:[0-5]\d){2}Z)$')]
[Alias('Time')][string]$Scan
)
process{
    'Latest'| % {if($PSBoundParameters.$_){
        $PSBoundParameters.Remove($_)>$null
        $PSBoundParameters.Scan=$_
    }}
    Invoke-Connect -Controller InventoryDataWmiScans -Parameters $PSBoundParameters
}}
Function Get-InventoryDataCustomScan {
<#
.Synopsis
List InventoryDataCustomScans using `GET`
#>

[cmdletbinding(DefaultParameterSetName='all')]param(

[Parameter(Mandatory,ParameterSetName='latest')][switch]$Latest,

[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all')]
[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='latest')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[Alias('Id','Endpoint')][guid]$EndpointId,

[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='latest')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[Alias('Template')][string]$TemplateName,

[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[ValidatePattern('^(?>\d{4}-(?>0\d|1[0-2])-(?>[0-2]\d|[3][01])T(?>[01]\d|2[0-3])(?>:[0-5]\d){2}Z)$')]
[Alias('Time')][string]$Scan
)
process{
    'Latest'| % {if($PSBoundParameters.$_){
        $PSBoundParameters.Remove($_)>$null
        $PSBoundParameters.Scan=$_
    }}
    Invoke-Connect -Controller InventoryDataCustomScans -Parameters $PSBoundParameters
}}
Function Get-InventoryDataHardwareScan {
<#
.Synopsis
List InventoryDataHardwareScans using `GET`
#>

[cmdletbinding(DefaultParameterSetName='all')]param(

[Parameter(Mandatory,ParameterSetName='latest')][switch]$Latest,

[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all',Mandatory)]
[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='latest',Mandatory)]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[Alias('Id','Endpoint')][guid]$EndpointId,

[Parameter(ValueFromPipelineByPropertyName,ParameterSetName='all')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='latest')]
[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[Alias('Template')][string]$TemplateName,

[Parameter(ValueFromPipelineByPropertyName,Mandatory,ParameterSetName='time')]
[ValidatePattern('^(?>\d{4}-(?>0\d|1[0-2])-(?>[0-2]\d|[3][01])T(?>[01]\d|2[0-3])(?>:[0-5]\d){2}Z)$')]
[Alias('Time')][string]$Scan
)
process{
    'Latest'| % {if($PSBoundParameters.$_){
        $PSBoundParameters.Remove($_)>$null
        $PSBoundParameters.Scan=$_
    }}
    Invoke-Connect -Controller InventoryDataHardwareScans -Parameters $PSBoundParameters
}}
Function Get-InventoryDataSnmpScan{
<#
.Synopsis
Get InventoryDataSnmpScans using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByEndpointId')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId',ValueFromPipeline,Position=0)][guid]$EndpointId)
process{
	Invoke-Connect -Controller InventoryDataSnmpScans -Parameters $PSBoundParameters
}} # END Get-InventoryDataSnmpScan

Function Get-InventoryOverview{
<#
.Synopsis
Get InventoryOverviews using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId',ValueFromPipeline,Position=0)][guid]$EndpointId)
process{
	Invoke-Connect -Controller InventoryOverviews -Parameters $PSBoundParameters
}} # END Get-InventoryOverview

Function Get-InventoryAppScan{
<#
.Synopsis
Get InventoryAppScans using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId',ValueFromPipeline,Position=0)][guid]$EndpointId)
process{
	Invoke-Connect -Controller InventoryAppScans -Parameters $PSBoundParameters
}} # END Get-InventoryAppScan

Function Get-SoftwareScanRule{
<#
.Synopsis
Get SoftwareScanRules using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
)
process{
	Invoke-Connect -Controller SoftwareScanRules -Parameters $PSBoundParameters
}} # END Get-SoftwareScanRule

Function Get-EndpointInvSoftware{
<#
.Synopsis
Get EndpointInvSoftware using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
)
process{
	Invoke-Connect -Controller EndpointInvSoftware -Parameters $PSBoundParameters
}} # END Get-EndpointInvSoftware

Function Get-Version{
<#
.Synopsis
Get ../Version using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
)
process{
	Invoke-Connect -Controller ../Version -Parameters $PSBoundParameters
}} # END Get-Version

Function Get-Info{
<#
.Synopsis
Get ../Info using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
)
process{
	Invoke-Connect -Controller ../Info -Parameters $PSBoundParameters
}} # END Get-Info

Function Get-KioskJob{
<#
.Synopsis
Get KioskJobs using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByJobDefinitionId')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByJobDefinitionId',ValueFromPipeline,Position=0)][guid]$JobDefinitionId,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId')][guid]$EndpointId,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByGroupId')][guid]$GroupId,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByUser')][string]$User)
process{
	Invoke-Connect -Controller KioskJobs -Parameters $PSBoundParameters
}} # END Get-KioskJob

Function Add-KioskJob {
<#
.Synopsis
Add KioskJob using `POST`. Use [`New-bKioskJob`](#New-bKioskJob) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(ValueFromPipelineByPropertyName,ValueFromPipeline,Mandatory)]$InputObject)
process {
    'InputObject'| % { if($PSBoundParameters.$_){$PSBoundParameters.Remove($_)>$null; }}
    $InputObject|Invoke-Connect -Method post -Controller KioskJobs -Parameters $PSBoundParameters
}} # END Add-KioskJob
Function Remove-KioskJob{
<#
.Synopsis
Remove KioskJob using `DELETE`
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$KioskJobId)
process{
	Invoke-Connect -Method delete -Controller KioskJobs -Parameters $PSBoundParameters
}} # END Remove-KioskJob

Function Get-UniversalDynamicGroup{
<#
.Synopsis
Get UniversalDynamicGroup using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ById',ValueFromPipeline,Position=0)][guid]$Id,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByOrgunit')][guid]$Orgunit,
[Parameter()][switch]$IsArgusSynced)
process{
	Invoke-Connect -Controller UniversalDynamicGroup -Parameters $PSBoundParameters
}} # END Get-UniversalDynamicGroup

Function Get-EndpointSecret{
<#
.Synopsis
Get EndpointSecrets using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByEndpointId')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId',ValueFromPipeline,Position=0)][guid]$EndpointId)
process{
	Invoke-Connect -Controller EndpointSecrets -Parameters $PSBoundParameters
}} # END Get-EndpointSecret

Function Set-EndpointSecret {
<#
.Synopsis
Set EndpointSecret using `PATCH`. Use [`New-bEndpointSecret -update`](#New-bEndpointSecret) to create a draft object to pipe in.
#>
[cmdletbinding()]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,Position=0)][guid]$EndpointId,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ValueFromPipeline,Position=1)]$InputObject)
process{
	$InputObject|Invoke-Connect -Method patch -Controller EndpointSecrets -Parameters @{EndpointId=$EndpointId}
}} # END Set-EndpointSecret

Function Get-ServerState{
<#
.Synopsis
Get ServerState using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
)
process{
	Invoke-Connect -Controller ServerState -Parameters $PSBoundParameters
}} # END Get-ServerState

Function Get-MicrosoftUpdateInventory{
<#
.Synopsis
Get MicrosoftUpdateInventories using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId',ValueFromPipeline,Position=0)][guid]$EndpointId,
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByGroupId')][guid]$GroupId,
[Parameter()][switch]$ExtendedInformation,
[Parameter()][switch]$Recursive)
process{
	Invoke-Connect -Controller MicrosoftUpdateInventories -Parameters $PSBoundParameters
}} # END Get-MicrosoftUpdateInventory

Function Get-ComplianceViolation{
<#
.Synopsis
Get ComplianceViolations using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByEndpointId',ValueFromPipeline,Position=0)][guid]$EndpointId)
process{
	Invoke-Connect -Controller ComplianceViolations -Parameters $PSBoundParameters
}} # END Get-ComplianceViolation

Function Get-VulnerabilityExclusion{
<#
.Synopsis
Get VulnerabilityExclusions using `GET`
#>
[cmdletbinding(DefaultParameterSetName='ByAny')]param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName,ParameterSetName='ByObjectId',ValueFromPipeline,Position=0)][guid]$ObjectId,
[Parameter()][switch]$includeSubfolders)
process{
	Invoke-Connect -Controller VulnerabilityExclusions -Parameters $PSBoundParameters
}} # END Get-VulnerabilityExclusion

Function Search-Endpoint {
<#
.Synopsis
Search Endpoints using `GET`
#>
[cmdletbinding()]param(
    [Parameter(Mandatory,Position=0,ValueFromPipeline)]
    [ValidateLength(2,255)]
    [string]$Term)
process{
    Invoke-Connect -Controller Search -Parameters @{Type='Endpoint';Term=$Term}
}} # END 
Function Search-Job {
<#
.Synopsis
Search Jobs using `GET`
#>
[cmdletbinding()]param(
    [Parameter(Mandatory,Position=0,ValueFromPipeline)]
    [ValidateLength(2,255)]
    [string]$Term)
process{
    Invoke-Connect -Controller Search -Parameters @{Type='Job';Term=$Term}
}} # END 
Function Search-OrgUnit {
<#
.Synopsis
Search OrgUnits using `GET`
#>
[cmdletbinding()]param(
    [Parameter(Mandatory,Position=0,ValueFromPipeline)]
    [ValidateLength(2,255)]
    [string]$Term)
process{
    Invoke-Connect -Controller Search -Parameters @{Type='OrgUnit';Term=$Term}
}} # END 
Function Search-Group {
<#
.Synopsis
Search Groups using `GET`
#>
[cmdletbinding()]param(
    [Parameter(Mandatory,Position=0,ValueFromPipeline)]
    [ValidateLength(2,255)]
    [string]$Term)
process{
    Invoke-Connect -Controller Search -Parameters @{Type='Group';Term=$Term}
}} # END 
Function Search-Software {
<#
.Synopsis
Search Softwares using `GET`
#>
[cmdletbinding()]param(
    [Parameter(Mandatory,Position=0,ValueFromPipeline)]
    [ValidateLength(2,255)]
    [string]$Term)
process{
    Invoke-Connect -Controller Search -Parameters @{Type='Software';Term=$Term}
}} # END 
