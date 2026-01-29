# AuditLogsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**listLogs**](AuditLogsApi.md#listLogs) | **GET** /v1/logs | Get audit Logs |


<a name="listLogs"></a>
# **listLogs**
> ListAuditLogResponse listLogs(startTime, endTime, limit, pageToken, category, level)

Get audit Logs

    This endpoint returns all operations audit logs in Jira Service Management, allowing retrieval of logs in a specified time range and  filtering based on log level and category. &lt;br&gt; &lt;br&gt; **Permissions required:** Permission to view Jira Service Management Audit logs using a JSM Org/Site/Product admin role

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startTime** | **Date**| The starting date-time after which returned audit logs must have been created. Accepts the ISO format **(yyyy-MM-dd&#39;T&#39;HH:mm:ssZ)** (e.g. 2024-01-15T08:00:00+02:00). | [default to null] |
| **endTime** | **Date**| The ending date-time before which returned audit logs must have been created. Accepts the ISO format **(yyyy-MM-dd&#39;T&#39;HH:mm:ssZ)** (e.g. 2024-01-15T08:00:00+02:00). | [default to null] |
| **limit** | **Integer**| Maximum number of items to return in the response. | [optional] [default to 1000] |
| **pageToken** | **String**| Token for fetching the next set of paginated results. The page token can be retrieved from the &#x60;links.next&#x60; key in each API response. | [optional] [default to null] |
| **category** | **String**| Filter the audit logs based on the event category. Multiple categories can be passed by providing a comma-separated list of values. | [optional] [default to null] [enum: AUTOMATION, INCOMING_DATA, ALERTS, API, CONFIG_CHANGE, EMAIL, HEARTBEAT, INCIDENT_MANAGEMENT, INTEGRATION, SYNC, NOTIFICATION, ONCALL_MANAGEMENT, SERVICE, USER_IMPORT, ADD_USER_TO_GROUP, ADD_USER_TO_ROLE] |
| **level** | **String**| Filter the audit logs based on the log level. Multiple log levels can be passed by providing a comma-separated list of values. | [optional] [default to null] [enum: INFORTMATION, ERROR, WARN] |

### Return type

[**ListAuditLogResponse**](../Models/ListAuditLogResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

