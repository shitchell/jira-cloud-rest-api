# ProjectRolesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createProjectRole**](ProjectRolesApi.md#createProjectRole) | **POST** /rest/api/2/role | Create project role |
| [**deleteProjectRole**](ProjectRolesApi.md#deleteProjectRole) | **DELETE** /rest/api/2/role/{id} | Delete project role |
| [**fullyUpdateProjectRole**](ProjectRolesApi.md#fullyUpdateProjectRole) | **PUT** /rest/api/2/role/{id} | Fully update project role |
| [**getAllProjectRoles**](ProjectRolesApi.md#getAllProjectRoles) | **GET** /rest/api/2/role | Get all project roles |
| [**getProjectRole**](ProjectRolesApi.md#getProjectRole) | **GET** /rest/api/2/project/{projectIdOrKey}/role/{id} | Get project role for project |
| [**getProjectRoleById**](ProjectRolesApi.md#getProjectRoleById) | **GET** /rest/api/2/role/{id} | Get project role by ID |
| [**getProjectRoleDetails**](ProjectRolesApi.md#getProjectRoleDetails) | **GET** /rest/api/2/project/{projectIdOrKey}/roledetails | Get project role details |
| [**getProjectRoles**](ProjectRolesApi.md#getProjectRoles) | **GET** /rest/api/2/project/{projectIdOrKey}/role | Get project roles for project |
| [**partialUpdateProjectRole**](ProjectRolesApi.md#partialUpdateProjectRole) | **POST** /rest/api/2/role/{id} | Partial update project role |


<a name="createProjectRole"></a>
# **createProjectRole**
> ProjectRole createProjectRole(CreateUpdateRoleRequestBean)

Create project role

    Creates a new project role with no [default actors](#api-rest-api-2-resolution-get). You can use the [Add default actors to project role](#api-rest-api-2-role-id-actors-post) operation to add default actors to the project role after creating it.  *Note that although a new project role is available to all projects upon creation, any default actors that are associated with the project role are not added to projects that existed prior to the role being created.*&lt;  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateUpdateRoleRequestBean** | [**CreateUpdateRoleRequestBean**](../Models/CreateUpdateRoleRequestBean.md)|  | |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteProjectRole"></a>
# **deleteProjectRole**
> deleteProjectRole(id, swap)

Delete project role

    Deletes a project role. You must specify a replacement project role if you wish to delete a project role that is in use.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the project role to delete. Use [Get all project roles](#api-rest-api-2-role-get) to get a list of project role IDs. | [default to null] |
| **swap** | **Long**| The ID of the project role that will replace the one being deleted. The swap will attempt to swap the role in schemes (notifications, permissions, issue security), workflows, worklogs and comments. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="fullyUpdateProjectRole"></a>
# **fullyUpdateProjectRole**
> ProjectRole fullyUpdateProjectRole(id, CreateUpdateRoleRequestBean)

Fully update project role

    Updates the project role&#39;s name and description. You must include both a name and a description in the request.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-2-role-get) to get a list of project role IDs. | [default to null] |
| **CreateUpdateRoleRequestBean** | [**CreateUpdateRoleRequestBean**](../Models/CreateUpdateRoleRequestBean.md)|  | |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getAllProjectRoles"></a>
# **getAllProjectRoles**
> List getAllProjectRoles()

Get all project roles

    Gets a list of all project roles, complete with project role details and default actors.  ### About project roles ###  [Project roles](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-roles/) are a flexible way to to associate users and groups with projects. In Jira Cloud, the list of project roles is shared globally with all projects, but each project can have a different set of actors associated with it (unlike groups, which have the same membership throughout all Jira applications).  Project roles are used in [permission schemes](#api-rest-api-2-permissionscheme-get), [email notification schemes](#api-rest-api-2-notificationscheme-get), [issue security levels](#api-rest-api-2-issuesecurityschemes-get), [comment visibility](#api-rest-api-2-comment-list-post), and workflow conditions.  #### Members and actors ####  In the Jira REST API, a member of a project role is called an *actor*. An *actor* is a group or user associated with a project role.  Actors may be set as [default members](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-roles/#Specifying-&#39;default-members&#39;-for-a-project-role) of the project role or set at the project level:   *  Default actors: Users and groups that are assigned to the project role for all newly created projects. The default actors can be removed at the project level later if desired.  *  Actors: Users and groups that are associated with a project role for a project, which may differ from the default actors. This enables you to assign a user to different roles in different projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectRole"></a>
# **getProjectRole**
> ProjectRole getProjectRole(projectIdOrKey, id, excludeInactiveUsers)

Get project role for project

    Returns a project role&#39;s details and actors associated with the project. The list of actors is sorted by display name.  To check whether a user belongs to a role based on their group memberships, use [Get user](#api-rest-api-2-user-get) with the &#x60;groups&#x60; expand parameter selected. Then check whether the user keys and groups match with the actors returned for the project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-2-role-get) to get a list of project role IDs. | [default to null] |
| **excludeInactiveUsers** | **Boolean**| Exclude inactive users. | [optional] [default to false] |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectRoleById"></a>
# **getProjectRoleById**
> ProjectRole getProjectRoleById(id)

Get project role by ID

    Gets the project role details and the default actors associated with the role. The list of default actors is sorted by display name.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-2-role-get) to get a list of project role IDs. | [default to null] |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectRoleDetails"></a>
# **getProjectRoleDetails**
> List getProjectRoleDetails(projectIdOrKey, currentMember, excludeConnectAddons, excludeOtherServiceRoles)

Get project role details

    Returns all [project roles](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-roles/) and the details for each role. Note that the list of project roles is common to all projects.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **currentMember** | **Boolean**| Whether the roles should be filtered to include only those the user is assigned to. | [optional] [default to false] |
| **excludeConnectAddons** | **Boolean**|  | [optional] [default to false] |
| **excludeOtherServiceRoles** | **Boolean**| Do not return the default JSM company-managed space from CSM spaces, or the default CSM roles from JSM spaces. | [optional] [default to false] |

### Return type

[**List**](../Models/ProjectRoleDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectRoles"></a>
# **getProjectRoles**
> Map getProjectRoles(projectIdOrKey)

Get project roles for project

    Returns a list of [project roles](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-roles/) for the project returning the name and self URL for each role.  Note that all project roles are shared with all projects in Jira Cloud. See [Get all project roles](#api-rest-api-2-role-get) for more information.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for any project on the site or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |

### Return type

**Map**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="partialUpdateProjectRole"></a>
# **partialUpdateProjectRole**
> ProjectRole partialUpdateProjectRole(id, CreateUpdateRoleRequestBean)

Partial update project role

    Updates either the project role&#39;s name or its description.  You cannot update both the name and description at the same time using this operation. If you send a request with a name and a description only the name is updated.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-2-role-get) to get a list of project role IDs. | [default to null] |
| **CreateUpdateRoleRequestBean** | [**CreateUpdateRoleRequestBean**](../Models/CreateUpdateRoleRequestBean.md)|  | |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

