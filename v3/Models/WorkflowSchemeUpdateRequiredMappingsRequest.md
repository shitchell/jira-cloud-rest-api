# WorkflowSchemeUpdateRequiredMappingsRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **defaultWorkflowId** | **String** | The ID of the new default workflow for this workflow scheme. Only used in global-scoped workflow schemes. If it isn&#39;t specified, is set to *Jira Workflow (jira)*. | [optional] [default to null] |
| **id** | **String** | The ID of the workflow scheme. | [default to null] |
| **workflowsForIssueTypes** | [**List**](WorkflowSchemeAssociation.md) | The new workflow to issue type mappings for this workflow scheme. | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

