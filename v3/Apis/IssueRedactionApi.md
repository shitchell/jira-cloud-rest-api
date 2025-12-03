# IssueRedactionApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getRedactionStatus**](IssueRedactionApi.md#getRedactionStatus) | **GET** /rest/api/3/redact/status/{jobId} | Get redaction status |
| [**redact**](IssueRedactionApi.md#redact) | **POST** /rest/api/3/redact | Redact |


<a name="getRedactionStatus"></a>
# **getRedactionStatus**
> RedactionJobStatusResponse getRedactionStatus(jobId)

Get redaction status

    Retrieves the current status of a redaction job ID.  The jobStatus will be one of the following:   *  IN\\_PROGRESS - The redaction job is currently in progress  *  COMPLETED - The redaction job has completed successfully.  *  PENDING - The redaction job has not started yet

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **jobId** | **String**| Redaction job id | [default to null] |

### Return type

[**RedactionJobStatusResponse**](../Models/RedactionJobStatusResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="redact"></a>
# **redact**
> UUID redact(BulkRedactionRequest)

Redact

    Submit a job to redact issue field data. This will trigger the redaction of the data in the specified fields asynchronously.  The redaction status can be polled using the job id.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **BulkRedactionRequest** | [**BulkRedactionRequest**](../Models/BulkRedactionRequest.md)| List of redaction requests | |

### Return type

**UUID**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

