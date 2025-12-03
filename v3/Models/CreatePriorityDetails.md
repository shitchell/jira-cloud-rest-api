# CreatePriorityDetails
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **avatarId** | **Long** | The ID for the avatar for the priority. Either the iconUrl or avatarId must be defined, but not both. This parameter is nullable and will become mandatory once the iconUrl parameter is deprecated. | [optional] [default to null] |
| **description** | **String** | The description of the priority. | [optional] [default to null] |
| **iconUrl** | **String** | The URL of an icon for the priority. Accepted protocols are HTTP and HTTPS. Built in icons can also be used. Either the iconUrl or avatarId must be defined, but not both. | [optional] [default to null] |
| **name** | **String** | The name of the priority. Must be unique. | [default to null] |
| **statusColor** | **String** | The status color of the priority in 3-digit or 6-digit hexadecimal format. | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

