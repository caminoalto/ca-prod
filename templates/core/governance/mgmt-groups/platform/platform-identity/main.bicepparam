using './main.bicep'

// General Parameters
param parLocations = [
  'westus2'
  'eastus2'
]
param parEnableTelemetry = true

param platformIdentityConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: '4f034e49-7ca1-4a4e-806f-bb153080875f'
  managementGroupParentId: 'b7ae5801-bb40-4750-b35d-ddd75e1dbcc8'
  managementGroupIntermediateRootName: '6966a8a3-5597-49c1-b84a-8c9150a804a3'
  managementGroupDisplayName: 'Identity-MG'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['79687a20-6026-44d4-884f-3516335fe13e']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
    // No policy assignments in platform-identity currently
}
