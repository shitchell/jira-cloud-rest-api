# CustomUserRolesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**assignCustomRole**](CustomUserRolesApi.md#assignCustomRole) | **POST** /v1/roles/assign | Assign custom user role |
| [**createCustomRole**](CustomUserRolesApi.md#createCustomRole) | **POST** /v1/roles | Create custom user role |
| [**delete**](CustomUserRolesApi.md#delete) | **DELETE** /v1/roles/{identifier} | Delete custom user role. |
| [**getRole**](CustomUserRolesApi.md#getRole) | **GET** /v1/roles/{identifier} | Get custom user role |
| [**getRoles**](CustomUserRolesApi.md#getRoles) | **GET** /v1/roles | List custom user roles |
| [**update**](CustomUserRolesApi.md#update) | **PUT** /v1/roles/{identifier} | Update custom user role |


<a name="assignCustomRole"></a>
# **assignCustomRole**
> CustomRolesPaginatedResponse assignCustomRole(AssignRoleRequest)

Assign custom user role

    Assignes a custom user role to a user.   - The user should have admin role and custom user role right.   - Assignment on the admin roles can be done through Atlassian Administration.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **AssignRoleRequest** | [**AssignRoleRequest**](../Models/AssignRoleRequest.md)|  | |

### Return type

[**CustomRolesPaginatedResponse**](../Models/CustomRolesPaginatedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createCustomRole"></a>
# **createCustomRole**
> CustomUserRoleSuccessResponse createCustomRole(CustomUserRoleCreateRequest)

Create custom user role

    Creates a new custom user role.   - The user should have admin role and custom user role right.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CustomUserRoleCreateRequest** | [**CustomUserRoleCreateRequest**](../Models/CustomUserRoleCreateRequest.md)|  | |

### Return type

[**CustomUserRoleSuccessResponse**](../Models/CustomUserRoleSuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="delete"></a>
# **delete**
> delete(identifier, identifierType)

Delete custom user role.

    Deletes a custom user role.   - The user should have admin role and custom user role right.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **identifier** | **String**| Id of the custom user role. | [default to null] |
| **identifierType** | **String**| Type of the identifier. | [optional] [default to null] [enum: id, name] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRole"></a>
# **getRole**
> GetCustomUserRoleResponse getRole(identifier, identifierType)

Get custom user role

    Returns details of a custom user role.   - The user should have admin role and custom user role right.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **identifier** | **String**| Id of the custom user role. | [default to null] |
| **identifierType** | **String**| Type of the identifier. | [optional] [default to null] [enum: id, name] |

### Return type

[**GetCustomUserRoleResponse**](../Models/GetCustomUserRoleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRoles"></a>
# **getRoles**
> PaginatedResponseCustomUserRoleSummaryResponse getRoles(offset, size)

List custom user roles

    Returns the list of the custom user roles.    - The user should have admin role and custom user role right.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **offset** | **Integer**|  | [optional] [default to 0] |
| **size** | **Integer**|  | [optional] [default to 20] |

### Return type

[**PaginatedResponseCustomUserRoleSummaryResponse**](../Models/PaginatedResponseCustomUserRoleSummaryResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="update"></a>
# **update**
> CustomUserRoleSuccessResponse update(identifier, CustomUserRoleUpdateRequest, identifierType)

Update custom user role

    Updates the details of a custom user role.   - The user should have admin role and custom user role right.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **identifier** | **String**| Id of the custom user role. | [default to null] |
| **CustomUserRoleUpdateRequest** | [**CustomUserRoleUpdateRequest**](../Models/CustomUserRoleUpdateRequest.md)|  | |
| **identifierType** | **String**| Type of the identifier. | [optional] [default to null] [enum: id, name] |

### Return type

[**CustomUserRoleSuccessResponse**](../Models/CustomUserRoleSuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

