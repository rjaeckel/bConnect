# Cmdlets regarding Server
* [Add-bIpNetwork](Server.md#Add-bIpNetwork)
* [Edit-bIpNetwork](Server.md#Edit-bIpNetwork)
* [Get-bIpNetwork](Server.md#Get-bIpNetwork)
* [New-bIpNetwork](Server.md#New-bIpNetwork)
* [Remove-bIpNetwork](Server.md#Remove-bIpNetwork)
* [New-bIpNetworkScope](Server.md#New-bIpNetworkScope)
* [Get-bServerState](Server.md#Get-bServerState)


## Add-bIpNetwork
> Add IpNetwork using `POST`. Use [`New-bIpNetwork`](#New-bIpNetwork) to create a draft object to pipe in. 
```
Add-bIpNetwork [-InputObject] <Object> [<CommonParameters>]
```
### Parameters
* InputObject `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Edit-bIpNetwork
> Update IpNetwork using `PATCH`. Use [`New-bIpNetwork -update`](#New-bIpNetwork) to create a draft object to pipe in. 
```
Edit-bIpNetwork [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
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
## Get-bIpNetwork
> Get IpNetworks using `GET` 
```
Get-bIpNetwork [<CommonParameters>]
Get-bIpNetwork [-Id] <Guid> [<CommonParameters>]
Get-bIpNetwork -Name <String> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* Name `<String>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bIpNetwork
> Creates draft object in memory 
```
New-bIpNetwork -update [-Name <String>] [-Scopes <Object[]>] [-DIPs <String>] [-WOLRelay <String>] [-BandwithMode <String>] [-MaxBandwidthKbits <UInt32>] [-DuplicateWOLToThisNetwork] [<CommonParameters>]
New-bIpNetwork [-Name] <String> -Scopes <Object[]> [-DIPs <String>] [-WOLRelay <String>] [-BandwithMode <String>] [-MaxBandwidthKbits <UInt32>] [-DuplicateWOLToThisNetwork] [<CommonParameters>]
```
### Parameters
* BandwithMode `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* DIPs `<String>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* DuplicateWOLToThisNetwork `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* MaxBandwidthKbits `<UInt32>`
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
* Scopes `<Object[]>`
  ```
  Position : named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* WOLRelay `<String>`
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
## Remove-bIpNetwork
> Remove IpNetwork using `DELETE` 
```
Remove-bIpNetwork [-Id] <Guid> [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## New-bIpNetworkScope
> Creates draft object in memory 
```
New-bIpNetworkScope [-NetworkAddress] <Object> [-SubnetMask] <Object> [<CommonParameters>]
```
### Parameters
* NetworkAddress `<Object>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
* SubnetMask `<Object>`
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Get-bServerState
> Get ServerState using `GET` 
```
Get-bServerState [<CommonParameters>]
```
### Parameters

