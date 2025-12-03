# WorkflowTransitionRulesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteWorkflowTransitionRuleConfigurations**](WorkflowTransitionRulesApi.md#deleteWorkflowTransitionRuleConfigurations) | **PUT** /rest/api/3/workflow/rule/config/delete | Delete workflow transition rule configurations |
| [**getWorkflowTransitionRuleConfigurations**](WorkflowTransitionRulesApi.md#getWorkflowTransitionRuleConfigurations) | **GET** /rest/api/3/workflow/rule/config | Get workflow transition rule configurations |
| [**updateWorkflowTransitionRuleConfigurations**](WorkflowTransitionRulesApi.md#updateWorkflowTransitionRuleConfigurations) | **PUT** /rest/api/3/workflow/rule/config | Update workflow transition rule configurations |


<a name="deleteWorkflowTransitionRuleConfigurations"></a>
# **deleteWorkflowTransitionRuleConfigurations**
> WorkflowTransitionRulesUpdateErrors deleteWorkflowTransitionRuleConfigurations(WorkflowsWithTransitionRulesDetails)

Delete workflow transition rule configurations

    Deletes workflow transition rules from one or more workflows. These rule types are supported:   *  [post functions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-post-function/)  *  [conditions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-condition/)  *  [validators](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-validator/)  Only rules created by the calling Connect app can be deleted.  **[Permissions](#permissions) required:** Only Connect apps can use this operation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **WorkflowsWithTransitionRulesDetails** | [**WorkflowsWithTransitionRulesDetails**](../Models/WorkflowsWithTransitionRulesDetails.md)|  | |

### Return type

[**WorkflowTransitionRulesUpdateErrors**](../Models/WorkflowTransitionRulesUpdateErrors.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getWorkflowTransitionRuleConfigurations"></a>
# **getWorkflowTransitionRuleConfigurations**
> PageBeanWorkflowTransitionRules getWorkflowTransitionRuleConfigurations(types, startAt, maxResults, keys, workflowNames, withTags, draft, expand)

Get workflow transition rule configurations

    Returns a [paginated](#pagination) list of workflows with transition rules. The workflows can be filtered to return only those containing workflow transition rules:   *  of one or more transition rule types, such as [workflow post functions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-post-function/).  *  matching one or more transition rule keys.  Only workflows containing transition rules created by the calling [Connect](https://developer.atlassian.com/cloud/jira/platform/index/#connect-apps) or [Forge](https://developer.atlassian.com/cloud/jira/platform/index/#forge-apps) app are returned.  Due to server-side optimizations, workflows with an empty list of rules may be returned; these workflows can be ignored.  **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/index/#connect-apps) or [Forge](https://developer.atlassian.com/cloud/jira/platform/index/#forge-apps) apps can use this operation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **types** | [**Set**](../Models/String.md)| The types of the transition rules to return. | [default to null] [enum: postfunction, condition, validator] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 10] |
| **keys** | [**Set**](../Models/String.md)| The transition rule class keys, as defined in the Connect or the Forge app descriptor, of the transition rules to return. | [optional] [default to null] |
| **workflowNames** | [**Set**](../Models/String.md)| The list of workflow names to filter by. | [optional] [default to null] |
| **withTags** | [**Set**](../Models/String.md)| The list of &#x60;tags&#x60; to filter by. | [optional] [default to null] |
| **draft** | **Boolean**| Whether draft or published workflows are returned. If not provided, both workflow types are returned. | [optional] [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts &#x60;transition&#x60;, which, for each rule, returns information about the transition the rule is assigned to. | [optional] [default to null] |

### Return type

[**PageBeanWorkflowTransitionRules**](../Models/PageBeanWorkflowTransitionRules.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateWorkflowTransitionRuleConfigurations"></a>
# **updateWorkflowTransitionRuleConfigurations**
> WorkflowTransitionRulesUpdateErrors updateWorkflowTransitionRuleConfigurations(WorkflowTransitionRulesUpdate)

Update workflow transition rule configurations

    Updates configuration of workflow transition rules. The following rule types are supported:   *  [post functions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-post-function/)  *  [conditions](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-condition/)  *  [validators](https://developer.atlassian.com/cloud/jira/platform/modules/workflow-validator/)  Only rules created by the calling [Connect](https://developer.atlassian.com/cloud/jira/platform/index/#connect-apps) or [Forge](https://developer.atlassian.com/cloud/jira/platform/index/#forge-apps) app can be updated.  To assist with app migration, this operation can be used to:   *  Disable a rule.  *  Add a &#x60;tag&#x60;. Use this to filter rules in the [Get workflow transition rule configurations](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-workflow-transition-rules/#api-rest-api-3-workflow-rule-config-get).  Rules are enabled if the &#x60;disabled&#x60; parameter is not provided.  **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/index/#connect-apps) or [Forge](https://developer.atlassian.com/cloud/jira/platform/index/#forge-apps) apps can use this operation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **WorkflowTransitionRulesUpdate** | [**WorkflowTransitionRulesUpdate**](../Models/WorkflowTransitionRulesUpdate.md)|  | |

### Return type

[**WorkflowTransitionRulesUpdateErrors**](../Models/WorkflowTransitionRulesUpdateErrors.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

