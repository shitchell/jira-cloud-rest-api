# PoliciesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createGlobalPolicy**](PoliciesApi.md#createGlobalPolicy) | **POST** /v1/alerts/policies | Create global alert policy |
| [**createGlobalPolicy_0**](PoliciesApi.md#createGlobalPolicy_0) | **POST** /v1/alerts/policies/{policyId}/change-order | Change the order of global alert policy |
| [**deleteGlobalPolicies**](PoliciesApi.md#deleteGlobalPolicies) | **DELETE** /v1/alerts/policies/{policyId} | Delete global alert policy |
| [**disableGlobalPolicy**](PoliciesApi.md#disableGlobalPolicy) | **POST** /v1/alerts/policies/{policyId}/disable | Disable the global alert policy |
| [**enableGlobalPolicy**](PoliciesApi.md#enableGlobalPolicy) | **POST** /v1/alerts/policies/{policyId}/enable | Enable the global alert policy |
| [**getGlobalPolicies**](PoliciesApi.md#getGlobalPolicies) | **GET** /v1/alerts/policies/{policyId} | Get global alert policy |
| [**listGlobalPolicies**](PoliciesApi.md#listGlobalPolicies) | **GET** /v1/alerts/policies | List global alert policies |
| [**putGlobalPolicies**](PoliciesApi.md#putGlobalPolicies) | **PUT** /v1/alerts/policies/{policyId} | Put global alert policy |


<a name="createGlobalPolicy"></a>
# **createGlobalPolicy**
> GlobalPolicyPaginatedResponse createGlobalPolicy(CreateGlobalPolicyRequest)

Create global alert policy

    Create global alert policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateGlobalPolicyRequest** | [**CreateGlobalPolicyRequest**](../Models/CreateGlobalPolicyRequest.md)|  | |

### Return type

[**GlobalPolicyPaginatedResponse**](../Models/GlobalPolicyPaginatedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createGlobalPolicy_0"></a>
# **createGlobalPolicy_0**
> createGlobalPolicy_0(ChangePolicyOrderRequest)

Change the order of global alert policy

    Change the order of global alert policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ChangePolicyOrderRequest** | [**ChangePolicyOrderRequest**](../Models/ChangePolicyOrderRequest.md)|  | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteGlobalPolicies"></a>
# **deleteGlobalPolicies**
> deleteGlobalPolicies(policyId)

Delete global alert policy

    Delete global alert policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="disableGlobalPolicy"></a>
# **disableGlobalPolicy**
> GetGlobalAlertPolicy disableGlobalPolicy(policyId)

Disable the global alert policy

    Disable the global alert policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |

### Return type

[**GetGlobalAlertPolicy**](../Models/GetGlobalAlertPolicy.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="enableGlobalPolicy"></a>
# **enableGlobalPolicy**
> GetGlobalAlertPolicy enableGlobalPolicy(policyId)

Enable the global alert policy

    Enable the global alert policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |

### Return type

[**GetGlobalAlertPolicy**](../Models/GetGlobalAlertPolicy.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getGlobalPolicies"></a>
# **getGlobalPolicies**
> GetGlobalAlertPolicy getGlobalPolicies(policyId)

Get global alert policy

    Get global alert policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |

### Return type

[**GetGlobalAlertPolicy**](../Models/GetGlobalAlertPolicy.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listGlobalPolicies"></a>
# **listGlobalPolicies**
> GlobalPolicyPaginatedResponse listGlobalPolicies(offset, size)

List global alert policies

    List global alert policies

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 20] |

### Return type

[**GlobalPolicyPaginatedResponse**](../Models/GlobalPolicyPaginatedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="putGlobalPolicies"></a>
# **putGlobalPolicies**
> GetGlobalAlertPolicy putGlobalPolicies(policyId, CreateGlobalPolicyRequest)

Put global alert policy

    Put global alert policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |
| **CreateGlobalPolicyRequest** | [**CreateGlobalPolicyRequest**](../Models/CreateGlobalPolicyRequest.md)|  | [optional] |

### Return type

[**GetGlobalAlertPolicy**](../Models/GetGlobalAlertPolicy.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

