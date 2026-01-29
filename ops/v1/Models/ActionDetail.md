# ActionDetail
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | ID of the integration action. | [optional] [default to null] |
| **name** | **String** | Name of the integration action. | [optional] [default to null] |
| **type** | **String** | Type of the integration action. | [optional] [default to null] |
| **direction** | **String** | Direction of the action. It can be *incoming* or *outgoing*. | [optional] [default to null] |
| **domain** | **String** | Domain of the action. It can be *alert*. | [optional] [default to null] |
| **actionMappingType** | **String** | Mapped action of the integration action. This will be provided for the outgoing actions. Alert action will be mapped to the actions. | [optional] [default to null] |
| **groupType** | **String** | Group type of the action. It can be *forwarding*, *updating* or *checkbox*. It will be provided for outgoing actions | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

