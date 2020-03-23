# Cmdlets zu Software
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


## Get-bApp
> Get Apps using `GET` 
```
Get-bApp [<CommonParameters>]
Get-bApp [-Id] <Guid> [<CommonParameters>]
Get-bApp -OrgUnit <Guid> [<CommonParameters>]
Get-bApp -EndpointId <Guid> [<CommonParameters>]
```
### Parameters
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
## Add-bApplication
> Add Application using `POST`. Use [`New-bApplication`](#New-bApplication) to create a draft object to pipe in. 
```
Add-bApplication [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Get-bApplication
> Get Applications using `GET` 
```
Get-bApplication [<CommonParameters>]
Get-bApplication [-Id] <Guid> [<CommonParameters>]
Get-bApplication -OrgUnit <Guid> [<CommonParameters>]
Get-bApplication -EndpointId <Guid> [<CommonParameters>]
```
### Parameters
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
## New-bApplication
> Creates draft object in memory 
```
New-bApplication -update [-Vendor <String>] [-Name <String>] [-ValidForOS {NT4 | Windows2000 | WindowsXP | WindowsVista | Windows7 | Windows8 | Windows10 | WindowsServer2003 | WindowsServer2008 | WindowsServer2008R2 | WindowsServer2012 | WindowsXP_x64 | WindowsVista_x64 | Windows7_x64 | Windows8_x64 | Windows10_x64 | WindowsServer2003_x64 | WindowsServer2008_x64 | WindowsServer2008R2_x64 | WindowsServer2012_x64 | WindowsServer2016_x64}] [-Comment <String>] [-Category <String>] [-Version <String>] [-ParentId <Guid>] [-EnableAUT] [-Installation <Object>] [-Uninstallation <Object>] [-ConsistencyChecks <String>] [-SecurityContext {AnyUser | InstallUser | LocalInstallUser | LocalSystem | LoggedOnUser | RegisteredUser | SpecifiedUser}] [-Cost <Single>] [-Files <Object[]>] [-Licenses <Object[]>] [-AUT <Object[]>] [<CommonParameters>]
New-bApplication [-Vendor] <String> [-Name] <String> [-ValidForOS] {NT4 | Windows2000 | WindowsXP | WindowsVista | Windows7 | Windows8 | Windows10 | WindowsServer2003 | WindowsServer2008 | WindowsServer2008R2 | WindowsServer2012 | WindowsXP_x64 | WindowsVista_x64 | Windows7_x64 | Windows8_x64 | Windows10_x64 | WindowsServer2003_x64 | WindowsServer2008_x64 | WindowsServer2008R2_x64 | WindowsServer2012_x64 | WindowsServer2016_x64} [-Comment <String>] [-Category <String>] [-Version <String>] [-ParentId <Guid>] [-EnableAUT] [-Installation <Object>] [-Uninstallation <Object>] [-ConsistencyChecks <String>] [-SecurityContext {AnyUser | InstallUser | LocalInstallUser | LocalSystem | LoggedOnUser | RegisteredUser | SpecifiedUser}] [-Cost <Single>] [-Files <Object[]>] [-Licenses <Object[]>] [-AUT <Object[]>] [<CommonParameters>]
```
### Parameters
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
## Remove-bApplication
> Remove Application using `DELETE` 
```
Remove-bApplication [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Set-bApplication
> Set Application using `PATCH. Use [`New-bApplication -update`](#New-bApplication) to create a draft object to pipe in. 
```
Set-bApplication [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
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
## New-bApplicationData
> Creates draft object in memory 
```
New-bApplicationData [[-Command] <String>] [[-Parameter] <String>] [-ResponseFile <String>] [-Engine <String>] [-EngineFile <String>] [-Options <Object>] [-UserSettings <Object>] [<CommonParameters>]
New-bApplicationData -install [[-Command] <String>] [[-Parameter] <String>] [-ResponseFile <String>] [-Engine <String>] [-EngineFile <String>] [-Options <Object>] [-UserSettings <Object>] [<CommonParameters>]
```
### Parameters
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
## New-bApplicationFile
> Creates draft object in memory 
```
New-bApplicationFile [-Source] <String> [-Type] {FolderWithSubFolders | SingleFolder | File} [<CommonParameters>]
```
### Parameters
* Source `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* Type `<FileType>`
  > [ValidateSet("File","FolderWithSubFolders","SingleFolder")]
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bApplicationLicense
> Creates draft object in memory 
```
New-bApplicationLicense [-LicenseKey] <String> [[-Count] <UInt16>] [[-Offline] <UInt16>] [<CommonParameters>]
```
### Parameters
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
## New-bApplicationOption
> Creates draft object in memory 
```
New-bApplicationOption [-RebootBehaviour {NoReboot | Reboot | AppReboot | DeferrableReboot}] [-RemoveUnknownSoftware] [-UseBbt] [-VisibleExecution {Silent | NeedsDesktop | VisibleWhenuserLoggedOn}] [-CopyLocally] [-DisableInputDevices] [<CommonParameters>]
New-bApplicationOption -install [-RebootBehaviour {NoReboot | Reboot | AppReboot | DeferrableReboot}] [-RemoveUnknownSoftware] [-UseBbt] [-VisibleExecution {Silent | NeedsDesktop | VisibleWhenuserLoggedOn}] [-CopyLocally] [-DisableInputDevices] [-AllowReinstall] [-DontSetAsInstalled] [-MapShare] [-Target <String>] [<CommonParameters>]
```
### Parameters
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
## New-bApplicationUserSettings
> Creates draft object in memory 
```
New-bApplicationUserSettings [-baramundiDeployScript <String>] [-validForInstallUser] [-RunBdsVisible] [-CopyScriptToClient] [<CommonParameters>]
New-bApplicationUserSettings -install [-baramundiDeployScript <String>] [-validForInstallUser] [-RunBdsVisible] [-CopyScriptToClient] [-ExecuteAtEveryLogin] [<CommonParameters>]
```
### Parameters
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
## New-bAutFileRule
> Creates draft object in memory 
```
New-bAutFileRule [-FileName <String>] [-FileSize <UInt64>] [-Date <String>] [-CRC <UInt64>] [-Version <String>] [-Company <String>] [-ProductName <String>] [-ProductVersion <String>] [-InternalName <String>] [-Language <String>] [-FileDescription <String>] [-FileVersionNumeric <String>] [-CommandLine <String>] [<CommonParameters>]
```
### Parameters
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
## Search-bSoftware
> Search Softwares using `GET` 
```
Search-bSoftware [-Term] <String> [<CommonParameters>]
```
### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
## Get-bSoftwareScanRule
> Get SoftwareScanRules using `GET` 
```
Get-bSoftwareScanRule [<CommonParameters>]
```
### Parameters

