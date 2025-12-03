# IssueResolutionsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createResolution**](IssueResolutionsApi.md#createResolution) | **POST** /rest/api/3/resolution | Create resolution |
| [**deleteResolution**](IssueResolutionsApi.md#deleteResolution) | **DELETE** /rest/api/3/resolution/{id} | Delete resolution |
| [**getResolution**](IssueResolutionsApi.md#getResolution) | **GET** /rest/api/3/resolution/{id} | Get resolution |
| [**getResolutions**](IssueResolutionsApi.md#getResolutions) | **GET** /rest/api/3/resolution | Get resolutions |
| [**moveResolutions**](IssueResolutionsApi.md#moveResolutions) | **PUT** /rest/api/3/resolution/move | Move resolutions |
| [**searchResolutions**](IssueResolutionsApi.md#searchResolutions) | **GET** /rest/api/3/resolution/search | Search resolutions |
| [**setDefaultResolution**](IssueResolutionsApi.md#setDefaultResolution) | **PUT** /rest/api/3/resolution/default | Set default resolution |
| [**updateResolution**](IssueResolutionsApi.md#updateResolution) | **PUT** /rest/api/3/resolution/{id} | Update resolution |


<a name="createResolution"></a>
# **createResolution**
> ResolutionId createResolution(CreateResolutionDetails)

Create resolution

    Creates an issue resolution.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateResolutionDetails** | [**CreateResolutionDetails**](../Models/CreateResolutionDetails.md)|  | |

### Return type

[**ResolutionId**](../Models/ResolutionId.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteResolution"></a>
# **deleteResolution**
> deleteResolution(id, replaceWith)

Delete resolution

    Deletes an issue resolution.  This operation is [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-3-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue resolution. | [default to null] |
| **replaceWith** | **String**| The ID of the issue resolution that will replace the currently selected resolution. | [default to ] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getResolution"></a>
# **getResolution**
> Resolution getResolution(id)

Get resolution

    Returns an issue resolution value.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue resolution value. | [default to null] |

### Return type

[**Resolution**](../Models/Resolution.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getResolutions"></a>
# **getResolutions**
> List getResolutions()

Get resolutions

    Returns a list of all issue resolution values.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/Resolution.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="moveResolutions"></a>
# **moveResolutions**
> oas_any_type_not_mapped moveResolutions(ReorderIssueResolutionsRequest)

Move resolutions

    Changes the order of issue resolutions.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ReorderIssueResolutionsRequest** | [**ReorderIssueResolutionsRequest**](../Models/ReorderIssueResolutionsRequest.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="searchResolutions"></a>
# **searchResolutions**
> PageBeanResolutionJsonBean searchResolutions(startAt, maxResults, id, onlyDefault)

Search resolutions

    Returns a [paginated](#pagination) list of resolutions. The list can contain all resolutions or a subset determined by any combination of these criteria:   *  a list of resolutions IDs.  *  whether the field configuration is a default. This returns resolutions from company-managed (classic) projects only, as there is no concept of default resolutions in team-managed projects.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **id** | [**List**](../Models/String.md)| The list of resolutions IDs to be filtered out | [optional] [default to null] |
| **onlyDefault** | **Boolean**| When set to true, return default only, when IDs provided, if none of them is default, return empty page. Default value is false | [optional] [default to false] |

### Return type

[**PageBeanResolutionJsonBean**](../Models/PageBeanResolutionJsonBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setDefaultResolution"></a>
# **setDefaultResolution**
> oas_any_type_not_mapped setDefaultResolution(SetDefaultResolutionRequest)

Set default resolution

    Sets default issue resolution.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **SetDefaultResolutionRequest** | [**SetDefaultResolutionRequest**](../Models/SetDefaultResolutionRequest.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateResolution"></a>
# **updateResolution**
> oas_any_type_not_mapped updateResolution(id, UpdateResolutionDetails)

Update resolution

    Updates an issue resolution.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue resolution. | [default to null] |
| **UpdateResolutionDetails** | [**UpdateResolutionDetails**](../Models/UpdateResolutionDetails.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

