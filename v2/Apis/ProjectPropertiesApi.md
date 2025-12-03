# ProjectPropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteProjectProperty**](ProjectPropertiesApi.md#deleteProjectProperty) | **DELETE** /rest/api/2/project/{projectIdOrKey}/properties/{propertyKey} | Delete project property |
| [**getProjectProperty**](ProjectPropertiesApi.md#getProjectProperty) | **GET** /rest/api/2/project/{projectIdOrKey}/properties/{propertyKey} | Get project property |
| [**getProjectPropertyKeys**](ProjectPropertiesApi.md#getProjectPropertyKeys) | **GET** /rest/api/2/project/{projectIdOrKey}/properties | Get project property keys |
| [**setProjectProperty**](ProjectPropertiesApi.md#setProjectProperty) | **PUT** /rest/api/2/project/{projectIdOrKey}/properties/{propertyKey} | Set project property |


<a name="deleteProjectProperty"></a>
# **deleteProjectProperty**
> deleteProjectProperty(projectIdOrKey, propertyKey)

Delete project property

    Deletes the [property](https://developer.atlassian.com/cloud/jira/platform/storing-data-without-a-database/#a-id-jira-entity-properties-a-jira-entity-properties) from a project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the property.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **propertyKey** | **String**| The project property key. Use [Get project property keys](#api-rest-api-2-project-projectIdOrKey-properties-get) to get a list of all project property keys. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getProjectProperty"></a>
# **getProjectProperty**
> EntityProperty getProjectProperty(projectIdOrKey, propertyKey)

Get project property

    Returns the value of a [project property](https://developer.atlassian.com/cloud/jira/platform/storing-data-without-a-database/#a-id-jira-entity-properties-a-jira-entity-properties).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the property.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **propertyKey** | **String**| The project property key. Use [Get project property keys](#api-rest-api-2-project-projectIdOrKey-properties-get) to get a list of all project property keys. | [default to null] |

### Return type

[**EntityProperty**](../Models/EntityProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectPropertyKeys"></a>
# **getProjectPropertyKeys**
> PropertyKeys getProjectPropertyKeys(projectIdOrKey)

Get project property keys

    Returns all [project property](https://developer.atlassian.com/cloud/jira/platform/storing-data-without-a-database/#a-id-jira-entity-properties-a-jira-entity-properties) keys for the project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |

### Return type

[**PropertyKeys**](../Models/PropertyKeys.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setProjectProperty"></a>
# **setProjectProperty**
> oas_any_type_not_mapped setProjectProperty(projectIdOrKey, propertyKey, body)

Set project property

    Sets the value of the [project property](https://developer.atlassian.com/cloud/jira/platform/storing-data-without-a-database/#a-id-jira-entity-properties-a-jira-entity-properties). You can use project properties to store custom data against the project.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project in which the property is created.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **propertyKey** | **String**| The key of the project property. The maximum length is 255 characters. | [default to null] |
| **body** | **oas_any_type_not_mapped**| The value of the property. The value has to be a valid, non-empty [JSON](https://tools.ietf.org/html/rfc4627) value. The maximum length of the property value is 32768 bytes. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

