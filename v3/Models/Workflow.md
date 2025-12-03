# Workflow
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **created** | **Date** | The creation date of the workflow. | [optional] [default to null] |
| **description** | **String** | The description of the workflow. | [default to null] |
| **hasDraftWorkflow** | **Boolean** | Whether the workflow has a draft version. | [optional] [default to null] |
| **id** | [**PublishedWorkflowId**](PublishedWorkflowId.md) |  | [default to null] |
| **isDefault** | **Boolean** | Whether this is the default workflow. | [optional] [default to null] |
| **operations** | [**WorkflowOperations**](WorkflowOperations.md) |  | [optional] [default to null] |
| **projects** | [**List**](ProjectDetails.md) | The projects the workflow is assigned to, through workflow schemes. | [optional] [default to null] |
| **schemes** | [**List**](WorkflowSchemeIdName.md) | The workflow schemes the workflow is assigned to. | [optional] [default to null] |
| **statuses** | [**List**](WorkflowStatus.md) | The statuses of the workflow. | [optional] [default to null] |
| **transitions** | [**List**](Transition.md) | The transitions of the workflow. | [optional] [default to null] |
| **updated** | **Date** | The last edited date of the workflow. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

