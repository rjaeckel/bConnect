# Cmdlets exported by this module

## Initialize
```
Initialize-bConnect [[-HostName] <string>] [[-UserName] <string>] [[-Password] <securestring>] [[-MinimumVersion] <version>] [-retrying] [<CommonParameters>]
```

## Commands by Controller

### Controller App
#### Get-bApp
```
Get-bApp [<CommonParameters>]

Get-bApp [-Id] <guid> [<CommonParameters>]

Get-bApp -OrgUnit <guid> [<CommonParameters>]

Get-bApp -EndpointId <guid> [<CommonParameters>]
```

### Controller Application
#### Add-bApplication
```
Add-bApplication [-InputObject] <Object> [<CommonParameters>]
```
#### Get-bApplication
```
Get-bApplication [<CommonParameters>]

Get-bApplication [-Id] <guid> [<CommonParameters>]

Get-bApplication -OrgUnit <guid> [<CommonParameters>]

Get-bApplication -EndpointId <guid> [<CommonParameters>]
```
#### Remove-bApplication
```
Remove-bApplication [-Id] <guid> [<CommonParameters>]
```
#### Set-bApplication
```
Set-bApplication [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```

### Controller BootEnvironment
#### Get-bBootEnvironment
```
Get-bBootEnvironment [<CommonParameters>]

Get-bBootEnvironment [-Id] <guid> [<CommonParameters>]
```

### Controller DynamicGroup
#### Add-bDynamicGroup
```
Add-bDynamicGroup [-InputObject] <Object> [<CommonParameters>]
```
#### Get-bDynamicGroup
```
Get-bDynamicGroup [<CommonParameters>]

Get-bDynamicGroup [-Id] <guid> [<CommonParameters>]

Get-bDynamicGroup -OrgUnit <guid> [<CommonParameters>]
```
#### Remove-bDynamicGroup
```
Remove-bDynamicGroup [-Id] <guid> [<CommonParameters>]
```
#### Set-bDynamicGroup
```
Set-bDynamicGroup [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```

### Controller Endpoint
#### Add-bEndpoint
```
Add-bEndpoint [-InputObject] <Object> [<CommonParameters>]
```
#### Get-bEndpoint
```
Get-bEndpoint [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]

Get-bEndpoint [-Id] <guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]

Get-bEndpoint -OrgUnit <guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]

Get-bEndpoint -DynamicGroup <guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]

Get-bEndpoint -StaticGroup <guid> [-PubKey] [-InstalledSoftware] [-SnmpData] [<CommonParameters>]
```
#### Remove-bEndpoint
```
Remove-bEndpoint [-Id] <guid> [<CommonParameters>]
```
#### Set-bEndpoint
```
Set-bEndpoint [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```

### Controller EndpointInvSoftware
#### Get-bEndpointInvSoftware
```
Get-bEndpointInvSoftware [<CommonParameters>]
```

### Controller HardwareProfile
#### Get-bHardwareProfile
```
Get-bHardwareProfile [<CommonParameters>]

Get-bHardwareProfile [-Id] <guid> [<CommonParameters>]
```

### Controller Icon
#### Get-bIcon
```
Get-bIcon [<CommonParameters>]

Get-bIcon -AppId <guid> [<CommonParameters>]

Get-bIcon -Scope <IconScope> [<CommonParameters>]
```

### Controller Info
#### Get-bInfo
```
Get-bInfo [<CommonParameters>]
```

### Controller InventoryAppScan
#### Get-bInventoryAppScan
```
Get-bInventoryAppScan [<CommonParameters>]

Get-bInventoryAppScan [-EndpointId] <guid> [<CommonParameters>]
```

### Controller InventoryDataCustomScan
#### Get-bInventoryDataCustomScan
```
Get-bInventoryDataCustomScan [-EndpointId <guid>] [-TemplateName <string>] [<CommonParameters>]

Get-bInventoryDataCustomScan -Latest -TemplateName <string> [-EndpointId <guid>] [<CommonParameters>]

Get-bInventoryDataCustomScan -EndpointId <guid> -TemplateName <string> -Scan <string> [<CommonParameters>]
```

### Controller InventoryDataFileScan
#### Get-bInventoryDataFileScan
```
Get-bInventoryDataFileScan [<CommonParameters>]

Get-bInventoryDataFileScan [-EndpointId] <guid> [<CommonParameters>]
```
#### Remove-bInventoryDataFileScan
```
Remove-bInventoryDataFileScan [-EndpointId] <guid> [<CommonParameters>]
```

### Controller InventoryDataHardwareScan
#### Get-bInventoryDataHardwareScan
```
Get-bInventoryDataHardwareScan -EndpointId <guid> [-TemplateName <string>] [<CommonParameters>]

Get-bInventoryDataHardwareScan -Latest -EndpointId <guid> -TemplateName <string> [<CommonParameters>]

Get-bInventoryDataHardwareScan -EndpointId <guid> -TemplateName <string> -Scan <string> [<CommonParameters>]
```

### Controller InventoryDataRegistryScan
#### Get-bInventoryDataRegistryScan
```
Get-bInventoryDataRegistryScan [<CommonParameters>]

Get-bInventoryDataRegistryScan [-EndpointId] <guid> [<CommonParameters>]
```
#### Remove-bInventoryDataRegistryScan
```
Remove-bInventoryDataRegistryScan [-EndpointId] <guid> [<CommonParameters>]
```

### Controller InventoryDataSnmpScan
#### Get-bInventoryDataSnmpScan
```
Get-bInventoryDataSnmpScan [-EndpointId] <guid> [<CommonParameters>]
```

### Controller InventoryDataWmiScan
#### Get-bInventoryDataWmiScan
```
Get-bInventoryDataWmiScan [-EndpointId <guid>] [-TemplateName <string>] [<CommonParameters>]

Get-bInventoryDataWmiScan -Latest -TemplateName <string> [-EndpointId <guid>] [<CommonParameters>]

Get-bInventoryDataWmiScan -EndpointId <guid> -TemplateName <string> -Scan <string> [<CommonParameters>]
```

### Controller InventoryOverview
#### Get-bInventoryOverview
```
Get-bInventoryOverview [<CommonParameters>]

Get-bInventoryOverview [-EndpointId] <guid> [<CommonParameters>]
```

### Controller Job
#### Get-bJob
```
Get-bJob [-Steps] [<CommonParameters>]

Get-bJob [-Id] <guid> [-Steps] [<CommonParameters>]

Get-bJob -OrgUnit <guid> [-Steps] [<CommonParameters>]
```

### Controller JobInstance
#### Add-bJobInstance
```
Add-bJobInstance [-EndpointId] <guid> [-JobId] <guid> [-StartIfExists] [<CommonParameters>]
```
#### Get-bJobInstance
```
Get-bJobInstance [-Steps] [<CommonParameters>]

Get-bJobInstance [-Id] <guid> [-Steps] [<CommonParameters>]

Get-bJobInstance -EndpointId <guid> [-Steps] [<CommonParameters>]

Get-bJobInstance -JobId <guid> [-Steps] [<CommonParameters>]
```
#### Remove-bJobInstance
```
Remove-bJobInstance [-Id] <guid> [<CommonParameters>]
```
#### Set-bJobInstance
```
Set-bJobInstance [-Id] <guid> -cmd <Action> [<CommonParameters>]
```

### Controller OrgUnit
#### Add-bOrgUnit
```
Add-bOrgUnit [-InputObject] <Object> [<CommonParameters>]
```
#### Get-bOrgUnit
```
Get-bOrgUnit [<CommonParameters>]

Get-bOrgUnit [-Id] <guid> [<CommonParameters>]

Get-bOrgUnit -OrgUnit <guid> [<CommonParameters>]
```
#### Remove-bOrgUnit
```
Remove-bOrgUnit [-Id] <guid> [<CommonParameters>]
```
#### Set-bOrgUnit
```
Set-bOrgUnit [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```

### Controller SoftwareScanRule
#### Get-bSoftwareScanRule
```
Get-bSoftwareScanRule [<CommonParameters>]
```

### Controller StaticGroup
#### Add-bStaticGroup
```
Add-bStaticGroup [-InputObject] <Object> [<CommonParameters>]
```
#### Get-bStaticGroup
```
Get-bStaticGroup [<CommonParameters>]

Get-bStaticGroup [-Id] <guid> [<CommonParameters>]

Get-bStaticGroup -OrgUnit <guid> [<CommonParameters>]
```
#### Remove-bStaticGroup
```
Remove-bStaticGroup [-Id] <guid> [<CommonParameters>]
```
#### Set-bStaticGroup
```
Set-bStaticGroup [-Id] <guid> [-InputObject] <Object> [<CommonParameters>]
```

### Controller Variable
#### Get-bVariable
```
Get-bVariable [-Scope] <Scope> [[-Category] <string>] [-ObjectId <guid>] [<CommonParameters>]

Get-bVariable [-Scope] <Scope> [-Category] <string> [-Name] <string> [-ObjectId <guid>] [<CommonParameters>]
```
#### Set-bVariable
```
Set-bVariable [-ObjectId] <guid> [-Scope] <Scope> [-Variables] <Object[]> [<CommonParameters>]
```

### Controller Version
#### Get-bVersion
```
Get-bVersion [<CommonParameters>]
```

### Controller Search
#### Search-bEndpoint
```
Search-bEndpoint [-Term] <string> [<CommonParameters>]
```
#### Search-bGroup
```
Search-bGroup [-Term] <string> [<CommonParameters>]
```
#### Search-bJob
```
Search-bJob [-Term] <string> [<CommonParameters>]
```
#### Search-bOrgUnit
```
Search-bOrgUnit [-Term] <string> [<CommonParameters>]
```
#### Search-bSoftware
```
Search-bSoftware [-Term] <string> [<CommonParameters>]
```

## Helper Commands

### Expand-bEndpointOptions
```
Expand-bEndpointOptions [-options] <uint64> [<CommonParameters>]
```
### Merge-bEndpointOptions
```
Merge-bEndpointOptions [[-ClientOptions] <ClientOptions>] [[-UserOptions] <PrimaryUserOptions>] [[-UserJobOptions] <UserJobOptions>] [<CommonParameters>]
```
### New-bApplication
```
New-bApplication -update [-Name <string>] [-Vendor <string>] [-ValidForOS <ValidForOS[]>] [-Comment <string>] [-Category <string>] [-Version <string>] [-ParentId <guid>] [-EnableAUT] [-Installation <Object>] [-Uninstallation <Object>] [-ConsistencyChecks <string>] [-SecurityContext <SecurityContext>] [-Cost <float>] [-Files <Object[]>] [-Licenses <Object[]>] [-AUT <Object[]>] [<CommonParameters>]

New-bApplication [-Name] <string> [-Vendor] <string> [-ValidForOS] <ValidForOS[]> [-Comment <string>] [-Category <string>] [-Version <string>] [-ParentId <guid>] [-EnableAUT] [-Installation <Object>] [-Uninstallation <Object>] [-ConsistencyChecks <string>] [-SecurityContext <SecurityContext>] [-Cost <float>] [-Files <Object[]>] [-Licenses <Object[]>] [-AUT <Object[]>] [<CommonParameters>]
```
### New-bApplicationData
```
New-bApplicationData [[-Command] <string>] [[-Parameter] <string>] [-ResponseFile <string>] [-Engine <string>] [-EngineFile <string>] [-Options <Object>] [-UserSettings <Object>] [<CommonParameters>]

New-bApplicationData [[-Command] <string>] [[-Parameter] <string>] -install [-ResponseFile <string>] [-Engine <string>] [-EngineFile <string>] [-Options <Object>] [-UserSettings <Object>] [<CommonParameters>]
```
### New-bApplicationFile
```
New-bApplicationFile [-Source] <string> [-Type] <FileType> [<CommonParameters>]
```
### New-bApplicationLicense
```
New-bApplicationLicense [-LicenseKey] <string> [[-Count] <uint16>] [[-Offline] <uint16>] [<CommonParameters>]
```
### New-bApplicationOption
```
New-bApplicationOption [-RebootBehaviour <RebootBehaviour>] [-RemoveUnknownSoftware] [-UseBbt] [-VisibleExecution <VisibleExecution>] [-CopyLocally] [-DisableInputDevices] [<CommonParameters>]

New-bApplicationOption -install [-RebootBehaviour <RebootBehaviour>] [-RemoveUnknownSoftware] [-UseBbt] [-VisibleExecution <VisibleExecution>] [-CopyLocally] [-DisableInputDevices] [-AllowReinstall] [-DontSetAsInstalled] [-MapShare] [-Target <string>] [<CommonParameters>]
```
### New-bApplicationUserSettings
```
New-bApplicationUserSettings [-baramundiDeployScript <string>] [-validForInstallUser] [-RunBdsVisible] [-CopyScriptToClient] [<CommonParameters>]

New-bApplicationUserSettings -install [-baramundiDeployScript <string>] [-validForInstallUser] [-RunBdsVisible] [-CopyScriptToClient] [-ExecuteAtEveryLogin] [<CommonParameters>]
```
### New-bAutFileRule
```
New-bAutFileRule [-FileName <string>] [-FileSize <uint64>] [-Date <string>] [-CRC <uint64>] [-Version <string>] [-Company <string>] [-ProductName <string>] [-ProductVersion <string>] [-InternalName <string>] [-Language <string>] [-FileDescription <string>] [-FileVersionNumeric <string>] [-CommandLine <string>] [<CommonParameters>]
```
### New-bDynamicGroup
```
New-bDynamicGroup -update [-Name <string>] [-Statement <string>] [-ParentId <guid>] [-Comment <string>] [<CommonParameters>]

New-bDynamicGroup [-Name] <string> [-Statement] <string> [-ParentId <guid>] [-Comment <string>] [<CommonParameters>]
```
### New-bEndpoint
```
New-bEndpoint -update [-DisplayName <string>] [-Type <Type>] [-GuidOrgUnit <guid>] [-Comments <string>] [-PrimaryUser <string>] [-Hostname <string>] [-Domain <string>] [-Options <uint32>] [-PrimaryMac <string>] [-GuidHardwareProfile <guid>] [-GuidBootEnvironment <guid>] [-UserCategory <string>] [-Owner <Owner>] [-ComplianceCheckCategory <ComplianceCheckCategory>] [-ComplianceCheckDisabledFrom <datetime>] [-ComplianceCheckDisabledUntil <datetime>] [-SerialNumber <string>] [-PublicKey <string>] [-ExtendedInternetMode] [-Mode <Mode>] [<CommonParameters>]

New-bEndpoint [-DisplayName] <string> [-Type] <Type> [-GuidOrgUnit] <guid> [-Comments <string>] [-PrimaryUser <string>] [-Hostname <string>] [-Domain <string>] [-Options <uint32>] [-PrimaryMac <string>] [-GuidHardwareProfile <guid>] [-GuidBootEnvironment <guid>] [-UserCategory <string>] [-Owner <Owner>] [-ComplianceCheckCategory <ComplianceCheckCategory>] [-ComplianceCheckDisabledFrom <datetime>] [-ComplianceCheckDisabledUntil <datetime>] [-SerialNumber <string>] [-PublicKey <string>] [-ExtendedInternetMode] [-Mode <Mode>] [<CommonParameters>]
```
### New-bOrgUnit
```
New-bOrgUnit -update [-Name <string>] [-ParentId <guid>] [-Comment <string>] [-Extension <Object>] [<CommonParameters>]

New-bOrgUnit [-Name] <string> [-ParentId] <guid> [-Comment <string>] [-Extension <Object>] [<CommonParameters>]
```
### New-bOrgUnitExtension
```
New-bOrgUnitExtension [-DIP <string>] [-Domain <string>] [-LocalAdminPassword <string>] [-EnableDHCP] [-InheritAutoInstallJobs] [-SubnetMast <string>] [-Defaultgateway <string>] [-DnsServer <string>] [-DnsServer2 <string>] [-DnsDomain <string>] [-WinsServer <string>] [-WinsServer2 <string>] [-AutoInstallJobs <guid[]>] [-HardwareProfiles <guid[]>] [-RequestableJobs <guid[]>] [<CommonParameters>]
```
### New-bStaticGroup
```
New-bStaticGroup -update [-Name <string>] [-ParentId <guid>] [-EndpointIds <guid[]>] [-Comment <string>] [<CommonParameters>]

New-bStaticGroup [-Name] <string> [-ParentId <guid>] [-EndpointIds <guid[]>] [-Comment <string>] [<CommonParameters>]
```
### New-bVariable
```
New-bVariable [-Category] <string> [-Name] <string> [[-Value] <string>] [-UseDefault] [<CommonParameters>]
```
