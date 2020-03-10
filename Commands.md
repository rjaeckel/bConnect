# Cmdlets exported by this module
* [Initialize-bConnect](#initialize-bconnect) ( *[Parameters](#parameters)* )
* [Clear-bConnect](#clear-bconnect) ( *[Parameters](#parameters-1)* )
* [Get-bApp](#get-bapp) ( *[Parameters](#parameters-2)* )
* [Add-bApplication](#add-bapplication) ( *[Parameters](#parameters-3)* )
* [Get-bApplication](#get-bapplication) ( *[Parameters](#parameters-4)* )
* [Remove-bApplication](#remove-bapplication) ( *[Parameters](#parameters-5)* )
* [Set-bApplication](#set-bapplication) ( *[Parameters](#parameters-6)* )
* [Get-bBootEnvironment](#get-bbootenvironment) ( *[Parameters](#parameters-7)* )
* [Add-bDynamicGroup](#add-bdynamicgroup) ( *[Parameters](#parameters-8)* )
* [Get-bDynamicGroup](#get-bdynamicgroup) ( *[Parameters](#parameters-9)* )
* [Remove-bDynamicGroup](#remove-bdynamicgroup) ( *[Parameters](#parameters-10)* )
* [Set-bDynamicGroup](#set-bdynamicgroup) ( *[Parameters](#parameters-11)* )
* [Add-bEndpoint](#add-bendpoint) ( *[Parameters](#parameters-12)* )
* [Get-bEndpoint](#get-bendpoint) ( *[Parameters](#parameters-13)* )
* [Remove-bEndpoint](#remove-bendpoint) ( *[Parameters](#parameters-14)* )
* [Set-bEndpoint](#set-bendpoint) ( *[Parameters](#parameters-15)* )
* [Get-bEndpointInvSoftware](#get-bendpointinvsoftware) ( *[Parameters](#parameters-16)* )
* [Get-bHardwareProfile](#get-bhardwareprofile) ( *[Parameters](#parameters-17)* )
* [Get-bIcon](#get-bicon) ( *[Parameters](#parameters-18)* )
* [Get-bInfo](#get-binfo) ( *[Parameters](#parameters-19)* )
* [Get-bInventoryAppScan](#get-binventoryappscan) ( *[Parameters](#parameters-20)* )
* [Get-bInventoryDataCustomScan](#get-binventorydatacustomscan) ( *[Parameters](#parameters-21)* )
* [Get-bInventoryDataFileScan](#get-binventorydatafilescan) ( *[Parameters](#parameters-22)* )
* [Remove-bInventoryDataFileScan](#remove-binventorydatafilescan) ( *[Parameters](#parameters-23)* )
* [Get-bInventoryDataHardwareScan](#get-binventorydatahardwarescan) ( *[Parameters](#parameters-24)* )
* [Get-bInventoryDataRegistryScan](#get-binventorydataregistryscan) ( *[Parameters](#parameters-25)* )
* [Remove-bInventoryDataRegistryScan](#remove-binventorydataregistryscan) ( *[Parameters](#parameters-26)* )
* [Get-bInventoryDataSnmpScan](#get-binventorydatasnmpscan) ( *[Parameters](#parameters-27)* )
* [Get-bInventoryDataWmiScan](#get-binventorydatawmiscan) ( *[Parameters](#parameters-28)* )
* [Get-bInventoryOverview](#get-binventoryoverview) ( *[Parameters](#parameters-29)* )
* [Get-bJob](#get-bjob) ( *[Parameters](#parameters-30)* )
* [Add-bJobInstance](#add-bjobinstance) ( *[Parameters](#parameters-31)* )
* [Get-bJobInstance](#get-bjobinstance) ( *[Parameters](#parameters-32)* )
* [Remove-bJobInstance](#remove-bjobinstance) ( *[Parameters](#parameters-33)* )
* [Set-bJobInstance](#set-bjobinstance) ( *[Parameters](#parameters-34)* )
* [Add-bKioskJob](#add-bkioskjob) ( *[Parameters](#parameters-35)* )
* [Get-bKioskJob](#get-bkioskjob) ( *[Parameters](#parameters-36)* )
* [Remove-bKioskJob](#remove-bkioskjob) ( *[Parameters](#parameters-37)* )
* [Add-bOrgUnit](#add-borgunit) ( *[Parameters](#parameters-38)* )
* [Get-bOrgUnit](#get-borgunit) ( *[Parameters](#parameters-39)* )
* [Remove-bOrgUnit](#remove-borgunit) ( *[Parameters](#parameters-40)* )
* [Set-bOrgUnit](#set-borgunit) ( *[Parameters](#parameters-41)* )
* [Get-bSoftwareScanRule](#get-bsoftwarescanrule) ( *[Parameters](#parameters-42)* )
* [Add-bStaticGroup](#add-bstaticgroup) ( *[Parameters](#parameters-43)* )
* [Get-bStaticGroup](#get-bstaticgroup) ( *[Parameters](#parameters-44)* )
* [Remove-bStaticGroup](#remove-bstaticgroup) ( *[Parameters](#parameters-45)* )
* [Set-bStaticGroup](#set-bstaticgroup) ( *[Parameters](#parameters-46)* )
* [Get-bVariable](#get-bvariable) ( *[Parameters](#parameters-47)* )
* [Set-bVariable](#set-bvariable) ( *[Parameters](#parameters-48)* )
* [Get-bVersion](#get-bversion) ( *[Parameters](#parameters-49)* )
* [Search-bEndpoint](#search-bendpoint) ( *[Parameters](#parameters-50)* )
* [Search-bGroup](#search-bgroup) ( *[Parameters](#parameters-51)* )
* [Search-bJob](#search-bjob) ( *[Parameters](#parameters-52)* )
* [Search-bOrgUnit](#search-borgunit) ( *[Parameters](#parameters-53)* )
* [Search-bSoftware](#search-bsoftware) ( *[Parameters](#parameters-54)* )
* [Expand-bEndpointOptions](#expand-bendpointoptions) ( *[Parameters](#parameters-55)* )
* [Merge-bEndpointOptions](#merge-bendpointoptions) ( *[Parameters](#parameters-56)* )
* [New-bApplication](#new-bapplication) ( *[Parameters](#parameters-57)* )
* [New-bApplicationData](#new-bapplicationdata) ( *[Parameters](#parameters-58)* )
* [New-bApplicationFile](#new-bapplicationfile) ( *[Parameters](#parameters-59)* )
* [New-bApplicationLicense](#new-bapplicationlicense) ( *[Parameters](#parameters-60)* )
* [New-bApplicationOption](#new-bapplicationoption) ( *[Parameters](#parameters-61)* )
* [New-bApplicationUserSettings](#new-bapplicationusersettings) ( *[Parameters](#parameters-62)* )
* [New-bAutFileRule](#new-bautfilerule) ( *[Parameters](#parameters-63)* )
* [New-bDynamicGroup](#new-bdynamicgroup) ( *[Parameters](#parameters-64)* )
* [New-bEndpoint](#new-bendpoint) ( *[Parameters](#parameters-65)* )
* [New-bOrgUnit](#new-borgunit) ( *[Parameters](#parameters-66)* )
* [New-bOrgUnitExtension](#new-borgunitextension) ( *[Parameters](#parameters-67)* )
* [New-bStaticGroup](#new-bstaticgroup) ( *[Parameters](#parameters-68)* )
* [New-bVariable](#new-bvariable) ( *[Parameters](#parameters-69)* )
## Initialize
### Initialize-bConnect
> Setup this module for use against your server
```
Initialize-bConnect [-HostName] <String> [[-UserName] <String>] [-Password] <SecureString> [-SkipCertificateCheck] [<CommonParameters>]
```
#### Parameters
* HostName `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* UserName `<String>`
  ```
  Position : 2
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Password `<SecureString>`
  ```
  Position : 3
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* SkipCertificateCheck `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
### Clear-bConnect
> Clear the memory from your server connection
```
Clear-bConnect [<CommonParameters>]
```
#### Parameters
## Commands by Controller
### Controller App
#### Get-bApp
> Get Apps using `GET`
```
Get-bApp [<CommonParameters>]
Get-bApp [-Id] <Guid> [<CommonParameters>]
Get-bApp -OrgUnit <Guid> [<CommonParameters>]
Get-bApp -EndpointId <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
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
* OrgUnit `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
### Controller Application
#### Add-bApplication
> Add Application using `POST`. Use `New-bApplication` to create a draft object to pipe in.
```
Add-bApplication [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
#### Get-bApplication
> Get Applications using `GET`
```
Get-bApplication [<CommonParameters>]
Get-bApplication [-Id] <Guid> [<CommonParameters>]
Get-bApplication -OrgUnit <Guid> [<CommonParameters>]
Get-bApplication -EndpointId <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
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
* OrgUnit `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
#### Remove-bApplication
> Remove Application using `DELETE`
```
Remove-bApplication [-Id] <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
#### Set-bApplication
> Set Application using `PATCH. Use `New-bApplication -update` to create a draft object to pipe in.
```
Set-bApplication [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
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
### Controller BootEnvironment
#### Get-bBootEnvironment
> Get BootEnvironment using `GET`
```
Get-bBootEnvironment [<CommonParameters>]
Get-bBootEnvironment [-Id] <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
### Controller DynamicGroup
#### Add-bDynamicGroup
> Add DynamicGroup using `POST`. Use `New-bDynamicGroup` to create a draft object to pipe in.
```
Add-bDynamicGroup [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
#### Get-bDynamicGroup
> Get DynamicGroups using `GET`
```
Get-bDynamicGroup [<CommonParameters>]
Get-bDynamicGroup [-Id] <Guid> [<CommonParameters>]
Get-bDynamicGroup -OrgUnit <Guid> [<CommonParameters>]
```
##### Parameters
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
#### Remove-bDynamicGroup
> Remove DynamicGroup using `DELETE`
```
Remove-bDynamicGroup [-Id] <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
#### Set-bDynamicGroup
> Set DynamicGroup using `PATCH. Use `New-bDynamicGroup -update` to create a draft object to pipe in.
```
Set-bDynamicGroup [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
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
### Controller Endpoint
#### Add-bEndpoint
> Add Endpoint using `POST`. Use `New-bEndpoint` to create a draft object to pipe in.
```
Add-bEndpoint [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
#### Get-bEndpoint
> Get Endpoints using `GET`
```
Get-bEndpoint [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint [-Id] <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint -OrgUnit <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint -DynamicGroup <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint -StaticGroup <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint -User <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* InstalledSoftware `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* PubKey `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* SnmpData `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* DynamicGroup `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* OrgUnit `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* StaticGroup `<Guid>`
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
#### Remove-bEndpoint
> Remove Endpoint using `DELETE`
```
Remove-bEndpoint [-Id] <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
#### Set-bEndpoint
> Set Endpoint using `PATCH. Use `New-bEndpoint -update` to create a draft object to pipe in.
```
Set-bEndpoint [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
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
### Controller EndpointInvSoftware
#### Get-bEndpointInvSoftware
> Get EndpointInvSoftware using `GET`
```
Get-bEndpointInvSoftware [<CommonParameters>]
```
##### Parameters
### Controller HardwareProfile
#### Get-bHardwareProfile
> Get HardwareProfiles using `GET`
```
Get-bHardwareProfile [<CommonParameters>]
Get-bHardwareProfile [-Id] <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
### Controller Icon
#### Get-bIcon
> TODO
```
Get-bIcon [<CommonParameters>]
Get-bIcon -AppId <Guid> [<CommonParameters>]
Get-bIcon -Scope {App | Inventory} [<CommonParameters>]
```
##### Parameters
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
### Controller Info
#### Get-bInfo
> Get ../Info using `GET`
```
Get-bInfo [<CommonParameters>]
```
##### Parameters
### Controller InventoryAppScan
#### Get-bInventoryAppScan
> Get InventoryAppScans using `GET`
```
Get-bInventoryAppScan [<CommonParameters>]
Get-bInventoryAppScan [-EndpointId] <Guid> [<CommonParameters>]
```
##### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
### Controller InventoryDataCustomScan
#### Get-bInventoryDataCustomScan
> List InventoryDataCustomScans using `GET`
```
Get-bInventoryDataCustomScan [-EndpointId <Guid>] [-TemplateName <String>] [<CommonParameters>]
Get-bInventoryDataCustomScan -Latest [-EndpointId <Guid>] -TemplateName <String> [<CommonParameters>]
Get-bInventoryDataCustomScan -EndpointId <Guid> -TemplateName <String> -Scan <String> [<CommonParameters>]
```
##### Parameters
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
### Controller InventoryDataFileScan
#### Get-bInventoryDataFileScan
> Get InventoryDataFileScans using `GET`
```
Get-bInventoryDataFileScan [<CommonParameters>]
Get-bInventoryDataFileScan [-EndpointId] <Guid> [<CommonParameters>]
```
##### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
#### Remove-bInventoryDataFileScan
> Remove InventoryDataFileScan using `DELETE`
```
Remove-bInventoryDataFileScan [-EndpointId] <Guid> [<CommonParameters>]
```
##### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
### Controller InventoryDataHardwareScan
#### Get-bInventoryDataHardwareScan
> List InventoryDataHardwareScans using `GET`
```
Get-bInventoryDataHardwareScan -EndpointId <Guid> [-TemplateName <String>] [<CommonParameters>]
Get-bInventoryDataHardwareScan -Latest -EndpointId <Guid> -TemplateName <String> [<CommonParameters>]
Get-bInventoryDataHardwareScan -EndpointId <Guid> -TemplateName <String> -Scan <String> [<CommonParameters>]
```
##### Parameters
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
### Controller InventoryDataRegistryScan
#### Get-bInventoryDataRegistryScan
> Get InventoryDataRegistryScans using `GET`
```
Get-bInventoryDataRegistryScan [<CommonParameters>]
Get-bInventoryDataRegistryScan [-EndpointId] <Guid> [<CommonParameters>]
```
##### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
#### Remove-bInventoryDataRegistryScan
> Remove InventoryDataRegistryScan using `DELETE`
```
Remove-bInventoryDataRegistryScan [-EndpointId] <Guid> [<CommonParameters>]
```
##### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
### Controller InventoryDataSnmpScan
#### Get-bInventoryDataSnmpScan
> Get InventoryDataSnmpScans using `GET`
```
Get-bInventoryDataSnmpScan [-EndpointId] <Guid> [<CommonParameters>]
```
##### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
### Controller InventoryDataWmiScan
#### Get-bInventoryDataWmiScan
> List InventoryDataWmiScans using `GET`
```
Get-bInventoryDataWmiScan [-EndpointId <Guid>] [-TemplateName <String>] [<CommonParameters>]
Get-bInventoryDataWmiScan -Latest [-EndpointId <Guid>] -TemplateName <String> [<CommonParameters>]
Get-bInventoryDataWmiScan -EndpointId <Guid> -TemplateName <String> -Scan <String> [<CommonParameters>]
```
##### Parameters
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
### Controller InventoryOverview
#### Get-bInventoryOverview
> Get InventoryOverviews using `GET`
```
Get-bInventoryOverview [<CommonParameters>]
Get-bInventoryOverview [-EndpointId] <Guid> [<CommonParameters>]
```
##### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
### Controller Job
#### Get-bJob
> Get Jobs using `GET`
```
Get-bJob [-Steps] [<CommonParameters>]
Get-bJob [-Id] <Guid> [-Steps] [<CommonParameters>]
Get-bJob -OrgUnit <Guid> [-Steps] [<CommonParameters>]
Get-bJob -User <Guid> [-Steps] [<CommonParameters>]
```
##### Parameters
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
### Controller JobInstance
#### Add-bJobInstance
> Add JobInstance using `GET`
```
Add-bJobInstance [-EndpointId] <Guid> [-JobId] <Guid> [-StartIfExists] [<CommonParameters>]
```
##### Parameters
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
#### Get-bJobInstance
> Get JobInstances using `GET`
```
Get-bJobInstance [-Steps] [<CommonParameters>]
Get-bJobInstance [-Id] <Guid> [-Steps] [<CommonParameters>]
Get-bJobInstance -EndpointId <Guid> [-Steps] [<CommonParameters>]
Get-bJobInstance -JobId <Guid> [-Steps] [<CommonParameters>]
```
##### Parameters
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
#### Remove-bJobInstance
> Remove JobInstance using `DELETE`
```
Remove-bJobInstance [-Id] <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
#### Set-bJobInstance
> Set JobInstance using `GET`
```
Set-bJobInstance [-Id] <Guid> -cmd {Start | Stop | Resume} [<CommonParameters>]
```
##### Parameters
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
### Controller KioskJob
#### Add-bKioskJob
> Add KioskJob using `POST`. Use `New-bKioskJob` to create a draft object to pipe in.
```
Add-bKioskJob [-JobDefinitionId] <String> [-TargetId] <String> [<CommonParameters>]
```
##### Parameters
* JobDefinitionId `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* TargetId `<String>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
#### Get-bKioskJob
> Get KioskJobs using `GET`
```
Get-bKioskJob [-JobDefinitionId] <Guid> [<CommonParameters>]
Get-bKioskJob -EndpointId <Guid> [<CommonParameters>]
Get-bKioskJob -GroupId <Guid> [<CommonParameters>]
Get-bKioskJob -User <Guid> [<CommonParameters>]
```
##### Parameters
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
* User `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
#### Remove-bKioskJob
> Remove KioskJob using `DELETE`
```
Remove-bKioskJob [-KioskJobId] <Guid> [<CommonParameters>]
```
##### Parameters
* KioskJobId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
### Controller OrgUnit
#### Add-bOrgUnit
> Add OrgUnit using `POST`. Use `New-bOrgUnit` to create a draft object to pipe in.
```
Add-bOrgUnit [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
#### Get-bOrgUnit
> Get OrgUnits using `GET`
```
Get-bOrgUnit [<CommonParameters>]
Get-bOrgUnit [-Id] <Guid> [<CommonParameters>]
Get-bOrgUnit -OrgUnit <Guid> [<CommonParameters>]
```
##### Parameters
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
#### Remove-bOrgUnit
> Remove OrgUnit using `DELETE`
```
Remove-bOrgUnit [-Id] <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
#### Set-bOrgUnit
> Set OrgUnit using `PATCH. Use `New-bOrgUnit -update` to create a draft object to pipe in.
```
Set-bOrgUnit [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
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
### Controller SoftwareScanRule
#### Get-bSoftwareScanRule
> Get SoftwareScanRules using `GET`
```
Get-bSoftwareScanRule [<CommonParameters>]
```
##### Parameters
### Controller StaticGroup
#### Add-bStaticGroup
> Add StaticGroup using `POST`. Use `New-bStaticGroup` to create a draft object to pipe in.
```
Add-bStaticGroup [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
#### Get-bStaticGroup
> Get StaticGroups using `GET`
```
Get-bStaticGroup [<CommonParameters>]
Get-bStaticGroup [-Id] <Guid> [<CommonParameters>]
Get-bStaticGroup -OrgUnit <Guid> [<CommonParameters>]
```
##### Parameters
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
#### Remove-bStaticGroup
> Remove StaticGroup using `DELETE`
```
Remove-bStaticGroup [-Id] <Guid> [<CommonParameters>]
```
##### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
#### Set-bStaticGroup
> Set StaticGroup using `PATCH. Use `New-bStaticGroup -update` to create a draft object to pipe in.
```
Set-bStaticGroup [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters
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
### Controller Variable
#### Get-bVariable
> Get variables defined in specific Object-Scope (Client, Software, ...)
```
Get-bVariable [-Scope] {Device | MobileDevice | Job | OrgUnit | Software | HardwareProfile} [[-Category] <String>] [-ObjectId <Guid>] [<CommonParameters>]
Get-bVariable [-Scope] {Device | MobileDevice | Job | OrgUnit | Software | HardwareProfile} [-Category] <String> [-Name] <String> [-ObjectId <Guid>] [<CommonParameters>]
```
##### Parameters
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
#### Set-bVariable
> Set variables on specific Object (Client, Software, ...)
```
Set-bVariable [-Scope] {Device | MobileDevice | Job | OrgUnit | Software | HardwareProfile} [-ObjectId] <Guid> [-Variables] <Object[]> [<CommonParameters>]
```
##### Parameters
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
### Controller Version
#### Get-bVersion
> Get ../Version using `GET`
```
Get-bVersion [<CommonParameters>]
```
##### Parameters
### Controller Search
#### Search-bEndpoint
> Search Endpoints using `GET`
```
Search-bEndpoint [-Term] <String> [<CommonParameters>]
```
##### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
#### Search-bGroup
> Search Groups using `GET`
```
Search-bGroup [-Term] <String> [<CommonParameters>]
```
##### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
#### Search-bJob
> Search Jobs using `GET`
```
Search-bJob [-Term] <String> [<CommonParameters>]
```
##### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
#### Search-bOrgUnit
> Search OrgUnits using `GET`
```
Search-bOrgUnit [-Term] <String> [<CommonParameters>]
```
##### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
#### Search-bSoftware
> Search Softwares using `GET`
```
Search-bSoftware [-Term] <String> [<CommonParameters>]
```
##### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
## Helper Commands
### Expand-bEndpointOptions
> Helper to split up EndpointOptions
```
Expand-bEndpointOptions [-options] <UInt64> [<CommonParameters>]
```
#### Parameters
* options `<UInt64>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
### Merge-bEndpointOptions
> Helper to join up EndpointOptions
```
Merge-bEndpointOptions [[-ClientOptions] {EnableOsInstall | InheritAutoInstallation | EnableAUT | EnableEnergyManagement | Deactivated}] [[-UserOptions] {Initial | NotUsed | AlwaysUpdate | NeverUpdate}] [[-UserJobOptions] {AlwaysExecute | NeverExecute | ExecuteForPrimaryUser}] [<CommonParameters>]
```
#### Parameters
* ClientOptions `<ClientOptions>`
  ```
  Position : 1
  Required : false
  PipelineInput : true (ByValue)
  Aliases : 
  ```
* UserOptions `<PrimaryUserOptions>`
  ```
  Position : 2
  Required : false
  PipelineInput : true (ByValue)
  Aliases : 
  ```
* UserJobOptions `<UserJobOptions>`
  ```
  Position : 3
  Required : false
  PipelineInput : true (ByValue)
  Aliases : 
  ```
### New-bApplication
> Creates draft object in memory
```
New-bApplication -update [-Vendor <String>] [-Name <String>] [-ValidForOS {NT4 | Windows2000 | WindowsXP | WindowsVista | Windows7 | Windows8 | Windows10 | WindowsServer2003 | WindowsServer2008 | WindowsServer2008R2 | WindowsServer2012 | WindowsXP_x64 | WindowsVista_x64 | Windows7_x64 | Windows8_x64 | Windows10_x64 | WindowsServer2003_x64 | WindowsServer2008_x64 | WindowsServer2008R2_x64 | WindowsServer2012_x64 | WindowsServer2016_x64}] [-Comment <String>] [-Category <String>] [-Version <String>] [-ParentId <Guid>] [-EnableAUT] [-Installation <Object>] [-Uninstallation <Object>] [-ConsistencyChecks <String>] [-SecurityContext {AnyUser | InstallUser | LocalInstallUser | LocalSystem | LoggedOnUser | RegisteredUser | SpecifiedUser}] [-Cost <Single>] [-Files <Object[]>] [-Licenses <Object[]>] [-AUT <Object[]>] [<CommonParameters>]
New-bApplication [-Vendor] <String> [-Name] <String> [-ValidForOS] {NT4 | Windows2000 | WindowsXP | WindowsVista | Windows7 | Windows8 | Windows10 | WindowsServer2003 | WindowsServer2008 | WindowsServer2008R2 | WindowsServer2012 | WindowsXP_x64 | WindowsVista_x64 | Windows7_x64 | Windows8_x64 | Windows10_x64 | WindowsServer2003_x64 | WindowsServer2008_x64 | WindowsServer2008R2_x64 | WindowsServer2012_x64 | WindowsServer2016_x64} [-Comment <String>] [-Category <String>] [-Version <String>] [-ParentId <Guid>] [-EnableAUT] [-Installation <Object>] [-Uninstallation <Object>] [-ConsistencyChecks <String>] [-SecurityContext {AnyUser | InstallUser | LocalInstallUser | LocalSystem | LoggedOnUser | RegisteredUser | SpecifiedUser}] [-Cost <Single>] [-Files <Object[]>] [-Licenses <Object[]>] [-AUT <Object[]>] [<CommonParameters>]
```
#### Parameters
* AUT `<Object[]>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Category `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Comment `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ConsistencyChecks `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Cost `<Single>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* EnableAUT `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Files `<Object[]>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Installation `<Object>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Licenses `<Object[]>`
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
* SecurityContext `<SecurityContext>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Uninstallation `<Object>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ValidForOS `<ValidForOS[]>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Vendor `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Version `<String>`
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
### New-bApplicationData
> Creates draft object in memory
```
New-bApplicationData [[-Command] <String>] [[-Parameter] <String>] [-ResponseFile <String>] [-Engine <String>] [-EngineFile <String>] [-Options <Object>] [-UserSettings <Object>] [<CommonParameters>]
New-bApplicationData -install [[-Command] <String>] [[-Parameter] <String>] [-ResponseFile <String>] [-Engine <String>] [-EngineFile <String>] [-Options <Object>] [-UserSettings <Object>] [<CommonParameters>]
```
#### Parameters
* Command `<String>`
  ```
  Position : 1
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Parameter `<String>`
  ```
  Position : 2
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Engine `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* EngineFile `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Options `<Object>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ResponseFile `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* UserSettings `<Object>`
  > switch between un-/install 
switch between un-/install
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* install `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
### New-bApplicationFile
> Creates draft object in memory
```
New-bApplicationFile [-Source] <String> [-Type] <Object> [<CommonParameters>]
```
#### Parameters
* Source `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Type `<Object>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
### New-bApplicationLicense
> Creates draft object in memory
```
New-bApplicationLicense [-LicenseKey] <String> [[-Count] <UInt16>] [[-Offline] <UInt16>] [<CommonParameters>]
```
#### Parameters
* LicenseKey `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Count `<UInt16>`
  ```
  Position : 2
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Offline `<UInt16>`
  ```
  Position : 3
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
### New-bApplicationOption
> Creates draft object in memory
```
New-bApplicationOption [-RebootBehaviour {NoReboot | Reboot | AppReboot | DeferrableReboot}] [-RemoveUnknownSoftware] [-UseBbt] [-VisibleExecution {Silent | NeedsDesktop | VisibleWhenuserLoggedOn}] [-CopyLocally] [-DisableInputDevices] [<CommonParameters>]
New-bApplicationOption -install [-RebootBehaviour {NoReboot | Reboot | AppReboot | DeferrableReboot}] [-RemoveUnknownSoftware] [-UseBbt] [-VisibleExecution {Silent | NeedsDesktop | VisibleWhenuserLoggedOn}] [-CopyLocally] [-DisableInputDevices] [-AllowReinstall] [-DontSetAsInstalled] [-MapShare] [-Target <String>] [<CommonParameters>]
```
#### Parameters
* AllowReinstall `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* CopyLocally `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* DisableInputDevices `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* DontSetAsInstalled `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* MapShare `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* RebootBehaviour `<RebootBehaviour>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* RemoveUnknownSoftware `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Target `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* UseBbt `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* VisibleExecution `<VisibleExecution>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* install `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
### New-bApplicationUserSettings
> Creates draft object in memory
```
New-bApplicationUserSettings [-baramundiDeployScript <String>] [-validForInstallUser] [-RunBdsVisible] [-CopyScriptToClient] [<CommonParameters>]
New-bApplicationUserSettings -install [-baramundiDeployScript <String>] [-validForInstallUser] [-RunBdsVisible] [-CopyScriptToClient] [-ExecuteAtEveryLogin] [<CommonParameters>]
```
#### Parameters
* baramundiDeployScript `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* CopyScriptToClient `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ExecuteAtEveryLogin `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* RunBdsVisible `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* validForInstallUser `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* install `<SwitchParameter>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
### New-bAutFileRule
> Creates draft object in memory
```
New-bAutFileRule [-FileName <String>] [-FileSize <UInt64>] [-Date <String>] [-CRC <UInt64>] [-Version <String>] [-Company <String>] [-ProductName <String>] [-ProductVersion <String>] [-InternalName <String>] [-Language <String>] [-FileDescription <String>] [-FileVersionNumeric <String>] [-CommandLine <String>] [<CommonParameters>]
```
#### Parameters
* CommandLine `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Company `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* CRC `<UInt64>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Date `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* FileDescription `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* FileName `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* FileSize `<UInt64>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* FileVersionNumeric `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* InternalName `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Language `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ProductName `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ProductVersion `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Version `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
### New-bDynamicGroup
> Creates draft object in memory
```
New-bDynamicGroup -update [-Name <String>] [-Statement <String>] [-ParentId <Guid>] [-Comment <String>] [<CommonParameters>]
New-bDynamicGroup [-Name] <String> [-Statement] <String> [-ParentId <Guid>] [-Comment <String>] [<CommonParameters>]
```
#### Parameters
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
### New-bEndpoint
> Creates draft object in memory
```
New-bEndpoint -update [-DisplayName <String>] [-Type {Unknown | WindowsEndpoint | AndroidEndpoint | iOSEndpoint | MacEndpoint | WindowsPhoneEndpoint | NetworkEndpoint}] [-GuidOrgUnit <Guid>] [-Comments <String>] [-PrimaryUser <String>] [-Hostname <String>] [-Domain <String>] [-Options <UInt32>] [-PrimaryMac <String>] [-GuidHardwareProfile <Guid>] [-GuidBootEnvironment <Guid>] [-UserCategory <String>] [-Owner {Company | Private | Unknown}] [-ComplianceCheckCategory {Active | Inactive | InactiveTemporarily}] [-ComplianceCheckDisabledFrom <DateTime>] [-ComplianceCheckDisabledUntil <DateTime>] [-SerialNumber <String>] [-PublicKey <String>] [-ExtendedInternetMode] [-Mode {LAN | Internet | Dynamic}] [<CommonParameters>]
New-bEndpoint [-DisplayName] <String> [-Type] {Unknown | WindowsEndpoint | AndroidEndpoint | iOSEndpoint | MacEndpoint | WindowsPhoneEndpoint | NetworkEndpoint} [-GuidOrgUnit] <Guid> [-Comments <String>] [-PrimaryUser <String>] [-Hostname <String>] [-Domain <String>] [-Options <UInt32>] [-PrimaryMac <String>] [-GuidHardwareProfile <Guid>] [-GuidBootEnvironment <Guid>] [-UserCategory <String>] [-Owner {Company | Private | Unknown}] [-ComplianceCheckCategory {Active | Inactive | InactiveTemporarily}] [-ComplianceCheckDisabledFrom <DateTime>] [-ComplianceCheckDisabledUntil <DateTime>] [-SerialNumber <String>] [-PublicKey <String>] [-ExtendedInternetMode] [-Mode {LAN | Internet | Dynamic}] [<CommonParameters>]
```
#### Parameters
* Comments `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ComplianceCheckCategory `<ComplianceCheckCategory>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ComplianceCheckDisabledFrom `<DateTime>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* ComplianceCheckDisabledUntil `<DateTime>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* DisplayName `<String>`
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
* ExtendedInternetMode `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* GuidBootEnvironment `<Guid>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* GuidHardwareProfile `<Guid>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* GuidOrgUnit `<Guid>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Hostname `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Mode `<Mode>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Options `<UInt32>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Owner `<Owner>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* PrimaryMac `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* PrimaryUser `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* PublicKey `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* SerialNumber `<String>`
  ```
  Position : named
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
* UserCategory `<String>`
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
### New-bOrgUnit
> Creates draft object in memory
```
New-bOrgUnit -update [-Name <String>] [-ParentId <Guid>] [-Comment <String>] [-Extension <Object>] [<CommonParameters>]
New-bOrgUnit [-Name] <String> [-ParentId] <Guid> [-Comment <String>] [-Extension <Object>] [<CommonParameters>]
```
#### Parameters
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
### New-bOrgUnitExtension
> Creates draft object in memory
```
New-bOrgUnitExtension [-DIP <String>] [-Domain <String>] [-LocalAdminPassword <String>] [-EnableDHCP] [-InheritAutoInstallJobs] [-SubnetMast <String>] [-Defaultgateway <String>] [-DnsServer <String>] [-DnsServer2 <String>] [-DnsDomain <String>] [-WinsServer <String>] [-WinsServer2 <String>] [-AutoInstallJobs <Guid[]>] [-HardwareProfiles <Guid[]>] [-RequestableJobs <Guid[]>] [<CommonParameters>]
```
#### Parameters
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
### New-bStaticGroup
> Creates draft object in memory
```
New-bStaticGroup -update [-Name <String>] [-ParentId <Guid>] [-EndpointIds <Guid[]>] [-Comment <String>] [<CommonParameters>]
New-bStaticGroup [-Name] <String> [-ParentId <Guid>] [-EndpointIds <Guid[]>] [-Comment <String>] [<CommonParameters>]
```
#### Parameters
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
### New-bVariable
> Creates draft object in memory
```
New-bVariable [-Category] <String> [-Name] <String> [[-Value] <String>] [-Type {Unknown | Number | String | Date | Checkbox | Dropdownbox | DropdownListbox | Filelink | Folder | Password | Certificate}] [<CommonParameters>]
New-bVariable [-Category] <String> [-Name] <String> -UseDefault [-Type {Unknown | Number | String | Date | Checkbox | Dropdownbox | DropdownListbox | Filelink | Folder | Password | Certificate}] [<CommonParameters>]
```
#### Parameters
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

