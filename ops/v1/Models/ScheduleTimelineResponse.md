# ScheduleTimelineResponse
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **startDate** | **Date** | Start time of the timeline. | [optional] [default to null] |
| **endDate** | **Date** | End time of the timeline. | [optional] [default to null] |
| **finalTimeline** | [**Timeline**](Timeline.md) | Timeline for the final layer. | [optional] [default to null] |
| **baseTimeline** | [**Timeline**](Timeline.md) | Timeline for the base layer. Returned only if the &#x60;base&#x60; expansion is requested. | [optional] [default to null] |
| **overrideTimeline** | [**Timeline**](Timeline.md) | Timeline for the override layer. Returned only if the &#x60;override&#x60; expansion is requested. | [optional] [default to null] |
| **forwardingTimeline** | [**Timeline**](Timeline.md) | Timeline for the forwarding layer. Returned only if the &#x60;forwarding&#x60; expansion is requested. | [optional] [default to null] |
| **\_expands** | **List** | List of all possible expansions. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

