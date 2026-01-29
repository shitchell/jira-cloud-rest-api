# IntegrationsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**create**](IntegrationsApi.md#create) | **POST** /v1/integrations | Create integration |
| [**delete1**](IntegrationsApi.md#delete1) | **DELETE** /v1/integrations/{id} | Delete integration |
| [**get2**](IntegrationsApi.md#get2) | **GET** /v1/integrations/{id} | Get integration |
| [**list**](IntegrationsApi.md#list) | **GET** /v1/integrations | List integrations |
| [**update2**](IntegrationsApi.md#update2) | **PATCH** /v1/integrations/{id} | Update integration |


<a name="create"></a>
# **create**
> Integration create(CreateIntegrationRequest)

Create integration

    Creates an integration. It can be team or global integration by using teamId in the payload.     **Permissions required:** Permission to create an integration:  - the user has edit configuration right.   - the user is the admin of the team that the integration belongs to.      &lt;br&gt;*Slack* and *Microsoft Teams* types of integration are not supported for this operation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateIntegrationRequest** | [**CreateIntegrationRequest**](../Models/CreateIntegrationRequest.md)|  | |

### Return type

[**Integration**](../Models/Integration.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="delete1"></a>
# **delete1**
> delete1(id)

Delete integration

    Deletes an integration. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to delete the integration:  - the user has read-only administrative right.   - the user is the admin of the team that the integration belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="get2"></a>
# **get2**
> IntegrationResponse get2(id)

Get integration

    Returns the integration details. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the integration:   - the user has read-only administrative right.   - the integration&#39;s assigned team is one of the teams that the user belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| ID of the integration. | [default to null] |

### Return type

[**IntegrationResponse**](../Models/IntegrationResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="list"></a>
# **list**
> Integrations list(type, teamId, name, offset, size)

List integrations

    Returns all integrations that user can view. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access Jira Service Management; however, the list contains an integration if:   - the user has read-only administrative right.   - the integration&#39;s assigned team is one of the teams that the user belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| Type of the integration. | [optional] [default to null] |
| **teamId** | **String**| ID of the team that integration belongs to. | [optional] [default to null] |
| **name** | **String**| Name of the integration. | [optional] [default to null] |
| **offset** | **Integer**| The index of the first item to return in a page of results. | [optional] [default to 0] |
| **size** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |

### Return type

[**Integrations**](../Models/Integrations.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="update2"></a>
# **update2**
> Integration update2(id, UpdateIntegrationRequest)

Update integration

    Updates an integration.  &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to update the integration:  - the user has read-only administrative right.   - the user is the admin of the team that the integration belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |
| **UpdateIntegrationRequest** | [**UpdateIntegrationRequest**](../Models/UpdateIntegrationRequest.md)|  | |

### Return type

[**Integration**](../Models/Integration.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

