# CreateWorkflowTransitionDetails
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **description** | **String** | The description of the transition. The maximum length is 1000 characters. | [optional] [default to null] |
| **from** | **List** | The statuses the transition can start from. | [optional] [default to null] |
| **name** | **String** | The name of the transition. The maximum length is 60 characters. | [default to null] |
| **properties** | **Map** | The properties of the transition. | [optional] [default to null] |
| **rules** | [**CreateWorkflowTransitionRulesDetails**](CreateWorkflowTransitionRulesDetails.md) | The rules of the transition. | [optional] [default to null] |
| **screen** | [**CreateWorkflowTransitionScreenDetails**](CreateWorkflowTransitionScreenDetails.md) | The screen of the transition. | [optional] [default to null] |
| **to** | **String** | The status the transition goes to. | [default to null] |
| **type** | **String** | The type of the transition. | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

