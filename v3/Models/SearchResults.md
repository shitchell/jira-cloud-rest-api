# SearchResults
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **expand** | **String** | Expand options that include additional search result details in the response. | [optional] [default to null] |
| **issues** | [**List**](IssueBean.md) | The list of issues found by the search. | [optional] [default to null] |
| **maxResults** | **Integer** | The maximum number of results that could be on the page. | [optional] [default to null] |
| **names** | **Map** | The ID and name of each field in the search results. | [optional] [default to null] |
| **schema** | [**Map**](JsonTypeBean.md) | The schema describing the field types in the search results. | [optional] [default to null] |
| **startAt** | **Integer** | The index of the first item returned on the page. | [optional] [default to null] |
| **total** | **Integer** | The number of results on the page. | [optional] [default to null] |
| **warningMessages** | **List** | Any warnings related to the JQL query. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

