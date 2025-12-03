# IssueTypesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIssueType**](IssueTypesApi.md#createIssueType) | **POST** /rest/api/3/issuetype | Create issue type |
| [**createIssueTypeAvatar**](IssueTypesApi.md#createIssueTypeAvatar) | **POST** /rest/api/3/issuetype/{id}/avatar2 | Load issue type avatar |
| [**deleteIssueType**](IssueTypesApi.md#deleteIssueType) | **DELETE** /rest/api/3/issuetype/{id} | Delete issue type |
| [**getAlternativeIssueTypes**](IssueTypesApi.md#getAlternativeIssueTypes) | **GET** /rest/api/3/issuetype/{id}/alternatives | Get alternative issue types |
| [**getIssueAllTypes**](IssueTypesApi.md#getIssueAllTypes) | **GET** /rest/api/3/issuetype | Get all issue types for user |
| [**getIssueType**](IssueTypesApi.md#getIssueType) | **GET** /rest/api/3/issuetype/{id} | Get issue type |
| [**getIssueTypesForProject**](IssueTypesApi.md#getIssueTypesForProject) | **GET** /rest/api/3/issuetype/project | Get issue types for project |
| [**updateIssueType**](IssueTypesApi.md#updateIssueType) | **PUT** /rest/api/3/issuetype/{id} | Update issue type |


<a name="createIssueType"></a>
# **createIssueType**
> IssueTypeDetails createIssueType(IssueTypeCreateBean)

Create issue type

    Creates an issue type and adds it to the default issue type scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueTypeCreateBean** | [**IssueTypeCreateBean**](../Models/IssueTypeCreateBean.md)|  | |

### Return type

[**IssueTypeDetails**](../Models/IssueTypeDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createIssueTypeAvatar"></a>
# **createIssueTypeAvatar**
> Avatar createIssueTypeAvatar(id, size, body, x, y)

Load issue type avatar

    Loads an avatar for the issue type.  Specify the avatar&#39;s local file location in the body of the request. Also, include the following headers:   *  &#x60;X-Atlassian-Token: no-check&#x60; To prevent XSRF protection blocking the request, for more information see [Special Headers](#special-request-headers).  *  &#x60;Content-Type: image/image type&#x60; Valid image types are JPEG, GIF, or PNG.  For example:   &#x60;curl --request POST \\ --user email@example.com:&lt;api_token&gt; \\ --header &#39;X-Atlassian-Token: no-check&#39; \\ --header &#39;Content-Type: image/&lt; image_type&gt;&#39; \\ --data-binary \&quot;&lt;@/path/to/file/with/your/avatar&gt;\&quot; \\ --url &#39;https://your-domain.atlassian.net/rest/api/3/issuetype/{issueTypeId}&#39;This&#x60;  The avatar is cropped to a square. If no crop parameters are specified, the square originates at the top left of the image. The length of the square&#39;s sides is set to the smaller of the height or width of the image.  The cropped image is then used to create avatars of 16x16, 24x24, 32x32, and 48x48 in size.  After creating the avatar, use [ Update issue type](#api-rest-api-3-issuetype-id-put) to set it as the issue type&#39;s displayed avatar.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue type. | [default to null] |
| **size** | **Integer**| The length of each side of the crop region. | [default to null] |
| **body** | **oas_any_type_not_mapped**|  | |
| **x** | **Integer**| The X coordinate of the top-left corner of the crop region. | [optional] [default to 0] |
| **y** | **Integer**| The Y coordinate of the top-left corner of the crop region. | [optional] [default to 0] |

### Return type

[**Avatar**](../Models/Avatar.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteIssueType"></a>
# **deleteIssueType**
> deleteIssueType(id, alternativeIssueTypeId)

Delete issue type

    Deletes the issue type. If the issue type is in use, all uses are updated with the alternative issue type (&#x60;alternativeIssueTypeId&#x60;). A list of alternative issue types are obtained from the [Get alternative issue types](#api-rest-api-3-issuetype-id-alternatives-get) resource.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue type. | [default to null] |
| **alternativeIssueTypeId** | **String**| The ID of the replacement issue type. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getAlternativeIssueTypes"></a>
# **getAlternativeIssueTypes**
> List getAlternativeIssueTypes(id)

Get alternative issue types

    Returns a list of issue types that can be used to replace the issue type. The alternative issue types are those assigned to the same workflow scheme, field configuration scheme, and screen scheme.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue type. | [default to null] |

### Return type

[**List**](../Models/IssueTypeDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueAllTypes"></a>
# **getIssueAllTypes**
> List getIssueAllTypes()

Get all issue types for user

    Returns all issue types.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Issue types are only returned as follows:   *  if the user has the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), all issue types are returned.  *  if the user has the *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for one or more projects, the issue types associated with the projects the user has permission to browse are returned.  *  if the user is anonymous then they will be able to access projects with the *Browse projects* for anonymous users  *  if the user authentication is incorrect they will fall back to anonymous

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/IssueTypeDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueType"></a>
# **getIssueType**
> IssueTypeDetails getIssueType(id)

Get issue type

    Returns an issue type.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) in a project the issue type is associated with or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue type. | [default to null] |

### Return type

[**IssueTypeDetails**](../Models/IssueTypeDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueTypesForProject"></a>
# **getIssueTypesForProject**
> List getIssueTypesForProject(projectId, level)

Get issue types for project

    Returns issue types for a project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) in the relevant project or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **Long**| The ID of the project. | [default to null] |
| **level** | **Integer**| The level of the issue type to filter by. Use:   *  &#x60;-1&#x60; for Subtask.  *  &#x60;0&#x60; for Base.  *  &#x60;1&#x60; for Epic. | [optional] [default to null] |

### Return type

[**List**](../Models/IssueTypeDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateIssueType"></a>
# **updateIssueType**
> IssueTypeDetails updateIssueType(id, IssueTypeUpdateBean)

Update issue type

    Updates the issue type.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the issue type. | [default to null] |
| **IssueTypeUpdateBean** | [**IssueTypeUpdateBean**](../Models/IssueTypeUpdateBean.md)|  | |

### Return type

[**IssueTypeDetails**](../Models/IssueTypeDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

