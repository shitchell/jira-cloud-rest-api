# SchedulesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createSchedule**](SchedulesApi.md#createSchedule) | **POST** /v1/schedules | Create schedule |
| [**deleteSchedule**](SchedulesApi.md#deleteSchedule) | **DELETE** /v1/schedules/{id} | Delete schedule |
| [**getSchedule**](SchedulesApi.md#getSchedule) | **GET** /v1/schedules/{id} | Get schedule |
| [**listSchedules**](SchedulesApi.md#listSchedules) | **GET** /v1/schedules | List schedules |
| [**updateSchedule**](SchedulesApi.md#updateSchedule) | **PATCH** /v1/schedules/{id} | Update schedule |


<a name="createSchedule"></a>
# **createSchedule**
> Schedule createSchedule(CreateScheduleRequest)

Create schedule

    Creates a schedule with given properties.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to create a schedule:   - the user has edit configuration right.   - the user is the admin of the team that the schedule belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateScheduleRequest** | [**CreateScheduleRequest**](../Models/CreateScheduleRequest.md)|  | |

### Return type

[**Schedule**](../Models/Schedule.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteSchedule"></a>
# **deleteSchedule**
> deleteSchedule(id)

Delete schedule

    Deletes the schedule with given id in the request. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to delete the schedule:   - the user has delete configuration right.   - the user is the admin of the team that the schedule belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| ID of the schedule. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSchedule"></a>
# **getSchedule**
> Schedule getSchedule(id)

Get schedule

    Returns the details of the schedule with given id in the request. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the schedule:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| ID of the schedule. | [default to null] |

### Return type

[**Schedule**](../Models/Schedule.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listSchedules"></a>
# **listSchedules**
> ListSchedulesResponse listSchedules(query, size, offset, expand)

List schedules

    Lists all schedules that user can view. It optionally takes two parameters - offset and size.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access Jira Service Management; however, the list contains a schedule if:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **query** | **String**| The query keyword to filter schedules by name.   It performs an exact match unless the keyword ends with a wildcard character &#x60;*&#x60;, in which case it performs a prefix match. Matching is case-insensitive. | [optional] [default to null] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 25] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **expand** | **List**| The list of possible expansions in the response. Possible values: &#x60;rotation&#x60;. | [optional] [default to null] |

### Return type

[**ListSchedulesResponse**](../Models/ListSchedulesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateSchedule"></a>
# **updateSchedule**
> Schedule updateSchedule(id, UpdateScheduleRequest)

Update schedule

    Updates the schedule with given id in the request. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to update the schedule:   - the user has edit configuration right.   - the user is the admin of the team that the schedule belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |
| **UpdateScheduleRequest** | [**UpdateScheduleRequest**](../Models/UpdateScheduleRequest.md)|  | |

### Return type

[**Schedule**](../Models/Schedule.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

