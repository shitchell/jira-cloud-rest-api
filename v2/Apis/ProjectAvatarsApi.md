# ProjectAvatarsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createProjectAvatar**](ProjectAvatarsApi.md#createProjectAvatar) | **POST** /rest/api/2/project/{projectIdOrKey}/avatar2 | Load project avatar |
| [**deleteProjectAvatar**](ProjectAvatarsApi.md#deleteProjectAvatar) | **DELETE** /rest/api/2/project/{projectIdOrKey}/avatar/{id} | Delete project avatar |
| [**getAllProjectAvatars**](ProjectAvatarsApi.md#getAllProjectAvatars) | **GET** /rest/api/2/project/{projectIdOrKey}/avatars | Get all project avatars |
| [**updateProjectAvatar**](ProjectAvatarsApi.md#updateProjectAvatar) | **PUT** /rest/api/2/project/{projectIdOrKey}/avatar | Set project avatar |


<a name="createProjectAvatar"></a>
# **createProjectAvatar**
> Avatar createProjectAvatar(projectIdOrKey, body, x, y, size)

Load project avatar

    Loads an avatar for a project.  Specify the avatar&#39;s local file location in the body of the request. Also, include the following headers:   *  &#x60;X-Atlassian-Token: no-check&#x60; To prevent XSRF protection blocking the request, for more information see [Special Headers](#special-request-headers).  *  &#x60;Content-Type: image/image type&#x60; Valid image types are JPEG, GIF, or PNG.  For example:   &#x60;curl --request POST &#x60;  &#x60;--user email@example.com:&lt;api_token&gt; &#x60;  &#x60;--header &#39;X-Atlassian-Token: no-check&#39; &#x60;  &#x60;--header &#39;Content-Type: image/&lt; image_type&gt;&#39; &#x60;  &#x60;--data-binary \&quot;&lt;@/path/to/file/with/your/avatar&gt;\&quot; &#x60;  &#x60;--url &#39;https://your-domain.atlassian.net/rest/api/2/project/{projectIdOrKey}/avatar2&#39;&#x60;  The avatar is cropped to a square. If no crop parameters are specified, the square originates at the top left of the image. The length of the square&#39;s sides is set to the smaller of the height or width of the image.  The cropped image is then used to create avatars of 16x16, 24x24, 32x32, and 48x48 in size.  After creating the avatar use [Set project avatar](#api-rest-api-2-project-projectIdOrKey-avatar-put) to set it as the project&#39;s displayed avatar.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The ID or (case-sensitive) key of the project. | [default to null] |
| **body** | **oas_any_type_not_mapped**|  | |
| **x** | **Integer**| The X coordinate of the top-left corner of the crop region. | [optional] [default to 0] |
| **y** | **Integer**| The Y coordinate of the top-left corner of the crop region. | [optional] [default to 0] |
| **size** | **Integer**| The length of each side of the crop region. | [optional] [default to 0] |

### Return type

[**Avatar**](../Models/Avatar.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteProjectAvatar"></a>
# **deleteProjectAvatar**
> deleteProjectAvatar(projectIdOrKey, id)

Delete project avatar

    Deletes a custom avatar from a project. Note that system avatars cannot be deleted.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or (case-sensitive) key. | [default to null] |
| **id** | **Long**| The ID of the avatar. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getAllProjectAvatars"></a>
# **getAllProjectAvatars**
> ProjectAvatars getAllProjectAvatars(projectIdOrKey)

Get all project avatars

    Returns all project avatars, grouped by system and custom avatars.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The ID or (case-sensitive) key of the project. | [default to null] |

### Return type

[**ProjectAvatars**](../Models/ProjectAvatars.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateProjectAvatar"></a>
# **updateProjectAvatar**
> oas_any_type_not_mapped updateProjectAvatar(projectIdOrKey, Avatar)

Set project avatar

    Sets the avatar displayed for a project.  Use [Load project avatar](#api-rest-api-2-project-projectIdOrKey-avatar2-post) to store avatars against the project, before using this operation to set the displayed avatar.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The ID or (case-sensitive) key of the project. | [default to null] |
| **Avatar** | [**Avatar**](../Models/Avatar.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

