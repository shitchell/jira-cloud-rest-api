# AppDataPoliciesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getPolicies**](AppDataPoliciesApi.md#getPolicies) | **GET** /rest/api/2/data-policy/project | Get data policy for projects |
| [**getPolicy**](AppDataPoliciesApi.md#getPolicy) | **GET** /rest/api/2/data-policy | Get data policy for the workspace |


<a name="getPolicies"></a>
# **getPolicies**
> ProjectDataPolicies getPolicies(ids)

Get data policy for projects

    Returns data policies for the projects specified in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ids** | **String**| A list of project identifiers. This parameter accepts a comma-separated list. | [optional] [default to null] |

### Return type

[**ProjectDataPolicies**](../Models/ProjectDataPolicies.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPolicy"></a>
# **getPolicy**
> WorkspaceDataPolicy getPolicy()

Get data policy for the workspace

    Returns data policy for the workspace.

### Parameters
This endpoint does not need any parameter.

### Return type

[**WorkspaceDataPolicy**](../Models/WorkspaceDataPolicy.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

