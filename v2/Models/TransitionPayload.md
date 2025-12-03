# TransitionPayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **actions** | [**List**](RulePayload.md) | The actions that are performed when the transition is made | [optional] [default to null] |
| **conditions** | [**ConditionGroupPayload**](ConditionGroupPayload.md) |  | [optional] [default to null] |
| **customIssueEventId** | **String** | Mechanism in Jira for triggering certain actions, like notifications, automations, etc. Unless a custom notification scheme is configure, it&#39;s better not to provide any value here | [optional] [default to null] |
| **description** | **String** | The description of the transition | [optional] [default to null] |
| **from** | [**List**](FromLayoutPayload.md) | The statuses that the transition can be made from | [optional] [default to null] |
| **id** | **Integer** | The id of the transition | [optional] [default to null] |
| **name** | **String** | The name of the transition | [optional] [default to null] |
| **properties** | **Map** | The properties of the transition | [optional] [default to null] |
| **to** | [**ToLayoutPayload**](ToLayoutPayload.md) |  | [optional] [default to null] |
| **transitionScreen** | [**RulePayload**](RulePayload.md) |  | [optional] [default to null] |
| **triggers** | [**List**](RulePayload.md) | The triggers that are performed when the transition is made | [optional] [default to null] |
| **type** | **String** | The type of the transition | [optional] [default to null] |
| **validators** | [**List**](RulePayload.md) | The validators that are performed when the transition is made | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

