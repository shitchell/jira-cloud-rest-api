# DefaultApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getWorklogsByIssueIdAndWorklogId**](DefaultApi.md#getWorklogsByIssueIdAndWorklogId) | **POST** /rest/internal/api/latest/worklog/bulk | Get worklogs by issue id and worklog id |


<a name="getWorklogsByIssueIdAndWorklogId"></a>
# **getWorklogsByIssueIdAndWorklogId**
> BulkWorklogKeyResponseBean getWorklogsByIssueIdAndWorklogId(BulkWorklogKeyRequestBean)

Get worklogs by issue id and worklog id

    Returns worklog details for a list of issue ID and worklog ID pairs.  This is an internal API for bulk fetching worklogs by their issue and worklog IDs. Worklogs that don&#39;t exist will be filtered out from the response.  The returned list of worklogs is limited to 1000 items.  **[Permissions](#permissions) required:** This is an internal service-to-service API that requires ASAP authentication. No user permission checks are performed as this bypasses normal user context.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **BulkWorklogKeyRequestBean** | [**BulkWorklogKeyRequestBean**](../Models/BulkWorklogKeyRequestBean.md)| A JSON object containing a list of issue ID and worklog ID pairs. | |

### Return type

[**BulkWorklogKeyResponseBean**](../Models/BulkWorklogKeyResponseBean.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

