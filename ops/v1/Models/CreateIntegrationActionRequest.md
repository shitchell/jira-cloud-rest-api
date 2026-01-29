# CreateIntegrationActionRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **type** | **String** | Type of the action. It can be *create*, *close*, *acknowledge* or *addNote* for incoming actions. Types of outgoing actions can be change according to integration types such as *publish* or *sendMessage* etc. | [default to null] |
| **name** | **String** | Name of the action. | [default to null] |
| **domain** | **String** | Domain of the action. It can be *alert* | [default to null] |
| **direction** | **String** | Direction of the action. It can be *incoming* or *outgoing* | [default to null] |
| **groupType** | **String** | Group type of the action. It can be *forwarding*, *updating* or *checkbox*. It must be provided for outgoing actions | [optional] [default to null] |
| **extraField** | **String** | Extra field for the action | [optional] [default to null] |
| **filter** | [**Filter**](Filter.md) |  | [default to null] |
| **typeSpecificProperties** | **Map** | Action specific properties of the action. | [optional] [default to null] |
| **fieldMappings** | **Map** | The fields mapping between payload and alert fields. | [optional] [default to null] |
| **actionMapping** | [**ActionMapping**](ActionMapping.md) |  | [optional] [default to null] |
| **enabled** | **Boolean** | This parameter is for specifying whether the integration action will be enabled or not. Defaults to false | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

