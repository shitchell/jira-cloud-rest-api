# EscalationsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createEscalation**](EscalationsApi.md#createEscalation) | **POST** /v1/teams/{teamId}/escalations | Create escalation |
| [**deleteEscalation**](EscalationsApi.md#deleteEscalation) | **DELETE** /v1/teams/{teamId}/escalations/{id} | Delete escalation |
| [**getEscalation**](EscalationsApi.md#getEscalation) | **GET** /v1/teams/{teamId}/escalations/{id} | Get escalation |
| [**listEscalation**](EscalationsApi.md#listEscalation) | **GET** /v1/teams/{teamId}/escalations | List escalations |
| [**updateEscalation**](EscalationsApi.md#updateEscalation) | **PATCH** /v1/teams/{teamId}/escalations/{id} | Update escalation |


<a name="createEscalation"></a>
# **createEscalation**
> EscalationResponse createEscalation(teamId, CreateEscalationRequest)

Create escalation

    Creates an escalation with the given properties.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the escalation owning team. | [default to null] |
| **CreateEscalationRequest** | [**CreateEscalationRequest**](../Models/CreateEscalationRequest.md)|  | |

### Return type

[**EscalationResponse**](../Models/EscalationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteEscalation"></a>
# **deleteEscalation**
> deleteEscalation(teamId, id)

Delete escalation

    Deletes an escalation with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifer of the escalation owning team. | [default to null] |
| **id** | **String**| Identifier of the escalation. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getEscalation"></a>
# **getEscalation**
> EscalationResponse getEscalation(teamId, id)

Get escalation

    Gets an escalation with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the escalation owning team. | [default to null] |
| **id** | **String**| Identifier of the escalation. | [default to null] |

### Return type

[**EscalationResponse**](../Models/EscalationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listEscalation"></a>
# **listEscalation**
> EscalationPaginatedResponse listEscalation(teamId, offset, size)

List escalations

    Lists all escalations under given team. It optionally takes two parameters - offset and size.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the escalation owning team. | [default to null] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 20] |

### Return type

[**EscalationPaginatedResponse**](../Models/EscalationPaginatedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateEscalation"></a>
# **updateEscalation**
> EscalationResponse updateEscalation(teamId, id, UpdateEscalationRequest)

Update escalation

    Updates an escalation with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the escalation owning team. | [default to null] |
| **id** | **String**| Identifier of the escalation. | [default to null] |
| **UpdateEscalationRequest** | [**UpdateEscalationRequest**](../Models/UpdateEscalationRequest.md)|  | |

### Return type

[**EscalationResponse**](../Models/EscalationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

