# WorkflowSearchResponse
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **isLast** | **Boolean** | Whether this is the last page. | [optional] [default to null] |
| **maxResults** | **Integer** | The maximum number of items that could be returned. | [optional] [default to null] |
| **nextPage** | **String** | If there is another page of results, the URL of the next page. | [optional] [default to null] |
| **self** | **String** | The URL of the page. | [optional] [default to null] |
| **startAt** | **Long** | The index of the first item returned. | [optional] [default to null] |
| **statuses** | [**List**](JiraWorkflowStatus.md) | List of statuses. | [optional] [default to null] |
| **total** | **Long** | The number of items returned. | [optional] [default to null] |
| **values** | [**List**](JiraWorkflow.md) | List of workflows. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

