Stop-Process -Name "*clipchamp*" -Force
Stop-Process -Name "*teams*" -Force
Stop-Process -Name "*xboxapp*" -Force
$apps = @(
    "Microsoft.549981C3F5F10"
    "Microsoft.Todos"
    "Microsoft.ClipChamp"
    "Microsoft.Teams"
    "MSTeams"
    "Microsoft.Teams.WorkAndSchool"
    "Microsoft.OutlookForWindows"
    "Microsoft.3DBuilder"
    "Microsoft.BingFinance"
    "Microsoft.BingNews"
    "Microsoft.BingSports"
    "Microsoft.BingWeather"
    "Microsoft.GetHelp"
    "Microsoft.Getstarted"
    "Microsoft.Messaging"
    "Microsoft.Microsoft3DViewer"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.MixedReality.Portal"
    "Microsoft.MSPaint"
    "Microsoft.Office.OneNote"
    "Microsoft.People"
    "Microsoft.PowerAutomateDesktop"
    "Microsoft.Print3D"
    "Microsoft.ScreenSketch"
    "Microsoft.SkypeApp"
    "Microsoft.Todos"
    "Microsoft.Wallet"
    "Microsoft.Windows.Photos"
    "Microsoft.WindowsAlarms"
    "Microsoft.WindowsCamera"
    "Microsoft.WindowsCommunicationsApps"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.WindowsMaps"
    "Microsoft.WindowsSoundRecorder"
    "Microsoft.Xbox.TCUI"
    "Microsoft.XboxApp"
    "Microsoft.Xbox"
    "Microsoft.XboxGameOverlay"
    "Microsoft.XboxGamingOverlay"
    "Microsoft.XboxIdentityProvider"
    "Microsoft.YourPhone"
    "Microsoft.ZuneMusic"
    "Microsoft.ZuneVideo"
   )
Stop-Process -Name "OneDrive" -Force
foreach ($app in $apps) 
{
    Get-AppxPackage -AllUsers -Name $app | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue
    Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $app | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue | Out-Null
    Write-Host "Delete: $app"
}
Start-Process "$env:SystemRoot\SysWOW64\OneDriveSetup.exe" "/uninstall"
Start-Process "$env:SystemRoot\System32\OneDriveSetup.exe" "/uninstall"

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f | Out-Null

$title = "Restart"
$message = "Restart your PC?"
$choices = @("&Yes", "&No")

$decision = $Host.UI.PromptForChoice($title, $message, $choices, 1)

if ($decision -eq 0) {
    Restart-Computer -Force
} else {
    Write-Host "Restart Canceled" -ForegroundColor Yellow
}

