# UpdateScheduleRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **name** | **String** | Name of the schedule. | [optional] [default to null] |
| **teamId** | **String** | ID of the team that schedule belongs to. Set as empty string to change it to global schedule. | [optional] [default to null] |
| **description** | **String** | Description of the schedule. | [optional] [default to null] |
| **timezone** | **String** | Time zone ID of the schedule. | [optional] [default to null] |
| **enabled** | **Boolean** | Indicates whether the schedule is enabled or not. | [optional] [default to null] |
| **rotations** | [**List**](CreateRotationRequest.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

