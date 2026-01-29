# IntegrationAction
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | ID of the integration action. | [optional] [default to null] |
| **type** | **String** | Type of the integration action. | [optional] [default to null] |
| **name** | **String** | Name of the integration action. | [optional] [default to null] |
| **domain** | **String** | Domain of the action. It can be *alert* | [optional] [default to null] |
| **direction** | **String** | Direction of the action. It can be *incoming* or *outgoing* | [optional] [default to null] |
| **actionMapping** | [**ActionMapping**](ActionMapping.md) |  | [optional] [default to null] |
| **groupType** | **String** | Group type of the action. It can be *forwarding*, *updating* or *checkbox*. It is not blank for outgoing actions | [optional] [default to null] |
| **extraField** | **String** | Extra field for the action | [optional] [default to null] |
| **filter** | [**Filter**](Filter.md) |  | [optional] [default to null] |
| **typeSpecificProperties** | **Map** | Action specific properties. | [optional] [default to null] |
| **fieldMappings** | **Map** | The fields mapping between payload and alert fields. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

