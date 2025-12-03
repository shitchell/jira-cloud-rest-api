# ProjectTypesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAccessibleProjectTypeByKey**](ProjectTypesApi.md#getAccessibleProjectTypeByKey) | **GET** /rest/api/3/project/type/{projectTypeKey}/accessible | Get accessible project type by key |
| [**getAllAccessibleProjectTypes**](ProjectTypesApi.md#getAllAccessibleProjectTypes) | **GET** /rest/api/3/project/type/accessible | Get licensed project types |
| [**getAllProjectTypes**](ProjectTypesApi.md#getAllProjectTypes) | **GET** /rest/api/3/project/type | Get all project types |
| [**getProjectTypeByKey**](ProjectTypesApi.md#getProjectTypeByKey) | **GET** /rest/api/3/project/type/{projectTypeKey} | Get project type by key |


<a name="getAccessibleProjectTypeByKey"></a>
# **getAccessibleProjectTypeByKey**
> ProjectType getAccessibleProjectTypeByKey(projectTypeKey)

Get accessible project type by key

    Returns a [project type](https://confluence.atlassian.com/x/Var1Nw) if it is accessible to the user.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectTypeKey** | **String**| The key of the project type. | [default to null] [enum: software, service_desk, business, product_discovery] |

### Return type

[**ProjectType**](../Models/ProjectType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAllAccessibleProjectTypes"></a>
# **getAllAccessibleProjectTypes**
> List getAllAccessibleProjectTypes()

Get licensed project types

    Returns all [project types](https://confluence.atlassian.com/x/Var1Nw) with a valid license.

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/ProjectType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAllProjectTypes"></a>
# **getAllProjectTypes**
> List getAllProjectTypes()

Get all project types

    Returns all [project types](https://confluence.atlassian.com/x/Var1Nw), whether or not the instance has a valid license for each type.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/ProjectType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectTypeByKey"></a>
# **getProjectTypeByKey**
> ProjectType getProjectTypeByKey(projectTypeKey)

Get project type by key

    Returns a [project type](https://confluence.atlassian.com/x/Var1Nw).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectTypeKey** | **String**| The key of the project type. | [default to null] [enum: software, service_desk, business, product_discovery] |

### Return type

[**ProjectType**](../Models/ProjectType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

