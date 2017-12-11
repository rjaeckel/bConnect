$ErrorActionPreference = [System.Management.Automation.ActionPreference]::Continue

function Script:New-EnumType {
    [cmdletbinding()]
    param(
        [Parameter(Position=0,Mandatory)]$Name,
        [Parameter(Position=1,ValueFromRemainingArguments,Mandatory)]
        [string[]]$Options,
        [string]$Namespace,
        [switch]$Flags
    )

    [string]$Code=if($Namespace){"namespace $Namespace {{{0}}}"}else{'{0}'}
    
    $TargetTypeName=$Namespace,$Name -join '.' -replace ':.*$',''
    try {
        [type]$TargetTypeName >$null
        Write-Verbose "Existing Type: $TargetTypeName"
    } catch [System.Management.Automation.RuntimeException]{
        Write-Verbose "Creating Type: $TargetTypeName"
        ($Enum="$(if($Flags){'[System.Flags]'})public enum $Name{$($Options -join ",")}") | Write-Verbose
        $Code -F $Enum
    }
    
}
function Script:Initialize-Types {
    [cmdletbinding()]
    param(
        [string]$TargetNamespace='bConnect'
    )

    $Def=(
        {$PSDefaultParameterValues."New-EnumType:Namespace"="$TargetNamespace.Variable"
            New-EnumType -Name Type Unknown Number String Date Checkbox Dropdownbox DropdownListbox Filelink Folder Password Certificate
            New-EnumType -Name Scope Device MobileDevice Job OrgUnit Software HardwareProfile
        },
        {$PSDefaultParameterValues."New-EnumType:Namespace"="$TargetNamespace.Endpoint"
            New-EnumType -Name Type -Options Unknown=0,WindowsEndpoint=1,AndroidEndpoint=2,iOSEndpoint=3,MacEndpoint=4,WindowsPhoneEndpoint=5,NetworkEndpoint=16
            New-EnumType -Name Mode -Options LAN,Internet,Dynamic
            New-EnumType -Name Channel -Options LAN,Internet,AutoLan,AutoInternet
            New-EnumType -Name AgentState -Options Unchanged=-1,Unknown=0,NotInstalled=1,Running=3,Rebooting=4
            New-EnumType -Name ManagementState -Options Unknown=0,Enrollable=1,Enrolling=2,Managed=3,Unmanaged=4
            New-EnumType -Name Owner -Options Unknown=-2,Company=0,Private=1
            New-EnumType -Name ComplianceCheckCategory -Options Active=0,Inactive=1,InactiveTemporarily=2
            New-EnumType -Name ClientOptions:uint -Flags -Options EnableOsInstall=0x00000001,
                                                          InheritAutoInstallation=0x00000002,
                                                                        EnableAUT=0x00000100,
                                                           EnableEnergyManagement=0x00000200,
                                                                      Deactivated=0x80000000
            New-EnumType -Name PrimaryUserOptions:uint -Options           Initial=0x00000000,
                                                                          NotUsed=0x00000004,
                                                                     AlwaysUpdate=0x00000008,
                                                                      NeverUpdate=0x0000000C
            New-EnumType -Name UserJobOptions:uint -Options         AlwaysExecute=0x00000000,
                                                                     NeverExecute=0x00000010,
                                                            ExecuteForPrimaryUser=0x00000030
        },
        {$PSDefaultParameterValues."New-EnumType:Namespace"="$TargetNamespace.Job"
            New-EnumType -Name EndpointCategory -Options Any=-1,Unknown,MicrosoftWindows,GoogleAndroid,AppleIOS,AppleMac,WindowsPhone
            New-EnumType -Name Options -Flags -Options         WOL=0x00000001,
                                                     CancelOnError=0x00000002,
                                                           Passive=0x00000004,
                                                 FinishScreensaver=0x00000008,
                                                    FinishShutdown=0x00000010,
                                                 InformationAlways=0x00010000,
                                                       LogoffUsers=0x00020000,
                                                       ForceLogoff=0x00040000,
                                                   InformationHide=0x00080000,
                                                     UserDelayable=0x00200000,
                                                    UserCancelable=0x00400000
            New-EnumType -Name State -Options Unknown=-1,Assigned,Running,FinishedSuccess,FinishedError,FinishedCanceled,ReScheduled,WaitingForUser,RequirementsNotMet,Downloading,SkippedDueToIncompatibility
            New-EnumType -Name Action -Options Start,Stop,Resume
        },
        {$PSDefaultParameterValues."New-EnumType:Namespace"="$TargetNamespace.Application"
            New-EnumType -Name SecurityContext -Options AnyUser,InstallUser,LocalInstallUser,LocalSystem,LoggedOnUser,RegisteredUser,SpecifiedUser
            New-EnumType -Name ValidForOS -Options NT4,Windows2000,WindowsXP,WindowsVista,Windows7,Windows8,Windows10,WindowsServer2003,WindowsServer2008,WindowsServer2008R2,WindowsServer2012,WindowsXP_x64,WindowsVista_x64,Windows7_x64,Windows8_x64,Windows10_x64,WindowsServer2003_x64,WindowsServer2008_x64,WindowsServer2008R2_x64,WindowsServer2012_x64,WindowsServer2016_x64
            New-EnumType -Name FileType -Options FolderWithSubFolders,SingleFolder,File
            New-EnumType -Name RebootBehaviour -Options NoReboot,Reboot,AppReboot,DeferrableReboot
            New-EnumType -Name VisibleExecution -Options Silent,NeedsDesktop,VisibleWhenuserLoggedOn
            New-EnumType -Name IconScope -Options App,Inventory
        },
        {$PSDefaultParameterValues.Remove("New-EnumType:Namespace")
            New-EnumType -Namespace "$TargetNamespace.Compliance" -Name State -Options Unknown=0,Compliant=1,NotCompliantInfo=2,NotCompliantWarning=3,NotCompliantSevere=4,Inactive=5
            New-EnumType -Namespace "$TargetNamespace.InventoryScan" -Name Type -Options Unknown,Custom,WMI,Hardware
            New-EnumType -Namespace "$TargetNamespace.SearchResult" -Name Type -Options Unknown=0,WindowsEndpoint=1,AndroidEndpoint=2,iOSEndpoint=3,MacEndpoint=4,WindowsPhoneEndpoint=5,WindowsJob=6,BmsNetJob=7,OrgUnit=8,DynamicGroup=9,StaticGroup=10,Application=11,App=12,NetworkEndpoint=16
            New-EnumType -Namespace "$TargetNamespace.Search" -Name Type -Options Endpoint,Job,OrgUnit,Group,Software
            New-EnumType -Namespace "$TargetNamespace.BootEnvironment" -Name Type -Options Unknown,DOS,WinPE,WinPE_UEFI,Custom
        } | % { & $_ }
    ) -join "`n"
    
    if($Def){
        Write-Verbose $Def
        Add-Type $Def
    }
}

Initialize-Types
