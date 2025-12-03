# WorkflowSchemeReadResponse
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **defaultWorkflow** | [**WorkflowMetadataRestModel**](WorkflowMetadataRestModel.md) |  | [optional] [default to null] |
| **description** | **String** | The description of the workflow scheme. | [optional] [default to null] |
| **id** | **String** | The ID of the workflow scheme. | [default to null] |
| **name** | **String** | The name of the workflow scheme. | [default to null] |
| **scope** | [**WorkflowScope**](WorkflowScope.md) |  | [default to null] |
| **taskId** | **String** | Indicates if there&#39;s an [asynchronous task](#async-operations) for this workflow scheme. | [optional] [default to null] |
| **version** | [**DocumentVersion**](DocumentVersion.md) |  | [default to null] |
| **workflowsForIssueTypes** | [**List**](WorkflowMetadataAndIssueTypeRestModel.md) | Mappings from workflows to issue types. | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

