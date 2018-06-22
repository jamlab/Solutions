#-------------------------------------------------------------------
# Get profile from current dir
$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$publishingFile = "$ScriptDir\MSDN-profile.json"
$publishingFile = "B:\MSDN-profile.json"
Write-Host "PublishSettingsFile is $publishingFile"
# Old
#Select-AzureRmProfile -Path c:\mydir\myprofile.json
# New
Import-AzureRmContext -Path $publishingFile
#Get-AzureRmResourceGroup
#-------------------------------------------------------------------