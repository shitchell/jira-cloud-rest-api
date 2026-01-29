# IntegrationResponse
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | ID of the integration. | [optional] [default to null] |
| **name** | **String** | Name of the integration. | [optional] [default to null] |
| **type** | **String** | Type of the integration. | [optional] [default to null] |
| **enabled** | **Boolean** | Indicates whether the integration is enabled or not. | [optional] [default to null] |
| **teamId** | **String** | ID of the team that integration belongs to. | [optional] [default to null] |
| **advanced** | **Boolean** | Indicates whether the integration is configured as different than the default version. | [optional] [default to null] |
| **maintenanceSources** | [**List**](MaintenanceSource.md) |  | [optional] [default to null] |
| **directions** | **List** | Direction of the action. It can be *incoming* or *outgoing* | [optional] [default to null] |
| **domains** | **List** | Domain of the action. It can be *alert* | [optional] [default to null] |
| **typeSpecificProperties** | **Map** | Action specific properties. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

