# ApplicationRolesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAllApplicationRoles**](ApplicationRolesApi.md#getAllApplicationRoles) | **GET** /rest/api/2/applicationrole | Get all application roles |
| [**getApplicationRole**](ApplicationRolesApi.md#getApplicationRole) | **GET** /rest/api/2/applicationrole/{key} | Get application role |


<a name="getAllApplicationRoles"></a>
# **getAllApplicationRoles**
> List getAllApplicationRoles()

Get all application roles

    Returns all application roles. In Jira, application roles are managed using the [Application access configuration](https://confluence.atlassian.com/x/3YxjL) page.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/ApplicationRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getApplicationRole"></a>
# **getApplicationRole**
> ApplicationRole getApplicationRole(key)

Get application role

    Returns an application role.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **key** | **String**| The key of the application role. Use the [Get all application roles](#api-rest-api-2-applicationrole-get) operation to get the key for each application role. | [default to null] |

### Return type

[**ApplicationRole**](../Models/ApplicationRole.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

