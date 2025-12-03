# ServerInfoApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getServerInfo**](ServerInfoApi.md#getServerInfo) | **GET** /rest/api/3/serverInfo | Get Jira instance info |


<a name="getServerInfo"></a>
# **getServerInfo**
> ServerInformation getServerInfo()

Get Jira instance info

    Returns information about the Jira instance.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters
This endpoint does not need any parameter.

### Return type

[**ServerInformation**](../Models/ServerInformation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

