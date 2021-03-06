# Cmdlets zu Jobs
* [Get-bJob](Jobs.md#Get-bJob)
* [Search-bJob](Jobs.md#Search-bJob)
* [Add-bJobInstance](Jobs.md#Add-bJobInstance)
* [Get-bJobInstance](Jobs.md#Get-bJobInstance)
* [Remove-bJobInstance](Jobs.md#Remove-bJobInstance)
* [Set-bJobInstance](Jobs.md#Set-bJobInstance)


## Get-bJob
> Get Jobs using `GET` 
```
Get-bJob [-Steps] [<CommonParameters>]
Get-bJob [-Id] <Guid> [-Steps] [<CommonParameters>]
Get-bJob -OrgUnit <Guid> [-Steps] [<CommonParameters>]
Get-bJob -User <Guid> [-Steps] [<CommonParameters>]
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
* User `<Guid>`
  ```
  Position : named
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
> Add JobInstance using `GET` 
```
Add-bJobInstance [-EndpointId] <Guid> [-JobId] <Guid> [-StartIfExists] [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* JobId `<Guid>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* StartIfExists `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
## Get-bJobInstance
> Get JobInstances using `GET` 
```
Get-bJobInstance [-Steps] [<CommonParameters>]
Get-bJobInstance [-Id] <Guid> [-Steps] [<CommonParameters>]
Get-bJobInstance -EndpointId <Guid> [-Steps] [<CommonParameters>]
Get-bJobInstance -JobId <Guid> [-Steps] [<CommonParameters>]
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
## Set-bJobInstance
> Set JobInstance using `GET` 
```
Set-bJobInstance [-Id] <Guid> -cmd {Start | Stop | Resume} [<CommonParameters>]
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

