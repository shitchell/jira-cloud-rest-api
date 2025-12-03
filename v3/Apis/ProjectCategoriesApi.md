# ProjectCategoriesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createProjectCategory**](ProjectCategoriesApi.md#createProjectCategory) | **POST** /rest/api/3/projectCategory | Create project category |
| [**getAllProjectCategories**](ProjectCategoriesApi.md#getAllProjectCategories) | **GET** /rest/api/3/projectCategory | Get all project categories |
| [**getProjectCategoryById**](ProjectCategoriesApi.md#getProjectCategoryById) | **GET** /rest/api/3/projectCategory/{id} | Get project category by ID |
| [**removeProjectCategory**](ProjectCategoriesApi.md#removeProjectCategory) | **DELETE** /rest/api/3/projectCategory/{id} | Delete project category |
| [**updateProjectCategory**](ProjectCategoriesApi.md#updateProjectCategory) | **PUT** /rest/api/3/projectCategory/{id} | Update project category |


<a name="createProjectCategory"></a>
# **createProjectCategory**
> ProjectCategory createProjectCategory(ProjectCategory)

Create project category

    Creates a project category.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ProjectCategory** | [**ProjectCategory**](../Models/ProjectCategory.md)|  | |

### Return type

[**ProjectCategory**](../Models/ProjectCategory.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getAllProjectCategories"></a>
# **getAllProjectCategories**
> List getAllProjectCategories()

Get all project categories

    Returns all project categories.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/ProjectCategory.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectCategoryById"></a>
# **getProjectCategoryById**
> ProjectCategory getProjectCategoryById(id)

Get project category by ID

    Returns a project category.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the project category. | [default to null] |

### Return type

[**ProjectCategory**](../Models/ProjectCategory.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeProjectCategory"></a>
# **removeProjectCategory**
> removeProjectCategory(id)

Delete project category

    Deletes a project category.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| ID of the project category to delete. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="updateProjectCategory"></a>
# **updateProjectCategory**
> UpdatedProjectCategory updateProjectCategory(id, ProjectCategory)

Update project category

    Updates a project category.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**|  | [default to null] |
| **ProjectCategory** | [**ProjectCategory**](../Models/ProjectCategory.md)|  | |

### Return type

[**UpdatedProjectCategory**](../Models/UpdatedProjectCategory.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

