# Cmdlets regarding Jobs
* [Add-bJob](Jobs.md#Add-bJob)
* [Edit-bJob](Jobs.md#Edit-bJob)
* [Get-bJob](Jobs.md#Get-bJob)
* [New-bJob](Jobs.md#New-bJob)
* [Remove-bJob](Jobs.md#Remove-bJob)
* [Search-bJob](Jobs.md#Search-bJob)
* [Add-bJobInstance](Jobs.md#Add-bJobInstance)
* [Edit-bJobInstance](Jobs.md#Edit-bJobInstance)
* [Get-bJobInstance](Jobs.md#Get-bJobInstance)
* [New-bJobInstance](Jobs.md#New-bJobInstance)
* [Remove-bJobInstance](Jobs.md#Remove-bJobInstance)
* [New-bJobStep](Jobs.md#New-bJobStep)


## Add-bJob
> Add Job using `POST`. Use [`New-bJob`](#New-bJob) to create a draft object to pipe in. 
```
Add-bJob [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Edit-bJob
> Update Job using `PATCH`. Use [`New-bJob -update`](#New-bJob) to create a draft object to pipe in. 
```
Edit-bJob [-Id] <Guid> [-ignoreAssignments] [-InputObject] <Object> [<CommonParameters>]
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
* ignoreAssignments `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
## Get-bJob
> Get Jobs using `GET` 
```
Get-bJob [-Steps] [<CommonParameters>]
Get-bJob [-Id] <Guid> [-Steps] [<CommonParameters>]
Get-bJob -OrgUnit <Guid> [-Steps] [<CommonParameters>]
Get-bJob -User <String> [-Steps] [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* Steps `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* OrgUnit `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* User `<String>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bJob
> Creates draft object in memory TODO 
```
New-bJob [<CommonParameters>]
```
### Parameters
## Remove-bJob
> Remove Job using `DELETE` 
```
Remove-bJob [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Search-bJob
> Search Jobs using `GET` 
```
Search-bJob [-Term] <String> [<CommonParameters>]
```
### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
## Add-bJobInstance
> Add JobInstance using `POST`. Use [`New-bJobInstance`](#New-bJobInstance) to create a draft object to pipe in. 
```
Add-bJobInstance [-InputObject] <Object> [-StartIfExists] [<CommonParameters>]
```
### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* StartIfExists `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
## Edit-bJobInstance
> Set JobInstance using `GET` 
```
Edit-bJobInstance [-Id] <Guid> -cmd {Start | Stop | Resume} [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* cmd `<Action>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
## Get-bJobInstance
> Get JobInstances using `GET` 
```
Get-bJobInstance [-Steps] [-IncludeJobDefinition] [-TimePeriod <UInt32>] [<CommonParameters>]
Get-bJobInstance [-Id] <Guid> [-Steps] [-IncludeJobDefinition] [-TimePeriod <UInt32>] [<CommonParameters>]
Get-bJobInstance -EndpointId <Guid> [-Steps] [-IncludeJobDefinition] [-TimePeriod <UInt32>] [<CommonParameters>]
Get-bJobInstance -JobId <Guid> [-Steps] [-IncludeJobDefinition] [-TimePeriod <UInt32>] [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* IncludeJobDefinition `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* Steps `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* TimePeriod `<UInt32>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* EndpointId `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* JobId `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bJobInstance
> Creates a draft object in memory 
```
New-bJobInstance [-EndpointId] <Guid> [-JobDefinitionId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* JobDefinitionId `<Guid>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Remove-bJobInstance
> Remove JobInstance using `DELETE` 
```
Remove-bJobInstance [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bJobStep
> Creates draft object in memory TODO 
```
New-bJobStep [<CommonParameters>]
```
### Parameters

