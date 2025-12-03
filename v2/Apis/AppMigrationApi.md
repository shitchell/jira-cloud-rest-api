# AppMigrationApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**appIssueFieldValueUpdateResource.updateIssueFieldsPut**](AppMigrationApi.md#appIssueFieldValueUpdateResource.updateIssueFieldsPut) | **PUT** /rest/atlassian-connect/1/migration/field | Bulk update custom field value |
| [**migrationResource.updateEntityPropertiesValuePut**](AppMigrationApi.md#migrationResource.updateEntityPropertiesValuePut) | **PUT** /rest/atlassian-connect/1/migration/properties/{entityType} | Bulk update entity properties |
| [**migrationResource.workflowRuleSearchPost**](AppMigrationApi.md#migrationResource.workflowRuleSearchPost) | **POST** /rest/atlassian-connect/1/migration/workflow/rule/search | Get workflow transition rule configurations |


<a name="appIssueFieldValueUpdateResource.updateIssueFieldsPut"></a>
# **appIssueFieldValueUpdateResource.updateIssueFieldsPut**
> oas_any_type_not_mapped appIssueFieldValueUpdateResource.updateIssueFieldsPut(Atlassian-Transfer-Id, ConnectCustomFieldValues)

Bulk update custom field value

    Updates the value of a custom field added by Connect apps on one or more issues. The values of up to 200 custom fields can be updated.  **[Permissions](#permissions) required:** Only Connect apps can make this request

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Atlassian-Transfer-Id** | **UUID**| The ID of the transfer. | [default to null] |
| **ConnectCustomFieldValues** | [**ConnectCustomFieldValues**](../Models/ConnectCustomFieldValues.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="migrationResource.updateEntityPropertiesValuePut"></a>
# **migrationResource.updateEntityPropertiesValuePut**
> migrationResource.updateEntityPropertiesValuePut(Atlassian-Transfer-Id, entityType, EntityPropertyDetails)

Bulk update entity properties

    Updates the values of multiple entity properties for an object, up to 50 updates per request. This operation is for use by Connect apps during app migration.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Atlassian-Transfer-Id** | **UUID**| The app migration transfer ID. | [default to null] |
| **entityType** | **String**| The type indicating the object that contains the entity properties. | [default to null] [enum: IssueProperty, CommentProperty, DashboardItemProperty, IssueTypeProperty, ProjectProperty, UserProperty, WorklogProperty, BoardProperty, SprintProperty] |
| **EntityPropertyDetails** | [**List**](../Models/EntityPropertyDetails.md)|  | |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

<a name="migrationResource.workflowRuleSearchPost"></a>
# **migrationResource.workflowRuleSearchPost**
> WorkflowRulesSearchDetails migrationResource.workflowRuleSearchPost(Atlassian-Transfer-Id, WorkflowRulesSearch)

Get workflow transition rule configurations

    Returns configurations for workflow transition rules migrated from server to cloud and owned by the calling Connect app.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Atlassian-Transfer-Id** | **UUID**| The app migration transfer ID. | [default to null] |
| **WorkflowRulesSearch** | [**WorkflowRulesSearch**](../Models/WorkflowRulesSearch.md)|  | |

### Return type

[**WorkflowRulesSearchDetails**](../Models/WorkflowRulesSearchDetails.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

