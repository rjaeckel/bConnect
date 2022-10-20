#!/opt/microsoft/powershell/7/pwsh
[CmdletBinding()]  #  <--- useless?
param(
    [scriptblock]$SETUP=$null
)
process {

[string[]]$_debug_cmdlets=@()

#$_scaffold_file = "tests/_scaffolds.ps1"

@"
root:    $PSScriptRoot    
pwd:     $PWD
module:   $($MyInvocation.MyCommand.Scriptblock.Module)
"@ | Write-Host
#$myinvocation.MyCommand|Out-Host
#(get-variable *).Name | write-host

$SETUP -is [scriptblock] && . ([scriptblock]::Create("$SETUP")) >$null

'scaffold','bTypes','bActions','bHelpers','bConnect' -replace '^.*$','lib/$0.ps1' |
Foreach-Object {
    $_import = $PSScriptRoot -replace '^$',$PWD
    Write-Verbose "Loading $_"
    . "$_import/$_"
}

if ($MyInvocation.MyCommand.Scriptblock.Module) {
Export-ModuleMember -Function ([string[]]@(
    "Get-*","Set-*","Add-*","Remove-*",
    "Search-*",
    "Initialize-*","Clear-*",
    "Edit-*",
    #"Invoke-b*", 
    "Expand-*","Merge-*",
    "New-*",
    "Export-*", "Import-*") + $_debug_cmdlets
)}

}
#New-ModuleManifest -RootModule ./bConnect.psm1 -Author "Robert Jäckel" -ScriptsToProcess ./bTypes.ps1 -CompanyName "MLU Halle-Wittenberg | IT-Servicezentrum" -ModuleVersion "0.9.1"