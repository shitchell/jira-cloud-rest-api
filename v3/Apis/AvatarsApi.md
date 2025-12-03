# AvatarsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteAvatar**](AvatarsApi.md#deleteAvatar) | **DELETE** /rest/api/3/universal_avatar/type/{type}/owner/{owningObjectId}/avatar/{id} | Delete avatar |
| [**getAllSystemAvatars**](AvatarsApi.md#getAllSystemAvatars) | **GET** /rest/api/3/avatar/{type}/system | Get system avatars by type |
| [**getAvatarImageByID**](AvatarsApi.md#getAvatarImageByID) | **GET** /rest/api/3/universal_avatar/view/type/{type}/avatar/{id} | Get avatar image by ID |
| [**getAvatarImageByOwner**](AvatarsApi.md#getAvatarImageByOwner) | **GET** /rest/api/3/universal_avatar/view/type/{type}/owner/{entityId} | Get avatar image by owner |
| [**getAvatarImageByType**](AvatarsApi.md#getAvatarImageByType) | **GET** /rest/api/3/universal_avatar/view/type/{type} | Get avatar image by type |
| [**getAvatars**](AvatarsApi.md#getAvatars) | **GET** /rest/api/3/universal_avatar/type/{type}/owner/{entityId} | Get avatars |
| [**storeAvatar**](AvatarsApi.md#storeAvatar) | **POST** /rest/api/3/universal_avatar/type/{type}/owner/{entityId} | Load avatar |


<a name="deleteAvatar"></a>
# **deleteAvatar**
> deleteAvatar(type, owningObjectId, id)

Delete avatar

    Deletes an avatar from a project, issue type or priority.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| The avatar type. | [default to null] [enum: project, issuetype, priority] |
| **owningObjectId** | **String**| The ID of the item the avatar is associated with. | [default to null] |
| **id** | **Long**| The ID of the avatar. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getAllSystemAvatars"></a>
# **getAllSystemAvatars**
> SystemAvatars getAllSystemAvatars(type)

Get system avatars by type

    Returns a list of system avatar details by owner type, where the owner types are issue type, project, user or priority.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| The avatar type. | [default to null] [enum: issuetype, project, user, priority] |

### Return type

[**SystemAvatars**](../Models/SystemAvatars.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAvatarImageByID"></a>
# **getAvatarImageByID**
> getAvatarImageByID(type, id, size, format)

Get avatar image by ID

    Returns a project, issue type or priority avatar image by ID.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  For system avatars, none.  *  For custom project avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project the avatar belongs to.  *  For custom issue type avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one project the issue type is used in.  *  For priority avatars, none.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| The icon type of the avatar. | [default to null] [enum: issuetype, project, priority] |
| **id** | **Long**| The ID of the avatar. | [default to null] |
| **size** | **String**| The size of the avatar image. If not provided the default size is returned. | [optional] [default to null] [enum: xsmall, small, medium, large, xlarge] |
| **format** | **String**| The format to return the avatar image in. If not provided the original content format is returned. | [optional] [default to null] [enum: png, svg] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*, application/json, image/png, image/svg+xml

<a name="getAvatarImageByOwner"></a>
# **getAvatarImageByOwner**
> getAvatarImageByOwner(type, entityId, size, format)

Get avatar image by owner

    Returns the avatar image for a project, issue type or priority.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  For system avatars, none.  *  For custom project avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project the avatar belongs to.  *  For custom issue type avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one project the issue type is used in.  *  For priority avatars, none.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| The icon type of the avatar. | [default to null] [enum: issuetype, project, priority] |
| **entityId** | **String**| The ID of the project or issue type the avatar belongs to. | [default to null] |
| **size** | **String**| The size of the avatar image. If not provided the default size is returned. | [optional] [default to null] [enum: xsmall, small, medium, large, xlarge] |
| **format** | **String**| The format to return the avatar image in. If not provided the original content format is returned. | [optional] [default to null] [enum: png, svg] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*, application/json, image/png, image/svg+xml

<a name="getAvatarImageByType"></a>
# **getAvatarImageByType**
> getAvatarImageByType(type, size, format)

Get avatar image by type

    Returns the default project, issue type or priority avatar image.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| The icon type of the avatar. | [default to null] [enum: issuetype, project, priority] |
| **size** | **String**| The size of the avatar image. If not provided the default size is returned. | [optional] [default to null] [enum: xsmall, small, medium, large, xlarge] |
| **format** | **String**| The format to return the avatar image in. If not provided the original content format is returned. | [optional] [default to null] [enum: png, svg] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*, application/json, image/png, image/svg+xml

<a name="getAvatars"></a>
# **getAvatars**
> Avatars getAvatars(type, entityId)

Get avatars

    Returns the system and custom avatars for a project, issue type or priority.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  for custom project avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project the avatar belongs to.  *  for custom issue type avatars, *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one project the issue type is used in.  *  for system avatars, none.  *  for priority avatars, none.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| The avatar type. | [default to null] [enum: project, issuetype, priority] |
| **entityId** | **String**| The ID of the item the avatar is associated with. | [default to null] |

### Return type

[**Avatars**](../Models/Avatars.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="storeAvatar"></a>
# **storeAvatar**
> Avatar storeAvatar(type, entityId, size, body, x, y)

Load avatar

    Loads a custom avatar for a project, issue type or priority.  Specify the avatar&#39;s local file location in the body of the request. Also, include the following headers:   *  &#x60;X-Atlassian-Token: no-check&#x60; To prevent XSRF protection blocking the request, for more information see [Special Headers](#special-request-headers).  *  &#x60;Content-Type: image/image type&#x60; Valid image types are JPEG, GIF, or PNG.  For example:   &#x60;curl --request POST &#x60;  &#x60;--user email@example.com:&lt;api_token&gt; &#x60;  &#x60;--header &#39;X-Atlassian-Token: no-check&#39; &#x60;  &#x60;--header &#39;Content-Type: image/&lt; image_type&gt;&#39; &#x60;  &#x60;--data-binary \&quot;&lt;@/path/to/file/with/your/avatar&gt;\&quot; &#x60;  &#x60;--url &#39;https://your-domain.atlassian.net/rest/api/3/universal_avatar/type/{type}/owner/{entityId}&#39;&#x60;  The avatar is cropped to a square. If no crop parameters are specified, the square originates at the top left of the image. The length of the square&#39;s sides is set to the smaller of the height or width of the image.  The cropped image is then used to create avatars of 16x16, 24x24, 32x32, and 48x48 in size.  After creating the avatar use:   *  [Update issue type](#api-rest-api-3-issuetype-id-put) to set it as the issue type&#39;s displayed avatar.  *  [Set project avatar](#api-rest-api-3-project-projectIdOrKey-avatar-put) to set it as the project&#39;s displayed avatar.  *  [Update priority](#api-rest-api-3-priority-id-put) to set it as the priority&#39;s displayed avatar.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| The avatar type. | [default to null] [enum: project, issuetype, priority] |
| **entityId** | **String**| The ID of the item the avatar is associated with. | [default to null] |
| **size** | **Integer**| The length of each side of the crop region. | [default to 0] |
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

