# TransitionPreview
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **actions** | [**List**](PreviewRuleConfiguration.md) | The post-functions of the transition. | [optional] [default to null] |
| **conditions** | [**PreviewConditionGroupConfiguration**](PreviewConditionGroupConfiguration.md) |  | [optional] [default to null] |
| **customIssueEventId** | **String** | The custom issue event ID for the transition. | [optional] [default to null] |
| **description** | **String** | The description of the transition. | [optional] [default to null] |
| **id** | **String** | The ID of the transition. | [optional] [default to null] |
| **links** | [**List**](TransitionLink.md) | The statuses the transition can start from, and the mapping of ports between the statuses. | [optional] [default to null] |
| **name** | **String** | The name of the transition. | [optional] [default to null] |
| **toStatusReference** | **String** | The status the transition goes to. | [optional] [default to null] |
| **transitionScreen** | [**PreviewRuleConfiguration**](PreviewRuleConfiguration.md) |  | [optional] [default to null] |
| **triggers** | [**List**](PreviewTrigger.md) | The triggers of the transition. | [optional] [default to null] |
| **type** | **String** | The transition type. | [optional] [default to null] |
| **validators** | [**List**](PreviewRuleConfiguration.md) | The validators of the transition. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

