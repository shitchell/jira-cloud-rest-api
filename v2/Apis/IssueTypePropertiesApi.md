# IssueTypePropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteIssueTypeProperty**](IssueTypePropertiesApi.md#deleteIssueTypeProperty) | **DELETE** /rest/api/2/issuetype/{issueTypeId}/properties/{propertyKey} | Delete issue type property |
| [**getIssueTypeProperty**](IssueTypePropertiesApi.md#getIssueTypeProperty) | **GET** /rest/api/2/issuetype/{issueTypeId}/properties/{propertyKey} | Get issue type property |
| [**getIssueTypePropertyKeys**](IssueTypePropertiesApi.md#getIssueTypePropertyKeys) | **GET** /rest/api/2/issuetype/{issueTypeId}/properties | Get issue type property keys |
| [**setIssueTypeProperty**](IssueTypePropertiesApi.md#setIssueTypeProperty) | **PUT** /rest/api/2/issuetype/{issueTypeId}/properties/{propertyKey} | Set issue type property |


<a name="deleteIssueTypeProperty"></a>
# **deleteIssueTypeProperty**
> deleteIssueTypeProperty(issueTypeId, propertyKey)

Delete issue type property

    Deletes the [issue type property](https://developer.atlassian.com/cloud/jira/platform/storing-data-without-a-database/#a-id-jira-entity-properties-a-jira-entity-properties).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeId** | **String**| The ID of the issue type. | [default to null] |
| **propertyKey** | **String**| The key of the property. Use [Get issue type property keys](#api-rest-api-2-issuetype-issueTypeId-properties-get) to get a list of all issue type property keys. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getIssueTypeProperty"></a>
# **getIssueTypeProperty**
> EntityProperty getIssueTypeProperty(issueTypeId, propertyKey)

Get issue type property

    Returns the key and value of the [issue type property](https://developer.atlassian.com/cloud/jira/platform/storing-data-without-a-database/#a-id-jira-entity-properties-a-jira-entity-properties).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) to get the details of any issue type.  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) to get the details of any issue types associated with the projects the user has permission to browse.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeId** | **String**| The ID of the issue type. | [default to null] |
| **propertyKey** | **String**| The key of the property. Use [Get issue type property keys](#api-rest-api-2-issuetype-issueTypeId-properties-get) to get a list of all issue type property keys. | [default to null] |

### Return type

[**EntityProperty**](../Models/EntityProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueTypePropertyKeys"></a>
# **getIssueTypePropertyKeys**
> PropertyKeys getIssueTypePropertyKeys(issueTypeId)

Get issue type property keys

    Returns all the [issue type property](https://developer.atlassian.com/cloud/jira/platform/storing-data-without-a-database/#a-id-jira-entity-properties-a-jira-entity-properties) keys of the issue type.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) to get the property keys of any issue type.  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) to get the property keys of any issue types associated with the projects the user has permission to browse.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeId** | **String**| The ID of the issue type. | [default to null] |

### Return type

[**PropertyKeys**](../Models/PropertyKeys.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setIssueTypeProperty"></a>
# **setIssueTypeProperty**
> oas_any_type_not_mapped setIssueTypeProperty(issueTypeId, propertyKey, body)

Set issue type property

    Creates or updates the value of the [issue type property](https://developer.atlassian.com/cloud/jira/platform/storing-data-without-a-database/#a-id-jira-entity-properties-a-jira-entity-properties). Use this resource to store and update data against an issue type.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueTypeId** | **String**| The ID of the issue type. | [default to null] |
| **propertyKey** | **String**| The key of the issue type property. The maximum length is 255 characters. | [default to null] |
| **body** | **oas_any_type_not_mapped**| The value of the property. The value has to be a valid, non-empty [JSON](https://tools.ietf.org/html/rfc4627) value. The maximum length of the property value is 32768 bytes. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

