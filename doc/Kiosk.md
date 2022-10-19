# Cmdlets regarding Kiosk
* [Get-bIcon](Kiosk.md#Get-bIcon)
* [Add-bKioskJob](Kiosk.md#Add-bKioskJob)
* [Get-bKioskJob](Kiosk.md#Get-bKioskJob)
* [Remove-bKioskJob](Kiosk.md#Remove-bKioskJob)


## Get-bIcon
> TODO 
```
Get-bIcon [<CommonParameters>]
Get-bIcon -AppId <Guid> [<CommonParameters>]
Get-bIcon -Scope {App | Inventory} [<CommonParameters>]
```
### Parameters
* AppId `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* Scope `<IconScope>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Add-bKioskJob
> Publish a given Job to the Kiosk for either a User or an OrgUnit or Endpoint 
```
Add-bKioskJob -JobDefinitionId <Guid> -TargetId <Guid> [<CommonParameters>]
Add-bKioskJob -JobDefinitionId <Guid> -User <String> [<CommonParameters>]
```
### Parameters
* JobDefinitionId `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
* TargetId `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
* User `<String>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
## Get-bKioskJob
> Get KioskJobs using `GET` 
```
Get-bKioskJob [-JobDefinitionId] <Guid> [<CommonParameters>]
Get-bKioskJob -EndpointId <Guid> [<CommonParameters>]
Get-bKioskJob -GroupId <Guid> [<CommonParameters>]
Get-bKioskJob -User <String> [<CommonParameters>]
```
### Parameters
* JobDefinitionId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* EndpointId `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* GroupId `<Guid>`
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
## Remove-bKioskJob
> Remove KioskJob using `DELETE` 
```
Remove-bKioskJob [-KioskJobId] <Guid> [<CommonParameters>]
```
### Parameters
* KioskJobId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```

