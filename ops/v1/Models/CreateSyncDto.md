# CreateSyncDto
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **name** | **String** | Name of the sync. Name must be unique for each sync. | [default to null] |
| **description** | **String** | Description of the sync. | [optional] [default to null] |
| **enabled** | **Boolean** | This parameter is for specifying whether the integration will be enabled or not. Defaults to false | [optional] [default to null] |
| **teamId** | **String** | Owner team of the sync, consisting id of the owner team. | [optional] [default to null] |
| **type** | **String** | Type of the sync. (For instance, \&quot;jira-software-cloud\&quot; for Jira Software Cloud Sync.) | [default to null] |
| **properties** | **Map** | Sync specific properties may be provided to this object.  For instance, this map should consist  - *projectKey* | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

