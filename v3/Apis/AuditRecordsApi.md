# AuditRecordsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAuditRecords**](AuditRecordsApi.md#getAuditRecords) | **GET** /rest/api/3/auditing/record | Get audit records |


<a name="getAuditRecords"></a>
# **getAuditRecords**
> AuditRecords getAuditRecords(offset, limit, filter, from, to)

Get audit records

    Returns a list of audit records. The list can be filtered to include items:   *  where each item in &#x60;filter&#x60; has at least one match in any of these fields:           *  &#x60;summary&#x60;      *  &#x60;category&#x60;      *  &#x60;eventSource&#x60;      *  &#x60;objectItem.name&#x60; If the object is a user, account ID is available to filter.      *  &#x60;objectItem.parentName&#x60;      *  &#x60;objectItem.typeName&#x60;      *  &#x60;changedValues.changedFrom&#x60;      *  &#x60;changedValues.changedTo&#x60;      *  &#x60;remoteAddress&#x60;          For example, if &#x60;filter&#x60; contains *man ed*, an audit record containing &#x60;summary\&quot;: \&quot;User added to group\&quot;&#x60; and &#x60;\&quot;category\&quot;: \&quot;group management\&quot;&#x60; is returned.  *  created on or after a date and time.  *  created or or before a date and time.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **offset** | **Integer**| The number of records to skip before returning the first result. | [optional] [default to 0] |
| **limit** | **Integer**| The maximum number of results to return. | [optional] [default to 1000] |
| **filter** | **String**| The strings to match with audit field content, space separated. | [optional] [default to null] |
| **from** | **String**| The date and time on or after which returned audit records must have been created. If &#x60;to&#x60; is provided &#x60;from&#x60; must be before &#x60;to&#x60; or no audit records are returned. | [optional] [default to null] |
| **to** | **String**| The date and time on or before which returned audit results must have been created. If &#x60;from&#x60; is provided &#x60;to&#x60; must be after &#x60;from&#x60; or no audit records are returned. | [optional] [default to null] |

### Return type

[**AuditRecords**](../Models/AuditRecords.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

