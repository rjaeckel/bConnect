Push-Location $PSScriptRoot/lib/
'scaffold','bTypes','bActions','bHelpers','bConnect'|% {
    Write-Verbose "Loading $_.ps1"
    . "./$_.ps1"
}
Pop-Location


Export-ModuleMember -function "Get-*","Set-*","Add-*","Remove-*",
    "New-*","Search-*","Initialize-*","Clear-*","Expand-*","Merge-*" #,"Edit-*","Invoke-b*"


#New-ModuleManifest -RootModule ./bConnect.psm1 -Author "Robert Jäckel" -ScriptsToProcess ./bTypes.ps1 -CompanyName "MLU Halle-Wittenberg | IT-Servicezentrum" -ModuleVersion "0.9.1"