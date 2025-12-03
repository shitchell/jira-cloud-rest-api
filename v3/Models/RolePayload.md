# RolePayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **defaultActors** | [**List**](ProjectCreateResourceIdentifier.md) | The default actors for the role. By adding default actors, the role will be added to any future projects created | [optional] [default to null] |
| **description** | **String** | The description of the role | [optional] [default to null] |
| **name** | **String** | The name of the role | [optional] [default to null] |
| **onConflict** | **String** | The strategy to use when there is a conflict with an existing project role. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters | [optional] [default to USE] |
| **pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] [default to null] |
| **type** | **String** | The type of the role. Only used by project-scoped project | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

