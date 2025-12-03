# WorkflowStatusCategoriesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getStatusCategories**](WorkflowStatusCategoriesApi.md#getStatusCategories) | **GET** /rest/api/2/statuscategory | Get all status categories |
| [**getStatusCategory**](WorkflowStatusCategoriesApi.md#getStatusCategory) | **GET** /rest/api/2/statuscategory/{idOrKey} | Get status category |


<a name="getStatusCategories"></a>
# **getStatusCategories**
> List getStatusCategories()

Get all status categories

    Returns a list of all status categories.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/StatusCategory.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getStatusCategory"></a>
# **getStatusCategory**
> StatusCategory getStatusCategory(idOrKey)

Get status category

    Returns a status category. Status categories provided a mechanism for categorizing [statuses](#api-rest-api-2-status-idOrName-get).  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **idOrKey** | **String**| The ID or key of the status category. | [default to null] |

### Return type

[**StatusCategory**](../Models/StatusCategory.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

