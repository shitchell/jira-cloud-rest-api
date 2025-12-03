# JiraWorkflow
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **created** | **String** | The creation date of the workflow. | [optional] [default to null] |
| **description** | **String** | The description of the workflow. | [optional] [default to null] |
| **id** | **String** | The ID of the workflow. | [optional] [default to null] |
| **isEditable** | **Boolean** | Indicates if the workflow can be edited. | [optional] [default to null] |
| **loopedTransitionContainerLayout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] [default to null] |
| **name** | **String** | The name of the workflow. | [optional] [default to null] |
| **scope** | [**WorkflowScope**](WorkflowScope.md) |  | [optional] [default to null] |
| **startPointLayout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] [default to null] |
| **statuses** | [**Set**](WorkflowReferenceStatus.md) | The statuses referenced in this workflow. | [optional] [default to null] |
| **taskId** | **String** | If there is a current [asynchronous task](#async-operations) operation for this workflow. | [optional] [default to null] |
| **transitions** | [**Set**](WorkflowTransitions.md) | The transitions of the workflow. | [optional] [default to null] |
| **updated** | **String** | The last edited date of the workflow. | [optional] [default to null] |
| **version** | [**DocumentVersion**](DocumentVersion.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

