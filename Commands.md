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
* [Add-bOrgUnit](#add-borgunit) ( *[Parameters](#parameters-35)* )
* [Get-bOrgUnit](#get-borgunit) ( *[Parameters](#parameters-36)* )
* [Remove-bOrgUnit](#remove-borgunit) ( *[Parameters](#parameters-37)* )
* [Set-bOrgUnit](#set-borgunit) ( *[Parameters](#parameters-38)* )
* [Get-bSoftwareScanRule](#get-bsoftwarescanrule) ( *[Parameters](#parameters-39)* )
* [Add-bStaticGroup](#add-bstaticgroup) ( *[Parameters](#parameters-40)* )
* [Get-bStaticGroup](#get-bstaticgroup) ( *[Parameters](#parameters-41)* )
* [Remove-bStaticGroup](#remove-bstaticgroup) ( *[Parameters](#parameters-42)* )
* [Set-bStaticGroup](#set-bstaticgroup) ( *[Parameters](#parameters-43)* )
* [Get-bVariable](#get-bvariable) ( *[Parameters](#parameters-44)* )
* [Set-bVariable](#set-bvariable) ( *[Parameters](#parameters-45)* )
* [Get-bVersion](#get-bversion) ( *[Parameters](#parameters-46)* )
* [Search-bEndpoint](#search-bendpoint) ( *[Parameters](#parameters-47)* )
* [Search-bGroup](#search-bgroup) ( *[Parameters](#parameters-48)* )
* [Search-bJob](#search-bjob) ( *[Parameters](#parameters-49)* )
* [Search-bOrgUnit](#search-borgunit) ( *[Parameters](#parameters-50)* )
* [Search-bSoftware](#search-bsoftware) ( *[Parameters](#parameters-51)* )
* [Expand-bEndpointOptions](#expand-bendpointoptions) ( *[Parameters](#parameters-52)* )
* [Merge-bEndpointOptions](#merge-bendpointoptions) ( *[Parameters](#parameters-53)* )
* [New-bApplication](#new-bapplication) ( *[Parameters](#parameters-54)* )
* [New-bApplicationData](#new-bapplicationdata) ( *[Parameters](#parameters-55)* )
* [New-bApplicationFile](#new-bapplicationfile) ( *[Parameters](#parameters-56)* )
* [New-bApplicationLicense](#new-bapplicationlicense) ( *[Parameters](#parameters-57)* )
* [New-bApplicationOption](#new-bapplicationoption) ( *[Parameters](#parameters-58)* )
* [New-bApplicationUserSettings](#new-bapplicationusersettings) ( *[Parameters](#parameters-59)* )
* [New-bAutFileRule](#new-bautfilerule) ( *[Parameters](#parameters-60)* )
* [New-bDynamicGroup](#new-bdynamicgroup) ( *[Parameters](#parameters-61)* )
* [New-bEndpoint](#new-bendpoint) ( *[Parameters](#parameters-62)* )
* [New-bOrgUnit](#new-borgunit) ( *[Parameters](#parameters-63)* )
* [New-bOrgUnitExtension](#new-borgunitextension) ( *[Parameters](#parameters-64)* )
* [New-bStaticGroup](#new-bstaticgroup) ( *[Parameters](#parameters-65)* )
* [New-bVariable](#new-bvariable) ( *[Parameters](#parameters-66)* )

## Initialize
### Initialize-bConnect
```
Initialize-bConnect [-HostName] <string> [[-UserName] <string>] [-Password] <securestring> [-SkipCertificateCheck] [<CommonParameters>]
```
#### Parameters

* HostName
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Host, Server
  ParameterValue : string
  ```

* UserName
  ```
  Position : 1
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : User
  ParameterValue : string
  ```

* Password
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : securestring
  ```

* SkipCertificateCheck
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


### Clear-bConnect
```
Clear-bConnect [<CommonParameters>]
```
#### Parameters



## Commands by Controller

### Controller App
#### Get-bApp
```
Get-bApp [<CommonParameters>]

Get-bApp [-Id] <guid> [<CommonParameters>]

Get-bApp -OrgUnit <guid> [<CommonParameters>]

Get-bApp -EndpointId <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* EndpointId
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* OrgUnit
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```



### Controller Application
#### Add-bApplication
```
Add-bApplication [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* InputObject
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```


#### Get-bApplication
```
Get-bApplication [<CommonParameters>]

Get-bApplication [-Id] <guid> [<CommonParameters>]

Get-bApplication -OrgUnit <guid> [<CommonParameters>]

Get-bApplication -EndpointId <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* EndpointId
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* OrgUnit
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Remove-bApplication
```
Remove-bApplication [-Id] <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Set-bApplication
```
Set-bApplication [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* InputObject
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```



### Controller BootEnvironment
#### Get-bBootEnvironment
```
Get-bBootEnvironment [<CommonParameters>]

Get-bBootEnvironment [-Id] <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```



### Controller Connect
#### Clear-bConnect
```
Clear-bConnect [<CommonParameters>]
```
##### Parameters



### Controller DynamicGroup
#### Add-bDynamicGroup
```
Add-bDynamicGroup [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* InputObject
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```


#### Get-bDynamicGroup
```
Get-bDynamicGroup [<CommonParameters>]

Get-bDynamicGroup [-Id] <guid> [<CommonParameters>]

Get-bDynamicGroup -OrgUnit <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* OrgUnit
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Remove-bDynamicGroup
```
Remove-bDynamicGroup [-Id] <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Set-bDynamicGroup
```
Set-bDynamicGroup [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* InputObject
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```



### Controller Endpoint
#### Add-bEndpoint
```
Add-bEndpoint [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* InputObject
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```


#### Get-bEndpoint
```
Get-bEndpoint [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]

Get-bEndpoint [-Id] <guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]

Get-bEndpoint -OrgUnit <guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]

Get-bEndpoint -DynamicGroup <guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]

Get-bEndpoint -StaticGroup <guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* InstalledSoftware
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```

* PubKey
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```

* SnmpData
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```

* DynamicGroup
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* OrgUnit
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* StaticGroup
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Remove-bEndpoint
```
Remove-bEndpoint [-Id] <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Set-bEndpoint
```
Set-bEndpoint [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* InputObject
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```



### Controller EndpointInvSoftware
#### Get-bEndpointInvSoftware
```
Get-bEndpointInvSoftware [<CommonParameters>]
```
##### Parameters



### Controller HardwareProfile
#### Get-bHardwareProfile
```
Get-bHardwareProfile [<CommonParameters>]

Get-bHardwareProfile [-Id] <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```



### Controller Icon
#### Get-bIcon
```
Get-bIcon [<CommonParameters>]

Get-bIcon -AppId <guid> [<CommonParameters>]

Get-bIcon -Scope <IconScope> [<CommonParameters>]
```
##### Parameters

* AppId
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : Id
  ParameterValue : guid
  ```

* Scope
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : IconScope
  ```



### Controller Info
#### Get-bInfo
```
Get-bInfo [<CommonParameters>]
```
##### Parameters



### Controller InventoryAppScan
#### Get-bInventoryAppScan
```
Get-bInventoryAppScan [<CommonParameters>]

Get-bInventoryAppScan [-EndpointId] <guid> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```



### Controller InventoryDataCustomScan
#### Get-bInventoryDataCustomScan
```
Get-bInventoryDataCustomScan [-EndpointId <guid>] [-TemplateName <string>] [<CommonParameters>]

Get-bInventoryDataCustomScan -Latest -TemplateName <string> [-EndpointId <guid>] [<CommonParameters>]

Get-bInventoryDataCustomScan -EndpointId <guid> -TemplateName <string> -Scan <string> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Id, Endpoint
  ParameterValue : guid
  ```

* Latest
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```

* Scan
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Time
  ParameterValue : string
  ```

* TemplateName
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Template
  ParameterValue : string
  ```



### Controller InventoryDataFileScan
#### Get-bInventoryDataFileScan
```
Get-bInventoryDataFileScan [<CommonParameters>]

Get-bInventoryDataFileScan [-EndpointId] <guid> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Remove-bInventoryDataFileScan
```
Remove-bInventoryDataFileScan [-EndpointId] <guid> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```



### Controller InventoryDataHardwareScan
#### Get-bInventoryDataHardwareScan
```
Get-bInventoryDataHardwareScan -EndpointId <guid> [-TemplateName <string>] [<CommonParameters>]

Get-bInventoryDataHardwareScan -Latest -EndpointId <guid> -TemplateName <string> [<CommonParameters>]

Get-bInventoryDataHardwareScan -EndpointId <guid> -TemplateName <string> -Scan <string> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Id, Endpoint
  ParameterValue : guid
  ```

* Latest
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```

* Scan
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Time
  ParameterValue : string
  ```

* TemplateName
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Template
  ParameterValue : string
  ```



### Controller InventoryDataRegistryScan
#### Get-bInventoryDataRegistryScan
```
Get-bInventoryDataRegistryScan [<CommonParameters>]

Get-bInventoryDataRegistryScan [-EndpointId] <guid> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Remove-bInventoryDataRegistryScan
```
Remove-bInventoryDataRegistryScan [-EndpointId] <guid> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```



### Controller InventoryDataSnmpScan
#### Get-bInventoryDataSnmpScan
```
Get-bInventoryDataSnmpScan [-EndpointId] <guid> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```



### Controller InventoryDataWmiScan
#### Get-bInventoryDataWmiScan
```
Get-bInventoryDataWmiScan [-EndpointId <guid>] [-TemplateName <string>] [<CommonParameters>]

Get-bInventoryDataWmiScan -Latest -TemplateName <string> [-EndpointId <guid>] [<CommonParameters>]

Get-bInventoryDataWmiScan -EndpointId <guid> -TemplateName <string> -Scan <string> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Id, Endpoint
  ParameterValue : guid
  ```

* Latest
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```

* Scan
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Time
  ParameterValue : string
  ```

* TemplateName
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Template
  ParameterValue : string
  ```



### Controller InventoryOverview
#### Get-bInventoryOverview
```
Get-bInventoryOverview [<CommonParameters>]

Get-bInventoryOverview [-EndpointId] <guid> [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```



### Controller Job
#### Get-bJob
```
Get-bJob [-Steps] [<CommonParameters>]

Get-bJob [-Id] <guid> [-Steps] [<CommonParameters>]

Get-bJob -OrgUnit <guid> [-Steps] [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* Steps
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```

* OrgUnit
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```



### Controller JobInstance
#### Add-bJobInstance
```
Add-bJobInstance [-EndpointId] <guid> [-JobId] <guid> [-StartIfExists] [<CommonParameters>]
```
##### Parameters

* EndpointId
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* JobId
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* StartIfExists
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


#### Get-bJobInstance
```
Get-bJobInstance [-Steps] [<CommonParameters>]

Get-bJobInstance [-Id] <guid> [-Steps] [<CommonParameters>]

Get-bJobInstance -EndpointId <guid> [-Steps] [<CommonParameters>]

Get-bJobInstance -JobId <guid> [-Steps] [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* Steps
  ```
  Position : Named
  Required : false
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```

* EndpointId
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* JobId
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Remove-bJobInstance
```
Remove-bJobInstance [-Id] <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Set-bJobInstance
```
Set-bJobInstance [-Id] <guid> -cmd <Action> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* cmd
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : Action
  ```



### Controller OrgUnit
#### Add-bOrgUnit
```
Add-bOrgUnit [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* InputObject
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```


#### Get-bOrgUnit
```
Get-bOrgUnit [<CommonParameters>]

Get-bOrgUnit [-Id] <guid> [<CommonParameters>]

Get-bOrgUnit -OrgUnit <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* OrgUnit
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Remove-bOrgUnit
```
Remove-bOrgUnit [-Id] <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Set-bOrgUnit
```
Set-bOrgUnit [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* InputObject
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```



### Controller SoftwareScanRule
#### Get-bSoftwareScanRule
```
Get-bSoftwareScanRule [<CommonParameters>]
```
##### Parameters



### Controller StaticGroup
#### Add-bStaticGroup
```
Add-bStaticGroup [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* InputObject
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```


#### Get-bStaticGroup
```
Get-bStaticGroup [<CommonParameters>]

Get-bStaticGroup [-Id] <guid> [<CommonParameters>]

Get-bStaticGroup -OrgUnit <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* OrgUnit
  ```
  Position : Named
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Remove-bStaticGroup
```
Remove-bStaticGroup [-Id] <guid> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```


#### Set-bStaticGroup
```
Set-bStaticGroup [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```
##### Parameters

* Id
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* InputObject
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```



### Controller Variable
#### Get-bVariable
```
Get-bVariable [-Scope] <Scope> [[-Category] <string>] [-ObjectId <guid>] [<CommonParameters>]

Get-bVariable [-Scope] <Scope> [-Category] <string> [-Name] <string> [-ObjectId <guid>] [<CommonParameters>]
```
##### Parameters

* Scope
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Scope
  ```

* Category
  ```
  Position : 1
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Name
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* ObjectId
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : Id
  ParameterValue : guid
  ```


#### Set-bVariable
```
Set-bVariable [-ObjectId] <guid> [-Scope] <Scope> [-Variables] <Object[]> [<CommonParameters>]
```
##### Parameters

* ObjectId
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : Id
  ParameterValue : guid
  ```

* Scope
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Scope
  ```

* Variables
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Object[]
  ```



### Controller Version
#### Get-bVersion
```
Get-bVersion [<CommonParameters>]
```
##### Parameters


### Controller Search
#### Search-bEndpoint
```
Search-bEndpoint [-Term] <string> [<CommonParameters>]
```
##### Parameters

* Term
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue)
  Aliases : None
  ParameterValue : string
  ```


#### Search-bGroup
```
Search-bGroup [-Term] <string> [<CommonParameters>]
```
##### Parameters

* Term
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue)
  Aliases : None
  ParameterValue : string
  ```


#### Search-bJob
```
Search-bJob [-Term] <string> [<CommonParameters>]
```
##### Parameters

* Term
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue)
  Aliases : None
  ParameterValue : string
  ```


#### Search-bOrgUnit
```
Search-bOrgUnit [-Term] <string> [<CommonParameters>]
```
##### Parameters

* Term
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue)
  Aliases : None
  ParameterValue : string
  ```


#### Search-bSoftware
```
Search-bSoftware [-Term] <string> [<CommonParameters>]
```
##### Parameters

* Term
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue)
  Aliases : None
  ParameterValue : string
  ```



## Helper Commands

### Expand-bEndpointOptions
```
Expand-bEndpointOptions [-options] <uint64> [<CommonParameters>]
```
#### Parameters

* options
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByValue, ByPropertyName)
  Aliases : None
  ParameterValue : uint64
  ```


### Merge-bEndpointOptions
```
Merge-bEndpointOptions [[-ClientOptions] <ClientOptions>] [[-UserOptions] <PrimaryUserOptions>] [[-UserJobOptions] <UserJobOptions>] [<CommonParameters>]
```
#### Parameters

* ClientOptions
  ```
  Position : 0
  Required : false
  PipelineInput : true (ByValue)
  Aliases : None
  ParameterValue : ClientOptions
  ```

* UserOptions
  ```
  Position : 1
  Required : false
  PipelineInput : true (ByValue)
  Aliases : None
  ParameterValue : PrimaryUserOptions
  ```

* UserJobOptions
  ```
  Position : 2
  Required : false
  PipelineInput : true (ByValue)
  Aliases : None
  ParameterValue : UserJobOptions
  ```


### New-bApplication
```
New-bApplication -update [-Name <string>] [-Vendor <string>] [-ValidForOS <ValidForOS[]>] [-Comment <string>] [-Category <string>] [-Version <string>] [-ParentId <guid>] [-EnableAUT] [-Installation <Object>] [-Uninstallation <Object>] [-ConsistencyChecks <string>] [-SecurityContext <SecurityContext>] [-Cost <float>] [-Files <Object[]>] [-Licenses <Object[]>] [-AUT <Object[]>] [<CommonParameters>]

New-bApplication [-Name] <string> [-Vendor] <string> [-ValidForOS] <ValidForOS[]> [-Comment <string>] [-Category <string>] [-Version <string>] [-ParentId <guid>] [-EnableAUT] [-Installation <Object>] [-Uninstallation <Object>] [-ConsistencyChecks <string>] [-SecurityContext <SecurityContext>] [-Cost <float>] [-Files <Object[]>] [-Licenses <Object[]>] [-AUT <Object[]>] [<CommonParameters>]
```
#### Parameters

* Name
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Vendor
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* ValidForOS
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : ValidForOS[]
  ```

* AUT
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Object[]
  ```

* Category
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Comment
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* ConsistencyChecks
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Cost
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : float
  ```

* EnableAUT
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* Files
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Object[]
  ```

* Installation
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : InstallationData
  ParameterValue : Object
  ```

* Licenses
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Object[]
  ```

* ParentId
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* SecurityContext
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : SecurityContext
  ```

* Uninstallation
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : UninstallationData
  ParameterValue : Object
  ```

* Version
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* update
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


### New-bApplicationData
```
New-bApplicationData [[-Command] <string>] [[-Parameter] <string>] [-ResponseFile <string>] [-Engine <string>] [-EngineFile <string>] [-Options <Object>] [-UserSettings <Object>] [<CommonParameters>]

New-bApplicationData [[-Command] <string>] [[-Parameter] <string>] -install [-ResponseFile <string>] [-Engine <string>] [-EngineFile <string>] [-Options <Object>] [-UserSettings <Object>] [<CommonParameters>]
```
#### Parameters

* Command
  ```
  Position : 0
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Parameter
  ```
  Position : 1
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Engine
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* EngineFile
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Options
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```

* ResponseFile
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* UserSettings
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```

* install
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


### New-bApplicationFile
```
New-bApplicationFile [-Source] <string> [-Type] <FileType> [<CommonParameters>]
```
#### Parameters

* Source
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Type
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : FileType
  ```


### New-bApplicationLicense
```
New-bApplicationLicense [-LicenseKey] <string> [[-Count] <uint16>] [[-Offline] <uint16>] [<CommonParameters>]
```
#### Parameters

* LicenseKey
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Count
  ```
  Position : 1
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : uint16
  ```

* Offline
  ```
  Position : 2
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : uint16
  ```


### New-bApplicationOption
```
New-bApplicationOption [-RebootBehaviour <RebootBehaviour>] [-RemoveUnknownSoftware] [-UseBbt] [-VisibleExecution <VisibleExecution>] [-CopyLocally] [-DisableInputDevices] [<CommonParameters>]

New-bApplicationOption -install [-RebootBehaviour <RebootBehaviour>] [-RemoveUnknownSoftware] [-UseBbt] [-VisibleExecution <VisibleExecution>] [-CopyLocally] [-DisableInputDevices] [-AllowReinstall] [-DontSetAsInstalled] [-MapShare] [-Target <string>] [<CommonParameters>]
```
#### Parameters

* AllowReinstall
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* CopyLocally
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* DisableInputDevices
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* DontSetAsInstalled
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* MapShare
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* RebootBehaviour
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : RebootBehaviour
  ```

* RemoveUnknownSoftware
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* Target
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* UseBbt
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* VisibleExecution
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : VisibleExecution
  ```

* install
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


### New-bApplicationUserSettings
```
New-bApplicationUserSettings [-baramundiDeployScript <string>] [-validForInstallUser] [-RunBdsVisible] [-CopyScriptToClient] [<CommonParameters>]

New-bApplicationUserSettings -install [-baramundiDeployScript <string>] [-validForInstallUser] [-RunBdsVisible] [-CopyScriptToClient] [-ExecuteAtEveryLogin] [<CommonParameters>]
```
#### Parameters

* baramundiDeployScript
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* CopyScriptToClient
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* ExecuteAtEveryLogin
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* RunBdsVisible
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* validForInstallUser
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* install
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


### New-bAutFileRule
```
New-bAutFileRule [-FileName <string>] [-FileSize <uint64>] [-Date <string>] [-CRC <uint64>] [-Version <string>] [-Company <string>] [-ProductName <string>] [-ProductVersion <string>] [-InternalName <string>] [-Language <string>] [-FileDescription <string>] [-FileVersionNumeric <string>] [-CommandLine <string>] [<CommonParameters>]
```
#### Parameters

* CommandLine
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Company
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* CRC
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : uint64
  ```

* Date
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* FileDescription
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* FileName
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* FileSize
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : uint64
  ```

* FileVersionNumeric
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* InternalName
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Language
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* ProductName
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* ProductVersion
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Version
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```


### New-bDynamicGroup
```
New-bDynamicGroup -update [-Name <string>] [-Statement <string>] [-ParentId <guid>] [-Comment <string>] [<CommonParameters>]

New-bDynamicGroup [-Name] <string> [-Statement] <string> [-ParentId <guid>] [-Comment <string>] [<CommonParameters>]
```
#### Parameters

* Name
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Statement
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Comment
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* ParentId
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* update
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


### New-bEndpoint
```
New-bEndpoint -update [-DisplayName <string>] [-Type <Type>] [-GuidOrgUnit <guid>] [-Comments <string>] [-PrimaryUser <string>] [-Hostname <string>] [-Domain <string>] [-Options <uint32>] [-PrimaryMac <string>] [-GuidHardwareProfile <guid>] [-GuidBootEnvironment <guid>] [-UserCategory <string>] [-Owner <Owner>] [-ComplianceCheckCategory <ComplianceCheckCategory>] [-ComplianceCheckDisabledFrom <datetime>] [-ComplianceCheckDisabledUntil <datetime>] [-SerialNumber <string>] [-PublicKey <string>] [-ExtendedInternetMode] [-Mode <Mode>] [<CommonParameters>]

New-bEndpoint [-DisplayName] <string> [-Type] <Type> [-GuidOrgUnit] <guid> [-Comments <string>] [-PrimaryUser <string>] [-Hostname <string>] [-Domain <string>] [-Options <uint32>] [-PrimaryMac <string>] [-GuidHardwareProfile <guid>] [-GuidBootEnvironment <guid>] [-UserCategory <string>] [-Owner <Owner>] [-ComplianceCheckCategory <ComplianceCheckCategory>] [-ComplianceCheckDisabledFrom <datetime>] [-ComplianceCheckDisabledUntil <datetime>] [-SerialNumber <string>] [-PublicKey <string>] [-ExtendedInternetMode] [-Mode <Mode>] [<CommonParameters>]
```
#### Parameters

* DisplayName
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Type
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Type
  ```

* GuidOrgUnit
  ```
  Position : 2
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* Comments
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* ComplianceCheckCategory
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : ComplianceCheckCategory
  ```

* ComplianceCheckDisabledFrom
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : datetime
  ```

* ComplianceCheckDisabledUntil
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : datetime
  ```

* Domain
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* ExtendedInternetMode
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* GuidBootEnvironment
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* GuidHardwareProfile
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* Hostname
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Mode
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Mode
  ```

* Options
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : uint32
  ```

* Owner
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Owner
  ```

* PrimaryMac
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* PrimaryUser
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* PublicKey
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* SerialNumber
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* UserCategory
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* update
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


### New-bOrgUnit
```
New-bOrgUnit -update [-Name <string>] [-ParentId <guid>] [-Comment <string>] [-Extension <Object>] [<CommonParameters>]

New-bOrgUnit [-Name] <string> [-ParentId] <guid> [-Comment <string>] [-Extension <Object>] [<CommonParameters>]
```
#### Parameters

* Name
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* ParentId
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* Comment
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Extension
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : Object
  ```

* update
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


### New-bOrgUnitExtension
```
New-bOrgUnitExtension [-DIP <string>] [-Domain <string>] [-LocalAdminPassword <string>] [-EnableDHCP] [-InheritAutoInstallJobs] [-SubnetMast <string>] [-Defaultgateway <string>] [-DnsServer <string>] [-DnsServer2 <string>] [-DnsDomain <string>] [-WinsServer <string>] [-WinsServer2 <string>] [-AutoInstallJobs <guid[]>] [-HardwareProfiles <guid[]>] [-RequestableJobs <guid[]>] [<CommonParameters>]
```
#### Parameters

* AutoInstallJobs
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid[]
  ```

* Defaultgateway
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* DIP
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* DnsDomain
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* DnsServer
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* DnsServer2
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Domain
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* EnableDHCP
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* HardwareProfiles
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid[]
  ```

* InheritAutoInstallJobs
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```

* LocalAdminPassword
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* RequestableJobs
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid[]
  ```

* SubnetMast
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* WinsServer
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* WinsServer2
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```


### New-bStaticGroup
```
New-bStaticGroup -update [-Name <string>] [-ParentId <guid>] [-EndpointIds <guid[]>] [-Comment <string>] [<CommonParameters>]

New-bStaticGroup [-Name] <string> [-ParentId <guid>] [-EndpointIds <guid[]>] [-Comment <string>] [<CommonParameters>]
```
#### Parameters

* Name
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Comment
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* EndpointIds
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid[]
  ```

* ParentId
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : guid
  ```

* update
  ```
  Position : Named
  Required : true
  PipelineInput : false
  Aliases : None
  ParameterValue : 
  ```


### New-bVariable
```
New-bVariable [-Category] <string> [-Name] <string> [[-Value] <string>] [-UseDefault] [<CommonParameters>]
```
#### Parameters

* Category
  ```
  Position : 0
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Name
  ```
  Position : 1
  Required : true
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* Value
  ```
  Position : 2
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : string
  ```

* UseDefault
  ```
  Position : Named
  Required : false
  PipelineInput : true (ByPropertyName)
  Aliases : None
  ParameterValue : 
  ```


