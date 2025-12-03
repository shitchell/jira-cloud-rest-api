# RemoveOptionFromIssuesResult
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **errors** | [**SimpleErrorCollection**](SimpleErrorCollection.md) | A collection of errors related to unchanged issues. The collection size is limited, which means not all errors may be returned. | [optional] [default to null] |
| **modifiedIssues** | **List** | The IDs of the modified issues. | [optional] [default to null] |
| **unmodifiedIssues** | **List** | The IDs of the unchanged issues, those issues where errors prevent modification. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

