az group create --name Test --location eastus

az deployment group create `
    --name CommonResourcesDeployment `
    --resource-group Test `
    --template-file 'resources.bicep' `
    --parameters environment='dev' location='eastus'

# # Uncomment below lines to verify that the same deployment works with Azure PowerShell

# New-AzResourceGroupDeployment `
#     -Name 'CommonResourcesDeployment' `
#     -ResourceGroupName 'Test' `
#     -TemplateFile 'resources.bicep' `
#     -TemplateParameterObject @{
#         'environment'='dev'
#         'location'='eastus'
#     }