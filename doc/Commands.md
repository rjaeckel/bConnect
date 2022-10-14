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
### Cmdlets zu Container
* [Add-bDynamicGroup](Container.md#Add-bDynamicGroup)
* [Get-bDynamicGroup](Container.md#Get-bDynamicGroup)
* [New-bDynamicGroup](Container.md#New-bDynamicGroup)
* [Remove-bDynamicGroup](Container.md#Remove-bDynamicGroup)
* [Set-bDynamicGroup](Container.md#Set-bDynamicGroup)
* [Search-bGroup](Container.md#Search-bGroup)
* [Add-bOrgUnit](Container.md#Add-bOrgUnit)
* [Get-bOrgUnit](Container.md#Get-bOrgUnit)
* [New-bOrgUnit](Container.md#New-bOrgUnit)
* [Remove-bOrgUnit](Container.md#Remove-bOrgUnit)
* [Search-bOrgUnit](Container.md#Search-bOrgUnit)
* [Set-bOrgUnit](Container.md#Set-bOrgUnit)
* [New-bOrgUnitExtension](Container.md#New-bOrgUnitExtension)
* [Add-bStaticGroup](Container.md#Add-bStaticGroup)
* [Get-bStaticGroup](Container.md#Get-bStaticGroup)
* [New-bStaticGroup](Container.md#New-bStaticGroup)
* [Remove-bStaticGroup](Container.md#Remove-bStaticGroup)
* [Set-bStaticGroup](Container.md#Set-bStaticGroup)
* [Get-bUniversalDynamicGroup](Container.md#Get-bUniversalDynamicGroup)
### Cmdlets zu Jobs
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
### Cmdlets zu Endpoints
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
* [Get-bHardwareProfile](Endpoints.md#Get-bHardwareProfile)
* [Test-bMacAddr](Endpoints.md#Test-bMacAddr)
### Cmdlets zu Software
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
### Cmdlets zu Variablen
* [Get-bVariable](Variablen.md#Get-bVariable)
* [New-bVariable](Variablen.md#New-bVariable)
* [Set-bVariable](Variablen.md#Set-bVariable)
### Cmdlets zu Inventur
* [Get-bInventoryAppScan](Inventur.md#Get-bInventoryAppScan)
* [Get-bInventoryDataCustomScan](Inventur.md#Get-bInventoryDataCustomScan)
* [Get-bInventoryDataFileScan](Inventur.md#Get-bInventoryDataFileScan)
* [Remove-bInventoryDataFileScan](Inventur.md#Remove-bInventoryDataFileScan)
* [Get-bInventoryDataHardwareScan](Inventur.md#Get-bInventoryDataHardwareScan)
* [Get-bInventoryDataRegistryScan](Inventur.md#Get-bInventoryDataRegistryScan)
* [Remove-bInventoryDataRegistryScan](Inventur.md#Remove-bInventoryDataRegistryScan)
* [Get-bInventoryDataSnmpScan](Inventur.md#Get-bInventoryDataSnmpScan)
* [Get-bInventoryDataWmiScan](Inventur.md#Get-bInventoryDataWmiScan)
* [Get-bInventoryOverview](Inventur.md#Get-bInventoryOverview)
### Cmdlets zu Kiosk
* [Get-bIcon](Kiosk.md#Get-bIcon)
* [Add-bKioskJob](Kiosk.md#Add-bKioskJob)
* [Get-bKioskJob](Kiosk.md#Get-bKioskJob)
* [Remove-bKioskJob](Kiosk.md#Remove-bKioskJob)
### Cmdlets zu _scaffolding
* [bEnumType](_scaffolding.md#bEnumType)
* [bsetableGet](_scaffolding.md#bsetableGet)
* [bsetable](_scaffolding.md#bsetable)
* [bsearchable](_scaffolding.md#bsearchable)
* [bremovable](_scaffolding.md#bremovable)
* [bInitTypes](_scaffolding.md#bInitTypes)
* [bgettable](_scaffolding.md#bgettable)
* [baddible](_scaffolding.md#baddible)
* [baddibleGet](_scaffolding.md#baddibleGet)
* [bdocComment](_scaffolding.md#bdocComment)
* [beditable](_scaffolding.md#beditable)
* [bgetableTpl](_scaffolding.md#bgetableTpl)
* [bExpandEnumFlags](_scaffolding.md#bExpandEnumFlags)

