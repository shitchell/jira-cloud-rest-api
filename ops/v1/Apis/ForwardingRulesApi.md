# ForwardingRulesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createForwarding**](ForwardingRulesApi.md#createForwarding) | **POST** /v1/forwarding-rules | Create forwarding rule |
| [**deleteForwarding**](ForwardingRulesApi.md#deleteForwarding) | **DELETE** /v1/forwarding-rules/{id} | Delete forwarding rule |
| [**getForwarding**](ForwardingRulesApi.md#getForwarding) | **GET** /v1/forwarding-rules/{id} | Get forwarding rule |
| [**listForwardings**](ForwardingRulesApi.md#listForwardings) | **GET** /v1/forwarding-rules | List forwarding rules |
| [**updateForwarding**](ForwardingRulesApi.md#updateForwarding) | **PUT** /v1/forwarding-rules/{id} | Update forwarding rule |


<a name="createForwarding"></a>
# **createForwarding**
> ForwardingRuleResponse createForwarding(CreateForwardingRuleRequest)

Create forwarding rule

    Creates a forwarding rule with the given properties.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateForwardingRuleRequest** | [**CreateForwardingRuleRequest**](../Models/CreateForwardingRuleRequest.md)|  | |

### Return type

[**ForwardingRuleResponse**](../Models/ForwardingRuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteForwarding"></a>
# **deleteForwarding**
> deleteForwarding(id)

Delete forwarding rule

    Deletes a forwarding rule with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the forwarding rule. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getForwarding"></a>
# **getForwarding**
> ForwardingRuleResponse getForwarding(id)

Get forwarding rule

    Gets a forwarding rule with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the forwarding rule. | [default to null] |

### Return type

[**ForwardingRuleResponse**](../Models/ForwardingRuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listForwardings"></a>
# **listForwardings**
> ForwardingPaginatedResponse listForwardings(showAll, offset, size)

List forwarding rules

    Lists the all forwarding rules user can view. It optionally takes three parameters - offset, size and showAll.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **showAll** | **Boolean**| Display all forwardings of the account. | [optional] [default to false] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 20] |

### Return type

[**ForwardingPaginatedResponse**](../Models/ForwardingPaginatedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateForwarding"></a>
# **updateForwarding**
> ForwardingRuleResponse updateForwarding(id, CreateForwardingRuleRequest)

Update forwarding rule

    Updates a forwaring rule with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the forwarding rule. | [default to null] |
| **CreateForwardingRuleRequest** | [**CreateForwardingRuleRequest**](../Models/CreateForwardingRuleRequest.md)|  | |

### Return type

[**ForwardingRuleResponse**](../Models/ForwardingRuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

