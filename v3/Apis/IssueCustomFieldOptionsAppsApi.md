# IssueCustomFieldOptionsAppsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIssueFieldOption**](IssueCustomFieldOptionsAppsApi.md#createIssueFieldOption) | **POST** /rest/api/3/field/{fieldKey}/option | Create issue field option |
| [**deleteIssueFieldOption**](IssueCustomFieldOptionsAppsApi.md#deleteIssueFieldOption) | **DELETE** /rest/api/3/field/{fieldKey}/option/{optionId} | Delete issue field option |
| [**getAllIssueFieldOptions**](IssueCustomFieldOptionsAppsApi.md#getAllIssueFieldOptions) | **GET** /rest/api/3/field/{fieldKey}/option | Get all issue field options |
| [**getIssueFieldOption**](IssueCustomFieldOptionsAppsApi.md#getIssueFieldOption) | **GET** /rest/api/3/field/{fieldKey}/option/{optionId} | Get issue field option |
| [**getSelectableIssueFieldOptions**](IssueCustomFieldOptionsAppsApi.md#getSelectableIssueFieldOptions) | **GET** /rest/api/3/field/{fieldKey}/option/suggestions/edit | Get selectable issue field options |
| [**getVisibleIssueFieldOptions**](IssueCustomFieldOptionsAppsApi.md#getVisibleIssueFieldOptions) | **GET** /rest/api/3/field/{fieldKey}/option/suggestions/search | Get visible issue field options |
| [**replaceIssueFieldOption**](IssueCustomFieldOptionsAppsApi.md#replaceIssueFieldOption) | **DELETE** /rest/api/3/field/{fieldKey}/option/{optionId}/issue | Replace issue field option |
| [**updateIssueFieldOption**](IssueCustomFieldOptionsAppsApi.md#updateIssueFieldOption) | **PUT** /rest/api/3/field/{fieldKey}/option/{optionId} | Update issue field option |


<a name="createIssueFieldOption"></a>
# **createIssueFieldOption**
> IssueFieldOption createIssueFieldOption(fieldKey, IssueFieldOptionCreateBean)

Create issue field option

    Creates an option for a select list issue field.  Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.  Each field can have a maximum of 10000 options, and each option can have a maximum of 10000 scopes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the app providing the field.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldKey** | **String**| The field key is specified in the following format: **$(app-key)\\_\\_$(field-key)**. For example, *example-add-on\\_\\_example-issue-field*. To determine the &#x60;fieldKey&#x60; value, do one of the following:   *  open the app&#39;s plugin descriptor, then **app-key** is the key at the top and **field-key** is the key in the &#x60;jiraIssueFields&#x60; module. **app-key** can also be found in the app listing in the Atlassian Universal Plugin Manager.  *  run [Get fields](#api-rest-api-3-field-get) and in the field details the value is returned in &#x60;key&#x60;. For example, &#x60;\&quot;key\&quot;: \&quot;teams-add-on__team-issue-field\&quot;&#x60; | [default to null] |
| **IssueFieldOptionCreateBean** | [**IssueFieldOptionCreateBean**](../Models/IssueFieldOptionCreateBean.md)|  | |

### Return type

[**IssueFieldOption**](../Models/IssueFieldOption.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteIssueFieldOption"></a>
# **deleteIssueFieldOption**
> oas_any_type_not_mapped deleteIssueFieldOption(fieldKey, optionId)

Delete issue field option

    Deletes an option from a select list issue field.  Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the app providing the field.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldKey** | **String**| The field key is specified in the following format: **$(app-key)\\_\\_$(field-key)**. For example, *example-add-on\\_\\_example-issue-field*. To determine the &#x60;fieldKey&#x60; value, do one of the following:   *  open the app&#39;s plugin descriptor, then **app-key** is the key at the top and **field-key** is the key in the &#x60;jiraIssueFields&#x60; module. **app-key** can also be found in the app listing in the Atlassian Universal Plugin Manager.  *  run [Get fields](#api-rest-api-3-field-get) and in the field details the value is returned in &#x60;key&#x60;. For example, &#x60;\&quot;key\&quot;: \&quot;teams-add-on__team-issue-field\&quot;&#x60; | [default to null] |
| **optionId** | **Long**| The ID of the option to be deleted. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAllIssueFieldOptions"></a>
# **getAllIssueFieldOptions**
> PageBeanIssueFieldOption getAllIssueFieldOptions(fieldKey, startAt, maxResults)

Get all issue field options

    Returns a [paginated](#pagination) list of all the options of a select list issue field. A select list issue field is a type of [issue field](https://developer.atlassian.com/cloud/jira/platform/modules/issue-field/) that enables a user to select a value from a list of options.  Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the app providing the field.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldKey** | **String**| The field key is specified in the following format: **$(app-key)\\_\\_$(field-key)**. For example, *example-add-on\\_\\_example-issue-field*. To determine the &#x60;fieldKey&#x60; value, do one of the following:   *  open the app&#39;s plugin descriptor, then **app-key** is the key at the top and **field-key** is the key in the &#x60;jiraIssueFields&#x60; module. **app-key** can also be found in the app listing in the Atlassian Universal Plugin Manager.  *  run [Get fields](#api-rest-api-3-field-get) and in the field details the value is returned in &#x60;key&#x60;. For example, &#x60;\&quot;key\&quot;: \&quot;teams-add-on__team-issue-field\&quot;&#x60; | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |

### Return type

[**PageBeanIssueFieldOption**](../Models/PageBeanIssueFieldOption.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueFieldOption"></a>
# **getIssueFieldOption**
> IssueFieldOption getIssueFieldOption(fieldKey, optionId)

Get issue field option

    Returns an option from a select list issue field.  Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the app providing the field.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldKey** | **String**| The field key is specified in the following format: **$(app-key)\\_\\_$(field-key)**. For example, *example-add-on\\_\\_example-issue-field*. To determine the &#x60;fieldKey&#x60; value, do one of the following:   *  open the app&#39;s plugin descriptor, then **app-key** is the key at the top and **field-key** is the key in the &#x60;jiraIssueFields&#x60; module. **app-key** can also be found in the app listing in the Atlassian Universal Plugin Manager.  *  run [Get fields](#api-rest-api-3-field-get) and in the field details the value is returned in &#x60;key&#x60;. For example, &#x60;\&quot;key\&quot;: \&quot;teams-add-on__team-issue-field\&quot;&#x60; | [default to null] |
| **optionId** | **Long**| The ID of the option to be returned. | [default to null] |

### Return type

[**IssueFieldOption**](../Models/IssueFieldOption.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSelectableIssueFieldOptions"></a>
# **getSelectableIssueFieldOptions**
> PageBeanIssueFieldOption getSelectableIssueFieldOptions(fieldKey, startAt, maxResults, projectId)

Get selectable issue field options

    Returns a [paginated](#pagination) list of options for a select list issue field that can be viewed and selected by the user.  Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldKey** | **String**| The field key is specified in the following format: **$(app-key)\\_\\_$(field-key)**. For example, *example-add-on\\_\\_example-issue-field*. To determine the &#x60;fieldKey&#x60; value, do one of the following:   *  open the app&#39;s plugin descriptor, then **app-key** is the key at the top and **field-key** is the key in the &#x60;jiraIssueFields&#x60; module. **app-key** can also be found in the app listing in the Atlassian Universal Plugin Manager.  *  run [Get fields](#api-rest-api-3-field-get) and in the field details the value is returned in &#x60;key&#x60;. For example, &#x60;\&quot;key\&quot;: \&quot;teams-add-on__team-issue-field\&quot;&#x60; | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **projectId** | **Long**| Filters the results to options that are only available in the specified project. | [optional] [default to null] |

### Return type

[**PageBeanIssueFieldOption**](../Models/PageBeanIssueFieldOption.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getVisibleIssueFieldOptions"></a>
# **getVisibleIssueFieldOptions**
> PageBeanIssueFieldOption getVisibleIssueFieldOptions(fieldKey, startAt, maxResults, projectId)

Get visible issue field options

    Returns a [paginated](#pagination) list of options for a select list issue field that can be viewed by the user.  Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldKey** | **String**| The field key is specified in the following format: **$(app-key)\\_\\_$(field-key)**. For example, *example-add-on\\_\\_example-issue-field*. To determine the &#x60;fieldKey&#x60; value, do one of the following:   *  open the app&#39;s plugin descriptor, then **app-key** is the key at the top and **field-key** is the key in the &#x60;jiraIssueFields&#x60; module. **app-key** can also be found in the app listing in the Atlassian Universal Plugin Manager.  *  run [Get fields](#api-rest-api-3-field-get) and in the field details the value is returned in &#x60;key&#x60;. For example, &#x60;\&quot;key\&quot;: \&quot;teams-add-on__team-issue-field\&quot;&#x60; | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **projectId** | **Long**| Filters the results to options that are only available in the specified project. | [optional] [default to null] |

### Return type

[**PageBeanIssueFieldOption**](../Models/PageBeanIssueFieldOption.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="replaceIssueFieldOption"></a>
# **replaceIssueFieldOption**
> replaceIssueFieldOption(fieldKey, optionId, replaceWith, jql, overrideScreenSecurity, overrideEditableFlag)

Replace issue field option

    Deselects an issue-field select-list option from all issues where it is selected. A different option can be selected to replace the deselected option. The update can also be limited to a smaller set of issues by using a JQL query.  Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) can override the screen security configuration using &#x60;overrideScreenSecurity&#x60; and &#x60;overrideEditableFlag&#x60;.  This is an [asynchronous operation](#async). The response object contains a link to the long-running task.  Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the app providing the field.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldKey** | **String**| The field key is specified in the following format: **$(app-key)\\_\\_$(field-key)**. For example, *example-add-on\\_\\_example-issue-field*. To determine the &#x60;fieldKey&#x60; value, do one of the following:   *  open the app&#39;s plugin descriptor, then **app-key** is the key at the top and **field-key** is the key in the &#x60;jiraIssueFields&#x60; module. **app-key** can also be found in the app listing in the Atlassian Universal Plugin Manager.  *  run [Get fields](#api-rest-api-3-field-get) and in the field details the value is returned in &#x60;key&#x60;. For example, &#x60;\&quot;key\&quot;: \&quot;teams-add-on__team-issue-field\&quot;&#x60; | [default to null] |
| **optionId** | **Long**| The ID of the option to be deselected. | [default to null] |
| **replaceWith** | **Long**| The ID of the option that will replace the currently selected option. | [optional] [default to null] |
| **jql** | **String**| A JQL query that specifies the issues to be updated. For example, *project&#x3D;10000*. | [optional] [default to null] |
| **overrideScreenSecurity** | **Boolean**| Whether screen security is overridden to enable hidden fields to be edited. Available to Connect and Forge app users with admin permission. | [optional] [default to false] |
| **overrideEditableFlag** | **Boolean**| Whether screen security is overridden to enable uneditable fields to be edited. Available to Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to false] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateIssueFieldOption"></a>
# **updateIssueFieldOption**
> IssueFieldOption updateIssueFieldOption(fieldKey, optionId, IssueFieldOption)

Update issue field option

    Updates or creates an option for a select list issue field. This operation requires that the option ID is provided when creating an option, therefore, the option ID needs to be specified as a path and body parameter. The option ID provided in the path and body must be identical.  Note that this operation **only works for issue field select list options added by Connect apps**, it cannot be used with issue field select list options created in Jira or using operations from the [Issue custom field options](#api-group-Issue-custom-field-options) resource.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the app providing the field.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldKey** | **String**| The field key is specified in the following format: **$(app-key)\\_\\_$(field-key)**. For example, *example-add-on\\_\\_example-issue-field*. To determine the &#x60;fieldKey&#x60; value, do one of the following:   *  open the app&#39;s plugin descriptor, then **app-key** is the key at the top and **field-key** is the key in the &#x60;jiraIssueFields&#x60; module. **app-key** can also be found in the app listing in the Atlassian Universal Plugin Manager.  *  run [Get fields](#api-rest-api-3-field-get) and in the field details the value is returned in &#x60;key&#x60;. For example, &#x60;\&quot;key\&quot;: \&quot;teams-add-on__team-issue-field\&quot;&#x60; | [default to null] |
| **optionId** | **Long**| The ID of the option to be updated. | [default to null] |
| **IssueFieldOption** | [**IssueFieldOption**](../Models/IssueFieldOption.md)|  | |

### Return type

[**IssueFieldOption**](../Models/IssueFieldOption.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

