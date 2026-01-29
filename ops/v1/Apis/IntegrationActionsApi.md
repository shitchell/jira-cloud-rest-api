# IntegrationActionsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**create1**](IntegrationActionsApi.md#create1) | **POST** /v1/integrations/{integrationId}/actions | Create integration action |
| [**delete**](IntegrationActionsApi.md#delete) | **DELETE** /v1/integrations/{integrationId}/actions/{id} | Delete integration action |
| [**get1**](IntegrationActionsApi.md#get1) | **GET** /v1/integrations/{integrationId}/actions/{id} | Get integration action |
| [**list1**](IntegrationActionsApi.md#list1) | **GET** /v1/integrations/{integrationId}/actions | List integration actions |
| [**reorder**](IntegrationActionsApi.md#reorder) | **PATCH** /v1/integrations/{integrationId}/actions/{id}/order | Reorder integration action |
| [**update1**](IntegrationActionsApi.md#update1) | **PATCH** /v1/integrations/{integrationId}/actions/{id} | Update integration action |


<a name="create1"></a>
# **create1**
> IntegrationAction create1(integrationId, CreateIntegrationActionRequest)

Create integration action

    Creates an integration action.&lt;br&gt; &lt;br&gt; **Permissions required:** Permission to create an integration action:   - the user has read-only administrative right.   - the user is the admin of the team that the integration belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **integrationId** | **String**| ID of the integration | [default to null] |
| **CreateIntegrationActionRequest** | [**CreateIntegrationActionRequest**](../Models/CreateIntegrationActionRequest.md)|  | |

### Return type

[**IntegrationAction**](../Models/IntegrationAction.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="delete"></a>
# **delete**
> delete(integrationId, id)

Delete integration action

    Deletes an integration action. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to update integration alert filter:  - the user has read-only administrative right.   - the user is the admin of the team that the integration belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **integrationId** | **String**| ID of the integration. | [default to null] |
| **id** | **String**| ID of the integration action. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="get1"></a>
# **get1**
> IntegrationAction get1(integrationId, id)

Get integration action

    Returns the action of an integration. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the integration action:   - the user has read-only administrative right.   - the integration&#39;s assigned team is one of the teams that the user belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **integrationId** | **String**| ID of the integration. | [default to null] |
| **id** | **String**| ID of the integration action. | [default to null] |

### Return type

[**IntegrationAction**](../Models/IntegrationAction.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="list1"></a>
# **list1**
> IntegrationActions list1(type, direction, domain, name, offset, size)

List integration actions

    Lists integration actions of an integration that user can view. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to get the integration action:   - the user has read-only administrative right.   - the integration&#39;s assigned team is one of the teams that the user belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| Type of the integration action. | [optional] [default to null] |
| **direction** | **String**| Direction of the action. It can be *incoming* or *outgoing* | [optional] [default to null] |
| **domain** | **String**| Domain of the action. It can be *alert* | [optional] [default to null] |
| **name** | **String**| Name of the integration action. | [optional] [default to null] |
| **offset** | **Integer**| The index of the first item to return in a page of results. | [optional] [default to 0] |
| **size** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |

### Return type

[**IntegrationActions**](../Models/IntegrationActions.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="reorder"></a>
# **reorder**
> reorder(integrationId, id, UpdateIntegrationActionOrderRequest)

Reorder integration action

    Reorders an integration action.  &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to reorder the integration action:  - the user has read-only administrative right.   - the user is the admin of the team that the integration belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **integrationId** | **String**| ID of the integration. | [default to null] |
| **id** | **String**| ID of the integration action. | [default to null] |
| **UpdateIntegrationActionOrderRequest** | [**UpdateIntegrationActionOrderRequest**](../Models/UpdateIntegrationActionOrderRequest.md)|  | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="update1"></a>
# **update1**
> Integration update1(integrationId, id, UpdateIntegrationActionRequest)

Update integration action

    Updates an integration action. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to update the integration action:  - the user has read-only administrative right.   - the user is the admin of the team that the integration belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **integrationId** | **String**| ID of the integration. | [default to null] |
| **id** | **String**| ID of the integration action. | [default to null] |
| **UpdateIntegrationActionRequest** | [**UpdateIntegrationActionRequest**](../Models/UpdateIntegrationActionRequest.md)|  | |

### Return type

[**Integration**](../Models/Integration.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

