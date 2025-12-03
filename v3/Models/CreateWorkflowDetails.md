# CreateWorkflowDetails
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **description** | **String** | The description of the workflow. The maximum length is 1000 characters. | [optional] [default to null] |
| **name** | **String** | The name of the workflow. The name must be unique. The maximum length is 255 characters. Characters can be separated by a whitespace but the name cannot start or end with a whitespace. | [default to null] |
| **statuses** | [**Set**](CreateWorkflowStatusDetails.md) | The statuses of the workflow. Any status that does not include a transition is added to the workflow without a transition. | [default to null] |
| **transitions** | [**List**](CreateWorkflowTransitionDetails.md) | The transitions of the workflow. For the request to be valid, these transitions must:   *  include one *initial* transition.  *  not use the same name for a *global* and *directed* transition.  *  have a unique name for each *global* transition.  *  have a unique &#39;to&#39; status for each *global* transition.  *  have unique names for each transition from a status.  *  not have a &#39;from&#39; status on *initial* and *global* transitions.  *  have a &#39;from&#39; status on *directed* transitions.  All the transition statuses must be included in &#x60;statuses&#x60;. | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

