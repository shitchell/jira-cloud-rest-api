# FilterSharingApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addSharePermission**](FilterSharingApi.md#addSharePermission) | **POST** /rest/api/2/filter/{id}/permission | Add share permission |
| [**deleteSharePermission**](FilterSharingApi.md#deleteSharePermission) | **DELETE** /rest/api/2/filter/{id}/permission/{permissionId} | Delete share permission |
| [**getDefaultShareScope**](FilterSharingApi.md#getDefaultShareScope) | **GET** /rest/api/2/filter/defaultShareScope | Get default share scope |
| [**getSharePermission**](FilterSharingApi.md#getSharePermission) | **GET** /rest/api/2/filter/{id}/permission/{permissionId} | Get share permission |
| [**getSharePermissions**](FilterSharingApi.md#getSharePermissions) | **GET** /rest/api/2/filter/{id}/permission | Get share permissions |
| [**setDefaultShareScope**](FilterSharingApi.md#setDefaultShareScope) | **PUT** /rest/api/2/filter/defaultShareScope | Set default share scope |


<a name="addSharePermission"></a>
# **addSharePermission**
> List addSharePermission(id, SharePermissionInputBean)

Add share permission

    Add a share permissions to a filter. If you add a global share permission (one for all logged-in users or the public) it will overwrite all share permissions for the filter.  Be aware that this operation uses different objects for updating share permissions compared to [Update filter](#api-rest-api-2-filter-id-put).  **[Permissions](#permissions) required:** *Share dashboards and filters* [global permission](https://confluence.atlassian.com/x/x4dKLg) and the user must own the filter.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the filter. | [default to null] |
| **SharePermissionInputBean** | [**SharePermissionInputBean**](../Models/SharePermissionInputBean.md)|  | |

### Return type

[**List**](../Models/SharePermission.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteSharePermission"></a>
# **deleteSharePermission**
> deleteSharePermission(id, permissionId)

Delete share permission

    Deletes a share permission from a filter.  **[Permissions](#permissions) required:** Permission to access Jira and the user must own the filter.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the filter. | [default to null] |
| **permissionId** | **Long**| The ID of the share permission. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getDefaultShareScope"></a>
# **getDefaultShareScope**
> DefaultShareScope getDefaultShareScope()

Get default share scope

    Returns the default sharing settings for new filters and dashboards for a user.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters
This endpoint does not need any parameter.

### Return type

[**DefaultShareScope**](../Models/DefaultShareScope.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSharePermission"></a>
# **getSharePermission**
> SharePermission getSharePermission(id, permissionId)

Get share permission

    Returns a share permission for a filter. A filter can be shared with groups, projects, all logged-in users, or the public. Sharing with all logged-in users or the public is known as a global share permission.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None, however, a share permission is only returned for:   *  filters owned by the user.  *  filters shared with a group that the user is a member of.  *  filters shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  filters shared with a public project.  *  filters shared with the public.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the filter. | [default to null] |
| **permissionId** | **Long**| The ID of the share permission. | [default to null] |

### Return type

[**SharePermission**](../Models/SharePermission.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSharePermissions"></a>
# **getSharePermissions**
> List getSharePermissions(id)

Get share permissions

    Returns the share permissions for a filter. A filter can be shared with groups, projects, all logged-in users, or the public. Sharing with all logged-in users or the public is known as a global share permission.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None, however, share permissions are only returned for:   *  filters owned by the user.  *  filters shared with a group that the user is a member of.  *  filters shared with a private project that the user has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.  *  filters shared with a public project.  *  filters shared with the public.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the filter. | [default to null] |

### Return type

[**List**](../Models/SharePermission.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setDefaultShareScope"></a>
# **setDefaultShareScope**
> DefaultShareScope setDefaultShareScope(DefaultShareScope)

Set default share scope

    Sets the default sharing for new filters and dashboards for a user.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **DefaultShareScope** | [**DefaultShareScope**](../Models/DefaultShareScope.md)|  | |

### Return type

[**DefaultShareScope**](../Models/DefaultShareScope.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

