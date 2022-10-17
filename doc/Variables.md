# Cmdlets regarding Variables
* [Get-bVariable](Variables.md#Get-bVariable)
* [New-bVariable](Variables.md#New-bVariable)
* [Set-bVariable](Variables.md#Set-bVariable)


## Get-bVariable
> Get variables defined in specific Object-Scope (Client, Software, ...) 
```
Get-bVariable [-Scope] {Device | MobileDevice | Job | OrgUnit | Software | HardwareProfile | ICDevice | NetworkDevice | AndroidDevice | IOSDevice | WindowsPhoneDevice} [[-Category] <String>] [-ObjectId <Guid>] [<CommonParameters>]
Get-bVariable [-Scope] {Device | MobileDevice | Job | OrgUnit | Software | HardwareProfile | ICDevice | NetworkDevice | AndroidDevice | IOSDevice | WindowsPhoneDevice} [-Category] <String> [-Name] <String> [-ObjectId <Guid>] [<CommonParameters>]
```
### Parameters
* Scope `<Scope>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Category `<String>`
  ```
  Position : 2
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Name `<String>`
  ```
  Position : 3
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ObjectId `<Guid>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bVariable
> Creates draft object in memory 
```
New-bVariable [-Category] <String> [-Name] <String> [[-Value] <String>] [-Type {Unknown | Number | String | Date | Checkbox | Dropdownbox | DropdownListbox | Filelink | Folder | Password | Certificate}] [<CommonParameters>]
New-bVariable [-Category] <String> [-Name] <String> -UseDefault [-Type {Unknown | Number | String | Date | Checkbox | Dropdownbox | DropdownListbox | Filelink | Folder | Password | Certificate}] [<CommonParameters>]
```
### Parameters
* Category `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Name `<String>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Value `<String>`
  ```
  Position : 3
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Type `<Type>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* UseDefault `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Set-bVariable
> Set variables on specific Object (Client, Software, ...) 
```
Set-bVariable [-Scope] {Device | MobileDevice | Job | OrgUnit | Software | HardwareProfile | ICDevice | NetworkDevice | AndroidDevice | IOSDevice | WindowsPhoneDevice} [-ObjectId] <Guid> [-Variables] <Object[]> [<CommonParameters>]
```
### Parameters
* Scope `<Scope>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ObjectId `<Guid>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Variables `<Object[]>`
  ```
  Position : 3
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```

