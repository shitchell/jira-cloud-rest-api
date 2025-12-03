# IssueSecuritySchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addSecurityLevel**](IssueSecuritySchemesApi.md#addSecurityLevel) | **PUT** /rest/api/2/issuesecurityschemes/{schemeId}/level | Add issue security levels |
| [**addSecurityLevelMembers**](IssueSecuritySchemesApi.md#addSecurityLevelMembers) | **PUT** /rest/api/2/issuesecurityschemes/{schemeId}/level/{levelId}/member | Add issue security level members |
| [**associateSchemesToProjects**](IssueSecuritySchemesApi.md#associateSchemesToProjects) | **PUT** /rest/api/2/issuesecurityschemes/project | Associate security scheme to project |
| [**createIssueSecurityScheme**](IssueSecuritySchemesApi.md#createIssueSecurityScheme) | **POST** /rest/api/2/issuesecurityschemes | Create issue security scheme |
| [**deleteSecurityScheme**](IssueSecuritySchemesApi.md#deleteSecurityScheme) | **DELETE** /rest/api/2/issuesecurityschemes/{schemeId} | Delete issue security scheme |
| [**getIssueSecurityScheme**](IssueSecuritySchemesApi.md#getIssueSecurityScheme) | **GET** /rest/api/2/issuesecurityschemes/{id} | Get issue security scheme |
| [**getIssueSecuritySchemes**](IssueSecuritySchemesApi.md#getIssueSecuritySchemes) | **GET** /rest/api/2/issuesecurityschemes | Get issue security schemes |
| [**getSecurityLevelMembers**](IssueSecuritySchemesApi.md#getSecurityLevelMembers) | **GET** /rest/api/2/issuesecurityschemes/level/member | Get issue security level members |
| [**getSecurityLevels**](IssueSecuritySchemesApi.md#getSecurityLevels) | **GET** /rest/api/2/issuesecurityschemes/level | Get issue security levels |
| [**removeLevel**](IssueSecuritySchemesApi.md#removeLevel) | **DELETE** /rest/api/2/issuesecurityschemes/{schemeId}/level/{levelId} | Remove issue security level |
| [**removeMemberFromSecurityLevel**](IssueSecuritySchemesApi.md#removeMemberFromSecurityLevel) | **DELETE** /rest/api/2/issuesecurityschemes/{schemeId}/level/{levelId}/member/{memberId} | Remove member from issue security level |
| [**searchProjectsUsingSecuritySchemes**](IssueSecuritySchemesApi.md#searchProjectsUsingSecuritySchemes) | **GET** /rest/api/2/issuesecurityschemes/project | Get projects using issue security schemes |
| [**searchSecuritySchemes**](IssueSecuritySchemesApi.md#searchSecuritySchemes) | **GET** /rest/api/2/issuesecurityschemes/search | Search issue security schemes |
| [**setDefaultLevels**](IssueSecuritySchemesApi.md#setDefaultLevels) | **PUT** /rest/api/2/issuesecurityschemes/level/default | Set default issue security levels |
| [**updateIssueSecurityScheme**](IssueSecuritySchemesApi.md#updateIssueSecurityScheme) | **PUT** /rest/api/2/issuesecurityschemes/{id} | Update issue security scheme |
| [**updateSecurityLevel**](IssueSecuritySchemesApi.md#updateSecurityLevel) | **PUT** /rest/api/2/issuesecurityschemes/{schemeId}/level/{levelId} | Update issue security level |


<a name="addSecurityLevel"></a>
# **addSecurityLevel**
> oas_any_type_not_mapped addSecurityLevel(schemeId, AddSecuritySchemeLevelsRequestBean)

Add issue security levels

    Adds levels and levels&#39; members to the issue security scheme. You can add up to 100 levels per request.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **String**| The ID of the issue security scheme. | [default to null] |
| **AddSecuritySchemeLevelsRequestBean** | [**AddSecuritySchemeLevelsRequestBean**](../Models/AddSecuritySchemeLevelsRequestBean.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="addSecurityLevelMembers"></a>
# **addSecurityLevelMembers**
> oas_any_type_not_mapped addSecurityLevelMembers(schemeId, levelId, SecuritySchemeMembersRequest)

Add issue security level members

    Adds members to the issue security level. You can add up to 100 members per request.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **String**| The ID of the issue security scheme. | [default to null] |
| **levelId** | **String**| The ID of the issue security level. | [default to null] |
| **SecuritySchemeMembersRequest** | [**SecuritySchemeMembersRequest**](../Models/SecuritySchemeMembersRequest.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="associateSchemesToProjects"></a>
# **associateSchemesToProjects**
> associateSchemesToProjects(AssociateSecuritySchemeWithProjectDetails)

Associate security scheme to project

    Associates an issue security scheme with a project and remaps security levels of issues to the new levels, if provided.  This operation is [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-2-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **AssociateSecuritySchemeWithProjectDetails** | [**AssociateSecuritySchemeWithProjectDetails**](../Models/AssociateSecuritySchemeWithProjectDetails.md)|  | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createIssueSecurityScheme"></a>
# **createIssueSecurityScheme**
> SecuritySchemeId createIssueSecurityScheme(CreateIssueSecuritySchemeDetails)

Create issue security scheme

    Creates a security scheme with security scheme levels and levels&#39; members. You can create up to 100 security scheme levels and security scheme levels&#39; members per request.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateIssueSecuritySchemeDetails** | [**CreateIssueSecuritySchemeDetails**](../Models/CreateIssueSecuritySchemeDetails.md)|  | |

### Return type

[**SecuritySchemeId**](../Models/SecuritySchemeId.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteSecurityScheme"></a>
# **deleteSecurityScheme**
> oas_any_type_not_mapped deleteSecurityScheme(schemeId)

Delete issue security scheme

    Deletes an issue security scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **String**| The ID of the issue security scheme. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueSecurityScheme"></a>
# **getIssueSecurityScheme**
> SecurityScheme getIssueSecurityScheme(id)

Get issue security scheme

    Returns an issue security scheme along with its security levels.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for a project that uses the requested issue security scheme.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the issue security scheme. Use the [Get issue security schemes](#api-rest-api-2-issuesecurityschemes-get) operation to get a list of issue security scheme IDs. | [default to null] |

### Return type

[**SecurityScheme**](../Models/SecurityScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueSecuritySchemes"></a>
# **getIssueSecuritySchemes**
> SecuritySchemes getIssueSecuritySchemes()

Get issue security schemes

    Returns all [issue security schemes](https://confluence.atlassian.com/x/J4lKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**SecuritySchemes**](../Models/SecuritySchemes.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSecurityLevelMembers"></a>
# **getSecurityLevelMembers**
> PageBeanSecurityLevelMember getSecurityLevelMembers(startAt, maxResults, id, schemeId, levelId, expand)

Get issue security level members

    Returns a [paginated](#pagination) list of issue security level members.  Only issue security level members in the context of classic projects are returned.  Filtering using parameters is inclusive: if you specify both security scheme IDs and level IDs, the result will include all issue security level members from the specified schemes and levels.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **id** | [**Set**](../Models/String.md)| The list of issue security level member IDs. To include multiple issue security level members separate IDs with an ampersand: &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] [default to null] |
| **schemeId** | [**Set**](../Models/String.md)| The list of issue security scheme IDs. To include multiple issue security schemes separate IDs with an ampersand: &#x60;schemeId&#x3D;10000&amp;schemeId&#x3D;10001&#x60;. | [optional] [default to null] |
| **levelId** | [**Set**](../Models/String.md)| The list of issue security level IDs. To include multiple issue security levels separate IDs with an ampersand: &#x60;levelId&#x3D;10000&amp;levelId&#x3D;10001&#x60;. | [optional] [default to null] |
| **expand** | **String**| Use expand to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;all&#x60; Returns all expandable information  *  &#x60;field&#x60; Returns information about the custom field granted the permission  *  &#x60;group&#x60; Returns information about the group that is granted the permission  *  &#x60;projectRole&#x60; Returns information about the project role granted the permission  *  &#x60;user&#x60; Returns information about the user who is granted the permission | [optional] [default to null] |

### Return type

[**PageBeanSecurityLevelMember**](../Models/PageBeanSecurityLevelMember.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSecurityLevels"></a>
# **getSecurityLevels**
> PageBeanSecurityLevel getSecurityLevels(startAt, maxResults, id, schemeId, onlyDefault)

Get issue security levels

    Returns a [paginated](#pagination) list of issue security levels.  Only issue security levels in the context of classic projects are returned.  Filtering using IDs is inclusive: if you specify both security scheme IDs and level IDs, the result will include both specified issue security levels and all issue security levels from the specified schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **id** | [**Set**](../Models/String.md)| The list of issue security scheme level IDs. To include multiple issue security levels, separate IDs with an ampersand: &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] [default to null] |
| **schemeId** | [**Set**](../Models/String.md)| The list of issue security scheme IDs. To include multiple issue security schemes, separate IDs with an ampersand: &#x60;schemeId&#x3D;10000&amp;schemeId&#x3D;10001&#x60;. | [optional] [default to null] |
| **onlyDefault** | **Boolean**| When set to true, returns multiple default levels for each security scheme containing a default. If you provide scheme and level IDs not associated with the default, returns an empty page. The default value is false. | [optional] [default to false] |

### Return type

[**PageBeanSecurityLevel**](../Models/PageBeanSecurityLevel.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeLevel"></a>
# **removeLevel**
> removeLevel(schemeId, levelId, replaceWith)

Remove issue security level

    Deletes an issue security level.  This operation is [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-2-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **String**| The ID of the issue security scheme. | [default to null] |
| **levelId** | **String**| The ID of the issue security level to remove. | [default to null] |
| **replaceWith** | **String**| The ID of the issue security level that will replace the currently selected level. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeMemberFromSecurityLevel"></a>
# **removeMemberFromSecurityLevel**
> oas_any_type_not_mapped removeMemberFromSecurityLevel(schemeId, levelId, memberId)

Remove member from issue security level

    Removes an issue security level member from an issue security scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **String**| The ID of the issue security scheme. | [default to null] |
| **levelId** | **String**| The ID of the issue security level. | [default to null] |
| **memberId** | **String**| The ID of the issue security level member to be removed. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="searchProjectsUsingSecuritySchemes"></a>
# **searchProjectsUsingSecuritySchemes**
> PageBeanIssueSecuritySchemeToProjectMapping searchProjectsUsingSecuritySchemes(startAt, maxResults, issueSecuritySchemeId, projectId)

Get projects using issue security schemes

    Returns a [paginated](#pagination) mapping of projects that are using security schemes. You can provide either one or multiple security scheme IDs or project IDs to filter by. If you don&#39;t provide any, this will return a list of all mappings. Only issue security schemes in the context of classic projects are supported. **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **issueSecuritySchemeId** | [**Set**](../Models/String.md)| The list of security scheme IDs to be filtered out. | [optional] [default to null] |
| **projectId** | [**Set**](../Models/String.md)| The list of project IDs to be filtered out. | [optional] [default to null] |

### Return type

[**PageBeanIssueSecuritySchemeToProjectMapping**](../Models/PageBeanIssueSecuritySchemeToProjectMapping.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="searchSecuritySchemes"></a>
# **searchSecuritySchemes**
> PageBeanSecuritySchemeWithProjects searchSecuritySchemes(startAt, maxResults, id, projectId)

Search issue security schemes

    Returns a [paginated](#pagination) list of issue security schemes.   If you specify the project ID parameter, the result will contain issue security schemes and related project IDs you filter by. Use \\{@link IssueSecuritySchemeResource\\#searchProjectsUsingSecuritySchemes(String, String, Set, Set)\\} to obtain all projects related to scheme.  Only issue security schemes in the context of classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **id** | [**Set**](../Models/String.md)| The list of issue security scheme IDs. To include multiple issue security scheme IDs, separate IDs with an ampersand: &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] [default to null] |
| **projectId** | [**Set**](../Models/String.md)| The list of project IDs. To include multiple project IDs, separate IDs with an ampersand: &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. | [optional] [default to null] |

### Return type

[**PageBeanSecuritySchemeWithProjects**](../Models/PageBeanSecuritySchemeWithProjects.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setDefaultLevels"></a>
# **setDefaultLevels**
> oas_any_type_not_mapped setDefaultLevels(SetDefaultLevelsRequest)

Set default issue security levels

    Sets default issue security levels for schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **SetDefaultLevelsRequest** | [**SetDefaultLevelsRequest**](../Models/SetDefaultLevelsRequest.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateIssueSecurityScheme"></a>
# **updateIssueSecurityScheme**
> oas_any_type_not_mapped updateIssueSecurityScheme(id, UpdateIssueSecuritySchemeRequestBean)

Update issue security scheme

    Updates the issue security scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue security scheme. | [default to null] |
| **UpdateIssueSecuritySchemeRequestBean** | [**UpdateIssueSecuritySchemeRequestBean**](../Models/UpdateIssueSecuritySchemeRequestBean.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateSecurityLevel"></a>
# **updateSecurityLevel**
> oas_any_type_not_mapped updateSecurityLevel(schemeId, levelId, UpdateIssueSecurityLevelDetails)

Update issue security level

    Updates the issue security level.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **schemeId** | **String**| The ID of the issue security scheme level belongs to. | [default to null] |
| **levelId** | **String**| The ID of the issue security level to update. | [default to null] |
| **UpdateIssueSecurityLevelDetails** | [**UpdateIssueSecurityLevelDetails**](../Models/UpdateIssueSecurityLevelDetails.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

