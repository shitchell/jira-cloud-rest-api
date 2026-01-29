# ScheduleTimelinesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**exportTimeline**](ScheduleTimelinesApi.md#exportTimeline) | **GET** /v1/schedules/{scheduleId}.ics | Export schedule timeline |
| [**getTimeline**](ScheduleTimelinesApi.md#getTimeline) | **GET** /v1/schedules/{scheduleId}/timeline | Get schedule timeline |


<a name="exportTimeline"></a>
# **exportTimeline**
> Object exportTimeline(scheduleId)

Export schedule timeline

    Exports the timeline in the calendar (.ics) format for the schedule with given id in the request. The time range of the export starts from the beginning of the current month and ends one year after the start date.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the schedule:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/calendar, application/json

<a name="getTimeline"></a>
# **getTimeline**
> ScheduleTimelineResponse getTimeline(scheduleId, interval, intervalUnit, date, expand)

Get schedule timeline

    Returns the timeline of the schedule with given id in the request. The time range of the timeline can go back at most one year from today and as far as two years from today. Therefore, query parameters should be given accordingly.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the schedule:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **interval** | **Integer**| The length of the timeline calculation time range as an integer in &#x60;intervalUnits&#x60;. | [optional] [default to 1] |
| **intervalUnit** | **String**| The unit of the timeline calculation time range. | [optional] [default to weeks] [enum: days, weeks, months] |
| **date** | **Date**| The date to calculate timeline according to. The &#x60;interval&#x60;, &#x60;intervalUnit&#x60;, and this field are combined to calculate to time range of the timeline. The start of the time range is the point of time that is the beginning of the &#x60;intervalUnit&#x60; containing this date. The end of the time range is the point of time &#x60;intervalUnit&#x60; * &#x60;interval&#x60; time is added to the start of the time range. &lt;br&gt; &lt;br&gt; For example, for the parameters &#x60;interval &#x3D; 2&#x60;, &#x60;intervalUnit &#x3D; months&#x60;, &#x60;date &#x3D; &#39;2023-12-15T15:20:25+00:00&#39;&#x60;, the time range of the timeline is (&#x60;2023-12-01T00:00:00+00:00&#x60;, &#x60;2024-02-01T00:00:00+00:00&#x60;). | [optional] [default to null] |
| **expand** | **List**| The list of possible expansions in the response. The default response only contains the timeline of the final layer. With these expansions, timeline of base, forwarding, and override layers can also be calculated. Possible values: &#x60;base&#x60;, &#x60;forwarding&#x60;, &#x60;override&#x60;. | [optional] [default to null] |

### Return type

[**ScheduleTimelineResponse**](../Models/ScheduleTimelineResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

