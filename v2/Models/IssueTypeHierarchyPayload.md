# IssueTypeHierarchyPayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **hierarchyLevel** | **Integer** | The hierarchy level of the issue type. 0, 1, 2, 3 .. n; Negative values for subtasks | [optional] [default to null] |
| **name** | **String** | The name of the issue type | [optional] [default to null] |
| **onConflict** | **String** | The conflict strategy to use when the issue type already exists. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters | [optional] [default to null] |
| **pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

