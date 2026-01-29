# ScheduleRotationsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createRotation**](ScheduleRotationsApi.md#createRotation) | **POST** /v1/schedules/{scheduleId}/rotations | Create rotation |
| [**deleteRotation**](ScheduleRotationsApi.md#deleteRotation) | **DELETE** /v1/schedules/{scheduleId}/rotations/{id} | Delete rotation |
| [**getRotation**](ScheduleRotationsApi.md#getRotation) | **GET** /v1/schedules/{scheduleId}/rotations/{id} | Get rotation |
| [**listRotations**](ScheduleRotationsApi.md#listRotations) | **GET** /v1/schedules/{scheduleId}/rotations | List rotations |
| [**updateRotation**](ScheduleRotationsApi.md#updateRotation) | **PATCH** /v1/schedules/{scheduleId}/rotations/{id} | Update rotation |


<a name="createRotation"></a>
# **createRotation**
> Rotation createRotation(scheduleId, CreateRotationRequest)

Create rotation

    Creates a new rotation for the schedule with given id and properties.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to edit a schedule:   - the user has edit configuration right.   - the user is the admin of the team that the schedule belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **CreateRotationRequest** | [**CreateRotationRequest**](../Models/CreateRotationRequest.md)|  | |

### Return type

[**Rotation**](../Models/Rotation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteRotation"></a>
# **deleteRotation**
> deleteRotation(scheduleId, id)

Delete rotation

    Deletes the rotation of a schedule with given IDs in the request. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to delete the rotation:   - the user has delete configuration right.   - the user is the admin of the team that rotation&#39;s schedule belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **id** | **String**| ID of the rotation. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRotation"></a>
# **getRotation**
> Rotation getRotation(scheduleId, id)

Get rotation

    Returns the details of the rotation of a schedule with given IDs in the request. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the schedule:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **id** | **String**| ID of the rotation. | [default to null] |

### Return type

[**Rotation**](../Models/Rotation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listRotations"></a>
# **listRotations**
> ListRotationsResponse listRotations(scheduleId, size, offset)

List rotations

    Lists all rotations of the schedule with given id in the request. It optionally takes two parameters - offset and size.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the schedule:   - the user has read-only administrative right.   - the schedule&#39;s assigned team is one of the teams that the user belongs to.   - the user is added to a rotation of the schedule as a responder.   - a team is added to a rotation of the schedule as a responder, and the user is a member of this team.   - an escalation is added to a rotation of the schedule as a responder, and the user is a member of this escalation.   - there is an override to the user in the schedule.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 25] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |

### Return type

[**ListRotationsResponse**](../Models/ListRotationsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateRotation"></a>
# **updateRotation**
> Rotation updateRotation(scheduleId, id, UpdateRotationRequest)

Update rotation

    Updates the rotation of a schedule with given IDs in the request. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to edit a schedule:   - the user has edit configuration right.   - the user is the admin of the team that the schedule belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **scheduleId** | **String**| ID of the schedule. | [default to null] |
| **id** | **String**| ID of the rotation. | [default to null] |
| **UpdateRotationRequest** | [**UpdateRotationRequest**](../Models/UpdateRotationRequest.md)|  | |

### Return type

[**Rotation**](../Models/Rotation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

