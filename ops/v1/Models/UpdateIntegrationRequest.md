# UpdateIntegrationRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **name** | **String** | Name of the integration. Name must be unique for each integration. | [optional] [default to null] |
| **enabled** | **Boolean** | This parameter is for specifying whether the integration will be enabled or not. Defaults to false | [optional] [default to null] |
| **description** | **String** | Description of the integration. | [optional] [default to null] |
| **teamId** | **String** | ID of the team that integration belongs to. | [optional] [default to null] |
| **typeSpecificProperties** | **Map** | This is for some integration spesific properties. For instance this map is consisting suppressNotifications for incoming integrations, emailUsername for email integrations or allowReadAccess/allowWriteAccess/allowDeleteAccessallowConfigurationAccess for API Integrations. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

