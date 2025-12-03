# ProjectClassificationLevelsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getDefaultProjectClassification**](ProjectClassificationLevelsApi.md#getDefaultProjectClassification) | **GET** /rest/api/3/project/{projectIdOrKey}/classification-level/default | Get the default data classification level of a project |
| [**removeDefaultProjectClassification**](ProjectClassificationLevelsApi.md#removeDefaultProjectClassification) | **DELETE** /rest/api/3/project/{projectIdOrKey}/classification-level/default | Remove the default data classification level from a project |
| [**updateDefaultProjectClassification**](ProjectClassificationLevelsApi.md#updateDefaultProjectClassification) | **PUT** /rest/api/3/project/{projectIdOrKey}/classification-level/default | Update the default data classification level of a project |


<a name="getDefaultProjectClassification"></a>
# **getDefaultProjectClassification**
> oas_any_type_not_mapped getDefaultProjectClassification(projectIdOrKey)

Get the default data classification level of a project

    Returns the default data classification for a project.  **[Permissions](#permissions) required:**   *  *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.  *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.  *  *Administer jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case-sensitive). | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeDefaultProjectClassification"></a>
# **removeDefaultProjectClassification**
> oas_any_type_not_mapped removeDefaultProjectClassification(projectIdOrKey)

Remove the default data classification level from a project

    Remove the default data classification level for a project.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.  *  *Administer jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case-sensitive). | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateDefaultProjectClassification"></a>
# **updateDefaultProjectClassification**
> oas_any_type_not_mapped updateDefaultProjectClassification(projectIdOrKey, UpdateDefaultProjectClassificationBean)

Update the default data classification level of a project

    Updates the default data classification level for a project.  **[Permissions](#permissions) required:**   *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.  *  *Administer jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case-sensitive). | [default to null] |
| **UpdateDefaultProjectClassificationBean** | [**UpdateDefaultProjectClassificationBean**](../Models/UpdateDefaultProjectClassificationBean.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

