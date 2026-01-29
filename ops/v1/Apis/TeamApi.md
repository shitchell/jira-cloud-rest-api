# TeamApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**enableOperations**](TeamApi.md#enableOperations) | **POST** /v1/teams/{teamId}/enable-ops | Enable Operations in team |
| [**getTeamRequestStatus**](TeamApi.md#getTeamRequestStatus) | **GET** /v1/teams/{teamId}/requests/{requestId} | Get status of a team request |
| [**getTeams**](TeamApi.md#getTeams) | **GET** /v1/teams | List teams |


<a name="enableOperations"></a>
# **enableOperations**
> OpsEnableResponse enableOperations(teamId, EnableOpsRequest)

Enable Operations in team

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| The jira team identifier | [default to null] |
| **EnableOpsRequest** | [**EnableOpsRequest**](../Models/EnableOpsRequest.md)|  | [optional] |

### Return type

[**OpsEnableResponse**](../Models/OpsEnableResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getTeamRequestStatus"></a>
# **getTeamRequestStatus**
> RequestStatusResponse getTeamRequestStatus(requestId)

Get status of a team request

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **requestId** | **String**| ID of the request. | [default to null] |

### Return type

[**RequestStatusResponse**](../Models/RequestStatusResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getTeams"></a>
# **getTeams**
> ListPlatformTeamResponse getTeams()

List teams

    Lists operations teams based on the user&#39;s role. If the user has admin rights, all teams are listed; otherwise, only the teams the user is a member of are shown.

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListPlatformTeamResponse**](../Models/ListPlatformTeamResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

