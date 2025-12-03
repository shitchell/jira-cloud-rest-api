# TransitionUpdateDTO
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **actions** | [**List**](WorkflowRuleConfiguration.md) | The post-functions of the transition. | [optional] [default to null] |
| **conditions** | [**ConditionGroupUpdate**](ConditionGroupUpdate.md) |  | [optional] [default to null] |
| **customIssueEventId** | **String** | The custom event ID of the transition. | [optional] [default to null] |
| **description** | **String** | The description of the transition. | [optional] [default to null] |
| **id** | **String** | The ID of the transition. | [optional] [default to null] |
| **links** | [**List**](WorkflowTransitionLinks.md) | The statuses the transition can start from, and the mapping of ports between the statuses. | [optional] [default to null] |
| **name** | **String** | The name of the transition. | [optional] [default to null] |
| **properties** | **Map** | The properties of the transition. | [optional] [default to null] |
| **toStatusReference** | **String** | The status the transition goes to. | [optional] [default to null] |
| **transitionScreen** | [**WorkflowRuleConfiguration**](WorkflowRuleConfiguration.md) |  | [optional] [default to null] |
| **triggers** | [**List**](WorkflowTrigger.md) | The triggers of the transition. | [optional] [default to null] |
| **type** | **String** | The transition type. | [optional] [default to null] |
| **validators** | [**List**](WorkflowRuleConfiguration.md) | The validators of the transition. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

