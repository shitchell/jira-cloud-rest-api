# ReorderIssueResolutionsRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **after** | **String** | The ID of the resolution. Required if &#x60;position&#x60; isn&#39;t provided. | [optional] [default to null] |
| **ids** | **List** | The list of resolution IDs to be reordered. Cannot contain duplicates nor after ID. | [default to null] |
| **position** | **String** | The position for issue resolutions to be moved to. Required if &#x60;after&#x60; isn&#39;t provided. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

