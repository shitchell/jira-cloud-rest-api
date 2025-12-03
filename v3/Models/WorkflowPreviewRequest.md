# WorkflowPreviewRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **issueTypeIds** | **List** | The list of issue type IDs. At most 25 issue type IDs can be specified. | [optional] [default to null] |
| **projectId** | **String** | The projectId parameter is required and will be used for permission checks. In addition, you must supply at least one of the following lookup terms: *workflowNames*, *workflowIds*, or *issueTypeIds*. The specified workflows must be associated with the given project. | [default to null] |
| **workflowIds** | **List** | The list of workflow IDs to be returned. At most 25 workflow IDs can be specified. | [optional] [default to null] |
| **workflowNames** | **List** | The list of workflow names to be returned. At most 25 workflow names can be specified. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

