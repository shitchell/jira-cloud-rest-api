# HeartbeatsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createHeartbeat**](HeartbeatsApi.md#createHeartbeat) | **POST** /v1/teams/{teamId}/heartbeats | Create heartbeat |
| [**deleteHeartbeat**](HeartbeatsApi.md#deleteHeartbeat) | **DELETE** /v1/teams/{teamId}/heartbeats | Delete heartbeat |
| [**listHeartbeats**](HeartbeatsApi.md#listHeartbeats) | **GET** /v1/teams/{teamId}/heartbeats | List heartbeats |
| [**pingHeartbeat**](HeartbeatsApi.md#pingHeartbeat) | **POST** /v1/teams/{teamId}/heartbeats/ping | Ping Heartbeat |
| [**updateHeartbeat**](HeartbeatsApi.md#updateHeartbeat) | **PATCH** /v1/teams/{teamId}/heartbeats | Update heartbeat |


<a name="createHeartbeat"></a>
# **createHeartbeat**
> Heartbeat createHeartbeat(teamId, CreateHeartbeatRequest)

Create heartbeat

    Create heartbeat request is used to define heartbeats in Jira Service Management. A heartbeat needs to be added, before sending heartbeat messages to JSM

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the heartbeat owning team. | [default to null] |
| **CreateHeartbeatRequest** | [**CreateHeartbeatRequest**](../Models/CreateHeartbeatRequest.md)|  | |

### Return type

[**Heartbeat**](../Models/Heartbeat.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteHeartbeat"></a>
# **deleteHeartbeat**
> deleteHeartbeat(teamId, name)

Delete heartbeat

    Deletes the heartbeat with given name in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the heartbeat owning team. | [default to null] |
| **name** | **String**| Name of the heartbeat for identification. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listHeartbeats"></a>
# **listHeartbeats**
> HeartbeatPaginatedResponse listHeartbeats(teamId, name, offset, size)

List heartbeats

    Lists the all heartbeats user can view. If a heartbeatName is passed, it filters out given heartbeat and only return given heartbeat.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the heartbeat owning team. | [default to null] |
| **name** | **String**| Name of the heartbeat for identification. | [optional] [default to null] |
| **offset** | **Long**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **size** | **Long**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 20] |

### Return type

[**HeartbeatPaginatedResponse**](../Models/HeartbeatPaginatedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="pingHeartbeat"></a>
# **pingHeartbeat**
> SimpleSuccessResponse pingHeartbeat(teamId, name)

Ping Heartbeat

    Pings the heartbeat with given name. Heartbeat ping requests processed asynchronously, it does not check if the heartbeat exists or not before responding. Please note that receiving a PONG response does not necessarily mean that the heartbeat exists.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the heartbeat owning team. | [default to null] |
| **name** | **String**| Name of the heartbeat for identification. | [default to null] |

### Return type

[**SimpleSuccessResponse**](../Models/SimpleSuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateHeartbeat"></a>
# **updateHeartbeat**
> Heartbeat updateHeartbeat(teamId, name, UpdateHeartbeatRequest)

Update heartbeat

    Updates the heartbeat with the given name. Name of a heartbeat cannot be changed

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the heartbeat owning team. | [default to null] |
| **name** | **String**| Name of the heartbeat for identification. | [default to null] |
| **UpdateHeartbeatRequest** | [**UpdateHeartbeatRequest**](../Models/UpdateHeartbeatRequest.md)|  | |

### Return type

[**Heartbeat**](../Models/Heartbeat.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

