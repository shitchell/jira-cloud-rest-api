# ScheduleOnCallsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**exportOnCalls**](ScheduleOnCallsApi.md#exportOnCalls) | **GET** /v1/schedules/on-calls/{userIdentifier}.ics | Export on-call responders |
| [**getNextOnCalls**](ScheduleOnCallsApi.md#getNextOnCalls) | **GET** /v1/schedules/{scheduleId}/next-on-calls | List next on-call responders |
| [**getOnCalls**](ScheduleOnCallsApi.md#getOnCalls) | **GET** /v1/schedules/{scheduleId}/on-calls | List on-call responders |


<a name="exportOnCalls"></a>
# **exportOnCalls**
> Object exportOnCalls(userIdentifier)

Export on-call responders

    Exports the on-call periods in the calendar (.ics) format for the user with given id in the request.    **Permissions required:** Permission to export to the user on-calls:   - the user exports the on-call calendar for themselves.   - the user exports the on-call calendar for another user, and the requesting user is the admin.   - the user exports the on-call calendar for another user, and the requesting user is the team admin in one of the teams of the requested user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **userIdentifier** | **String**| ID of the user whose on-call calendar to be exported. | [default to null] |

### Return type

**Object**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/calendar, application/json

<a name="getNextOnCalls"></a>
# **getNextOnCalls**
> NextOnCallResponse getNextOnCalls(scheduleId, flat, date)

List next on-call responders

    Lists the next on-call responders at a specific time for the schedule with given id in the request.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the schedule:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **flat** | **Boolean**| When enabled, returns only the user names of all next on-call participants in user type. Otherwise, returns the complete flattening tree for next on-calls. | [optional] [default to false] |
| **date** | **Date**| The date for which the schedule&#39;s next on-calls are requested. | [optional] [default to null] |

### Return type

[**NextOnCallResponse**](../Models/NextOnCallResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getOnCalls"></a>
# **getOnCalls**
> OnCallResponse getOnCalls(scheduleId, flat, date)

List on-call responders

    Lists the on-call responders at a specific time for the schedule with given id in the request.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the schedule:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **flat** | **Boolean**| When enabled, returns only the user ids of the on-call participants in user type. Otherwise, returns the complete flattening tree for on-calls. | [optional] [default to false] |
| **date** | **Date**| The date for which the schedule&#39;s on-calls are requested. | [optional] [default to null] |

### Return type

[**OnCallResponse**](../Models/OnCallResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

