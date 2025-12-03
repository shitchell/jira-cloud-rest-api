# WorkflowSchemeDraftsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflowSchemeDraftFromParent**](WorkflowSchemeDraftsApi.md#createWorkflowSchemeDraftFromParent) | **POST** /rest/api/2/workflowscheme/{id}/createdraft | Create draft workflow scheme |
| [**deleteDraftDefaultWorkflow**](WorkflowSchemeDraftsApi.md#deleteDraftDefaultWorkflow) | **DELETE** /rest/api/2/workflowscheme/{id}/draft/default | Delete draft default workflow |
| [**deleteDraftWorkflowMapping**](WorkflowSchemeDraftsApi.md#deleteDraftWorkflowMapping) | **DELETE** /rest/api/2/workflowscheme/{id}/draft/workflow | Delete issue types for workflow in draft workflow scheme |
| [**deleteWorkflowSchemeDraft**](WorkflowSchemeDraftsApi.md#deleteWorkflowSchemeDraft) | **DELETE** /rest/api/2/workflowscheme/{id}/draft | Delete draft workflow scheme |
| [**deleteWorkflowSchemeDraftIssueType**](WorkflowSchemeDraftsApi.md#deleteWorkflowSchemeDraftIssueType) | **DELETE** /rest/api/2/workflowscheme/{id}/draft/issuetype/{issueType} | Delete workflow for issue type in draft workflow scheme |
| [**getDraftDefaultWorkflow**](WorkflowSchemeDraftsApi.md#getDraftDefaultWorkflow) | **GET** /rest/api/2/workflowscheme/{id}/draft/default | Get draft default workflow |
| [**getDraftWorkflow**](WorkflowSchemeDraftsApi.md#getDraftWorkflow) | **GET** /rest/api/2/workflowscheme/{id}/draft/workflow | Get issue types for workflows in draft workflow scheme |
| [**getWorkflowSchemeDraft**](WorkflowSchemeDraftsApi.md#getWorkflowSchemeDraft) | **GET** /rest/api/2/workflowscheme/{id}/draft | Get draft workflow scheme |
| [**getWorkflowSchemeDraftIssueType**](WorkflowSchemeDraftsApi.md#getWorkflowSchemeDraftIssueType) | **GET** /rest/api/2/workflowscheme/{id}/draft/issuetype/{issueType} | Get workflow for issue type in draft workflow scheme |
| [**publishDraftWorkflowScheme**](WorkflowSchemeDraftsApi.md#publishDraftWorkflowScheme) | **POST** /rest/api/2/workflowscheme/{id}/draft/publish | Publish draft workflow scheme |
| [**setWorkflowSchemeDraftIssueType**](WorkflowSchemeDraftsApi.md#setWorkflowSchemeDraftIssueType) | **PUT** /rest/api/2/workflowscheme/{id}/draft/issuetype/{issueType} | Set workflow for issue type in draft workflow scheme |
| [**updateDraftDefaultWorkflow**](WorkflowSchemeDraftsApi.md#updateDraftDefaultWorkflow) | **PUT** /rest/api/2/workflowscheme/{id}/draft/default | Update draft default workflow |
| [**updateDraftWorkflowMapping**](WorkflowSchemeDraftsApi.md#updateDraftWorkflowMapping) | **PUT** /rest/api/2/workflowscheme/{id}/draft/workflow | Set issue types for workflow in workflow scheme |
| [**updateWorkflowSchemeDraft**](WorkflowSchemeDraftsApi.md#updateWorkflowSchemeDraft) | **PUT** /rest/api/2/workflowscheme/{id}/draft | Update draft workflow scheme |


<a name="createWorkflowSchemeDraftFromParent"></a>
# **createWorkflowSchemeDraftFromParent**
> WorkflowScheme createWorkflowSchemeDraftFromParent(id)

Create draft workflow scheme

    Create a draft workflow scheme from an active workflow scheme, by copying the active workflow scheme. Note that an active workflow scheme can only have one draft workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the active workflow scheme that the draft is created from. | [default to null] |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteDraftDefaultWorkflow"></a>
# **deleteDraftDefaultWorkflow**
> WorkflowScheme deleteDraftDefaultWorkflow(id)

Delete draft default workflow

    Resets the default workflow for a workflow scheme&#39;s draft. That is, the default workflow is set to Jira&#39;s system workflow (the *jira* workflow).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteDraftWorkflowMapping"></a>
# **deleteDraftWorkflowMapping**
> deleteDraftWorkflowMapping(id, workflowName)

Delete issue types for workflow in draft workflow scheme

    Deletes the workflow-issue type mapping for a workflow in a workflow scheme&#39;s draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |
| **workflowName** | **String**| The name of the workflow. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="deleteWorkflowSchemeDraft"></a>
# **deleteWorkflowSchemeDraft**
> deleteWorkflowSchemeDraft(id)

Delete draft workflow scheme

    Deletes a draft workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the active workflow scheme that the draft was created from. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="deleteWorkflowSchemeDraftIssueType"></a>
# **deleteWorkflowSchemeDraftIssueType**
> WorkflowScheme deleteWorkflowSchemeDraftIssueType(id, issueType)

Delete workflow for issue type in draft workflow scheme

    Deletes the issue type-workflow mapping for an issue type in a workflow scheme&#39;s draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |
| **issueType** | **String**| The ID of the issue type. | [default to null] |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDraftDefaultWorkflow"></a>
# **getDraftDefaultWorkflow**
> DefaultWorkflow getDraftDefaultWorkflow(id)

Get draft default workflow

    Returns the default workflow for a workflow scheme&#39;s draft. The default workflow is the workflow that is assigned any issue types that have not been mapped to any other workflow. The default workflow has *All Unassigned Issue Types* listed in its issue types for the workflow scheme in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |

### Return type

[**DefaultWorkflow**](../Models/DefaultWorkflow.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDraftWorkflow"></a>
# **getDraftWorkflow**
> IssueTypesWorkflowMapping getDraftWorkflow(id, workflowName)

Get issue types for workflows in draft workflow scheme

    Returns the workflow-issue type mappings for a workflow scheme&#39;s draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |
| **workflowName** | **String**| The name of a workflow in the scheme. Limits the results to the workflow-issue type mapping for the specified workflow. | [optional] [default to null] |

### Return type

[**IssueTypesWorkflowMapping**](../Models/IssueTypesWorkflowMapping.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getWorkflowSchemeDraft"></a>
# **getWorkflowSchemeDraft**
> WorkflowScheme getWorkflowSchemeDraft(id)

Get draft workflow scheme

    Returns the draft workflow scheme for an active workflow scheme. Draft workflow schemes allow changes to be made to the active workflow schemes: When an active workflow scheme is updated, a draft copy is created. The draft is modified, then the changes in the draft are copied back to the active workflow scheme. See [Configuring workflow schemes](https://confluence.atlassian.com/x/tohKLg) for more information.   Note that:   *  Only active workflow schemes can have draft workflow schemes.  *  An active workflow scheme can only have one draft workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the active workflow scheme that the draft was created from. | [default to null] |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getWorkflowSchemeDraftIssueType"></a>
# **getWorkflowSchemeDraftIssueType**
> IssueTypeWorkflowMapping getWorkflowSchemeDraftIssueType(id, issueType)

Get workflow for issue type in draft workflow scheme

    Returns the issue type-workflow mapping for an issue type in a workflow scheme&#39;s draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |
| **issueType** | **String**| The ID of the issue type. | [default to null] |

### Return type

[**IssueTypeWorkflowMapping**](../Models/IssueTypeWorkflowMapping.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="publishDraftWorkflowScheme"></a>
# **publishDraftWorkflowScheme**
> publishDraftWorkflowScheme(id, PublishDraftWorkflowScheme, validateOnly)

Publish draft workflow scheme

    Publishes a draft workflow scheme.  Where the draft workflow includes new workflow statuses for an issue type, mappings are provided to update issues with the original workflow status to the new workflow status.  This operation is [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-2-task-taskId-get) to obtain updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |
| **PublishDraftWorkflowScheme** | [**PublishDraftWorkflowScheme**](../Models/PublishDraftWorkflowScheme.md)| Details of the status mappings. | |
| **validateOnly** | **Boolean**| Whether the request only performs a validation. | [optional] [default to false] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="setWorkflowSchemeDraftIssueType"></a>
# **setWorkflowSchemeDraftIssueType**
> WorkflowScheme setWorkflowSchemeDraftIssueType(id, issueType, IssueTypeWorkflowMapping)

Set workflow for issue type in draft workflow scheme

    Sets the workflow for an issue type in a workflow scheme&#39;s draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |
| **issueType** | **String**| The ID of the issue type. | [default to null] |
| **IssueTypeWorkflowMapping** | [**IssueTypeWorkflowMapping**](../Models/IssueTypeWorkflowMapping.md)| The issue type-project mapping. | |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateDraftDefaultWorkflow"></a>
# **updateDraftDefaultWorkflow**
> WorkflowScheme updateDraftDefaultWorkflow(id, DefaultWorkflow)

Update draft default workflow

    Sets the default workflow for a workflow scheme&#39;s draft.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |
| **DefaultWorkflow** | [**DefaultWorkflow**](../Models/DefaultWorkflow.md)| The object for the new default workflow. | |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateDraftWorkflowMapping"></a>
# **updateDraftWorkflowMapping**
> WorkflowScheme updateDraftWorkflowMapping(id, workflowName, IssueTypesWorkflowMapping)

Set issue types for workflow in workflow scheme

    Sets the issue types for a workflow in a workflow scheme&#39;s draft. The workflow can also be set as the default workflow for the draft workflow scheme. Unmapped issues types are mapped to the default workflow.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme that the draft belongs to. | [default to null] |
| **workflowName** | **String**| The name of the workflow. | [default to null] |
| **IssueTypesWorkflowMapping** | [**IssueTypesWorkflowMapping**](../Models/IssueTypesWorkflowMapping.md)|  | |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateWorkflowSchemeDraft"></a>
# **updateWorkflowSchemeDraft**
> WorkflowScheme updateWorkflowSchemeDraft(id, WorkflowScheme)

Update draft workflow scheme

    Updates a draft workflow scheme. If a draft workflow scheme does not exist for the active workflow scheme, then a draft is created. Note that an active workflow scheme can only have one draft workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the active workflow scheme that the draft was created from. | [default to null] |
| **WorkflowScheme** | [**WorkflowScheme**](../Models/WorkflowScheme.md)|  | |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

