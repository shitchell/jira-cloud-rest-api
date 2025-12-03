# BulkEditShareableEntityRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **action** | **String** | Allowed action for bulk edit shareable entity | [default to null] |
| **changeOwnerDetails** | [**BulkChangeOwnerDetails**](BulkChangeOwnerDetails.md) | The details of change owner action. | [optional] [default to null] |
| **entityIds** | **Set** | The id list of shareable entities to be changed. | [default to null] |
| **extendAdminPermissions** | **Boolean** | Whether the actions are executed by users with Administer Jira global permission. | [optional] [default to null] |
| **permissionDetails** | [**PermissionDetails**](PermissionDetails.md) | The permission details to be changed. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

