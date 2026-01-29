# CreateHeartbeatRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **name** | **String** | Name of the heartbeat. | [default to null] |
| **description** | **String** | Description of the heartbeat. | [optional] [default to null] |
| **interval** | **Integer** | Specifies how often a heartbeat message should be expected. | [default to null] |
| **enabled** | **Boolean** | Enable/disable heartbeat monitoring. | [optional] [default to false] |
| **intervalUnit** | **String** |  | [default to null] |
| **alertMessage** | **String** | Specifies the alert message for heartbeat expiration alert. | [optional] [default to HeartbeatName is expired] |
| **alertTags** | **List** | Specifies the alert tags for heartbeat expiration alert. | [optional] [default to null] |
| **alertPriority** | **String** | Specifies the alert priority for heartbeat expiration alert. If this is not provided, default priority is P3 | [optional] [default to P3] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

