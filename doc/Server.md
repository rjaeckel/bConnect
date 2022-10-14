# Cmdlets regarding Server
* [Add-bIpNetwork](Server.md#Add-bIpNetwork)
* [Get-bIpNetwork](Server.md#Get-bIpNetwork)
* [New-bIpNetwork](Server.md#New-bIpNetwork)
* [Remove-bIpNetwork](Server.md#Remove-bIpNetwork)
* [Set-bIpNetwork](Server.md#Set-bIpNetwork)
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
> Creates draft object in memory TODO 
```
New-bIpNetwork [<CommonParameters>]
```
### Parameters
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
## Set-bIpNetwork
> Set IpNetwork using `PATCH`. Use [`New-bIpNetwork -update`](#New-bIpNetwork) to create a draft object to pipe in. 
```
Set-bIpNetwork [-Id] <Guid> [-InputObject] <Object> [<CommonParameters>]
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
## Get-bServerState
> Get ServerState using `GET` 
```
Get-bServerState [<CommonParameters>]
```
### Parameters

