# CreateIntegrationRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **name** | **String** | Name of the integration. Name must be unique for each integration. | [default to null] |
| **type** | **String** | Type of the integration. (For instance, \&quot;API\&quot; for API Integration. | [default to null] |
| **description** | **String** | Description of the integration. | [optional] [default to null] |
| **enabled** | **Boolean** | This parameter is for specifying whether the integration will be enabled or not. Defaults to false | [optional] [default to null] |
| **teamId** | **String** | ID of the team that integration belongs to. | [optional] [default to null] |
| **typeSpecificProperties** | **Map** | Integration spesific properties may be provided to this object.  For instance, this map may constist  - *suppressNotifications* for incoming integrations - *emailUsername* for email integrations - *allowReadAccess* , *allowWriteAccess*, *allowDeleteAccess*, *allowConfigurationAccess* for API Integrations - some credential properties or tool spesific properties such as URLs for outgoing integrations | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

