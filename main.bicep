param hostPoolName string
param workspaceName string = 'ABRI-AVD-PROD'
var appGroupName = '${hostPoolName}-DAG'
param logworkspaceSub string
param logworkspaceResourceGroup string
param logworkspaceName string

module Monitoring './Monitoring.bicep' = {
  name: 'Monitoring'
  params: {
    hostpoolName: hostPoolName
    workspaceName: workspaceName
    appgroupName: appGroupName
    logworkspaceSub: logworkspaceSub
    logworkspaceResourceGroup: logworkspaceResourceGroup
    logworkspaceName: logworkspaceName
  }
}
