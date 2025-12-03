# WorkflowSchemeUpdateRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **defaultWorkflowId** | **String** | The ID of the workflow for issue types without having a mapping defined in this workflow scheme. Only used in global-scoped workflow schemes. If the &#x60;defaultWorkflowId&#x60; isn&#39;t specified, this is set to *Jira Workflow (jira)*. | [optional] [default to null] |
| **description** | **String** | The new description for this workflow scheme. | [default to null] |
| **id** | **String** | The ID of this workflow scheme. | [default to null] |
| **name** | **String** | The new name for this workflow scheme. | [default to null] |
| **statusMappingsByIssueTypeOverride** | [**List**](MappingsByIssueTypeOverride.md) | Overrides, for the selected issue types, any status mappings provided in &#x60;statusMappingsByWorkflows&#x60;. Status mappings are required when the new workflow for an issue type doesn&#39;t contain all statuses that the old workflow has. Status mappings can be provided by a combination of &#x60;statusMappingsByWorkflows&#x60; and &#x60;statusMappingsByIssueTypeOverride&#x60;. | [optional] [default to null] |
| **statusMappingsByWorkflows** | [**List**](MappingsByWorkflow.md) | The status mappings by workflows. Status mappings are required when the new workflow for an issue type doesn&#39;t contain all statuses that the old workflow has. Status mappings can be provided by a combination of &#x60;statusMappingsByWorkflows&#x60; and &#x60;statusMappingsByIssueTypeOverride&#x60;. | [optional] [default to null] |
| **version** | [**DocumentVersion**](DocumentVersion.md) |  | [default to null] |
| **workflowsForIssueTypes** | [**List**](WorkflowSchemeAssociation.md) | Mappings from workflows to issue types. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

