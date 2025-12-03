# ProjectPermissionSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**assignPermissionScheme**](ProjectPermissionSchemesApi.md#assignPermissionScheme) | **PUT** /rest/api/2/project/{projectKeyOrId}/permissionscheme | Assign permission scheme |
| [**getAssignedPermissionScheme**](ProjectPermissionSchemesApi.md#getAssignedPermissionScheme) | **GET** /rest/api/2/project/{projectKeyOrId}/permissionscheme | Get assigned permission scheme |
| [**getProjectIssueSecurityScheme**](ProjectPermissionSchemesApi.md#getProjectIssueSecurityScheme) | **GET** /rest/api/2/project/{projectKeyOrId}/issuesecuritylevelscheme | Get project issue security scheme |
| [**getSecurityLevelsForProject**](ProjectPermissionSchemesApi.md#getSecurityLevelsForProject) | **GET** /rest/api/2/project/{projectKeyOrId}/securitylevel | Get project issue security levels |


<a name="assignPermissionScheme"></a>
# **assignPermissionScheme**
> PermissionScheme assignPermissionScheme(projectKeyOrId, IdBean, expand)

Assign permission scheme

    Assigns a permission scheme with a project. See [Managing project permissions](https://confluence.atlassian.com/x/yodKLg) for more information about permission schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg)

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectKeyOrId** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **IdBean** | [**IdBean**](../Models/IdBean.md)|  | |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Note that permissions are included when you specify any value. Expand options include:   *  &#x60;all&#x60; Returns all expandable information.  *  &#x60;field&#x60; Returns information about the custom field granted the permission.  *  &#x60;group&#x60; Returns information about the group that is granted the permission.  *  &#x60;permissions&#x60; Returns all permission grants for each permission scheme.  *  &#x60;projectRole&#x60; Returns information about the project role granted the permission.  *  &#x60;user&#x60; Returns information about the user who is granted the permission. | [optional] [default to null] |

### Return type

[**PermissionScheme**](../Models/PermissionScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getAssignedPermissionScheme"></a>
# **getAssignedPermissionScheme**
> PermissionScheme getAssignedPermissionScheme(projectKeyOrId, expand)

Get assigned permission scheme

    Gets the [permission scheme](https://confluence.atlassian.com/x/yodKLg) associated with the project.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectKeyOrId** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Note that permissions are included when you specify any value. Expand options include:   *  &#x60;all&#x60; Returns all expandable information.  *  &#x60;field&#x60; Returns information about the custom field granted the permission.  *  &#x60;group&#x60; Returns information about the group that is granted the permission.  *  &#x60;permissions&#x60; Returns all permission grants for each permission scheme.  *  &#x60;projectRole&#x60; Returns information about the project role granted the permission.  *  &#x60;user&#x60; Returns information about the user who is granted the permission. | [optional] [default to null] |

### Return type

[**PermissionScheme**](../Models/PermissionScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectIssueSecurityScheme"></a>
# **getProjectIssueSecurityScheme**
> SecurityScheme getProjectIssueSecurityScheme(projectKeyOrId)

Get project issue security scheme

    Returns the [issue security scheme](https://confluence.atlassian.com/x/J4lKLg) associated with the project.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or the *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectKeyOrId** | **String**| The project ID or project key (case sensitive). | [default to null] |

### Return type

[**SecurityScheme**](../Models/SecurityScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSecurityLevelsForProject"></a>
# **getSecurityLevelsForProject**
> ProjectIssueSecurityLevels getSecurityLevelsForProject(projectKeyOrId)

Get project issue security levels

    Returns all [issue security](https://confluence.atlassian.com/x/J4lKLg) levels for the project that the user has access to.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [global permission](https://confluence.atlassian.com/x/x4dKLg) for the project, however, issue security levels are only returned for authenticated user with *Set Issue Security* [global permission](https://confluence.atlassian.com/x/x4dKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectKeyOrId** | **String**| The project ID or project key (case sensitive). | [default to null] |

### Return type

[**ProjectIssueSecurityLevels**](../Models/ProjectIssueSecurityLevels.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

