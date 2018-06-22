# Log into Azure account.
#Login-AzureRMAccount
#Autologin
..\RM-UseProfile.ps1
#----------------------------------------------------
$resourceGroup = "IoT-Staging"
$iotHubConsumerGroup = "IoT-Staging-ConsumerGroup"
$iotHubName = "IoT-StagingHub"



Add-AzureRmIotHubEventHubConsumerGroup -ResourceGroupName $resourceGroup `
  -Name $iotHubName `
  -EventHubConsumerGroupName $iotHubConsumerGroup `
  -EventHubEndpointName "events"