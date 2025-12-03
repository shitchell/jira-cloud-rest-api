# SearchAndReconcileResults
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **isLast** | **Boolean** | Indicates whether this is the last page of the paginated response. | [optional] [default to null] |
| **issues** | [**List**](IssueBean.md) | The list of issues found by the search or reconsiliation. | [optional] [default to null] |
| **names** | **Map** | The ID and name of each field in the search results. | [optional] [default to null] |
| **nextPageToken** | **String** | Continuation token to fetch the next page. If this result represents the last or the only page this token will be null. This token will expire in 7 days. | [optional] [default to null] |
| **schema** | [**Map**](JsonTypeBean.md) | The schema describing the field types in the search results. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

