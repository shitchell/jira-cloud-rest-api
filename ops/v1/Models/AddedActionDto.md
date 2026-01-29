# AddedActionDto
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **type** | **String** |  | [default to null] |
| **name** | **String** |  | [default to null] |
| **enabled** | **Boolean** |  | [optional] [default to null] |
| **filter** | [**FilterDto**](FilterDto.md) |  | [optional] [default to null] |
| **typeSpecificProperties** | **Map** |  | [optional] [default to null] |
| **fieldMappings** | **Map** | You can use field search API (https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-fields/#api-rest-api-3-field-search-get) to find id or name of the fields while populating fieldMappings for outgoing root actions. | [optional] [default to null] |
| **actionMapping** | [**ActionMappingDto**](ActionMappingDto.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

