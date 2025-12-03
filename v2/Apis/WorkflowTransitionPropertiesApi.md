# WorkflowTransitionPropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflowTransitionProperty**](WorkflowTransitionPropertiesApi.md#createWorkflowTransitionProperty) | **POST** /rest/api/2/workflow/transitions/{transitionId}/properties | Create workflow transition property |
| [**deleteWorkflowTransitionProperty**](WorkflowTransitionPropertiesApi.md#deleteWorkflowTransitionProperty) | **DELETE** /rest/api/2/workflow/transitions/{transitionId}/properties | Delete workflow transition property |
| [**getWorkflowTransitionProperties**](WorkflowTransitionPropertiesApi.md#getWorkflowTransitionProperties) | **GET** /rest/api/2/workflow/transitions/{transitionId}/properties | Get workflow transition properties |
| [**updateWorkflowTransitionProperty**](WorkflowTransitionPropertiesApi.md#updateWorkflowTransitionProperty) | **PUT** /rest/api/2/workflow/transitions/{transitionId}/properties | Update workflow transition property |


<a name="createWorkflowTransitionProperty"></a>
# **createWorkflowTransitionProperty**
> WorkflowTransitionProperty createWorkflowTransitionProperty(transitionId, key, workflowName, WorkflowTransitionProperty, workflowMode)

Create workflow transition property

    This will be removed on [June 1, 2026](https://developer.atlassian.com/cloud/jira/platform/changelog/#CHANGE-2570); add transition properties using [Bulk update workflows](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-workflows/#api-rest-api-3-workflows-update-post) instead.  Adds a property to a workflow transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **transitionId** | **Long**| The ID of the transition. To get the ID, view the workflow in text mode in the Jira admin settings. The ID is shown next to the transition. | [default to null] |
| **key** | **String**| The key of the property being added, also known as the name of the property. Set this to the same value as the &#x60;key&#x60; defined in the request body. | [default to null] |
| **workflowName** | **String**| The name of the workflow that the transition belongs to. | [default to null] |
| **WorkflowTransitionProperty** | [**WorkflowTransitionProperty**](../Models/WorkflowTransitionProperty.md)|  | |
| **workflowMode** | **String**| The workflow status. Set to *live* for inactive workflows or *draft* for draft workflows. Active workflows cannot be edited. | [optional] [default to live] [enum: live, draft] |

### Return type

[**WorkflowTransitionProperty**](../Models/WorkflowTransitionProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteWorkflowTransitionProperty"></a>
# **deleteWorkflowTransitionProperty**
> deleteWorkflowTransitionProperty(transitionId, key, workflowName, workflowMode)

Delete workflow transition property

    This will be removed on [June 1, 2026](https://developer.atlassian.com/cloud/jira/platform/changelog/#CHANGE-2570); delete transition properties using [Bulk update workflows](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-workflows/#api-rest-api-3-workflows-update-post) instead.  Deletes a property from a workflow transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **transitionId** | **Long**| The ID of the transition. To get the ID, view the workflow in text mode in the Jira admin settings. The ID is shown next to the transition. | [default to null] |
| **key** | **String**| The name of the transition property to delete, also known as the name of the property. | [default to null] |
| **workflowName** | **String**| The name of the workflow that the transition belongs to. | [default to null] |
| **workflowMode** | **String**| The workflow status. Set to &#x60;live&#x60; for inactive workflows or &#x60;draft&#x60; for draft workflows. Active workflows cannot be edited. | [optional] [default to null] [enum: live, draft] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getWorkflowTransitionProperties"></a>
# **getWorkflowTransitionProperties**
> WorkflowTransitionProperty getWorkflowTransitionProperties(transitionId, workflowName, includeReservedKeys, key, workflowMode)

Get workflow transition properties

    This will be removed on [June 1, 2026](https://developer.atlassian.com/cloud/jira/platform/changelog/#CHANGE-2570); fetch transition properties from [Bulk get workflows](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-workflows/#api-rest-api-3-workflows-post) instead.  Returns the properties on a workflow transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **transitionId** | **Long**| The ID of the transition. To get the ID, view the workflow in text mode in the Jira administration console. The ID is shown next to the transition. | [default to null] |
| **workflowName** | **String**| The name of the workflow that the transition belongs to. | [default to null] |
| **includeReservedKeys** | **Boolean**| Some properties with keys that have the *jira.* prefix are reserved, which means they are not editable. To include these properties in the results, set this parameter to *true*. | [optional] [default to false] |
| **key** | **String**| The key of the property being returned, also known as the name of the property. If this parameter is not specified, all properties on the transition are returned. | [optional] [default to null] |
| **workflowMode** | **String**| The workflow status. Set to *live* for active and inactive workflows, or *draft* for draft workflows. | [optional] [default to live] [enum: live, draft] |

### Return type

[**WorkflowTransitionProperty**](../Models/WorkflowTransitionProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateWorkflowTransitionProperty"></a>
# **updateWorkflowTransitionProperty**
> WorkflowTransitionProperty updateWorkflowTransitionProperty(transitionId, key, workflowName, WorkflowTransitionProperty, workflowMode)

Update workflow transition property

    This will be removed on [June 1, 2026](https://developer.atlassian.com/cloud/jira/platform/changelog/#CHANGE-2570); update transition properties using [Bulk update workflows](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-workflows/#api-rest-api-3-workflows-update-post) instead.  Updates a workflow transition by changing the property value. Trying to update a property that does not exist results in a new property being added to the transition. Transition properties are used to change the behavior of a transition. For more information, see [Transition properties](https://confluence.atlassian.com/x/zIhKLg#Advancedworkflowconfiguration-transitionproperties) and [Workflow properties](https://confluence.atlassian.com/x/JYlKLg).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **transitionId** | **Long**| The ID of the transition. To get the ID, view the workflow in text mode in the Jira admin settings. The ID is shown next to the transition. | [default to null] |
| **key** | **String**| The key of the property being updated, also known as the name of the property. Set this to the same value as the &#x60;key&#x60; defined in the request body. | [default to null] |
| **workflowName** | **String**| The name of the workflow that the transition belongs to. | [default to null] |
| **WorkflowTransitionProperty** | [**WorkflowTransitionProperty**](../Models/WorkflowTransitionProperty.md)|  | |
| **workflowMode** | **String**| The workflow status. Set to &#x60;live&#x60; for inactive workflows or &#x60;draft&#x60; for draft workflows. Active workflows cannot be edited. | [optional] [default to null] [enum: live, draft] |

### Return type

[**WorkflowTransitionProperty**](../Models/WorkflowTransitionProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

