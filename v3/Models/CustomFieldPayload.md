# CustomFieldPayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **cfType** | **String** | The type of the custom field | [optional] [default to null] |
| **description** | **String** | The description of the custom field | [optional] [default to null] |
| **name** | **String** | The name of the custom field | [optional] [default to null] |
| **onConflict** | **String** | The strategy to use when there is a conflict with an existing custom field. FAIL - Fail execution, this always needs to be unique; USE - Use the existing entity and ignore new entity parameters | [optional] [default to null] |
| **pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] [default to null] |
| **scope** | **String** | Allows an overwrite to declare the new Custom Field to be created as a GLOBAL-scoped field. Leave this as empty or null to use the project&#39;s default scope. | [optional] [default to null] |
| **searcherKey** | **String** | The searcher key of the custom field | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

