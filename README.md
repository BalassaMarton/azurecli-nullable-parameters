This repo is for demonstrating a possible bug in Azure CLI

### Repro steps

1. Start a PowerShell session
2. Run the following script:
```powershell
$subscriptionId = 'your subscription id'
az login
az account set --subscription $subscriptionId
.\deploy.ps1
```

The deployment script should run without errors, but will ask for the value of the nullable parameter `suffix`.