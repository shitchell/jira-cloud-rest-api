# CreateScheduleRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **name** | **String** | Name of the schedule. Cannot be empty. | [default to null] |
| **teamId** | **String** | ID of the team that schedule belongs to. | [optional] [default to null] |
| **description** | **String** | Description of the schedule. | [optional] [default to null] |
| **timezone** | **String** | Time zone ID of the schedule. | [optional] [default to America/New_York] |
| **enabled** | **Boolean** | Indicates whether the schedule is enabled or not. | [optional] [default to true] |
| **rotations** | [**List**](CreateRotationRequest.md) | Rotation details of the schedule. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

