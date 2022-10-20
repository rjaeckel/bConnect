# Cmdlets regarding Containers
* [Add-bDynamicGroup](Containers.md#Add-bDynamicGroup)
* [Edit-bDynamicGroup](Containers.md#Edit-bDynamicGroup)
* [Get-bDynamicGroup](Containers.md#Get-bDynamicGroup)
* [New-bDynamicGroup](Containers.md#New-bDynamicGroup)
* [Remove-bDynamicGroup](Containers.md#Remove-bDynamicGroup)
* [Search-bGroup](Containers.md#Search-bGroup)
* [Add-bOrgUnit](Containers.md#Add-bOrgUnit)
* [Edit-bOrgUnit](Containers.md#Edit-bOrgUnit)
* [Get-bOrgUnit](Containers.md#Get-bOrgUnit)
* [New-bOrgUnit](Containers.md#New-bOrgUnit)
* [Remove-bOrgUnit](Containers.md#Remove-bOrgUnit)
* [Search-bOrgUnit](Containers.md#Search-bOrgUnit)
* [New-bOrgUnitExtension](Containers.md#New-bOrgUnitExtension)
* [Add-bStaticGroup](Containers.md#Add-bStaticGroup)
* [Edit-bStaticGroup](Containers.md#Edit-bStaticGroup)
* [Get-bStaticGroup](Containers.md#Get-bStaticGroup)
* [New-bStaticGroup](Containers.md#New-bStaticGroup)
* [Remove-bStaticGroup](Containers.md#Remove-bStaticGroup)
* [Get-bUniversalDynamicGroup](Containers.md#Get-bUniversalDynamicGroup)


## Add-bDynamicGroup
> Add DynamicGroup using `POST`. Use [`New-bDynamicGroup`](#New-bDynamicGroup) to create a draft object to pipe in. 
```
Add-bDynamicGroup [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Edit-bDynamicGroup
> Update DynamicGroup using `PATCH`. Use [`New-bDynamicGroup -update`](#New-bDynamicGroup) to create a draft object to pipe in. 
```
Edit-bDynamicGroup [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* InputObject `<Object>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Get-bDynamicGroup
> Get DynamicGroups using `GET` 
```
Get-bDynamicGroup [<CommonParameters>]
Get-bDynamicGroup [-Id] <Guid> [<CommonParameters>]
Get-bDynamicGroup -OrgUnit <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* OrgUnit `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bDynamicGroup
> Creates draft object in memory 
```
New-bDynamicGroup -update [-Name <String>] [-Statement <String>] [-ParentId <Guid>] [-Comment <String>] [<CommonParameters>]
New-bDynamicGroup [-Name] <String> [-Statement] <String> [-ParentId <Guid>] [-Comment <String>] [<CommonParameters>]
```
### Parameters
* Comment `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Name `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ParentId `<Guid>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Statement `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* update `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
## Remove-bDynamicGroup
> Remove DynamicGroup using `DELETE` 
```
Remove-bDynamicGroup [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Search-bGroup
> Search Groups using `GET` 
```
Search-bGroup [-Term] <String> [<CommonParameters>]
```
### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
## Add-bOrgUnit
> Add OrgUnit using `POST`. Use [`New-bOrgUnit`](#New-bOrgUnit) to create a draft object to pipe in. 
```
Add-bOrgUnit [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Edit-bOrgUnit
> Update OrgUnit using `PATCH`. Use [`New-bOrgUnit -update`](#New-bOrgUnit) to create a draft object to pipe in. 
```
Edit-bOrgUnit [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* InputObject `<Object>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Get-bOrgUnit
> Get OrgUnits using `GET` 
```
Get-bOrgUnit [<CommonParameters>]
Get-bOrgUnit [-Id] <Guid> [<CommonParameters>]
Get-bOrgUnit -OrgUnit <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* OrgUnit `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bOrgUnit
> Creates draft object in memory 
```
New-bOrgUnit -update [-Name <String>] [-ParentId <Guid>] [-Comment <String>] [-Extension <Object>] [<CommonParameters>]
New-bOrgUnit [-Name] <String> [-ParentId] <Guid> [-Comment <String>] [-Extension <Object>] [<CommonParameters>]
```
### Parameters
* Comment `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Extension `<Object>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Name `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ParentId `<Guid>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* update `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
## Remove-bOrgUnit
> Remove OrgUnit using `DELETE` 
```
Remove-bOrgUnit [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Search-bOrgUnit
> Search OrgUnits using `GET` 
```
Search-bOrgUnit [-Term] <String> [<CommonParameters>]
```
### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
## New-bOrgUnitExtension
> Creates draft object in memory 
```
New-bOrgUnitExtension [-DIP <String>] [-Domain <String>] [-LocalAdminPassword <String>] [-EnableDHCP] [-InheritAutoInstallJobs] [-SubnetMast <String>] [-Defaultgateway <String>] [-DnsServer <String>] [-DnsServer2 <String>] [-DnsDomain <String>] [-WinsServer <String>] [-WinsServer2 <String>] [-AutoInstallJobs <Guid[]>] [-HardwareProfiles <Guid[]>] [-RequestableJobs <Guid[]>] [<CommonParameters>]
```
### Parameters
* AutoInstallJobs `<Guid[]>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Defaultgateway `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* DIP `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* DnsDomain `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* DnsServer `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* DnsServer2 `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Domain `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* EnableDHCP `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* HardwareProfiles `<Guid[]>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* InheritAutoInstallJobs `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* LocalAdminPassword `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* RequestableJobs `<Guid[]>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* SubnetMast `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* WinsServer `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* WinsServer2 `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Add-bStaticGroup
> Add StaticGroup using `POST`. Use [`New-bStaticGroup`](#New-bStaticGroup) to create a draft object to pipe in. 
```
Add-bStaticGroup [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Edit-bStaticGroup
> Update StaticGroup using `PATCH`. Use [`New-bStaticGroup -update`](#New-bStaticGroup) to create a draft object to pipe in. 
```
Edit-bStaticGroup [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* InputObject `<Object>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Get-bStaticGroup
> Get StaticGroups using `GET` 
```
Get-bStaticGroup [<CommonParameters>]
Get-bStaticGroup [-Id] <Guid> [<CommonParameters>]
Get-bStaticGroup -OrgUnit <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* OrgUnit `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bStaticGroup
> Creates draft object in memory 
```
New-bStaticGroup -update [-Name <String>] [-ParentId <Guid>] [-EndpointIds <Guid[]>] [-Comment <String>] [<CommonParameters>]
New-bStaticGroup [-Name] <String> [-ParentId <Guid>] [-EndpointIds <Guid[]>] [-Comment <String>] [<CommonParameters>]
```
### Parameters
* Comment `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* EndpointIds `<Guid[]>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Name `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ParentId `<Guid>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* update `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
## Remove-bStaticGroup
> Remove StaticGroup using `DELETE` 
```
Remove-bStaticGroup [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Get-bUniversalDynamicGroup
> Get UniversalDynamicGroup using `GET` 
```
Get-bUniversalDynamicGroup [-IsArgusSynced] [<CommonParameters>]
Get-bUniversalDynamicGroup [-Id] <Guid> [-IsArgusSynced] [<CommonParameters>]
Get-bUniversalDynamicGroup -Orgunit <Guid> [-IsArgusSynced] [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* IsArgusSynced `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* Orgunit `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```

