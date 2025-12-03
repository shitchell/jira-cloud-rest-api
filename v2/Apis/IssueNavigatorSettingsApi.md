# IssueNavigatorSettingsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getIssueNavigatorDefaultColumns**](IssueNavigatorSettingsApi.md#getIssueNavigatorDefaultColumns) | **GET** /rest/api/2/settings/columns | Get issue navigator default columns |
| [**setIssueNavigatorDefaultColumns**](IssueNavigatorSettingsApi.md#setIssueNavigatorDefaultColumns) | **PUT** /rest/api/2/settings/columns | Set issue navigator default columns |


<a name="getIssueNavigatorDefaultColumns"></a>
# **getIssueNavigatorDefaultColumns**
> List getIssueNavigatorDefaultColumns()

Get issue navigator default columns

    Returns the default issue navigator columns.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/ColumnItem.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setIssueNavigatorDefaultColumns"></a>
# **setIssueNavigatorDefaultColumns**
> setIssueNavigatorDefaultColumns(ColumnRequestBody)

Set issue navigator default columns

    Sets the default issue navigator columns.  The &#x60;columns&#x60; parameter accepts a navigable field value and is expressed as HTML form data. To specify multiple columns, pass multiple &#x60;columns&#x60; parameters. For example, in curl:  &#x60;curl -X PUT -d columns&#x3D;summary -d columns&#x3D;description https://your-domain.atlassian.net/rest/api/2/settings/columns&#x60;  If no column details are sent, then all default columns are removed.  A navigable field is one that can be used as a column on the issue navigator. Find details of navigable issue columns using [Get fields](#api-rest-api-2-field-get).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ColumnRequestBody** | [**ColumnRequestBody**](../Models/ColumnRequestBody.md)| A navigable field value. | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined

