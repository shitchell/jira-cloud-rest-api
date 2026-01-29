# CreateSyncActionRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **type** | **String** | Type of the action. It can be *create*, *close*, *acknowledge* or *addNote* for incoming actions. Types of outgoing actions can be change according to integration types such as *addComment* or *closeIssue* etc. | [default to null] |
| **name** | **String** | Name of the action. | [default to null] |
| **direction** | **String** | Direction of the action. It can be *incoming* or *outgoing* | [default to null] |
| **actionGroupType** | **String** | Group type of the action. It can be *forwarding*, *updating* or *checkbox*. It must be provided for outgoing actions | [optional] [default to null] |
| **actionMapping** | [**ActionMappingDto**](ActionMappingDto.md) |  | [optional] [default to null] |
| **enabled** | **Boolean** | Enabled status of the action. | [optional] [default to null] |
| **filter** | [**FilterDto**](FilterDto.md) |  | [default to null] |
| **properties** | **Map** | Action specific properties of the action. | [optional] [default to null] |
| **fieldMappings** | **Map** | The fields mapping between payload and alert fields. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

