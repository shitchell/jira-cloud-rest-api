# UpdateIntegrationActionRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **name** | **String** | Name of the action. | [optional] [default to null] |
| **enabled** | **Boolean** | This parameter is for specifying whether the integration action will be enabled or not. Defaults to false | [optional] [default to null] |
| **filter** | [**Filter**](Filter.md) |  | [optional] [default to null] |
| **typeSpecificProperties** | **Map** | Action specific properties of the action. | [optional] [default to null] |
| **fieldMappings** | **Map** | The fields mapping between payload and alert fields. | [optional] [default to null] |
| **actionMapping** | [**ActionMapping**](ActionMapping.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

