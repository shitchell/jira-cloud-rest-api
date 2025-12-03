# IssueCustomFieldValuesAppsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**updateCustomFieldValue**](IssueCustomFieldValuesAppsApi.md#updateCustomFieldValue) | **PUT** /rest/api/3/app/field/{fieldIdOrKey}/value | Update custom field value |
| [**updateMultipleCustomFieldValues**](IssueCustomFieldValuesAppsApi.md#updateMultipleCustomFieldValues) | **POST** /rest/api/3/app/field/value | Update custom fields |


<a name="updateCustomFieldValue"></a>
# **updateCustomFieldValue**
> oas_any_type_not_mapped updateCustomFieldValue(fieldIdOrKey, CustomFieldValueUpdateDetails, generateChangelog)

Update custom field value

    Updates the value of a custom field on one or more issues.  Apps can only perform this operation on [custom fields](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field/) and [custom field types](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field-type/) declared in their own manifests.  **[Permissions](#permissions) required:** Only the app that owns the custom field or custom field type can update its values with this operation.  The new &#x60;write:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldIdOrKey** | **String**| The ID or key of the custom field. For example, &#x60;customfield_10010&#x60;. | [default to null] |
| **CustomFieldValueUpdateDetails** | [**CustomFieldValueUpdateDetails**](../Models/CustomFieldValueUpdateDetails.md)|  | |
| **generateChangelog** | **Boolean**| Whether to generate a changelog for this update. | [optional] [default to true] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateMultipleCustomFieldValues"></a>
# **updateMultipleCustomFieldValues**
> oas_any_type_not_mapped updateMultipleCustomFieldValues(MultipleCustomFieldValuesUpdateDetails, generateChangelog)

Update custom fields

    Updates the value of one or more custom fields on one or more issues. Combinations of custom field and issue should be unique within the request.  Apps can only perform this operation on [custom fields](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field/) and [custom field types](https://developer.atlassian.com/platform/forge/manifest-reference/modules/jira-custom-field-type/) declared in their own manifests.  **[Permissions](#permissions) required:** Only the app that owns the custom field or custom field type can update its values with this operation.  The new &#x60;write:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **MultipleCustomFieldValuesUpdateDetails** | [**MultipleCustomFieldValuesUpdateDetails**](../Models/MultipleCustomFieldValuesUpdateDetails.md)|  | |
| **generateChangelog** | **Boolean**| Whether to generate a changelog for this update. | [optional] [default to true] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

