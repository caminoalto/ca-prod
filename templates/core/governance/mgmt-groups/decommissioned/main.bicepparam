using './main.bicep'

// General Parameters
param parLocations = [
  'westus2'
  'eastus2'
]
param parEnableTelemetry = true

param decommissionedConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'b41546a5-6205-41a6-9076-c1e414c06e3e'
  managementGroupParentId: '6966a8a3-5597-49c1-b84a-8c9150a804a3'
  managementGroupIntermediateRootName: '6966a8a3-5597-49c1-b84a-8c9150a804a3'
  managementGroupDisplayName: 'Decommissioned-MG'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: []
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  // Add parameter overrides here if needed for customization
}
