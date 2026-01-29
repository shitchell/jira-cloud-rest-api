# RoutingRulesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**changeRoutingRuleOrder**](RoutingRulesApi.md#changeRoutingRuleOrder) | **PATCH** /v1/teams/{teamId}/routing-rules/{id}/change-order | Change routing rule order |
| [**createRoutingRule**](RoutingRulesApi.md#createRoutingRule) | **POST** /v1/teams/{teamId}/routing-rules | Create routing rule |
| [**deleteRoutingRule**](RoutingRulesApi.md#deleteRoutingRule) | **DELETE** /v1/teams/{teamId}/routing-rules/{id} | Delete routing rule |
| [**getRoutingRule**](RoutingRulesApi.md#getRoutingRule) | **GET** /v1/teams/{teamId}/routing-rules/{id} | Get routing rule |
| [**listRoutingRules**](RoutingRulesApi.md#listRoutingRules) | **GET** /v1/teams/{teamId}/routing-rules | List routing rules |
| [**updateRoutingRule**](RoutingRulesApi.md#updateRoutingRule) | **PATCH** /v1/teams/{teamId}/routing-rules/{id} | Update routing rule |


<a name="changeRoutingRuleOrder"></a>
# **changeRoutingRuleOrder**
> changeRoutingRuleOrder(teamId, id, RoutingRuleChangeOrderRequest)

Change routing rule order

    Changes routing rule&#39;s order with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the routing rules owning team. | [default to null] |
| **id** | **String**| Identifier of the routing rule. | [default to null] |
| **RoutingRuleChangeOrderRequest** | [**RoutingRuleChangeOrderRequest**](../Models/RoutingRuleChangeOrderRequest.md)|  | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createRoutingRule"></a>
# **createRoutingRule**
> RoutingRuleResponse createRoutingRule(teamId, CreateRoutingRuleRequest)

Create routing rule

    Creates a routing rule with the given properties.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the routing rules owning team. | [default to null] |
| **CreateRoutingRuleRequest** | [**CreateRoutingRuleRequest**](../Models/CreateRoutingRuleRequest.md)|  | |

### Return type

[**RoutingRuleResponse**](../Models/RoutingRuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteRoutingRule"></a>
# **deleteRoutingRule**
> deleteRoutingRule(teamId, id)

Delete routing rule

    Deletes a routing rule with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the routing rules owning team. | [default to null] |
| **id** | **String**| Identifier of the routing rule. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRoutingRule"></a>
# **getRoutingRule**
> RoutingRuleResponse getRoutingRule(teamId, id)

Get routing rule

    Gets a routing rule with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the routing rules owning team. | [default to null] |
| **id** | **String**| Identifier of the routing rule. | [default to null] |

### Return type

[**RoutingRuleResponse**](../Models/RoutingRuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listRoutingRules"></a>
# **listRoutingRules**
> RoutingRulesPaginatedResponse listRoutingRules(teamId, offset, size)

List routing rules

    Lists all routing rules of given team. It optionally takes two parameters - offset and size.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the routing rules owning team. | [default to null] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 20] |

### Return type

[**RoutingRulesPaginatedResponse**](../Models/RoutingRulesPaginatedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateRoutingRule"></a>
# **updateRoutingRule**
> RoutingRuleResponse updateRoutingRule(teamId, id, UpdateRoutingRuleRequest)

Update routing rule

    Updates a routing rule with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the routing rules owning team. | [default to null] |
| **id** | **String**| Identifier of the routing rule. | [default to null] |
| **UpdateRoutingRuleRequest** | [**UpdateRoutingRuleRequest**](../Models/UpdateRoutingRuleRequest.md)|  | |

### Return type

[**RoutingRuleResponse**](../Models/RoutingRuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

