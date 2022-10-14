# Cmdlets regarding Inventory
* [Get-bInventoryAppScan](Inventory.md#Get-bInventoryAppScan)
* [Get-bInventoryDataCustomScan](Inventory.md#Get-bInventoryDataCustomScan)
* [Get-bInventoryDataFileScan](Inventory.md#Get-bInventoryDataFileScan)
* [Remove-bInventoryDataFileScan](Inventory.md#Remove-bInventoryDataFileScan)
* [Get-bInventoryDataHardwareScan](Inventory.md#Get-bInventoryDataHardwareScan)
* [Get-bInventoryDataRegistryScan](Inventory.md#Get-bInventoryDataRegistryScan)
* [Remove-bInventoryDataRegistryScan](Inventory.md#Remove-bInventoryDataRegistryScan)
* [Get-bInventoryDataSnmpScan](Inventory.md#Get-bInventoryDataSnmpScan)
* [Get-bInventoryDataWmiScan](Inventory.md#Get-bInventoryDataWmiScan)
* [Get-bInventoryOverview](Inventory.md#Get-bInventoryOverview)


## Get-bInventoryAppScan
> Get InventoryAppScans using `GET` 
```
Get-bInventoryAppScan [<CommonParameters>]
Get-bInventoryAppScan [-EndpointId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Get-bInventoryDataCustomScan
> List InventoryDataCustomScans using `GET` 
```
Get-bInventoryDataCustomScan [-EndpointId <Guid>] [-TemplateName <String>] [<CommonParameters>]
Get-bInventoryDataCustomScan -Latest [-EndpointId <Guid>] -TemplateName <String> [<CommonParameters>]
Get-bInventoryDataCustomScan -EndpointId <Guid> -TemplateName <String> -Scan <String> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* TemplateName `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Latest `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
* Scan `<String>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Get-bInventoryDataFileScan
> Get InventoryDataFileScans using `GET` 
```
Get-bInventoryDataFileScan [<CommonParameters>]
Get-bInventoryDataFileScan [-EndpointId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Remove-bInventoryDataFileScan
> Remove InventoryDataFileScan using `DELETE` 
```
Remove-bInventoryDataFileScan [-EndpointId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Get-bInventoryDataHardwareScan
> List InventoryDataHardwareScans using `GET` 
```
Get-bInventoryDataHardwareScan -EndpointId <Guid> [-TemplateName <String>] [<CommonParameters>]
Get-bInventoryDataHardwareScan -Latest -EndpointId <Guid> -TemplateName <String> [<CommonParameters>]
Get-bInventoryDataHardwareScan -EndpointId <Guid> -TemplateName <String> -Scan <String> [<CommonParameters>]
```
### Parameters
* TemplateName `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* EndpointId `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Latest `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
* Scan `<String>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Get-bInventoryDataRegistryScan
> Get InventoryDataRegistryScans using `GET` 
```
Get-bInventoryDataRegistryScan [<CommonParameters>]
Get-bInventoryDataRegistryScan [-EndpointId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Remove-bInventoryDataRegistryScan
> Remove InventoryDataRegistryScan using `DELETE` 
```
Remove-bInventoryDataRegistryScan [-EndpointId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Get-bInventoryDataSnmpScan
> Get InventoryDataSnmpScans using `GET` 
```
Get-bInventoryDataSnmpScan [-EndpointId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Get-bInventoryDataWmiScan
> List InventoryDataWmiScans using `GET` 
```
Get-bInventoryDataWmiScan [-EndpointId <Guid>] [-TemplateName <String>] [<CommonParameters>]
Get-bInventoryDataWmiScan -Latest [-EndpointId <Guid>] -TemplateName <String> [<CommonParameters>]
Get-bInventoryDataWmiScan -EndpointId <Guid> -TemplateName <String> -Scan <String> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* TemplateName `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Latest `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
* Scan `<String>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Get-bInventoryOverview
> Get InventoryOverviews using `GET` 
```
Get-bInventoryOverview [<CommonParameters>]
Get-bInventoryOverview [-EndpointId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```

