# GetPlanResponse
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **crossProjectReleases** | [**List**](GetCrossProjectReleaseResponse.md) | The cross-project releases included in the plan. | [optional] [default to null] |
| **customFields** | [**List**](GetCustomFieldResponse.md) | The custom fields for the plan. | [optional] [default to null] |
| **exclusionRules** | [**GetExclusionRulesResponse**](GetExclusionRulesResponse.md) | The exclusion rules for the plan. | [optional] [default to null] |
| **id** | **Long** | The plan ID. | [default to null] |
| **issueSources** | [**List**](GetIssueSourceResponse.md) | The issue sources included in the plan. | [optional] [default to null] |
| **lastSaved** | **String** | The date when the plan was last saved in UTC. | [optional] [default to null] |
| **leadAccountId** | **String** | The account ID of the plan lead. | [optional] [default to null] |
| **name** | **String** | The plan name. | [optional] [default to null] |
| **permissions** | [**List**](GetPermissionResponse.md) | The permissions for the plan. | [optional] [default to null] |
| **scheduling** | [**GetSchedulingResponse**](GetSchedulingResponse.md) | The scheduling settings for the plan. | [default to null] |
| **status** | **String** | The plan status. This is \&quot;Active\&quot;, \&quot;Trashed\&quot; or \&quot;Archived\&quot;. | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

