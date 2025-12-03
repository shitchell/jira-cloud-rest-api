# PrioritySchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createPriorityScheme**](PrioritySchemesApi.md#createPriorityScheme) | **POST** /rest/api/2/priorityscheme | Create priority scheme |
| [**deletePriorityScheme**](PrioritySchemesApi.md#deletePriorityScheme) | **DELETE** /rest/api/2/priorityscheme/{schemeId} | Delete priority scheme |
| [**getAvailablePrioritiesByPriorityScheme**](PrioritySchemesApi.md#getAvailablePrioritiesByPriorityScheme) | **GET** /rest/api/2/priorityscheme/priorities/available | Get available priorities by priority scheme |
| [**getPrioritiesByPriorityScheme**](PrioritySchemesApi.md#getPrioritiesByPriorityScheme) | **GET** /rest/api/2/priorityscheme/{schemeId}/priorities | Get priorities by priority scheme |
| [**getPrioritySchemes**](PrioritySchemesApi.md#getPrioritySchemes) | **GET** /rest/api/2/priorityscheme | Get priority schemes |
| [**getProjectsByPriorityScheme**](PrioritySchemesApi.md#getProjectsByPriorityScheme) | **GET** /rest/api/2/priorityscheme/{schemeId}/projects | Get projects by priority scheme |
| [**suggestedPrioritiesForMappings**](PrioritySchemesApi.md#suggestedPrioritiesForMappings) | **POST** /rest/api/2/priorityscheme/mappings | Suggested priorities for mappings |
| [**updatePriorityScheme**](PrioritySchemesApi.md#updatePriorityScheme) | **PUT** /rest/api/2/priorityscheme/{schemeId} | Update priority scheme |


<a name="createPriorityScheme"></a>
# **createPriorityScheme**
> PrioritySchemeId createPriorityScheme(CreatePrioritySchemeDetails)

Create priority scheme

    Creates a new priority scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreatePrioritySchemeDetails** | [**CreatePrioritySchemeDetails**](../Models/CreatePrioritySchemeDetails.md)|  | |

### Return type

[**PrioritySchemeId**](../Models/PrioritySchemeId.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deletePriorityScheme"></a>
# **deletePriorityScheme**
> oas_any_type_not_mapped deletePriorityScheme(schemeId)

Delete priority scheme

    Deletes a priority scheme.  This operation is only available for priority schemes without any associated projects. Any associated projects must be removed from the priority scheme before this operation can be performed.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **Long**| The priority scheme ID. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAvailablePrioritiesByPriorityScheme"></a>
# **getAvailablePrioritiesByPriorityScheme**
> PageBeanPriorityWithSequence getAvailablePrioritiesByPriorityScheme(schemeId, startAt, maxResults, query, exclude)

Get available priorities by priority scheme

    Returns a [paginated](#pagination) list of priorities available for adding to a priority scheme.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **String**| The priority scheme ID. | [default to null] |
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **query** | **String**| The string to query priorities on by name. | [optional] [default to ] |
| **exclude** | [**Set**](../Models/String.md)| A list of priority IDs to exclude from the results. | [optional] [default to null] |

### Return type

[**PageBeanPriorityWithSequence**](../Models/PageBeanPriorityWithSequence.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPrioritiesByPriorityScheme"></a>
# **getPrioritiesByPriorityScheme**
> PageBeanPriorityWithSequence getPrioritiesByPriorityScheme(schemeId, startAt, maxResults)

Get priorities by priority scheme

    Returns a [paginated](#pagination) list of priorities by scheme.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **String**| The priority scheme ID. | [default to null] |
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |

### Return type

[**PageBeanPriorityWithSequence**](../Models/PageBeanPriorityWithSequence.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPrioritySchemes"></a>
# **getPrioritySchemes**
> PageBeanPrioritySchemeWithPaginatedPrioritiesAndProjects getPrioritySchemes(startAt, maxResults, priorityId, schemeId, schemeName, onlyDefault, orderBy, expand)

Get priority schemes

    Returns a [paginated](#pagination) list of priority schemes.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **priorityId** | [**Set**](../Models/Long.md)| A set of priority IDs to filter by. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;priorityId&#x3D;10000&amp;priorityId&#x3D;10001&#x60;. | [optional] [default to null] |
| **schemeId** | [**Set**](../Models/Long.md)| A set of priority scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;schemeId&#x3D;10000&amp;schemeId&#x3D;10001&#x60;. | [optional] [default to null] |
| **schemeName** | **String**| The name of scheme to search for. | [optional] [default to ] |
| **onlyDefault** | **Boolean**| Whether only the default priority is returned. | [optional] [default to false] |
| **orderBy** | **String**| The ordering to return the priority schemes by. | [optional] [default to +name] [enum: name, +name, -name] |
| **expand** | **String**| A comma separated list of additional information to return. \&quot;priorities\&quot; will return priorities associated with the priority scheme. \&quot;projects\&quot; will return projects associated with the priority scheme. &#x60;expand&#x3D;priorities,projects&#x60;. | [optional] [default to null] |

### Return type

[**PageBeanPrioritySchemeWithPaginatedPrioritiesAndProjects**](../Models/PageBeanPrioritySchemeWithPaginatedPrioritiesAndProjects.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectsByPriorityScheme"></a>
# **getProjectsByPriorityScheme**
> PageBeanProject getProjectsByPriorityScheme(schemeId, startAt, maxResults, projectId, query)

Get projects by priority scheme

    Returns a [paginated](#pagination) list of projects by scheme.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **String**| The priority scheme ID. | [default to null] |
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **projectId** | [**Set**](../Models/Long.md)| The project IDs to filter by. For example, &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. | [optional] [default to null] |
| **query** | **String**| The string to query projects on by name. | [optional] [default to ] |

### Return type

[**PageBeanProject**](../Models/PageBeanProject.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="suggestedPrioritiesForMappings"></a>
# **suggestedPrioritiesForMappings**
> PageBeanPriorityWithSequence suggestedPrioritiesForMappings(SuggestedMappingsRequestBean)

Suggested priorities for mappings

    Returns a [paginated](#pagination) list of priorities that would require mapping, given a change in priorities or projects associated with a priority scheme.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **SuggestedMappingsRequestBean** | [**SuggestedMappingsRequestBean**](../Models/SuggestedMappingsRequestBean.md)|  | |

### Return type

[**PageBeanPriorityWithSequence**](../Models/PageBeanPriorityWithSequence.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updatePriorityScheme"></a>
# **updatePriorityScheme**
> UpdatePrioritySchemeResponseBean updatePriorityScheme(schemeId, UpdatePrioritySchemeRequestBean)

Update priority scheme

    Updates a priority scheme. This includes its details, the lists of priorities and projects in it  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **Long**| The ID of the priority scheme. | [default to null] |
| **UpdatePrioritySchemeRequestBean** | [**UpdatePrioritySchemeRequestBean**](../Models/UpdatePrioritySchemeRequestBean.md)|  | |

### Return type

[**UpdatePrioritySchemeResponseBean**](../Models/UpdatePrioritySchemeResponseBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

