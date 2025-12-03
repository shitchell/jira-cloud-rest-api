# IssuePropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**bulkDeleteIssueProperty**](IssuePropertiesApi.md#bulkDeleteIssueProperty) | **DELETE** /rest/api/2/issue/properties/{propertyKey} | Bulk delete issue property |
| [**bulkSetIssuePropertiesByIssue**](IssuePropertiesApi.md#bulkSetIssuePropertiesByIssue) | **POST** /rest/api/2/issue/properties/multi | Bulk set issue properties by issue |
| [**bulkSetIssueProperty**](IssuePropertiesApi.md#bulkSetIssueProperty) | **PUT** /rest/api/2/issue/properties/{propertyKey} | Bulk set issue property |
| [**bulkSetIssuesPropertiesList**](IssuePropertiesApi.md#bulkSetIssuesPropertiesList) | **POST** /rest/api/2/issue/properties | Bulk set issues properties by list |
| [**deleteIssueProperty**](IssuePropertiesApi.md#deleteIssueProperty) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/properties/{propertyKey} | Delete issue property |
| [**getIssueProperty**](IssuePropertiesApi.md#getIssueProperty) | **GET** /rest/api/2/issue/{issueIdOrKey}/properties/{propertyKey} | Get issue property |
| [**getIssuePropertyKeys**](IssuePropertiesApi.md#getIssuePropertyKeys) | **GET** /rest/api/2/issue/{issueIdOrKey}/properties | Get issue property keys |
| [**setIssueProperty**](IssuePropertiesApi.md#setIssueProperty) | **PUT** /rest/api/2/issue/{issueIdOrKey}/properties/{propertyKey} | Set issue property |


<a name="bulkDeleteIssueProperty"></a>
# **bulkDeleteIssueProperty**
> bulkDeleteIssueProperty(propertyKey, IssueFilterForBulkPropertyDelete)

Bulk delete issue property

    Deletes a property value from multiple issues. The issues to be updated can be specified by filter criteria.  The criteria the filter used to identify eligible issues are:   *  &#x60;entityIds&#x60; Only issues from this list are eligible.  *  &#x60;currentValue&#x60; Only issues with the property set to this value are eligible.  If both criteria is specified, they are joined with the logical *AND*: only issues that satisfy both criteria are considered eligible.  If no filter criteria are specified, all the issues visible to the user and where the user has the EDIT\\_ISSUES permission for the issue are considered eligible.  This operation is:   *  transactional, either the property is deleted from all eligible issues or, when errors occur, no properties are deleted.  *  [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-2-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:**   *  *Browse projects* [ project permission](https://confluence.atlassian.com/x/yodKLg) for each project containing issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  *Edit issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for each issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyKey** | **String**| The key of the property. | [default to null] |
| **IssueFilterForBulkPropertyDelete** | [**IssueFilterForBulkPropertyDelete**](../Models/IssueFilterForBulkPropertyDelete.md)|  | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="bulkSetIssuePropertiesByIssue"></a>
# **bulkSetIssuePropertiesByIssue**
> bulkSetIssuePropertiesByIssue(MultiIssueEntityProperties)

Bulk set issue properties by issue

    Sets or updates entity property values on issues. Up to 10 entity properties can be specified for each issue and up to 100 issues included in the request.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON.  This operation is:   *  [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-2-task-taskId-get) to obtain subsequent updates.  *  non-transactional. Updating some entities may fail. Such information will available in the task result.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Edit issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **MultiIssueEntityProperties** | [**MultiIssueEntityProperties**](../Models/MultiIssueEntityProperties.md)| Details of the issue properties to be set or updated. Note that if an issue is not found, it is ignored. | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="bulkSetIssueProperty"></a>
# **bulkSetIssueProperty**
> bulkSetIssueProperty(propertyKey, BulkIssuePropertyUpdateRequest)

Bulk set issue property

    Sets a property value on multiple issues.  The value set can be a constant or determined by a [Jira expression](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/). Expressions must be computable with constant complexity when applied to a set of issues. Expressions must also comply with the [restrictions](https://developer.atlassian.com/cloud/jira/platform/jira-expressions/#restrictions) that apply to all Jira expressions.  The issues to be updated can be specified by a filter.  The filter identifies issues eligible for update using these criteria:   *  &#x60;entityIds&#x60; Only issues from this list are eligible.  *  &#x60;currentValue&#x60; Only issues with the property set to this value are eligible.  *  &#x60;hasProperty&#x60;:           *  If *true*, only issues with the property are eligible.      *  If *false*, only issues without the property are eligible.  If more than one criteria is specified, they are joined with the logical *AND*: only issues that satisfy all criteria are eligible.  If an invalid combination of criteria is provided, an error is returned. For example, specifying a &#x60;currentValue&#x60; and &#x60;hasProperty&#x60; as *false* would not match any issues (because without the property the property cannot have a value).  The filter is optional. Without the filter all the issues visible to the user and where the user has the EDIT\\_ISSUES permission for the issue are considered eligible.  This operation is:   *  transactional, either all eligible issues are updated or, when errors occur, none are updated.  *  [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-2-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for each project containing issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  *Edit issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for each issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyKey** | **String**| The key of the property. The maximum length is 255 characters. | [default to null] |
| **BulkIssuePropertyUpdateRequest** | [**BulkIssuePropertyUpdateRequest**](../Models/BulkIssuePropertyUpdateRequest.md)|  | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="bulkSetIssuesPropertiesList"></a>
# **bulkSetIssuesPropertiesList**
> bulkSetIssuesPropertiesList(IssueEntityProperties)

Bulk set issues properties by list

    Sets or updates a list of entity property values on issues. A list of up to 10 entity properties can be specified along with up to 10,000 issues on which to set or update that list of entity properties.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON. The maximum length of single issue property value is 32768 characters. This operation can be accessed anonymously.  This operation is:   *  transactional, either all properties are updated in all eligible issues or, when errors occur, no properties are updated.  *  [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-2-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Edit issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueEntityProperties** | [**IssueEntityProperties**](../Models/IssueEntityProperties.md)| Issue properties to be set or updated with values. | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteIssueProperty"></a>
# **deleteIssueProperty**
> deleteIssueProperty(issueIdOrKey, propertyKey)

Delete issue property

    Deletes an issue&#39;s property.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Edit issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The key or ID of the issue. | [default to null] |
| **propertyKey** | **String**| The key of the property. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getIssueProperty"></a>
# **getIssueProperty**
> EntityProperty getIssueProperty(issueIdOrKey, propertyKey)

Get issue property

    Returns the key and value of an issue&#39;s property.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The key or ID of the issue. | [default to null] |
| **propertyKey** | **String**| The key of the property. | [default to null] |

### Return type

[**EntityProperty**](../Models/EntityProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssuePropertyKeys"></a>
# **getIssuePropertyKeys**
> PropertyKeys getIssuePropertyKeys(issueIdOrKey)

Get issue property keys

    Returns the URLs and keys of an issue&#39;s properties.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Property details are only returned where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The key or ID of the issue. | [default to null] |

### Return type

[**PropertyKeys**](../Models/PropertyKeys.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setIssueProperty"></a>
# **setIssueProperty**
> oas_any_type_not_mapped setIssueProperty(issueIdOrKey, propertyKey, body)

Set issue property

    Sets the value of an issue&#39;s property. Use this resource to store custom data against an issue.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Edit issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **propertyKey** | **String**| The key of the issue property. The maximum length is 255 characters. | [default to null] |
| **body** | **oas_any_type_not_mapped**| The value of the property. The value has to be a valid, non-empty [JSON](https://tools.ietf.org/html/rfc4627) value. The maximum length of the property value is 32768 bytes. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

