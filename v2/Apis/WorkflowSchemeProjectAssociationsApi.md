# WorkflowSchemeProjectAssociationsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**assignSchemeToProject**](WorkflowSchemeProjectAssociationsApi.md#assignSchemeToProject) | **PUT** /rest/api/2/workflowscheme/project | Assign workflow scheme to project |
| [**getWorkflowSchemeProjectAssociations**](WorkflowSchemeProjectAssociationsApi.md#getWorkflowSchemeProjectAssociations) | **GET** /rest/api/2/workflowscheme/project | Get workflow scheme project associations |


<a name="assignSchemeToProject"></a>
# **assignSchemeToProject**
> oas_any_type_not_mapped assignSchemeToProject(WorkflowSchemeProjectAssociation)

Assign workflow scheme to project

    Assigns a workflow scheme to a project. This operation is performed only when there are no issues in the project.  Workflow schemes can only be assigned to classic projects.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **WorkflowSchemeProjectAssociation** | [**WorkflowSchemeProjectAssociation**](../Models/WorkflowSchemeProjectAssociation.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getWorkflowSchemeProjectAssociations"></a>
# **getWorkflowSchemeProjectAssociations**
> ContainerOfWorkflowSchemeAssociations getWorkflowSchemeProjectAssociations(projectId)

Get workflow scheme project associations

    Returns a list of the workflow schemes associated with a list of projects. Each returned workflow scheme includes a list of the requested projects associated with it. Any team-managed or non-existent projects in the request are ignored and no errors are returned.  If the project is associated with the &#x60;Default Workflow Scheme&#x60; no ID is returned. This is because the way the &#x60;Default Workflow Scheme&#x60; is stored means it has no ID.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectId** | [**Set**](../Models/Long.md)| The ID of a project to return the workflow schemes for. To include multiple projects, provide an ampersand-Jim: oneseparated list. For example, &#x60;projectId&#x3D;10000&amp;projectId&#x3D;10001&#x60;. | [default to null] |

### Return type

[**ContainerOfWorkflowSchemeAssociations**](../Models/ContainerOfWorkflowSchemeAssociations.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

