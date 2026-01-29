# OnCallParticipant
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | ID of the on-call participant. | [optional] [default to null] |
| **type** | **String** | Type of the on-call participant. | [optional] [default to null] |
| **onCallParticipants** | [**List**](OnCallParticipant.md) | List of the flattened participants of the participant. | [optional] [default to null] |
| **forwardedFrom** | [**OnCallParticipant**](OnCallParticipant.md) | The details of the forwarding participant. Only set if the participant is on-call because of another participant that has forwarding to current participant. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

