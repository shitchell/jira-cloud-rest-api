# ProjectTemplatesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createProjectWithCustomTemplate**](ProjectTemplatesApi.md#createProjectWithCustomTemplate) | **POST** /rest/api/2/project-template | Create custom project |
| [**editTemplate**](ProjectTemplatesApi.md#editTemplate) | **PUT** /rest/api/2/project-template/edit-template | Edit a custom project template |
| [**liveTemplate**](ProjectTemplatesApi.md#liveTemplate) | **GET** /rest/api/2/project-template/live-template | Gets a custom project template |
| [**removeTemplate**](ProjectTemplatesApi.md#removeTemplate) | **DELETE** /rest/api/2/project-template/remove-template | Deletes a custom project template |
| [**saveTemplate**](ProjectTemplatesApi.md#saveTemplate) | **POST** /rest/api/2/project-template/save-template | Save a custom project template |


<a name="createProjectWithCustomTemplate"></a>
# **createProjectWithCustomTemplate**
> createProjectWithCustomTemplate(ProjectCustomTemplateCreateRequestDTO)

Create custom project

    Creates a project based on a custom template provided in the request.  The request body should contain the project details and the capabilities that comprise the project:   *  &#x60;details&#x60; \\- represents the project details settings  *  &#x60;template&#x60; \\- represents a list of capabilities responsible for creating specific parts of a project  A capability is defined as a unit of configuration for the project you want to create.  This operation is:   *  [asynchronous](#async). Follow the &#x60;Location&#x60; link in the response header to determine the status of the task and use [Get task](#api-rest-api-2-task-taskId-get) to obtain subsequent updates.  ***Note: This API is only supported for Jira Enterprise edition.***

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ProjectCustomTemplateCreateRequestDTO** | [**ProjectCustomTemplateCreateRequestDTO**](../Models/ProjectCustomTemplateCreateRequestDTO.md)| The JSON payload containing the project details and capabilities | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="editTemplate"></a>
# **editTemplate**
> oas_any_type_not_mapped editTemplate(EditTemplateRequest)

Edit a custom project template

    Edit custom template  This API endpoint allows you to edit an existing customised template.  ***Note: Custom Templates are only supported for Jira Enterprise edition.***

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **EditTemplateRequest** | [**EditTemplateRequest**](../Models/EditTemplateRequest.md)| The object containing the updated template details: name, description | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="liveTemplate"></a>
# **liveTemplate**
> ProjectTemplateModel liveTemplate(projectId, templateKey)

Gets a custom project template

    Get custom template  This API endpoint allows you to get a live custom project template details by either templateKey or projectId  ***Note: Custom Templates are only supported for Jira Enterprise edition.***

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | **String**| optional - The \\{@link String\\} containing the project key linked to the custom template to retrieve | [optional] [default to null] |
| **templateKey** | **String**| optional - The \\{@link String\\} containing the key of the custom template to retrieve | [optional] [default to null] |

### Return type

[**ProjectTemplateModel**](../Models/ProjectTemplateModel.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeTemplate"></a>
# **removeTemplate**
> oas_any_type_not_mapped removeTemplate(templateKey)

Deletes a custom project template

    Remove custom template  This API endpoint allows you to remove a specified customised template  ***Note: Custom Templates are only supported for Jira Enterprise edition.***

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **templateKey** | **String**| The \\{@link String\\} containing the key of the custom template to remove | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="saveTemplate"></a>
# **saveTemplate**
> SaveTemplateResponse saveTemplate(SaveTemplateRequest)

Save a custom project template

    Save custom template  This API endpoint allows you to save a customised template  ***Note: Custom Templates are only supported for Jira Enterprise edition.***

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **SaveTemplateRequest** | [**SaveTemplateRequest**](../Models/SaveTemplateRequest.md)| The object containing the template basic details: name, description | |

### Return type

[**SaveTemplateResponse**](../Models/SaveTemplateResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

