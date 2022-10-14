# Cmdlets regarding Security
* [Get-bComplianceViolation](Security.md#Get-bComplianceViolation)
* [Get-bMicrosoftDefenderThreat](Security.md#Get-bMicrosoftDefenderThreat)
* [Get-bVulnerabilityExclusion](Security.md#Get-bVulnerabilityExclusion)


## Get-bComplianceViolation
> Get ComplianceViolations using `GET` 
```
Get-bComplianceViolation [<CommonParameters>]
Get-bComplianceViolation [-EndpointId] <Guid> [<CommonParameters>]
```
### Parameters
* EndpointId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
## Get-bMicrosoftDefenderThreat
> Get MicrosoftDefenderThreats using `GET` 
```
Get-bMicrosoftDefenderThreat [<CommonParameters>]
Get-bMicrosoftDefenderThreat [-Id] <Guid> [<CommonParameters>]
Get-bMicrosoftDefenderThreat -EndpointId <Guid> [<CommonParameters>]
Get-bMicrosoftDefenderThreat -GroupId <Guid> [-IncludeSubfolders] [<CommonParameters>]
```
### Parameters
* Id `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* IncludeSubfolders `<SwitchParameter>`
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
* GroupId `<Guid>`
  ```
  Position : named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : 
  ```
## Get-bVulnerabilityExclusion
> Get VulnerabilityExclusions using `GET` 
```
Get-bVulnerabilityExclusion [-IncludeSubfolders] [<CommonParameters>]
Get-bVulnerabilityExclusion [-ObjectId] <Guid> [-IncludeSubfolders] [<CommonParameters>]
```
### Parameters
* ObjectId `<Guid>`
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : 
  ```
* IncludeSubfolders `<SwitchParameter>`
  ```
  Position : named
  Required : false
  PipelineInput : false
  Aliases : 
  ```

