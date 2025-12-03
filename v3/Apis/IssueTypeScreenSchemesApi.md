# IssueTypeScreenSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**appendMappingsForIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#appendMappingsForIssueTypeScreenScheme) | **PUT** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping | Append mappings to issue type screen scheme |
| [**assignIssueTypeScreenSchemeToProject**](IssueTypeScreenSchemesApi.md#assignIssueTypeScreenSchemeToProject) | **PUT** /rest/api/3/issuetypescreenscheme/project | Assign issue type screen scheme to project |
| [**createIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#createIssueTypeScreenScheme) | **POST** /rest/api/3/issuetypescreenscheme | Create issue type screen scheme |
| [**deleteIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#deleteIssueTypeScreenScheme) | **DELETE** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId} | Delete issue type screen scheme |
| [**getIssueTypeScreenSchemeMappings**](IssueTypeScreenSchemesApi.md#getIssueTypeScreenSchemeMappings) | **GET** /rest/api/3/issuetypescreenscheme/mapping | Get issue type screen scheme items |
| [**getIssueTypeScreenSchemeProjectAssociations**](IssueTypeScreenSchemesApi.md#getIssueTypeScreenSchemeProjectAssociations) | **GET** /rest/api/3/issuetypescreenscheme/project | Get issue type screen schemes for projects |
| [**getIssueTypeScreenSchemes**](IssueTypeScreenSchemesApi.md#getIssueTypeScreenSchemes) | **GET** /rest/api/3/issuetypescreenscheme | Get issue type screen schemes |
| [**getProjectsForIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#getProjectsForIssueTypeScreenScheme) | **GET** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/project | Get issue type screen scheme projects |
| [**removeMappingsFromIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#removeMappingsFromIssueTypeScreenScheme) | **POST** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping/remove | Remove mappings from issue type screen scheme |
| [**updateDefaultScreenScheme**](IssueTypeScreenSchemesApi.md#updateDefaultScreenScheme) | **PUT** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping/default | Update issue type screen scheme default screen scheme |
| [**updateIssueTypeScreenScheme**](IssueTypeScreenSchemesApi.md#updateIssueTypeScreenScheme) | **PUT** /rest/api/3/issuetypescreenscheme/{issueTypeScreenSchemeId} | Update issue type screen scheme |


<a name="appendMappingsForIssueTypeScreenScheme"></a>
# **appendMappingsForIssueTypeScreenScheme**
> oas_any_type_not_mapped appendMappingsForIssueTypeScreenScheme(issueTypeScreenSchemeId, IssueTypeScreenSchemeMappingDetails)

Append mappings to issue type screen scheme

    Appends issue type to screen scheme mappings to an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | [default to null] |
| **IssueTypeScreenSchemeMappingDetails** | [**IssueTypeScreenSchemeMappingDetails**](../Models/IssueTypeScreenSchemeMappingDetails.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="assignIssueTypeScreenSchemeToProject"></a>
# **assignIssueTypeScreenSchemeToProject**
> oas_any_type_not_mapped assignIssueTypeScreenSchemeToProject(IssueTypeScreenSchemeProjectAssociation)

Assign issue type screen scheme to project

    Assigns an issue type screen scheme to a project.  Issue type screen schemes can only be assigned to classic projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueTypeScreenSchemeProjectAssociation** | [**IssueTypeScreenSchemeProjectAssociation**](../Models/IssueTypeScreenSchemeProjectAssociation.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createIssueTypeScreenScheme"></a>
# **createIssueTypeScreenScheme**
> IssueTypeScreenSchemeId createIssueTypeScreenScheme(IssueTypeScreenSchemeDetails)

Create issue type screen scheme

    Creates an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueTypeScreenSchemeDetails** | [**IssueTypeScreenSchemeDetails**](../Models/IssueTypeScreenSchemeDetails.md)| An issue type screen scheme bean. | |

### Return type

[**IssueTypeScreenSchemeId**](../Models/IssueTypeScreenSchemeId.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteIssueTypeScreenScheme"></a>
# **deleteIssueTypeScreenScheme**
> oas_any_type_not_mapped deleteIssueTypeScreenScheme(issueTypeScreenSchemeId)

Delete issue type screen scheme

    Deletes an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueTypeScreenSchemeMappings"></a>
# **getIssueTypeScreenSchemeMappings**
> PageBeanIssueTypeScreenSchemeItem getIssueTypeScreenSchemeMappings(startAt, maxResults, issueTypeScreenSchemeId)

Get issue type screen scheme items

    Returns a [paginated](#pagination) list of issue type screen scheme items.  Only issue type screen schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **issueTypeScreenSchemeId** | [**Set**](../Models/Long.md)| The list of issue type screen scheme IDs. To include multiple issue type screen schemes, separate IDs with ampersand: &#x60;issueTypeScreenSchemeId&#x3D;10000&amp;issueTypeScreenSchemeId&#x3D;10001&#x60;. | [optional] [default to null] |

### Return type

[**PageBeanIssueTypeScreenSchemeItem**](../Models/PageBeanIssueTypeScreenSchemeItem.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueTypeScreenSchemeProjectAssociations"></a>
# **getIssueTypeScreenSchemeProjectAssociations**
> PageBeanIssueTypeScreenSchemesProjects getIssueTypeScreenSchemeProjectAssociations(projectId, startAt, maxResults)

Get issue type screen schemes for projects

    Returns a [paginated](#pagination) list of issue type screen schemes and, for each issue type screen scheme, a list of the projects that use it.  Only issue type screen schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | [**Set**](../Models/Long.md)| The list of project IDs. To include multiple projects, separate IDs with ampersand: &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |

### Return type

[**PageBeanIssueTypeScreenSchemesProjects**](../Models/PageBeanIssueTypeScreenSchemesProjects.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueTypeScreenSchemes"></a>
# **getIssueTypeScreenSchemes**
> PageBeanIssueTypeScreenScheme getIssueTypeScreenSchemes(startAt, maxResults, id, queryString, orderBy, expand)

Get issue type screen schemes

    Returns a [paginated](#pagination) list of issue type screen schemes.  Only issue type screen schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **id** | [**Set**](../Models/Long.md)| The list of issue type screen scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] [default to null] |
| **queryString** | **String**| String used to perform a case-insensitive partial match with issue type screen scheme name. | [optional] [default to ] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;name&#x60; Sorts by issue type screen scheme name.  *  &#x60;id&#x60; Sorts by issue type screen scheme ID. | [optional] [default to id] [enum: name, -name, +name, id, -id, +id] |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts &#x60;projects&#x60; that, for each issue type screen schemes, returns information about the projects the issue type screen scheme is assigned to. | [optional] [default to ] |

### Return type

[**PageBeanIssueTypeScreenScheme**](../Models/PageBeanIssueTypeScreenScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectsForIssueTypeScreenScheme"></a>
# **getProjectsForIssueTypeScreenScheme**
> PageBeanProjectDetails getProjectsForIssueTypeScreenScheme(issueTypeScreenSchemeId, startAt, maxResults, query)

Get issue type screen scheme projects

    Returns a [paginated](#pagination) list of projects associated with an issue type screen scheme.  Only company-managed projects associated with an issue type screen scheme are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeScreenSchemeId** | **Long**| The ID of the issue type screen scheme. | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **query** | **String**|  | [optional] [default to ] |

### Return type

[**PageBeanProjectDetails**](../Models/PageBeanProjectDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeMappingsFromIssueTypeScreenScheme"></a>
# **removeMappingsFromIssueTypeScreenScheme**
> oas_any_type_not_mapped removeMappingsFromIssueTypeScreenScheme(issueTypeScreenSchemeId, IssueTypeIds)

Remove mappings from issue type screen scheme

    Removes issue type to screen scheme mappings from an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | [default to null] |
| **IssueTypeIds** | [**IssueTypeIds**](../Models/IssueTypeIds.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateDefaultScreenScheme"></a>
# **updateDefaultScreenScheme**
> oas_any_type_not_mapped updateDefaultScreenScheme(issueTypeScreenSchemeId, UpdateDefaultScreenScheme)

Update issue type screen scheme default screen scheme

    Updates the default screen scheme of an issue type screen scheme. The default screen scheme is used for all unmapped issue types.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | [default to null] |
| **UpdateDefaultScreenScheme** | [**UpdateDefaultScreenScheme**](../Models/UpdateDefaultScreenScheme.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateIssueTypeScreenScheme"></a>
# **updateIssueTypeScreenScheme**
> oas_any_type_not_mapped updateIssueTypeScreenScheme(issueTypeScreenSchemeId, IssueTypeScreenSchemeUpdateDetails)

Update issue type screen scheme

    Updates an issue type screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeScreenSchemeId** | **String**| The ID of the issue type screen scheme. | [default to null] |
| **IssueTypeScreenSchemeUpdateDetails** | [**IssueTypeScreenSchemeUpdateDetails**](../Models/IssueTypeScreenSchemeUpdateDetails.md)| The issue type screen scheme update details. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

