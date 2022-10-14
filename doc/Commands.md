# Cmdlets exported by this module
## API-Initialization
### Clear-bConnect
> Clear the memory from your server connection 
```
Clear-bConnect [<CommonParameters>]
```
#### Parameters
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
### Invoke-bConnect
> (internal) Invoke webrequest against bConnect API 
```
Invoke-bConnect [-controller] <String> [[-method] <String>] [[-Parameters] <Hashtable>] [-Data <Object>] -ApiRoot <Uri> [-bConnectVersion <Version>] [<CommonParameters>]
```
#### Parameters
* controller `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : false
  Aliases : 
  ```
* method `<String>`
  > [ValidateSet( "json" )] #, "xml")]
            [string]$format="json",
  ```
  Position : 2
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* Parameters `<Hashtable>`
  ```
  Position : 3
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* bConnectVersion `<Version>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* Data `<Object>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByValue)
  Aliases : 
  ```
* ApiRoot `<Uri>`
  ```
  Position : named
  Required : true
  PipelineInput : false
  Aliases : 
  ```
### Test-bConnect
> Verify the version of the server against your scripts 
```
Test-bConnect [-bMSVersion <Version>] [-bConnectVersion <Version>] [<CommonParameters>]
```
#### Parameters
* bConnectVersion `<Version>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
* bMSVersion `<Version>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```
### Export-bConnectCredentials
```
Export-bConnectCredentials [-Path] <FileInfo> [-Force] [-Confirm] [<CommonParameters>]
```
#### Parameters
* Path `<FileInfo>`
  ```
  Position : 0
  Required : true
  PipelineInput : false
  Aliases : None
  ```
* Confirm `<switch>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
* Force `<switch>`
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ```
### Import-bConnectCredentials
```
Import-bConnectCredentials [-Path] <FileInfo> [<CommonParameters>]
```
#### Parameters
* Path `<FileInfo>`
  ```
  Position : 0
  Required : true
  PipelineInput : false
  Aliases : None
  ```
### Get-bInfo
> Get ../Info using `GET` 
```
Get-bInfo [<CommonParameters>]
```
#### Parameters
### Get-bVersion
> Get ../Version using `GET` 
```
Get-bVersion [<CommonParameters>]
```
#### Parameters
## API-Endpoints
### Cmdlets regarding Containers
* [Add-bDynamicGroup](Containers.md#Add-bDynamicGroup)
* [Get-bDynamicGroup](Containers.md#Get-bDynamicGroup)
* [New-bDynamicGroup](Containers.md#New-bDynamicGroup)
* [Remove-bDynamicGroup](Containers.md#Remove-bDynamicGroup)
* [Set-bDynamicGroup](Containers.md#Set-bDynamicGroup)
* [Search-bGroup](Containers.md#Search-bGroup)
* [Add-bOrgUnit](Containers.md#Add-bOrgUnit)
* [Get-bOrgUnit](Containers.md#Get-bOrgUnit)
* [New-bOrgUnit](Containers.md#New-bOrgUnit)
* [Remove-bOrgUnit](Containers.md#Remove-bOrgUnit)
* [Search-bOrgUnit](Containers.md#Search-bOrgUnit)
* [Set-bOrgUnit](Containers.md#Set-bOrgUnit)
* [New-bOrgUnitExtension](Containers.md#New-bOrgUnitExtension)
* [Add-bStaticGroup](Containers.md#Add-bStaticGroup)
* [Get-bStaticGroup](Containers.md#Get-bStaticGroup)
* [New-bStaticGroup](Containers.md#New-bStaticGroup)
* [Remove-bStaticGroup](Containers.md#Remove-bStaticGroup)
* [Set-bStaticGroup](Containers.md#Set-bStaticGroup)
* [Get-bUniversalDynamicGroup](Containers.md#Get-bUniversalDynamicGroup)
### Cmdlets regarding Jobs
* [Add-bJob](Jobs.md#Add-bJob)
* [Get-bJob](Jobs.md#Get-bJob)
* [New-bJob](Jobs.md#New-bJob)
* [Remove-bJob](Jobs.md#Remove-bJob)
* [Search-bJob](Jobs.md#Search-bJob)
* [Set-bJob](Jobs.md#Set-bJob)
* [Add-bJobInstance](Jobs.md#Add-bJobInstance)
* [Get-bJobInstance](Jobs.md#Get-bJobInstance)
* [Remove-bJobInstance](Jobs.md#Remove-bJobInstance)
* [Set-bJobInstance](Jobs.md#Set-bJobInstance)
* [New-bJobStep](Jobs.md#New-bJobStep)
### Cmdlets regarding Endpoints
* [Get-bBootEnvironment](Endpoints.md#Get-bBootEnvironment)
* [Add-bEndpoint](Endpoints.md#Add-bEndpoint)
* [Get-bEndpoint](Endpoints.md#Get-bEndpoint)
* [New-bEndpoint](Endpoints.md#New-bEndpoint)
* [Remove-bEndpoint](Endpoints.md#Remove-bEndpoint)
* [Search-bEndpoint](Endpoints.md#Search-bEndpoint)
* [Set-bEndpoint](Endpoints.md#Set-bEndpoint)
* [Get-bEndpointInvSoftware](Endpoints.md#Get-bEndpointInvSoftware)
* [Expand-bEndpointOptions](Endpoints.md#Expand-bEndpointOptions)
* [Merge-bEndpointOptions](Endpoints.md#Merge-bEndpointOptions)
* [Get-bEndpointSecret](Endpoints.md#Get-bEndpointSecret)
* [New-bEndpointSecret](Endpoints.md#New-bEndpointSecret)
* [Set-bEndpointSecret](Endpoints.md#Set-bEndpointSecret)
* [Get-bHardwareProfile](Endpoints.md#Get-bHardwareProfile)
* [Test-bMacAddr](Endpoints.md#Test-bMacAddr)
### Cmdlets regarding Software
* [Get-bApp](Software.md#Get-bApp)
* [Add-bApplication](Software.md#Add-bApplication)
* [Get-bApplication](Software.md#Get-bApplication)
* [New-bApplication](Software.md#New-bApplication)
* [Remove-bApplication](Software.md#Remove-bApplication)
* [Set-bApplication](Software.md#Set-bApplication)
* [New-bApplicationData](Software.md#New-bApplicationData)
* [New-bApplicationFile](Software.md#New-bApplicationFile)
* [New-bApplicationLicense](Software.md#New-bApplicationLicense)
* [New-bApplicationOption](Software.md#New-bApplicationOption)
* [New-bApplicationUserSettings](Software.md#New-bApplicationUserSettings)
* [New-bAutFileRule](Software.md#New-bAutFileRule)
* [Search-bSoftware](Software.md#Search-bSoftware)
* [Get-bSoftwareScanRule](Software.md#Get-bSoftwareScanRule)
### Cmdlets regarding Variables
* [Get-bVariable](Variables.md#Get-bVariable)
* [New-bVariable](Variables.md#New-bVariable)
* [Set-bVariable](Variables.md#Set-bVariable)
### Cmdlets regarding Inventory
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
### Cmdlets regarding Kiosk
* [Get-bIcon](Kiosk.md#Get-bIcon)
* [Add-bKioskJob](Kiosk.md#Add-bKioskJob)
* [Get-bKioskJob](Kiosk.md#Get-bKioskJob)
* [New-bKioskJob](Kiosk.md#New-bKioskJob)
* [Remove-bKioskJob](Kiosk.md#Remove-bKioskJob)
### Cmdlets regarding _scaffolding
* [baddibleGet](_scaffolding.md#baddibleGet)
* [bInitTypes](_scaffolding.md#bInitTypes)
* [bgettable](_scaffolding.md#bgettable)
* [bgetableTpl](_scaffolding.md#bgetableTpl)
* [bExpandEnumFlags](_scaffolding.md#bExpandEnumFlags)
* [bEnumType](_scaffolding.md#bEnumType)
* [beditable](_scaffolding.md#beditable)
* [bdocComment](_scaffolding.md#bdocComment)
* [bsearchable](_scaffolding.md#bsearchable)
* [baddible](_scaffolding.md#baddible)
* [bsetable](_scaffolding.md#bsetable)
* [bsetableGet](_scaffolding.md#bsetableGet)
* [bremovable](_scaffolding.md#bremovable)

