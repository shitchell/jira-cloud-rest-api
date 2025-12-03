# IssueWorklogPropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteWorklogProperty**](IssueWorklogPropertiesApi.md#deleteWorklogProperty) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/worklog/{worklogId}/properties/{propertyKey} | Delete worklog property |
| [**getWorklogProperty**](IssueWorklogPropertiesApi.md#getWorklogProperty) | **GET** /rest/api/2/issue/{issueIdOrKey}/worklog/{worklogId}/properties/{propertyKey} | Get worklog property |
| [**getWorklogPropertyKeys**](IssueWorklogPropertiesApi.md#getWorklogPropertyKeys) | **GET** /rest/api/2/issue/{issueIdOrKey}/worklog/{worklogId}/properties | Get worklog property keys |
| [**setWorklogProperty**](IssueWorklogPropertiesApi.md#setWorklogProperty) | **PUT** /rest/api/2/issue/{issueIdOrKey}/worklog/{worklogId}/properties/{propertyKey} | Set worklog property |


<a name="deleteWorklogProperty"></a>
# **deleteWorklogProperty**
> deleteWorklogProperty(issueIdOrKey, worklogId, propertyKey)

Delete worklog property

    Deletes a worklog property.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the worklog has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **worklogId** | **String**| The ID of the worklog. | [default to null] |
| **propertyKey** | **String**| The key of the property. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getWorklogProperty"></a>
# **getWorklogProperty**
> EntityProperty getWorklogProperty(issueIdOrKey, worklogId, propertyKey)

Get worklog property

    Returns the value of a worklog property.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the worklog has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **worklogId** | **String**| The ID of the worklog. | [default to null] |
| **propertyKey** | **String**| The key of the property. | [default to null] |

### Return type

[**EntityProperty**](../Models/EntityProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getWorklogPropertyKeys"></a>
# **getWorklogPropertyKeys**
> PropertyKeys getWorklogPropertyKeys(issueIdOrKey, worklogId)

Get worklog property keys

    Returns the keys of all properties for a worklog.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the worklog has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **worklogId** | **String**| The ID of the worklog. | [default to null] |

### Return type

[**PropertyKeys**](../Models/PropertyKeys.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setWorklogProperty"></a>
# **setWorklogProperty**
> oas_any_type_not_mapped setWorklogProperty(issueIdOrKey, worklogId, propertyKey, body)

Set worklog property

    Sets the value of a worklog property. Use this operation to store custom data against the worklog.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  *Edit all worklogs*[ project permission](https://confluence.atlassian.com/x/yodKLg) to update any worklog or *Edit own worklogs* to update worklogs created by the user.  *  If the worklog has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **worklogId** | **String**| The ID of the worklog. | [default to null] |
| **propertyKey** | **String**| The key of the issue property. The maximum length is 255 characters. | [default to null] |
| **body** | **oas_any_type_not_mapped**| The value of the property. The value has to be a valid, non-empty [JSON](https://tools.ietf.org/html/rfc4627) value. The maximum length of the property value is 32768 bytes. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

