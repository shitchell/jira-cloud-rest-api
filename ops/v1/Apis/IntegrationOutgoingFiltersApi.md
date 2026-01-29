# IntegrationOutgoingFiltersApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**get**](IntegrationOutgoingFiltersApi.md#get) | **GET** /v1/integrations/{integrationId}/outgoing/alert-filter/main | Get integration alert filter |
| [**update**](IntegrationOutgoingFiltersApi.md#update) | **PATCH** /v1/integrations/{integrationId}/outgoing/alert-filter/main | Update integration alert filter |


<a name="get"></a>
# **get**
> IntegrationFilter get(id)

Get integration alert filter

    Returns the outgoing alert filter details of an integration. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to access to the integration outgoing alert filter:   - the user has read-only administrative right.   - the integration&#39;s assigned team is one of the teams that the user belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| ID of the integration. | [default to null] |

### Return type

[**IntegrationFilter**](../Models/IntegrationFilter.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="update"></a>
# **update**
> IntegrationFilter update(IntegrationFilter)

Update integration alert filter

    Updates Integration outgoing alert filter. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to update integration alert filter:  - the user has read-only administrative right.   - the user is the admin of the team that the integration belongs to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IntegrationFilter** | [**IntegrationFilter**](../Models/IntegrationFilter.md)|  | |

### Return type

[**IntegrationFilter**](../Models/IntegrationFilter.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

