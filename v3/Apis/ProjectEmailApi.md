# ProjectEmailApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getProjectEmail**](ProjectEmailApi.md#getProjectEmail) | **GET** /rest/api/3/project/{projectId}/email | Get project&#39;s sender email |
| [**updateProjectEmail**](ProjectEmailApi.md#updateProjectEmail) | **PUT** /rest/api/3/project/{projectId}/email | Set project&#39;s sender email |


<a name="getProjectEmail"></a>
# **getProjectEmail**
> ProjectEmailAddress getProjectEmail(projectId)

Get project&#39;s sender email

    Returns the [project&#39;s sender email address](https://confluence.atlassian.com/x/dolKLg).  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **Long**| The project ID. | [default to null] |

### Return type

[**ProjectEmailAddress**](../Models/ProjectEmailAddress.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateProjectEmail"></a>
# **updateProjectEmail**
> oas_any_type_not_mapped updateProjectEmail(projectId, ProjectEmailAddress)

Set project&#39;s sender email

    Sets the [project&#39;s sender email address](https://confluence.atlassian.com/x/dolKLg).  If &#x60;emailAddress&#x60; is an empty string, the default email address is restored.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **Long**| The project ID. | [default to null] |
| **ProjectEmailAddress** | [**ProjectEmailAddress**](../Models/ProjectEmailAddress.md)| The project&#39;s sender email address to be set. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

