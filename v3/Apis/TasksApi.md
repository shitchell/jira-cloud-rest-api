# TasksApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**cancelTask**](TasksApi.md#cancelTask) | **POST** /rest/api/3/task/{taskId}/cancel | Cancel task |
| [**getTask**](TasksApi.md#getTask) | **GET** /rest/api/3/task/{taskId} | Get task |


<a name="cancelTask"></a>
# **cancelTask**
> oas_any_type_not_mapped cancelTask(taskId)

Cancel task

    Cancels a task.  **[Permissions](#permissions) required:** either of:   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  Creator of the task.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **taskId** | **String**| The ID of the task. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getTask"></a>
# **getTask**
> TaskProgressBeanObject getTask(taskId)

Get task

    Returns the status of a [long-running asynchronous task](#async).  When a task has finished, this operation returns the JSON blob applicable to the task. See the documentation of the operation that created the task for details. Task details are not permanently retained. As of September 2019, details are retained for 14 days although this period may change without notice.  **Deprecation notice:** The required OAuth 2.0 scopes will be updated on June 15, 2024.   *  &#x60;read:jira-work&#x60;  **[Permissions](#permissions) required:** either of:   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  Creator of the task.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **taskId** | **String**| The ID of the task. | [default to null] |

### Return type

[**TaskProgressBeanObject**](../Models/TaskProgressBeanObject.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

