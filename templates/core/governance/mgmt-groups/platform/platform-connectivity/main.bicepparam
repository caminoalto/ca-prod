using './main.bicep'

// General Parameters
param parLocations = [
  'westus2'
  'eastus2'
]
param parEnableTelemetry = true

param platformConnectivityConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'da13ce03-7232-4b47-af50-fe546e1784b9'
  managementGroupParentId: 'b7ae5801-bb40-4750-b35d-ddd75e1dbcc8'
  managementGroupIntermediateRootName: '6966a8a3-5597-49c1-b84a-8c9150a804a3'
  managementGroupDisplayName: 'Connectivity-MG'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['4c63c743-bcd1-44c0-96eb-70fb0baed956']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  'Enable-DDoS-VNET': {
    parameters: {
      ddosPlan: {
        value: '/subscriptions/4c63c743-bcd1-44c0-96eb-70fb0baed956/resourceGroups/rg-ca-conn-${parLocations[0]}/providers/Microsoft.Network/ddosProtectionPlans/ddos-alz-${parLocations[0]}'
      }
    }
  }
}
