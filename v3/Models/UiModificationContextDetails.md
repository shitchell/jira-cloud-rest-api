# UiModificationContextDetails
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | The ID of the UI modification context. | [optional] [default to null] |
| **isAvailable** | **Boolean** | Whether a context is available. For example, when a project is deleted the context becomes unavailable. | [optional] [default to null] |
| **issueTypeId** | **String** | The issue type ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all issue types. Each UI modification context can have a maximum of one wildcard. | [optional] [default to null] |
| **projectId** | **String** | The project ID of the context. Null is treated as a wildcard, meaning the UI modification will be applied to all projects. Each UI modification context can have a maximum of one wildcard. | [optional] [default to null] |
| **viewType** | **String** | The view type of the context. Only &#x60;GIC&#x60;(Global Issue Create), &#x60;IssueView&#x60; and &#x60;IssueTransition&#x60; are supported. Null is treated as a wildcard, meaning the UI modification will be applied to all view types. Each UI modification context can have a maximum of one wildcard. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

