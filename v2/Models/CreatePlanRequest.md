# CreatePlanRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **crossProjectReleases** | [**Set**](CreateCrossProjectReleaseRequest.md) | The cross-project releases to include in the plan. | [optional] [default to null] |
| **customFields** | [**Set**](CreateCustomFieldRequest.md) | The custom fields for the plan. | [optional] [default to null] |
| **exclusionRules** | [**CreateExclusionRulesRequest**](CreateExclusionRulesRequest.md) | The exclusion rules for the plan. | [optional] [default to null] |
| **issueSources** | [**Set**](CreateIssueSourceRequest.md) | The issue sources to include in the plan. | [default to null] |
| **leadAccountId** | **String** | The account ID of the plan lead. | [optional] [default to null] |
| **name** | **String** | The plan name. | [default to null] |
| **permissions** | [**Set**](CreatePermissionRequest.md) | The permissions for the plan. | [optional] [default to null] |
| **scheduling** | [**CreateSchedulingRequest**](CreateSchedulingRequest.md) | The scheduling settings for the plan. | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

