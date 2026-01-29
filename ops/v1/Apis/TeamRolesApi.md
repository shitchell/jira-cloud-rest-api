# TeamRolesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**create**](TeamRolesApi.md#create) | **POST** /v1/teams/{teamId}/roles | Create team role |
| [**delete**](TeamRolesApi.md#delete) | **DELETE** /v1/teams/{teamId}/roles/{identifier} | Delete a team role. |
| [**getRole**](TeamRolesApi.md#getRole) | **GET** /v1/teams/{teamId}/roles/{identifier} | Get Team role |
| [**getRole_0**](TeamRolesApi.md#getRole_0) | **GET** /v1/teams/{teamId}/roles | List Team roles |
| [**update**](TeamRolesApi.md#update) | **PATCH** /v1/teams/{teamId}/roles/{identifier} | Update team role |


<a name="create"></a>
# **create**
> TeamRoleResponse create(teamId, TeamRoleCreateRequest)

Create team role

    Creates a team role

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Id of the team. | [default to null] [enum: id, name] |
| **TeamRoleCreateRequest** | [**TeamRoleCreateRequest**](../Models/TeamRoleCreateRequest.md)|  | |

### Return type

[**TeamRoleResponse**](../Models/TeamRoleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="delete"></a>
# **delete**
> delete(identifier, teamId)

Delete a team role.

    Deletes a team role.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **identifier** | **String**| Id of the custom user role. | [default to null] |
| **teamId** | **String**| Id of the team. | [default to null] [enum: id, name] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRole"></a>
# **getRole**
> TeamRoleResponse getRole(teamId, identifier)

Get Team role

    Returns details of a team role.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the team. | [default to null] |
| **identifier** | **String**| Identifier of the team role. | [default to null] |

### Return type

[**TeamRoleResponse**](../Models/TeamRoleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRole_0"></a>
# **getRole_0**
> List getRole_0(teamId)

List Team roles

    Returns list of team roles.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the team. | [default to null] |

### Return type

[**List**](../Models/ListTeamRoleResponse_inner.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="update"></a>
# **update**
> TeamRoleResponse update(identifier, teamId, TeamRoleUpdateRequest)

Update team role

    Updates the details of a team role

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **identifier** | **String**| Id of the team role. | [default to null] |
| **teamId** | **String**| Id of the team. | [default to null] [enum: id, name] |
| **TeamRoleUpdateRequest** | [**TeamRoleUpdateRequest**](../Models/TeamRoleUpdateRequest.md)|  | |

### Return type

[**TeamRoleResponse**](../Models/TeamRoleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

