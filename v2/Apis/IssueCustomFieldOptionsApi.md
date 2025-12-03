# IssueCustomFieldOptionsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCustomFieldOption**](IssueCustomFieldOptionsApi.md#createCustomFieldOption) | **POST** /rest/api/2/field/{fieldId}/context/{contextId}/option | Create custom field options (context) |
| [**deleteCustomFieldOption**](IssueCustomFieldOptionsApi.md#deleteCustomFieldOption) | **DELETE** /rest/api/2/field/{fieldId}/context/{contextId}/option/{optionId} | Delete custom field options (context) |
| [**getCustomFieldOption**](IssueCustomFieldOptionsApi.md#getCustomFieldOption) | **GET** /rest/api/2/customFieldOption/{id} | Get custom field option |
| [**getOptionsForContext**](IssueCustomFieldOptionsApi.md#getOptionsForContext) | **GET** /rest/api/2/field/{fieldId}/context/{contextId}/option | Get custom field options (context) |
| [**reorderCustomFieldOptions**](IssueCustomFieldOptionsApi.md#reorderCustomFieldOptions) | **PUT** /rest/api/2/field/{fieldId}/context/{contextId}/option/move | Reorder custom field options (context) |
| [**replaceCustomFieldOption**](IssueCustomFieldOptionsApi.md#replaceCustomFieldOption) | **DELETE** /rest/api/2/field/{fieldId}/context/{contextId}/option/{optionId}/issue | Replace custom field options |
| [**updateCustomFieldOption**](IssueCustomFieldOptionsApi.md#updateCustomFieldOption) | **PUT** /rest/api/2/field/{fieldId}/context/{contextId}/option | Update custom field options (context) |


<a name="createCustomFieldOption"></a>
# **createCustomFieldOption**
> CustomFieldCreatedContextOptionsList createCustomFieldOption(fieldId, contextId, BulkCustomFieldOptionCreateRequest)

Create custom field options (context)

    Creates options and, where the custom select field is of the type Select List (cascading), cascading options for a custom select field. The options are added to a context of the field.  The maximum number of options that can be created per request is 1000 and each field can have a maximum of 10000 options.  This operation works for custom field options created in Jira or the operations from this resource. **To work with issue field select list options created for Connect apps use the [Issue custom field options (apps)](#api-group-issue-custom-field-options--apps-) operations.**  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the custom field. | [default to null] |
| **contextId** | **Long**| The ID of the context. | [default to null] |
| **BulkCustomFieldOptionCreateRequest** | [**BulkCustomFieldOptionCreateRequest**](../Models/BulkCustomFieldOptionCreateRequest.md)|  | |

### Return type

[**CustomFieldCreatedContextOptionsList**](../Models/CustomFieldCreatedContextOptionsList.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteCustomFieldOption"></a>
# **deleteCustomFieldOption**
> deleteCustomFieldOption(fieldId, contextId, optionId)

Delete custom field options (context)

    Deletes a custom field option.  Options with cascading options cannot be deleted without deleting the cascading options first.  This operation works for custom field options created in Jira or the operations from this resource. **To work with issue field select list options created for Connect apps use the [Issue custom field options (apps)](#api-group-issue-custom-field-options--apps-) operations.**  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the custom field. | [default to null] |
| **contextId** | **Long**| The ID of the context from which an option should be deleted. | [default to null] |
| **optionId** | **Long**| The ID of the option to delete. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getCustomFieldOption"></a>
# **getCustomFieldOption**
> CustomFieldOption getCustomFieldOption(id)

Get custom field option

    Returns a custom field option. For example, an option in a select list.  Note that this operation **only works for issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource**, it cannot be used with issue field select list options created by Connect apps.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The custom field option is returned as follows:   *  if the user has the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  if the user has the *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one project the custom field is used in, and the field is visible in at least one layout the user has permission to view.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the custom field option. | [default to null] |

### Return type

[**CustomFieldOption**](../Models/CustomFieldOption.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getOptionsForContext"></a>
# **getOptionsForContext**
> PageBeanCustomFieldContextOption getOptionsForContext(fieldId, contextId, optionId, onlyOptions, startAt, maxResults)

Get custom field options (context)

    Returns a [paginated](#pagination) list of all custom field option for a context. Options are returned first then cascading options, in the order they display in Jira.  This operation works for custom field options created in Jira or the operations from this resource. **To work with issue field select list options created for Connect apps use the [Issue custom field options (apps)](#api-group-issue-custom-field-options--apps-) operations.**  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). *Edit Workflow* [edit workflow permission](https://support.atlassian.com/jira-cloud-administration/docs/permissions-for-company-managed-projects/#Edit-Workflows)

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the custom field. | [default to null] |
| **contextId** | **Long**| The ID of the context. | [default to null] |
| **optionId** | **Long**| The ID of the option. | [optional] [default to null] |
| **onlyOptions** | **Boolean**| Whether only options are returned. | [optional] [default to false] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |

### Return type

[**PageBeanCustomFieldContextOption**](../Models/PageBeanCustomFieldContextOption.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="reorderCustomFieldOptions"></a>
# **reorderCustomFieldOptions**
> oas_any_type_not_mapped reorderCustomFieldOptions(fieldId, contextId, OrderOfCustomFieldOptions)

Reorder custom field options (context)

    Changes the order of custom field options or cascading options in a context.  This operation works for custom field options created in Jira or the operations from this resource. **To work with issue field select list options created for Connect apps use the [Issue custom field options (apps)](#api-group-issue-custom-field-options--apps-) operations.**  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the custom field. | [default to null] |
| **contextId** | **Long**| The ID of the context. | [default to null] |
| **OrderOfCustomFieldOptions** | [**OrderOfCustomFieldOptions**](../Models/OrderOfCustomFieldOptions.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="replaceCustomFieldOption"></a>
# **replaceCustomFieldOption**
> replaceCustomFieldOption(fieldId, optionId, contextId, replaceWith, jql)

Replace custom field options

    Replaces the options of a custom field.  Note that this operation **only works for issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource**, it cannot be used with issue field select list options created by Connect or Forge apps.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the custom field. | [default to null] |
| **optionId** | **Long**| The ID of the option to be deselected. | [default to null] |
| **contextId** | **Long**| The ID of the context. | [default to null] |
| **replaceWith** | **Long**| The ID of the option that will replace the currently selected option. | [optional] [default to null] |
| **jql** | **String**| A JQL query that specifies the issues to be updated. For example, *project&#x3D;10000*. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateCustomFieldOption"></a>
# **updateCustomFieldOption**
> CustomFieldUpdatedContextOptionsList updateCustomFieldOption(fieldId, contextId, BulkCustomFieldOptionUpdateRequest)

Update custom field options (context)

    Updates the options of a custom field.  If any of the options are not found, no options are updated. Options where the values in the request match the current values aren&#39;t updated and aren&#39;t reported in the response.  Note that this operation **only works for issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource**, it cannot be used with issue field select list options created by Connect apps.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the custom field. | [default to null] |
| **contextId** | **Long**| The ID of the context. | [default to null] |
| **BulkCustomFieldOptionUpdateRequest** | [**BulkCustomFieldOptionUpdateRequest**](../Models/BulkCustomFieldOptionUpdateRequest.md)|  | |

### Return type

[**CustomFieldUpdatedContextOptionsList**](../Models/CustomFieldUpdatedContextOptionsList.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

