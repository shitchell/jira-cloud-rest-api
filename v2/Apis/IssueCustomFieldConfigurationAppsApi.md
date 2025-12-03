# IssueCustomFieldConfigurationAppsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getCustomFieldConfiguration**](IssueCustomFieldConfigurationAppsApi.md#getCustomFieldConfiguration) | **GET** /rest/api/2/app/field/{fieldIdOrKey}/context/configuration | Get custom field configurations |
| [**getCustomFieldsConfigurations**](IssueCustomFieldConfigurationAppsApi.md#getCustomFieldsConfigurations) | **POST** /rest/api/2/app/field/context/configuration/list | Bulk get custom field configurations |
| [**updateCustomFieldConfiguration**](IssueCustomFieldConfigurationAppsApi.md#updateCustomFieldConfiguration) | **PUT** /rest/api/2/app/field/{fieldIdOrKey}/context/configuration | Update custom field configurations |


<a name="getCustomFieldConfiguration"></a>
# **getCustomFieldConfiguration**
> PageBeanContextualConfiguration getCustomFieldConfiguration(fieldIdOrKey, id, fieldContextId, issueId, projectKeyOrId, issueTypeId, startAt, maxResults)

Get custom field configurations

    Returns a [paginated](#pagination) list of configurations for a custom field of a [type](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field-type/) created by a [Forge app](https://developer.atlassian.com/platform/forge/).  The result can be filtered by one of these criteria:   *  &#x60;id&#x60;.  *  &#x60;fieldContextId&#x60;.  *  &#x60;issueId&#x60;.  *  &#x60;projectKeyOrId&#x60; and &#x60;issueTypeId&#x60;.  Otherwise, all configurations are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the Forge app that provided the custom field type.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldIdOrKey** | **String**| The ID or key of the custom field, for example &#x60;customfield_10000&#x60;. | [default to null] |
| **id** | [**Set**](../Models/Long.md)| The list of configuration IDs. To include multiple configurations, separate IDs with an ampersand: &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. Can&#39;t be provided with &#x60;fieldContextId&#x60;, &#x60;issueId&#x60;, &#x60;projectKeyOrId&#x60;, or &#x60;issueTypeId&#x60;. | [optional] [default to null] |
| **fieldContextId** | [**Set**](../Models/Long.md)| The list of field context IDs. To include multiple field contexts, separate IDs with an ampersand: &#x60;fieldContextId&#x3D;10000&amp;fieldContextId&#x3D;10001&#x60;. Can&#39;t be provided with &#x60;id&#x60;, &#x60;issueId&#x60;, &#x60;projectKeyOrId&#x60;, or &#x60;issueTypeId&#x60;. | [optional] [default to null] |
| **issueId** | **Long**| The ID of the issue to filter results by. If the issue doesn&#39;t exist, an empty list is returned. Can&#39;t be provided with &#x60;projectKeyOrId&#x60;, or &#x60;issueTypeId&#x60;. | [optional] [default to null] |
| **projectKeyOrId** | **String**| The ID or key of the project to filter results by. Must be provided with &#x60;issueTypeId&#x60;. Can&#39;t be provided with &#x60;issueId&#x60;. | [optional] [default to null] |
| **issueTypeId** | **String**| The ID of the issue type to filter results by. Must be provided with &#x60;projectKeyOrId&#x60;. Can&#39;t be provided with &#x60;issueId&#x60;. | [optional] [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |

### Return type

[**PageBeanContextualConfiguration**](../Models/PageBeanContextualConfiguration.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getCustomFieldsConfigurations"></a>
# **getCustomFieldsConfigurations**
> PageBeanBulkContextualConfiguration getCustomFieldsConfigurations(ConfigurationsListParameters, id, fieldContextId, issueId, projectKeyOrId, issueTypeId, startAt, maxResults)

Bulk get custom field configurations

    Returns a [paginated](#pagination) list of configurations for list of custom fields of a [type](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field-type/) created by a [Forge app](https://developer.atlassian.com/platform/forge/).  The result can be filtered by one of these criteria:   *  &#x60;id&#x60;.  *  &#x60;fieldContextId&#x60;.  *  &#x60;issueId&#x60;.  *  &#x60;projectKeyOrId&#x60; and &#x60;issueTypeId&#x60;.  Otherwise, all configurations for the provided list of custom fields are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the Forge app that provided the custom field type.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ConfigurationsListParameters** | [**ConfigurationsListParameters**](../Models/ConfigurationsListParameters.md)|  | |
| **id** | [**Set**](../Models/Long.md)| The list of configuration IDs. To include multiple configurations, separate IDs with an ampersand: &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. Can&#39;t be provided with &#x60;fieldContextId&#x60;, &#x60;issueId&#x60;, &#x60;projectKeyOrId&#x60;, or &#x60;issueTypeId&#x60;. | [optional] [default to null] |
| **fieldContextId** | [**Set**](../Models/Long.md)| The list of field context IDs. To include multiple field contexts, separate IDs with an ampersand: &#x60;fieldContextId&#x3D;10000&amp;fieldContextId&#x3D;10001&#x60;. Can&#39;t be provided with &#x60;id&#x60;, &#x60;issueId&#x60;, &#x60;projectKeyOrId&#x60;, or &#x60;issueTypeId&#x60;. | [optional] [default to null] |
| **issueId** | **Long**| The ID of the issue to filter results by. If the issue doesn&#39;t exist, an empty list is returned. Can&#39;t be provided with &#x60;projectKeyOrId&#x60;, or &#x60;issueTypeId&#x60;. | [optional] [default to null] |
| **projectKeyOrId** | **String**| The ID or key of the project to filter results by. Must be provided with &#x60;issueTypeId&#x60;. Can&#39;t be provided with &#x60;issueId&#x60;. | [optional] [default to null] |
| **issueTypeId** | **String**| The ID of the issue type to filter results by. Must be provided with &#x60;projectKeyOrId&#x60;. Can&#39;t be provided with &#x60;issueId&#x60;. | [optional] [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |

### Return type

[**PageBeanBulkContextualConfiguration**](../Models/PageBeanBulkContextualConfiguration.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateCustomFieldConfiguration"></a>
# **updateCustomFieldConfiguration**
> oas_any_type_not_mapped updateCustomFieldConfiguration(fieldIdOrKey, CustomFieldConfigurations)

Update custom field configurations

    Update the configuration for contexts of a custom field of a [type](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field-type/) created by a [Forge app](https://developer.atlassian.com/platform/forge/).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). Jira permissions are not required for the Forge app that created the custom field type.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldIdOrKey** | **String**| The ID or key of the custom field, for example &#x60;customfield_10000&#x60;. | [default to null] |
| **CustomFieldConfigurations** | [**CustomFieldConfigurations**](../Models/CustomFieldConfigurations.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

