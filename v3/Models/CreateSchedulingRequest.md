# CreateSchedulingRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **dependencies** | **String** | The dependencies for the plan. This must be \&quot;Sequential\&quot; or \&quot;Concurrent\&quot;. | [optional] [default to null] |
| **endDate** | [**CreateDateFieldRequest**](CreateDateFieldRequest.md) | The end date field for the plan. | [optional] [default to null] |
| **estimation** | **String** | The estimation unit for the plan. This must be \&quot;StoryPoints\&quot;, \&quot;Days\&quot; or \&quot;Hours\&quot;. | [default to null] |
| **inferredDates** | **String** | The inferred dates for the plan. This must be \&quot;None\&quot;, \&quot;SprintDates\&quot; or \&quot;ReleaseDates\&quot;. | [optional] [default to null] |
| **startDate** | [**CreateDateFieldRequest**](CreateDateFieldRequest.md) | The start date field for the plan. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

