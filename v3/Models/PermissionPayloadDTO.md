# PermissionPayloadDTO
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **addAddonRole** | **Boolean** | Configuration to generate addon role. Default is false if null. Only applies to GLOBAL-scoped permission scheme | [optional] [default to null] |
| **description** | **String** | The description of the permission scheme | [optional] [default to null] |
| **grants** | [**Set**](PermissionGrantDTO.md) | List of permission grants | [optional] [default to null] |
| **name** | **String** | The name of the permission scheme | [optional] [default to null] |
| **onConflict** | **String** | The strategy to use when there is a conflict with an existing permission scheme. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters; NEW - If the entity exist, try and create a new one with a different name | [optional] [default to FAIL] |
| **pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

