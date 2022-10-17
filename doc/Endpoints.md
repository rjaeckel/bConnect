# Cmdlets regarding Endpoints
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


## Get-bBootEnvironment
> Get BootEnvironment using `GET` 
```
Get-bBootEnvironment [<CommonParameters>]
Get-bBootEnvironment [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Add-bEndpoint
> Add Endpoint using `POST`. Use [`New-bEndpoint`](#New-bEndpoint) to create a draft object to pipe in. 
```
Add-bEndpoint [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Get-bEndpoint
> Get Endpoints using `GET` 
```
Get-bEndpoint [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint [-Id] <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint -OrgUnit <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint -DynamicGroup <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint -StaticGroup <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint -User <String> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
Get-bEndpoint -UniversalDynamicGroup <Guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
```
### Parameters
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
* UniversalDynamicGroup `<Guid>`
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
## New-bEndpoint
> Creates draft object in memory 
```
New-bEndpoint -update [-DisplayName <String>] [-Type {Unknown | WindowsEndpoint | AndroidEndpoint | iOSEndpoint | MacEndpoint | WindowsPhoneEndpoint | NetworkEndpoint | IndustrialEndpoint}] [-GuidOrgUnit <Guid>] [-Comments <String>] [-PrimaryUser <String>] [-Hostname <String>] [-Domain <String>] [-Options <UInt32>] [-PrimaryMac <String>] [-GuidHardwareProfile <Guid>] [-GuidBootEnvironment <Guid>] [-UserCategory <String>] [-Owner {Company | Private | Unknown}] [-ComplianceCheckCategory {Active | Inactive | InactiveTemporarily}] [-ComplianceCheckDisabledFrom <DateTime>] [-ComplianceCheckDisabledUntil <DateTime>] [-SerialNumber <String>] [-PublicKey <String>] [-ExtendedInternetMode] [-Mode {LAN | Internet | Dynamic}] [<CommonParameters>]
New-bEndpoint [-DisplayName] <String> [-Type] {Unknown | WindowsEndpoint | AndroidEndpoint | iOSEndpoint | MacEndpoint | WindowsPhoneEndpoint | NetworkEndpoint | IndustrialEndpoint} [-GuidOrgUnit] <Guid> [-Comments <String>] [-PrimaryUser <String>] [-Hostname <String>] [-Domain <String>] [-Options <UInt32>] [-PrimaryMac <String>] [-GuidHardwareProfile <Guid>] [-GuidBootEnvironment <Guid>] [-UserCategory <String>] [-Owner {Company | Private | Unknown}] [-ComplianceCheckCategory {Active | Inactive | InactiveTemporarily}] [-ComplianceCheckDisabledFrom <DateTime>] [-ComplianceCheckDisabledUntil <DateTime>] [-SerialNumber <String>] [-PublicKey <String>] [-ExtendedInternetMode] [-Mode {LAN | Internet | Dynamic}] [<CommonParameters>]
```
### Parameters
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
## Remove-bEndpoint
> Remove Endpoint using `DELETE` 
```
Remove-bEndpoint [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Search-bEndpoint
> Search Endpoints using `GET` 
```
Search-bEndpoint [-Term] <String> [<CommonParameters>]
```
### Parameters
* Term `<String>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue)
  Aliases : 
  ```
## Set-bEndpoint
> Set Endpoint using `PATCH`. Use [`New-bEndpoint -update`](#New-bEndpoint) to create a draft object to pipe in. 
```
Set-bEndpoint [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
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
## Get-bEndpointInvSoftware
> Get EndpointInvSoftware using `GET` 
```
Get-bEndpointInvSoftware [<CommonParameters>]
```
### Parameters
## Expand-bEndpointOptions
> Helper to split up EndpointOptions 
```
Expand-bEndpointOptions [-options] <UInt64> [<CommonParameters>]
```
### Parameters
* options `<UInt64>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Merge-bEndpointOptions
> Helper to join up EndpointOptions 
```
Merge-bEndpointOptions [[-ClientOptions] {EnableOsInstall | InheritAutoInstallation | EnableAUT | EnableEnergyManagement | Deactivated}] [[-UserOptions] {Initial | NotUsed | AlwaysUpdate | NeverUpdate}] [[-UserJobOptions] {AlwaysExecute | NeverExecute | ExecuteForPrimaryUser}] [<CommonParameters>]
```
### Parameters
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
## Get-bEndpointSecret
> Get EndpointSecrets using `GET` 
```
Get-bEndpointSecret [-EndpointId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## New-bEndpointSecret
> Creates draft object in memory TODO 
```
New-bEndpointSecret [<CommonParameters>]
```
### Parameters
## Set-bEndpointSecret
> Set EndpointSecret using `PATCH`. Use [`New-bEndpointSecret -update`](#New-bEndpointSecret) to create a draft object to pipe in. 
```
Set-bEndpointSecret [-EndpointId] <Guid> [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
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
## Get-bHardwareProfile
> Get HardwareProfiles using `GET` 
```
Get-bHardwareProfile [<CommonParameters>]
Get-bHardwareProfile [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Test-bMacAddr
```
Test-bMacAddr [-MAC] <string> [<CommonParameters>]
```
### Parameters
* MAC `<string>`
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue)
  Aliases : None
  ```

