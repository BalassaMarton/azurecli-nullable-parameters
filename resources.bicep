param environment string
param location string
param suffix string?

var workspaceName = suffix == null ? 'LogAnalytics-${environment}' : 'LogAnalytics-${environment}-${suffix}'

resource logAnalyticsWorkspace 'Microsoft.OperationalInsights/workspaces@2022-10-01' = {
  name: workspaceName
  location: location
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: 30
  }
}
