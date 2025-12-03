# IssueTypeSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addIssueTypesToIssueTypeScheme**](IssueTypeSchemesApi.md#addIssueTypesToIssueTypeScheme) | **PUT** /rest/api/2/issuetypescheme/{issueTypeSchemeId}/issuetype | Add issue types to issue type scheme |
| [**assignIssueTypeSchemeToProject**](IssueTypeSchemesApi.md#assignIssueTypeSchemeToProject) | **PUT** /rest/api/2/issuetypescheme/project | Assign issue type scheme to project |
| [**createIssueTypeScheme**](IssueTypeSchemesApi.md#createIssueTypeScheme) | **POST** /rest/api/2/issuetypescheme | Create issue type scheme |
| [**deleteIssueTypeScheme**](IssueTypeSchemesApi.md#deleteIssueTypeScheme) | **DELETE** /rest/api/2/issuetypescheme/{issueTypeSchemeId} | Delete issue type scheme |
| [**getAllIssueTypeSchemes**](IssueTypeSchemesApi.md#getAllIssueTypeSchemes) | **GET** /rest/api/2/issuetypescheme | Get all issue type schemes |
| [**getIssueTypeSchemeForProjects**](IssueTypeSchemesApi.md#getIssueTypeSchemeForProjects) | **GET** /rest/api/2/issuetypescheme/project | Get issue type schemes for projects |
| [**getIssueTypeSchemesMapping**](IssueTypeSchemesApi.md#getIssueTypeSchemesMapping) | **GET** /rest/api/2/issuetypescheme/mapping | Get issue type scheme items |
| [**removeIssueTypeFromIssueTypeScheme**](IssueTypeSchemesApi.md#removeIssueTypeFromIssueTypeScheme) | **DELETE** /rest/api/2/issuetypescheme/{issueTypeSchemeId}/issuetype/{issueTypeId} | Remove issue type from issue type scheme |
| [**reorderIssueTypesInIssueTypeScheme**](IssueTypeSchemesApi.md#reorderIssueTypesInIssueTypeScheme) | **PUT** /rest/api/2/issuetypescheme/{issueTypeSchemeId}/issuetype/move | Change order of issue types |
| [**updateIssueTypeScheme**](IssueTypeSchemesApi.md#updateIssueTypeScheme) | **PUT** /rest/api/2/issuetypescheme/{issueTypeSchemeId} | Update issue type scheme |


<a name="addIssueTypesToIssueTypeScheme"></a>
# **addIssueTypesToIssueTypeScheme**
> oas_any_type_not_mapped addIssueTypesToIssueTypeScheme(issueTypeSchemeId, IssueTypeIds)

Add issue types to issue type scheme

    Adds issue types to an issue type scheme.  The added issue types are appended to the issue types list.  If any of the issue types exist in the issue type scheme, the operation fails and no issue types are added.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeSchemeId** | **Long**| The ID of the issue type scheme. | [default to null] |
| **IssueTypeIds** | [**IssueTypeIds**](../Models/IssueTypeIds.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="assignIssueTypeSchemeToProject"></a>
# **assignIssueTypeSchemeToProject**
> oas_any_type_not_mapped assignIssueTypeSchemeToProject(IssueTypeSchemeProjectAssociation)

Assign issue type scheme to project

    Assigns an issue type scheme to a project.  If any issues in the project are assigned issue types not present in the new scheme, the operation will fail. To complete the assignment those issues must be updated to use issue types in the new scheme.  Issue type schemes can only be assigned to classic projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueTypeSchemeProjectAssociation** | [**IssueTypeSchemeProjectAssociation**](../Models/IssueTypeSchemeProjectAssociation.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createIssueTypeScheme"></a>
# **createIssueTypeScheme**
> IssueTypeSchemeID createIssueTypeScheme(IssueTypeSchemeDetails)

Create issue type scheme

    Creates an issue type scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueTypeSchemeDetails** | [**IssueTypeSchemeDetails**](../Models/IssueTypeSchemeDetails.md)|  | |

### Return type

[**IssueTypeSchemeID**](../Models/IssueTypeSchemeID.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteIssueTypeScheme"></a>
# **deleteIssueTypeScheme**
> oas_any_type_not_mapped deleteIssueTypeScheme(issueTypeSchemeId)

Delete issue type scheme

    Deletes an issue type scheme.  Only issue type schemes used in classic projects can be deleted.  Any projects assigned to the scheme are reassigned to the default issue type scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeSchemeId** | **Long**| The ID of the issue type scheme. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAllIssueTypeSchemes"></a>
# **getAllIssueTypeSchemes**
> PageBeanIssueTypeScheme getAllIssueTypeSchemes(startAt, maxResults, id, orderBy, expand, queryString)

Get all issue type schemes

    Returns a [paginated](#pagination) list of issue type schemes.  Only issue type schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **id** | [**Set**](../Models/Long.md)| The list of issue type schemes IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] [default to null] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;name&#x60; Sorts by issue type scheme name.  *  &#x60;id&#x60; Sorts by issue type scheme ID. | [optional] [default to id] [enum: name, -name, +name, id, -id, +id] |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;projects&#x60; For each issue type schemes, returns information about the projects the issue type scheme is assigned to.  *  &#x60;issueTypes&#x60; For each issue type schemes, returns information about the issueTypes the issue type scheme have. | [optional] [default to ] |
| **queryString** | **String**| String used to perform a case-insensitive partial match with issue type scheme name. | [optional] [default to ] |

### Return type

[**PageBeanIssueTypeScheme**](../Models/PageBeanIssueTypeScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueTypeSchemeForProjects"></a>
# **getIssueTypeSchemeForProjects**
> PageBeanIssueTypeSchemeProjects getIssueTypeSchemeForProjects(projectId, startAt, maxResults)

Get issue type schemes for projects

    Returns a [paginated](#pagination) list of issue type schemes and, for each issue type scheme, a list of the projects that use it.  Only issue type schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | [**Set**](../Models/Long.md)| The list of project IDs. To include multiple project IDs, provide an ampersand-separated list. For example, &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |

### Return type

[**PageBeanIssueTypeSchemeProjects**](../Models/PageBeanIssueTypeSchemeProjects.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueTypeSchemesMapping"></a>
# **getIssueTypeSchemesMapping**
> PageBeanIssueTypeSchemeMapping getIssueTypeSchemesMapping(startAt, maxResults, issueTypeSchemeId)

Get issue type scheme items

    Returns a [paginated](#pagination) list of issue type scheme items.  Only issue type scheme items used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **issueTypeSchemeId** | [**Set**](../Models/Long.md)| The list of issue type scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;issueTypeSchemeId&#x3D;10000&amp;issueTypeSchemeId&#x3D;10001&#x60;. | [optional] [default to null] |

### Return type

[**PageBeanIssueTypeSchemeMapping**](../Models/PageBeanIssueTypeSchemeMapping.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeIssueTypeFromIssueTypeScheme"></a>
# **removeIssueTypeFromIssueTypeScheme**
> oas_any_type_not_mapped removeIssueTypeFromIssueTypeScheme(issueTypeSchemeId, issueTypeId)

Remove issue type from issue type scheme

    Removes an issue type from an issue type scheme.  This operation cannot remove:   *  any issue type used by issues.  *  any issue types from the default issue type scheme.  *  the last standard issue type from an issue type scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeSchemeId** | **Long**| The ID of the issue type scheme. | [default to null] |
| **issueTypeId** | **Long**| The ID of the issue type. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="reorderIssueTypesInIssueTypeScheme"></a>
# **reorderIssueTypesInIssueTypeScheme**
> oas_any_type_not_mapped reorderIssueTypesInIssueTypeScheme(issueTypeSchemeId, OrderOfIssueTypes)

Change order of issue types

    Changes the order of issue types in an issue type scheme.  The request body parameters must meet the following requirements:   *  all of the issue types must belong to the issue type scheme.  *  either &#x60;after&#x60; or &#x60;position&#x60; must be provided.  *  the issue type in &#x60;after&#x60; must not be in the issue type list.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeSchemeId** | **Long**| The ID of the issue type scheme. | [default to null] |
| **OrderOfIssueTypes** | [**OrderOfIssueTypes**](../Models/OrderOfIssueTypes.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateIssueTypeScheme"></a>
# **updateIssueTypeScheme**
> oas_any_type_not_mapped updateIssueTypeScheme(issueTypeSchemeId, IssueTypeSchemeUpdateDetails)

Update issue type scheme

    Updates an issue type scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeSchemeId** | **Long**| The ID of the issue type scheme. | [default to null] |
| **IssueTypeSchemeUpdateDetails** | [**IssueTypeSchemeUpdateDetails**](../Models/IssueTypeSchemeUpdateDetails.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

