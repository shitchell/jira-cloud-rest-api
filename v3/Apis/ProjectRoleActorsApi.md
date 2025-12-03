# ProjectRoleActorsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addActorUsers**](ProjectRoleActorsApi.md#addActorUsers) | **POST** /rest/api/3/project/{projectIdOrKey}/role/{id} | Add actors to project role |
| [**addProjectRoleActorsToRole**](ProjectRoleActorsApi.md#addProjectRoleActorsToRole) | **POST** /rest/api/3/role/{id}/actors | Add default actors to project role |
| [**deleteActor**](ProjectRoleActorsApi.md#deleteActor) | **DELETE** /rest/api/3/project/{projectIdOrKey}/role/{id} | Delete actors from project role |
| [**deleteProjectRoleActorsFromRole**](ProjectRoleActorsApi.md#deleteProjectRoleActorsFromRole) | **DELETE** /rest/api/3/role/{id}/actors | Delete default actors from project role |
| [**getProjectRoleActorsForRole**](ProjectRoleActorsApi.md#getProjectRoleActorsForRole) | **GET** /rest/api/3/role/{id}/actors | Get default actors for project role |
| [**setActors**](ProjectRoleActorsApi.md#setActors) | **PUT** /rest/api/3/project/{projectIdOrKey}/role/{id} | Set actors for project role |


<a name="addActorUsers"></a>
# **addActorUsers**
> ProjectRole addActorUsers(projectIdOrKey, id, ActorsMap)

Add actors to project role

    Adds actors to a project role for the project.  To replace all actors for the project, use [Set actors for project role](#api-rest-api-3-project-projectIdOrKey-role-id-put).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-3-role-get) to get a list of project role IDs. | [default to null] |
| **ActorsMap** | [**ActorsMap**](../Models/ActorsMap.md)| The groups or users to associate with the project role for this project. Provide the user account ID, group name, or group ID. As a group&#39;s name can change, use of group ID is recommended. | |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="addProjectRoleActorsToRole"></a>
# **addProjectRoleActorsToRole**
> ProjectRole addProjectRoleActorsToRole(id, ActorInputBean)

Add default actors to project role

    Adds [default actors](#api-rest-api-3-resolution-get) to a role. You may add groups or users, but you cannot add groups and users in the same request.  Changing a project role&#39;s default actors does not affect project role members for projects already created.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-3-role-get) to get a list of project role IDs. | [default to null] |
| **ActorInputBean** | [**ActorInputBean**](../Models/ActorInputBean.md)|  | |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteActor"></a>
# **deleteActor**
> deleteActor(projectIdOrKey, id, user, group, groupId)

Delete actors from project role

    Deletes actors from a project role for the project.  To remove default actors from the project role, use [Delete default actors from project role](#api-rest-api-3-role-id-actors-delete).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-3-role-get) to get a list of project role IDs. | [default to null] |
| **user** | **String**| The user account ID of the user to remove from the project role. | [optional] [default to null] |
| **group** | **String**| The name of the group to remove from the project role. This parameter cannot be used with the &#x60;groupId&#x60; parameter. As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended. | [optional] [default to null] |
| **groupId** | **String**| The ID of the group to remove from the project role. This parameter cannot be used with the &#x60;group&#x60; parameter. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="deleteProjectRoleActorsFromRole"></a>
# **deleteProjectRoleActorsFromRole**
> ProjectRole deleteProjectRoleActorsFromRole(id, user, groupId, group)

Delete default actors from project role

    Deletes the [default actors](#api-rest-api-3-resolution-get) from a project role. You may delete a group or user, but you cannot delete a group and a user in the same request.  Changing a project role&#39;s default actors does not affect project role members for projects already created.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-3-role-get) to get a list of project role IDs. | [default to null] |
| **user** | **String**| The user account ID of the user to remove as a default actor. | [optional] [default to null] |
| **groupId** | **String**| The group ID of the group to be removed as a default actor. This parameter cannot be used with the &#x60;group&#x60; parameter. | [optional] [default to null] |
| **group** | **String**| The group name of the group to be removed as a default actor.This parameter cannot be used with the &#x60;groupId&#x60; parameter. As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended. | [optional] [default to null] |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectRoleActorsForRole"></a>
# **getProjectRoleActorsForRole**
> ProjectRole getProjectRoleActorsForRole(id)

Get default actors for project role

    Returns the [default actors](#api-rest-api-3-resolution-get) for the project role.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-3-role-get) to get a list of project role IDs. | [default to null] |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setActors"></a>
# **setActors**
> ProjectRole setActors(projectIdOrKey, id, ProjectRoleActorsUpdateBean)

Set actors for project role

    Sets the actors for a project role for a project, replacing all existing actors.  To add actors to the project without overwriting the existing list, use [Add actors to project role](#api-rest-api-3-project-projectIdOrKey-role-id-post).  **[Permissions](#permissions) required:** *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **id** | **Long**| The ID of the project role. Use [Get all project roles](#api-rest-api-3-role-get) to get a list of project role IDs. | [default to null] |
| **ProjectRoleActorsUpdateBean** | [**ProjectRoleActorsUpdateBean**](../Models/ProjectRoleActorsUpdateBean.md)| The groups or users to associate with the project role for this project. Provide the user account ID, group name, or group ID. As a group&#39;s name can change, use of group ID is recommended. | |

### Return type

[**ProjectRole**](../Models/ProjectRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

