# IssuePrioritiesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createPriority**](IssuePrioritiesApi.md#createPriority) | **POST** /rest/api/3/priority | Create priority |
| [**deletePriority**](IssuePrioritiesApi.md#deletePriority) | **DELETE** /rest/api/3/priority/{id} | Delete priority |
| [**getPriorities**](IssuePrioritiesApi.md#getPriorities) | **GET** /rest/api/3/priority | Get priorities |
| [**getPriority**](IssuePrioritiesApi.md#getPriority) | **GET** /rest/api/3/priority/{id} | Get priority |
| [**movePriorities**](IssuePrioritiesApi.md#movePriorities) | **PUT** /rest/api/3/priority/move | Move priorities |
| [**searchPriorities**](IssuePrioritiesApi.md#searchPriorities) | **GET** /rest/api/3/priority/search | Search priorities |
| [**setDefaultPriority**](IssuePrioritiesApi.md#setDefaultPriority) | **PUT** /rest/api/3/priority/default | Set default priority |
| [**updatePriority**](IssuePrioritiesApi.md#updatePriority) | **PUT** /rest/api/3/priority/{id} | Update priority |


<a name="createPriority"></a>
# **createPriority**
> PriorityId createPriority(CreatePriorityDetails)

Create priority

    Creates an issue priority.  Deprecation applies to iconUrl param in request body which will be sunset on 16th Mar 2025. For more details refer to [changelog](https://developer.atlassian.com/changelog/#CHANGE-1525).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreatePriorityDetails** | [**CreatePriorityDetails**](../Models/CreatePriorityDetails.md)|  | |

### Return type

[**PriorityId**](../Models/PriorityId.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deletePriority"></a>
# **deletePriority**
> deletePriority(id)

Delete priority

    Deletes an issue priority.  This operation is [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue priority. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPriorities"></a>
# **getPriorities**
> List getPriorities()

Get priorities

    Returns the list of all issue priorities.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/Priority.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPriority"></a>
# **getPriority**
> Priority getPriority(id)

Get priority

    Returns an issue priority.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue priority. | [default to null] |

### Return type

[**Priority**](../Models/Priority.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="movePriorities"></a>
# **movePriorities**
> oas_any_type_not_mapped movePriorities(ReorderIssuePriorities)

Move priorities

    Changes the order of issue priorities.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ReorderIssuePriorities** | [**ReorderIssuePriorities**](../Models/ReorderIssuePriorities.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="searchPriorities"></a>
# **searchPriorities**
> PageBeanPriority searchPriorities(startAt, maxResults, id, projectId, priorityName, onlyDefault, expand)

Search priorities

    Returns a [paginated](#pagination) list of priorities. The list can contain all priorities or a subset determined by any combination of these criteria:   *  a list of priority IDs. Any invalid priority IDs are ignored.  *  a list of project IDs. Only priorities that are available in these projects will be returned. Any invalid project IDs are ignored.  *  whether the field configuration is a default. This returns priorities from company-managed (classic) projects only, as there is no concept of default priorities in team-managed projects.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **id** | [**List**](../Models/String.md)| The list of priority IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;2&amp;id&#x3D;3&#x60;. | [optional] [default to null] |
| **projectId** | [**List**](../Models/String.md)| The list of projects IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;projectId&#x3D;10010&amp;projectId&#x3D;10111&#x60;. | [optional] [default to null] |
| **priorityName** | **String**| The name of priority to search for. | [optional] [default to ] |
| **onlyDefault** | **Boolean**| Whether only the default priority is returned. | [optional] [default to false] |
| **expand** | **String**| Use &#x60;schemes&#x60; to return the associated priority schemes for each priority. Limited to returning first 15 priority schemes per priority. | [optional] [default to ] |

### Return type

[**PageBeanPriority**](../Models/PageBeanPriority.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setDefaultPriority"></a>
# **setDefaultPriority**
> oas_any_type_not_mapped setDefaultPriority(SetDefaultPriorityRequest)

Set default priority

    Sets default issue priority.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **SetDefaultPriorityRequest** | [**SetDefaultPriorityRequest**](../Models/SetDefaultPriorityRequest.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updatePriority"></a>
# **updatePriority**
> oas_any_type_not_mapped updatePriority(id, UpdatePriorityDetails)

Update priority

    Updates an issue priority.  At least one request body parameter must be defined.  Deprecation applies to iconUrl param in request body which will be sunset on 16th Mar 2025. For more details refer to [changelog](https://developer.atlassian.com/changelog/#CHANGE-1525).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue priority. | [default to null] |
| **UpdatePriorityDetails** | [**UpdatePriorityDetails**](../Models/UpdatePriorityDetails.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

