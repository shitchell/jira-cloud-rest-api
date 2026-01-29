# TeamPoliciesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createGlobalPolicy**](TeamPoliciesApi.md#createGlobalPolicy) | **POST** /v1/teams/{teamId}/policies/{policyId}/change-order | Change the order of team policy |
| [**deleteGlobalPolicies**](TeamPoliciesApi.md#deleteGlobalPolicies) | **DELETE** /v1/teams/{teamId}/policies/{policyId} | Delete global alert policy |
| [**disableGlobalPolicy**](TeamPoliciesApi.md#disableGlobalPolicy) | **POST** /v1/teams/{teamId}/policies/{policyId}/disable | Disable the global alert policy |
| [**enableGlobalPolicy**](TeamPoliciesApi.md#enableGlobalPolicy) | **POST** /v1/teams/{teamId}/policies/{policyId}/enable | Enable the team policy |
| [**getTeamPolicies**](TeamPoliciesApi.md#getTeamPolicies) | **GET** /v1/teams/{teamId}/policies/{policyId} | Get team policy |
| [**listTeamPolicies**](TeamPoliciesApi.md#listTeamPolicies) | **GET** /v1/teams/{teamId}/policies | List team policies |
| [**putTeamPolicies**](TeamPoliciesApi.md#putTeamPolicies) | **POST** /v1/teams/{teamId}/policies | Create team policy |
| [**putTeamPolicies_0**](TeamPoliciesApi.md#putTeamPolicies_0) | **PUT** /v1/teams/{teamId}/policies/{policyId} | Put team policy |


<a name="createGlobalPolicy"></a>
# **createGlobalPolicy**
> createGlobalPolicy(policyId, teamId, ChangePolicyOrderRequest)

Change the order of team policy

    Change the order of team policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |
| **teamId** | **String**| The jira team identifier | [default to null] |
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
> deleteGlobalPolicies(policyId, teamId)

Delete global alert policy

    Delete global alert policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |
| **teamId** | **String**| The jira team identifier | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="disableGlobalPolicy"></a>
# **disableGlobalPolicy**
> putTeamPolicies_request disableGlobalPolicy(policyId, teamId)

Disable the global alert policy

    Disable the global alert policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |
| **teamId** | **String**| The jira team identifier | [default to null] |

### Return type

[**putTeamPolicies_request**](../Models/putTeamPolicies_request.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="enableGlobalPolicy"></a>
# **enableGlobalPolicy**
> putTeamPolicies_request enableGlobalPolicy(policyId, teamId)

Enable the team policy

    Enable the team policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |
| **teamId** | **String**| The jira team identifier | [default to null] |

### Return type

[**putTeamPolicies_request**](../Models/putTeamPolicies_request.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getTeamPolicies"></a>
# **getTeamPolicies**
> putTeamPolicies_request getTeamPolicies(policyId, teamId)

Get team policy

    Get team policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |
| **teamId** | **String**| The jira team identifier | [default to null] |

### Return type

[**putTeamPolicies_request**](../Models/putTeamPolicies_request.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listTeamPolicies"></a>
# **listTeamPolicies**
> listTeamPolicies_200_response listTeamPolicies(teamId, type, size, offset)

List team policies

    List team policies

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| The jira team identifier | [default to null] |
| **type** | **String**| The type of policy. alert or notification  | [default to null] [enum: notification, alert] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 25] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |

### Return type

[**listTeamPolicies_200_response**](../Models/listTeamPolicies_200_response.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="putTeamPolicies"></a>
# **putTeamPolicies**
> putTeamPolicies_request putTeamPolicies(policyId, teamId, putTeamPolicies\_request)

Create team policy

    Create team policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |
| **teamId** | **String**| The jira team identifier | [default to null] |
| **putTeamPolicies\_request** | [**putTeamPolicies_request**](../Models/putTeamPolicies_request.md)|  | [optional] |

### Return type

[**putTeamPolicies_request**](../Models/putTeamPolicies_request.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="putTeamPolicies_0"></a>
# **putTeamPolicies_0**
> putTeamPolicies_request putTeamPolicies_0(policyId, teamId, putTeamPolicies\_request)

Put team policy

    Put team policy

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **policyId** | **String**| Identifier of the policy. | [default to null] |
| **teamId** | **String**| The jira team identifier | [default to null] |
| **putTeamPolicies\_request** | [**putTeamPolicies_request**](../Models/putTeamPolicies_request.md)|  | [optional] |

### Return type

[**putTeamPolicies_request**](../Models/putTeamPolicies_request.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

