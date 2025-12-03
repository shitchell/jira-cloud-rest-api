# PermissionsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAllPermissions**](PermissionsApi.md#getAllPermissions) | **GET** /rest/api/2/permissions | Get all permissions |
| [**getBulkPermissions**](PermissionsApi.md#getBulkPermissions) | **POST** /rest/api/2/permissions/check | Get bulk permissions |
| [**getMyPermissions**](PermissionsApi.md#getMyPermissions) | **GET** /rest/api/2/mypermissions | Get my permissions |
| [**getPermittedProjects**](PermissionsApi.md#getPermittedProjects) | **POST** /rest/api/2/permissions/project | Get permitted projects |


<a name="getAllPermissions"></a>
# **getAllPermissions**
> Permissions getAllPermissions()

Get all permissions

    Returns all permissions, including:   *  global permissions.  *  project permissions.  *  global permissions added by plugins.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters
This endpoint does not need any parameter.

### Return type

[**Permissions**](../Models/Permissions.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getBulkPermissions"></a>
# **getBulkPermissions**
> BulkPermissionGrants getBulkPermissions(BulkPermissionsRequestBean)

Get bulk permissions

    Returns:   *  for a list of global permissions, the global permissions granted to a user.  *  for a list of project permissions and lists of projects and issues, for each project permission a list of the projects and issues a user can access or manipulate.  If no account ID is provided, the operation returns details for the logged in user.  Note that:   *  Invalid project and issue IDs are ignored.  *  A maximum of 1000 projects and 1000 issues can be checked.  *  Null values in &#x60;globalPermissions&#x60;, &#x60;projectPermissions&#x60;, &#x60;projectPermissions.projects&#x60;, and &#x60;projectPermissions.issues&#x60; are ignored.  *  Empty strings in &#x60;projectPermissions.permissions&#x60; are ignored.  **Deprecation notice:** The required OAuth 2.0 scopes will be updated on June 15, 2024.   *  **Classic**: &#x60;read:jira-work&#x60;  *  **Granular**: &#x60;read:permission:jira&#x60;  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) to check the permissions for other users, otherwise none. However, Connect apps can make a call from the app server to the product to obtain permission details for any user, without admin permission. This Connect app ability doesn&#39;t apply to calls made using AP.request() in a browser.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **BulkPermissionsRequestBean** | [**BulkPermissionsRequestBean**](../Models/BulkPermissionsRequestBean.md)| Details of the permissions to check. | |

### Return type

[**BulkPermissionGrants**](../Models/BulkPermissionGrants.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getMyPermissions"></a>
# **getMyPermissions**
> Permissions getMyPermissions(projectKey, projectId, issueKey, issueId, permissions, projectUuid, projectConfigurationUuid, commentId)

Get my permissions

    Returns a list of permissions indicating which permissions the user has. Details of the user&#39;s permissions can be obtained in a global, project, issue or comment context.  The user is reported as having a project permission:   *  in the global context, if the user has the project permission in any project.  *  for a project, where the project permission is determined using issue data, if the user meets the permission&#39;s criteria for any issue in the project. Otherwise, if the user has the project permission in the project.  *  for an issue, where a project permission is determined using issue data, if the user has the permission in the issue. Otherwise, if the user has the project permission in the project containing the issue.  *  for a comment, where the user has both the permission to browse the comment and the project permission for the comment&#39;s parent issue. Only the BROWSE\\_PROJECTS permission is supported. If a &#x60;commentId&#x60; is provided whose &#x60;permissions&#x60; does not equal BROWSE\\_PROJECTS, a 400 error will be returned.  This means that users may be shown as having an issue permission (such as EDIT\\_ISSUES) in the global context or a project context but may not have the permission for any or all issues. For example, if Reporters have the EDIT\\_ISSUES permission a user would be shown as having this permission in the global context or the context of a project, because any user can be a reporter. However, if they are not the user who reported the issue queried they would not have EDIT\\_ISSUES permission for that issue.  For [Jira Service Management project permissions](https://support.atlassian.com/jira-cloud-administration/docs/customize-jira-service-management-permissions/), this will be evaluated similarly to a user in the customer portal. For example, if the BROWSE\\_PROJECTS permission is granted to Service Project Customer - Portal Access, any users with access to the customer portal will have the BROWSE\\_PROJECTS permission.  Global permissions are unaffected by context.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectKey** | **String**| The key of project. Ignored if &#x60;projectId&#x60; is provided. | [optional] [default to null] |
| **projectId** | **String**| The ID of project. | [optional] [default to null] |
| **issueKey** | **String**| The key of the issue. Ignored if &#x60;issueId&#x60; is provided. | [optional] [default to null] |
| **issueId** | **String**| The ID of the issue. | [optional] [default to null] |
| **permissions** | **String**| A list of permission keys. (Required) This parameter accepts a comma-separated list. To get the list of available permissions, use [Get all permissions](#api-rest-api-2-permissions-get). | [optional] [default to null] |
| **projectUuid** | **String**|  | [optional] [default to null] |
| **projectConfigurationUuid** | **String**|  | [optional] [default to null] |
| **commentId** | **String**| The ID of the comment. | [optional] [default to null] |

### Return type

[**Permissions**](../Models/Permissions.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPermittedProjects"></a>
# **getPermittedProjects**
> PermittedProjects getPermittedProjects(PermissionsKeysBean)

Get permitted projects

    Returns all the projects where the user is granted a list of project permissions.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **PermissionsKeysBean** | [**PermissionsKeysBean**](../Models/PermissionsKeysBean.md)|  | |

### Return type

[**PermittedProjects**](../Models/PermittedProjects.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

