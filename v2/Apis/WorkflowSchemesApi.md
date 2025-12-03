# WorkflowSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWorkflowScheme**](WorkflowSchemesApi.md#createWorkflowScheme) | **POST** /rest/api/2/workflowscheme | Create workflow scheme |
| [**deleteDefaultWorkflow**](WorkflowSchemesApi.md#deleteDefaultWorkflow) | **DELETE** /rest/api/2/workflowscheme/{id}/default | Delete default workflow |
| [**deleteWorkflowMapping**](WorkflowSchemesApi.md#deleteWorkflowMapping) | **DELETE** /rest/api/2/workflowscheme/{id}/workflow | Delete issue types for workflow in workflow scheme |
| [**deleteWorkflowScheme**](WorkflowSchemesApi.md#deleteWorkflowScheme) | **DELETE** /rest/api/2/workflowscheme/{id} | Delete workflow scheme |
| [**deleteWorkflowSchemeIssueType**](WorkflowSchemesApi.md#deleteWorkflowSchemeIssueType) | **DELETE** /rest/api/2/workflowscheme/{id}/issuetype/{issueType} | Delete workflow for issue type in workflow scheme |
| [**getAllWorkflowSchemes**](WorkflowSchemesApi.md#getAllWorkflowSchemes) | **GET** /rest/api/2/workflowscheme | Get all workflow schemes |
| [**getDefaultWorkflow**](WorkflowSchemesApi.md#getDefaultWorkflow) | **GET** /rest/api/2/workflowscheme/{id}/default | Get default workflow |
| [**getProjectUsagesForWorkflowScheme**](WorkflowSchemesApi.md#getProjectUsagesForWorkflowScheme) | **GET** /rest/api/2/workflowscheme/{workflowSchemeId}/projectUsages | Get projects which are using a given workflow scheme |
| [**getRequiredWorkflowSchemeMappings**](WorkflowSchemesApi.md#getRequiredWorkflowSchemeMappings) | **POST** /rest/api/2/workflowscheme/update/mappings | Get required status mappings for workflow scheme update |
| [**getWorkflow**](WorkflowSchemesApi.md#getWorkflow) | **GET** /rest/api/2/workflowscheme/{id}/workflow | Get issue types for workflows in workflow scheme |
| [**getWorkflowScheme**](WorkflowSchemesApi.md#getWorkflowScheme) | **GET** /rest/api/2/workflowscheme/{id} | Get workflow scheme |
| [**getWorkflowSchemeIssueType**](WorkflowSchemesApi.md#getWorkflowSchemeIssueType) | **GET** /rest/api/2/workflowscheme/{id}/issuetype/{issueType} | Get workflow for issue type in workflow scheme |
| [**readWorkflowSchemes**](WorkflowSchemesApi.md#readWorkflowSchemes) | **POST** /rest/api/2/workflowscheme/read | Bulk get workflow schemes |
| [**setWorkflowSchemeIssueType**](WorkflowSchemesApi.md#setWorkflowSchemeIssueType) | **PUT** /rest/api/2/workflowscheme/{id}/issuetype/{issueType} | Set workflow for issue type in workflow scheme |
| [**updateDefaultWorkflow**](WorkflowSchemesApi.md#updateDefaultWorkflow) | **PUT** /rest/api/2/workflowscheme/{id}/default | Update default workflow |
| [**updateSchemes**](WorkflowSchemesApi.md#updateSchemes) | **POST** /rest/api/2/workflowscheme/update | Update workflow scheme |
| [**updateWorkflowMapping**](WorkflowSchemesApi.md#updateWorkflowMapping) | **PUT** /rest/api/2/workflowscheme/{id}/workflow | Set issue types for workflow in workflow scheme |
| [**updateWorkflowScheme**](WorkflowSchemesApi.md#updateWorkflowScheme) | **PUT** /rest/api/2/workflowscheme/{id} | Classic update workflow scheme |


<a name="createWorkflowScheme"></a>
# **createWorkflowScheme**
> WorkflowScheme createWorkflowScheme(WorkflowScheme)

Create workflow scheme

    Creates a workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **WorkflowScheme** | [**WorkflowScheme**](../Models/WorkflowScheme.md)|  | |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteDefaultWorkflow"></a>
# **deleteDefaultWorkflow**
> WorkflowScheme deleteDefaultWorkflow(id, updateDraftIfNeeded)

Delete default workflow

    Resets the default workflow for a workflow scheme. That is, the default workflow is set to Jira&#39;s system workflow (the *jira* workflow).  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set &#x60;updateDraftIfNeeded&#x60; to &#x60;true&#x60; and a draft workflow scheme is created or updated with the default workflow reset. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. | [default to null] |
| **updateDraftIfNeeded** | **Boolean**| Set to true to create or update the draft of a workflow scheme and delete the mapping from the draft, when the workflow scheme cannot be edited. Defaults to &#x60;false&#x60;. | [optional] [default to null] |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteWorkflowMapping"></a>
# **deleteWorkflowMapping**
> deleteWorkflowMapping(id, workflowName, updateDraftIfNeeded)

Delete issue types for workflow in workflow scheme

    Deletes the workflow-issue type mapping for a workflow in a workflow scheme.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set &#x60;updateDraftIfNeeded&#x60; to &#x60;true&#x60; and a draft workflow scheme is created or updated with the workflow-issue type mapping deleted. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. | [default to null] |
| **workflowName** | **String**| The name of the workflow. | [default to null] |
| **updateDraftIfNeeded** | **Boolean**| Set to true to create or update the draft of a workflow scheme and delete the mapping from the draft, when the workflow scheme cannot be edited. Defaults to &#x60;false&#x60;. | [optional] [default to false] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="deleteWorkflowScheme"></a>
# **deleteWorkflowScheme**
> oas_any_type_not_mapped deleteWorkflowScheme(id)

Delete workflow scheme

    Deletes a workflow scheme. Note that a workflow scheme cannot be deleted if it is active (that is, being used by at least one project).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. Find this ID by editing the desired workflow scheme in Jira. The ID is shown in the URL as &#x60;schemeId&#x60;. For example, *schemeId&#x3D;10301*. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteWorkflowSchemeIssueType"></a>
# **deleteWorkflowSchemeIssueType**
> WorkflowScheme deleteWorkflowSchemeIssueType(id, issueType, updateDraftIfNeeded)

Delete workflow for issue type in workflow scheme

    Deletes the issue type-workflow mapping for an issue type in a workflow scheme.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set &#x60;updateDraftIfNeeded&#x60; to &#x60;true&#x60; and a draft workflow scheme is created or updated with the issue type-workflow mapping deleted. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. | [default to null] |
| **issueType** | **String**| The ID of the issue type. | [default to null] |
| **updateDraftIfNeeded** | **Boolean**| Set to true to create or update the draft of a workflow scheme and update the mapping in the draft, when the workflow scheme cannot be edited. Defaults to &#x60;false&#x60;. | [optional] [default to false] |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAllWorkflowSchemes"></a>
# **getAllWorkflowSchemes**
> PageBeanWorkflowScheme getAllWorkflowSchemes(startAt, maxResults)

Get all workflow schemes

    Returns a [paginated](#pagination) list of all workflow schemes, not including draft workflow schemes.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |

### Return type

[**PageBeanWorkflowScheme**](../Models/PageBeanWorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDefaultWorkflow"></a>
# **getDefaultWorkflow**
> DefaultWorkflow getDefaultWorkflow(id, returnDraftIfExists)

Get default workflow

    Returns the default workflow for a workflow scheme. The default workflow is the workflow that is assigned any issue types that have not been mapped to any other workflow. The default workflow has *All Unassigned Issue Types* listed in its issue types for the workflow scheme in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. | [default to null] |
| **returnDraftIfExists** | **Boolean**| Set to &#x60;true&#x60; to return the default workflow for the workflow scheme&#39;s draft rather than scheme itself. If the workflow scheme does not have a draft, then the default workflow for the workflow scheme is returned. | [optional] [default to false] |

### Return type

[**DefaultWorkflow**](../Models/DefaultWorkflow.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectUsagesForWorkflowScheme"></a>
# **getProjectUsagesForWorkflowScheme**
> WorkflowSchemeProjectUsageDTO getProjectUsagesForWorkflowScheme(workflowSchemeId, nextPageToken, maxResults)

Get projects which are using a given workflow scheme

    Returns a page of projects using a given workflow scheme.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **workflowSchemeId** | **String**| The workflow scheme ID | [default to null] |
| **nextPageToken** | **String**| The cursor for pagination | [optional] [default to null] |
| **maxResults** | **Integer**| The maximum number of results to return. Must be an integer between 1 and 200. | [optional] [default to 50] |

### Return type

[**WorkflowSchemeProjectUsageDTO**](../Models/WorkflowSchemeProjectUsageDTO.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRequiredWorkflowSchemeMappings"></a>
# **getRequiredWorkflowSchemeMappings**
> WorkflowSchemeUpdateRequiredMappingsResponse getRequiredWorkflowSchemeMappings(WorkflowSchemeUpdateRequiredMappingsRequest)

Get required status mappings for workflow scheme update

    Gets the required status mappings for the desired changes to a workflow scheme. The results are provided per issue type and workflow. When updating a workflow scheme, status mappings can be provided per issue type, per workflow, or both.  **[Permissions](#permissions) required:**   *  *Administer Jira* permission to update all, including global-scoped, workflow schemes.  *  *Administer projects* project permission to update project-scoped workflow schemes.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **WorkflowSchemeUpdateRequiredMappingsRequest** | [**WorkflowSchemeUpdateRequiredMappingsRequest**](../Models/WorkflowSchemeUpdateRequiredMappingsRequest.md)|  | |

### Return type

[**WorkflowSchemeUpdateRequiredMappingsResponse**](../Models/WorkflowSchemeUpdateRequiredMappingsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getWorkflow"></a>
# **getWorkflow**
> IssueTypesWorkflowMapping getWorkflow(id, workflowName, returnDraftIfExists)

Get issue types for workflows in workflow scheme

    Returns the workflow-issue type mappings for a workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. | [default to null] |
| **workflowName** | **String**| The name of a workflow in the scheme. Limits the results to the workflow-issue type mapping for the specified workflow. | [optional] [default to null] |
| **returnDraftIfExists** | **Boolean**| Returns the mapping from the workflow scheme&#39;s draft rather than the workflow scheme, if set to true. If no draft exists, the mapping from the workflow scheme is returned. | [optional] [default to false] |

### Return type

[**IssueTypesWorkflowMapping**](../Models/IssueTypesWorkflowMapping.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getWorkflowScheme"></a>
# **getWorkflowScheme**
> WorkflowScheme getWorkflowScheme(id, returnDraftIfExists)

Get workflow scheme

    Returns a workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. Find this ID by editing the desired workflow scheme in Jira. The ID is shown in the URL as &#x60;schemeId&#x60;. For example, *schemeId&#x3D;10301*. | [default to null] |
| **returnDraftIfExists** | **Boolean**| Returns the workflow scheme&#39;s draft rather than scheme itself, if set to true. If the workflow scheme does not have a draft, then the workflow scheme is returned. | [optional] [default to false] |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getWorkflowSchemeIssueType"></a>
# **getWorkflowSchemeIssueType**
> IssueTypeWorkflowMapping getWorkflowSchemeIssueType(id, issueType, returnDraftIfExists)

Get workflow for issue type in workflow scheme

    Returns the issue type-workflow mapping for an issue type in a workflow scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. | [default to null] |
| **issueType** | **String**| The ID of the issue type. | [default to null] |
| **returnDraftIfExists** | **Boolean**| Returns the mapping from the workflow scheme&#39;s draft rather than the workflow scheme, if set to true. If no draft exists, the mapping from the workflow scheme is returned. | [optional] [default to false] |

### Return type

[**IssueTypeWorkflowMapping**](../Models/IssueTypeWorkflowMapping.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="readWorkflowSchemes"></a>
# **readWorkflowSchemes**
> List readWorkflowSchemes(WorkflowSchemeReadRequest)

Bulk get workflow schemes

    Returns a list of workflow schemes by providing workflow scheme IDs or project IDs.  **[Permissions](#permissions) required:**   *  *Administer Jira* global permission to access all, including project-scoped, workflow schemes  *  *Administer projects* project permissions to access project-scoped workflow schemes

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **WorkflowSchemeReadRequest** | [**WorkflowSchemeReadRequest**](../Models/WorkflowSchemeReadRequest.md)|  | |

### Return type

[**List**](../Models/WorkflowSchemeReadResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="setWorkflowSchemeIssueType"></a>
# **setWorkflowSchemeIssueType**
> WorkflowScheme setWorkflowSchemeIssueType(id, issueType, IssueTypeWorkflowMapping)

Set workflow for issue type in workflow scheme

    Sets the workflow for an issue type in a workflow scheme.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set &#x60;updateDraftIfNeeded&#x60; to &#x60;true&#x60; in the request body and a draft workflow scheme is created or updated with the new issue type-workflow mapping. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. | [default to null] |
| **issueType** | **String**| The ID of the issue type. | [default to null] |
| **IssueTypeWorkflowMapping** | [**IssueTypeWorkflowMapping**](../Models/IssueTypeWorkflowMapping.md)| The issue type-project mapping. | |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateDefaultWorkflow"></a>
# **updateDefaultWorkflow**
> WorkflowScheme updateDefaultWorkflow(id, DefaultWorkflow)

Update default workflow

    Sets the default workflow for a workflow scheme.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set &#x60;updateDraftIfNeeded&#x60; to &#x60;true&#x60; in the request object and a draft workflow scheme is created or updated with the new default workflow. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. | [default to null] |
| **DefaultWorkflow** | [**DefaultWorkflow**](../Models/DefaultWorkflow.md)| The new default workflow. | |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateSchemes"></a>
# **updateSchemes**
> oas_any_type_not_mapped updateSchemes(WorkflowSchemeUpdateRequest)

Update workflow scheme

    Updates company-managed and team-managed project workflow schemes. This API doesn&#39;t have a concept of draft, so any changes made to a workflow scheme are immediately available. When changing the available statuses for issue types, an [asynchronous task](#async) migrates the issues as defined in the provided mappings.  **[Permissions](#permissions) required:**   *  *Administer Jira* project permission to update all, including global-scoped, workflow schemes.  *  *Administer projects* project permission to update project-scoped workflow schemes.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **WorkflowSchemeUpdateRequest** | [**WorkflowSchemeUpdateRequest**](../Models/WorkflowSchemeUpdateRequest.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateWorkflowMapping"></a>
# **updateWorkflowMapping**
> WorkflowScheme updateWorkflowMapping(id, workflowName, IssueTypesWorkflowMapping)

Set issue types for workflow in workflow scheme

    Sets the issue types for a workflow in a workflow scheme. The workflow can also be set as the default workflow for the workflow scheme. Unmapped issues types are mapped to the default workflow.  Note that active workflow schemes cannot be edited. If the workflow scheme is active, set &#x60;updateDraftIfNeeded&#x60; to &#x60;true&#x60; in the request body and a draft workflow scheme is created or updated with the new workflow-issue types mappings. The draft workflow scheme can be published in Jira.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. | [default to null] |
| **workflowName** | **String**| The name of the workflow. | [default to null] |
| **IssueTypesWorkflowMapping** | [**IssueTypesWorkflowMapping**](../Models/IssueTypesWorkflowMapping.md)|  | |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateWorkflowScheme"></a>
# **updateWorkflowScheme**
> WorkflowScheme updateWorkflowScheme(id, WorkflowScheme)

Classic update workflow scheme

    Updates a company-manged project workflow scheme, including the name, default workflow, issue type to project mappings, and more. If the workflow scheme is active (that is, being used by at least one project), then a draft workflow scheme is created or updated instead, provided that &#x60;updateDraftIfNeeded&#x60; is set to &#x60;true&#x60;.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the workflow scheme. Find this ID by editing the desired workflow scheme in Jira. The ID is shown in the URL as &#x60;schemeId&#x60;. For example, *schemeId&#x3D;10301*. | [default to null] |
| **WorkflowScheme** | [**WorkflowScheme**](../Models/WorkflowScheme.md)|  | |

### Return type

[**WorkflowScheme**](../Models/WorkflowScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

