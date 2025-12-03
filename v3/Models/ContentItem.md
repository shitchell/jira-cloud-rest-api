# ContentItem
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **entityId** | **String** | The ID of the content entity.   *  For redacting an issue field, this will be the field ID (e.g., summary, customfield\\_10000).  *  For redacting a comment, this will be the comment ID.  *  For redacting a worklog, this will be the worklog ID. | [default to null] |
| **entityType** | **String** | The type of the entity to redact; It will be one of the following:   *  **issuefieldvalue** \\- To redact in issue fields  *  **issue-comment** \\- To redact in issue comments.  *  **issue-worklog** \\- To redact in issue worklogs | [default to null] |
| **id** | **String** | This would be the issue ID | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

