# WorkflowStatusesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getStatus**](WorkflowStatusesApi.md#getStatus) | **GET** /rest/api/3/status/{idOrName} | Get status |
| [**getStatuses**](WorkflowStatusesApi.md#getStatuses) | **GET** /rest/api/3/status | Get all statuses |


<a name="getStatus"></a>
# **getStatus**
> StatusDetails getStatus(idOrName)

Get status

    Returns a status. The status must be associated with an active workflow to be returned.  If a name is used on more than one status, only the status found first is returned. Therefore, identifying the status by its ID may be preferable.  This operation can be accessed anonymously.  [Permissions](#permissions) required: *Browse projects* [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **idOrName** | **String**| The ID or name of the status. | [default to null] |

### Return type

[**StatusDetails**](../Models/StatusDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getStatuses"></a>
# **getStatuses**
> List getStatuses()

Get all statuses

    Returns a list of all statuses associated with active workflows.  This operation can be accessed anonymously.  [Permissions](#permissions) required: *Browse projects* [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) for the project.

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/StatusDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

