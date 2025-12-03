# StatusApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createStatuses**](StatusApi.md#createStatuses) | **POST** /rest/api/3/statuses | Bulk create statuses |
| [**deleteStatusesById**](StatusApi.md#deleteStatusesById) | **DELETE** /rest/api/3/statuses | Bulk delete Statuses |
| [**getProjectIssueTypeUsagesForStatus**](StatusApi.md#getProjectIssueTypeUsagesForStatus) | **GET** /rest/api/3/statuses/{statusId}/project/{projectId}/issueTypeUsages | Get issue type usages by status and project |
| [**getProjectUsagesForStatus**](StatusApi.md#getProjectUsagesForStatus) | **GET** /rest/api/3/statuses/{statusId}/projectUsages | Get project usages by status |
| [**getStatusesById**](StatusApi.md#getStatusesById) | **GET** /rest/api/3/statuses | Bulk get statuses |
| [**getStatusesByName**](StatusApi.md#getStatusesByName) | **GET** /rest/api/3/statuses/byNames | Bulk get statuses by name |
| [**getWorkflowUsagesForStatus**](StatusApi.md#getWorkflowUsagesForStatus) | **GET** /rest/api/3/statuses/{statusId}/workflowUsages | Get workflow usages by status |
| [**search**](StatusApi.md#search) | **GET** /rest/api/3/statuses/search | Search statuses paginated |
| [**updateStatuses**](StatusApi.md#updateStatuses) | **PUT** /rest/api/3/statuses | Bulk update statuses |


<a name="createStatuses"></a>
# **createStatuses**
> List createStatuses(StatusCreateRequest)

Bulk create statuses

    Creates statuses for a global or project scope.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **StatusCreateRequest** | [**StatusCreateRequest**](../Models/StatusCreateRequest.md)| Details of the statuses being created and their scope. | |

### Return type

[**List**](../Models/JiraStatus.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteStatusesById"></a>
# **deleteStatusesById**
> oas_any_type_not_mapped deleteStatusesById(id)

Bulk delete Statuses

    Deletes statuses by ID.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**List**](../Models/String.md)| The list of status IDs. To include multiple IDs, provide an ampersand-separated list. For example, id&#x3D;10000&amp;id&#x3D;10001.  Min items &#x60;1&#x60;, Max items &#x60;50&#x60; | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectIssueTypeUsagesForStatus"></a>
# **getProjectIssueTypeUsagesForStatus**
> StatusProjectIssueTypeUsageDTO getProjectIssueTypeUsagesForStatus(statusId, projectId, nextPageToken, maxResults)

Get issue type usages by status and project

    Returns a page of issue types in a project using a given status.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **statusId** | **String**| The statusId to fetch issue type usages for | [default to null] |
| **projectId** | **String**| The projectId to fetch issue type usages for | [default to null] |
| **nextPageToken** | **String**| The cursor for pagination | [optional] [default to null] |
| **maxResults** | **Integer**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50] |

### Return type

[**StatusProjectIssueTypeUsageDTO**](../Models/StatusProjectIssueTypeUsageDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectUsagesForStatus"></a>
# **getProjectUsagesForStatus**
> StatusProjectUsageDTO getProjectUsagesForStatus(statusId, nextPageToken, maxResults)

Get project usages by status

    Returns a page of projects using a given status.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **statusId** | **String**| The statusId to fetch project usages for | [default to null] |
| **nextPageToken** | **String**| The cursor for pagination | [optional] [default to null] |
| **maxResults** | **Integer**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50] |

### Return type

[**StatusProjectUsageDTO**](../Models/StatusProjectUsageDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getStatusesById"></a>
# **getStatusesById**
> List getStatusesById(id)

Bulk get statuses

    Returns a list of the statuses specified by one or more status IDs.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | [**List**](../Models/String.md)| The list of status IDs. To include multiple IDs, provide an ampersand-separated list. For example, id&#x3D;10000&amp;id&#x3D;10001.  Min items &#x60;1&#x60;, Max items &#x60;50&#x60; | [default to null] |

### Return type

[**List**](../Models/JiraStatus.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getStatusesByName"></a>
# **getStatusesByName**
> List getStatusesByName(name, projectId)

Bulk get statuses by name

    Returns a list of the statuses specified by one or more status names.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Browse projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | [**List**](../Models/String.md)| The list of status names. To include multiple names, provide an ampersand-separated list. For example, name&#x3D;nameXX&amp;name&#x3D;nameYY.  Min items &#x60;1&#x60;, Max items &#x60;50&#x60; | [default to null] |
| **projectId** | **String**| The project the status is part of or null for global statuses. | [optional] [default to null] |

### Return type

[**List**](../Models/JiraStatus.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getWorkflowUsagesForStatus"></a>
# **getWorkflowUsagesForStatus**
> StatusWorkflowUsageDTO getWorkflowUsagesForStatus(statusId, nextPageToken, maxResults)

Get workflow usages by status

    Returns a page of workflows using a given status.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **statusId** | **String**| The statusId to fetch workflow usages for | [default to null] |
| **nextPageToken** | **String**| The cursor for pagination | [optional] [default to null] |
| **maxResults** | **Integer**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50] |

### Return type

[**StatusWorkflowUsageDTO**](../Models/StatusWorkflowUsageDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="search"></a>
# **search**
> PageOfStatuses search(projectId, startAt, maxResults, searchString, statusCategory)

Search statuses paginated

    Returns a [paginated](https://developer.atlassian.com/cloud/jira/platform/rest/v3/intro/#pagination) list of statuses that match a search on name or project.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| The project the status is part of or null for global statuses. | [optional] [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 200] |
| **searchString** | **String**| Term to match status names against or null to search for all statuses in the search scope. | [optional] [default to null] |
| **statusCategory** | **String**| Category of the status to filter by. The supported values are: &#x60;TODO&#x60;, &#x60;IN_PROGRESS&#x60;, and &#x60;DONE&#x60;. | [optional] [default to null] |

### Return type

[**PageOfStatuses**](../Models/PageOfStatuses.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateStatuses"></a>
# **updateStatuses**
> oas_any_type_not_mapped updateStatuses(StatusUpdateRequest)

Bulk update statuses

    Updates statuses by ID.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission.](https://confluence.atlassian.com/x/yodKLg)  *  *Administer Jira* [project permission.](https://confluence.atlassian.com/x/yodKLg)

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **StatusUpdateRequest** | [**StatusUpdateRequest**](../Models/StatusUpdateRequest.md)| The list of statuses that will be updated. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

