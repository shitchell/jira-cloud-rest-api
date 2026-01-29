# ScheduleOverridesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createOverride**](ScheduleOverridesApi.md#createOverride) | **POST** /v1/schedules/{scheduleId}/overrides | Create override |
| [**deleteOverride**](ScheduleOverridesApi.md#deleteOverride) | **DELETE** /v1/schedules/{scheduleId}/overrides/{alias} | Delete override |
| [**getOverride**](ScheduleOverridesApi.md#getOverride) | **GET** /v1/schedules/{scheduleId}/overrides/{alias} | Get override |
| [**listOverrides**](ScheduleOverridesApi.md#listOverrides) | **GET** /v1/schedules/{scheduleId}/overrides | List overrides |
| [**updateOverride**](ScheduleOverridesApi.md#updateOverride) | **PUT** /v1/schedules/{scheduleId}/overrides/{alias} | Update override |


<a name="createOverride"></a>
# **createOverride**
> Override createOverride(scheduleId, CreateOverrideRequest)

Create override

    Creates a new override for the schedule with given id and properties.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to create an override:   - the user has edit configuration right.   - the user is a member of the team that the schedule belongs to.   - the user is adding override to themself.   - the user exists in the schedule directly or indirectly.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **CreateOverrideRequest** | [**CreateOverrideRequest**](../Models/CreateOverrideRequest.md)|  | |

### Return type

[**Override**](../Models/Override.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteOverride"></a>
# **deleteOverride**
> deleteOverride(scheduleId, alias)

Delete override

    Deletes the override of a schedule with given IDs in the request. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to delete the override:   - the user is the responder of the override.   - the user has edit configuration right.   - the user is the admin of the team that the schedule belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **alias** | **String**| Alias of the override. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getOverride"></a>
# **getOverride**
> Override getOverride(scheduleId, alias)

Get override

    Returns the details of the override of a schedule with given IDs in the request. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the schedule:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **alias** | **String**| Alias of the override. | [default to null] |

### Return type

[**Override**](../Models/Override.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listOverrides"></a>
# **listOverrides**
> ListOverridesResponse listOverrides(scheduleId, size, offset)

List overrides

    Lists all ongoing and future overrides of the schedule with given id in the request. It optionally takes two parameters - offset and size.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the schedule:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 25] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |

### Return type

[**ListOverridesResponse**](../Models/ListOverridesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateOverride"></a>
# **updateOverride**
> Override updateOverride(scheduleId, alias, UpdateOverrideRequest)

Update override

    Updates the override of a schedule with given IDs in the request.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to update an override:   - the user has edit configuration right.   - the user is a member of the team that the schedule belongs to.   - the user is adding override to themself.   - the user exists in the schedule directly or indirectly by flattening.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **alias** | **String**| Alias of the override. | [default to null] |
| **UpdateOverrideRequest** | [**UpdateOverrideRequest**](../Models/UpdateOverrideRequest.md)|  | |

### Return type

[**Override**](../Models/Override.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

