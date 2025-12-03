# ProjectKeyAndNameValidationApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getValidProjectKey**](ProjectKeyAndNameValidationApi.md#getValidProjectKey) | **GET** /rest/api/2/projectvalidate/validProjectKey | Get valid project key |
| [**getValidProjectName**](ProjectKeyAndNameValidationApi.md#getValidProjectName) | **GET** /rest/api/2/projectvalidate/validProjectName | Get valid project name |
| [**validateProjectKey**](ProjectKeyAndNameValidationApi.md#validateProjectKey) | **GET** /rest/api/2/projectvalidate/key | Validate project key |


<a name="getValidProjectKey"></a>
# **getValidProjectKey**
> String getValidProjectKey(key)

Get valid project key

    Validates a project key and, if the key is invalid or in use, generates a valid random string for the project key.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **key** | **String**| The project key. | [optional] [default to null] |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getValidProjectName"></a>
# **getValidProjectName**
> String getValidProjectName(name)

Get valid project name

    Checks that a project name isn&#39;t in use. If the name isn&#39;t in use, the passed string is returned. If the name is in use, this operation attempts to generate a valid project name based on the one supplied, usually by adding a sequence number. If a valid project name cannot be generated, a 404 response is returned.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| The project name. | [default to null] |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="validateProjectKey"></a>
# **validateProjectKey**
> ErrorCollection validateProjectKey(key)

Validate project key

    Validates a project key by confirming the key is a valid string and not in use.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **key** | **String**| The project key. | [optional] [default to null] |

### Return type

[**ErrorCollection**](../Models/ErrorCollection.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

