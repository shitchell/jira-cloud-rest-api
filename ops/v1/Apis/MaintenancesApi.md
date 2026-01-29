# MaintenancesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**cancelGlobalMaintenance**](MaintenancesApi.md#cancelGlobalMaintenance) | **POST** /v1/maintenances/{id}/cancel | Cancel global maintenance |
| [**cancelTeamMaintenance**](MaintenancesApi.md#cancelTeamMaintenance) | **POST** /v1/teams/{teamId}/maintenances/{id}/cancel | Cancel team maintenance |
| [**createGlobalMaintenance**](MaintenancesApi.md#createGlobalMaintenance) | **POST** /v1/maintenances | Create global maintenance |
| [**createTeamMaintenance**](MaintenancesApi.md#createTeamMaintenance) | **POST** /v1/teams/{teamId}/maintenances | Create team maintenance |
| [**deleteGlobalMaintenance**](MaintenancesApi.md#deleteGlobalMaintenance) | **DELETE** /v1/maintenances/{id} | Deletes global maintenance |
| [**deleteTeamMaintenance**](MaintenancesApi.md#deleteTeamMaintenance) | **DELETE** /v1/teams/{teamId}/maintenances/{id} | Delete team maintenance |
| [**getGlobalMaintenance**](MaintenancesApi.md#getGlobalMaintenance) | **GET** /v1/maintenances/{id} | Get global maintenance |
| [**getTeamMaintenance**](MaintenancesApi.md#getTeamMaintenance) | **GET** /v1/teams/{teamId}/maintenances/{id} | Get team maintenance |
| [**listGlobalMaintenances**](MaintenancesApi.md#listGlobalMaintenances) | **GET** /v1/maintenances | List global maintenances |
| [**listTeamMaintenances**](MaintenancesApi.md#listTeamMaintenances) | **GET** /v1/teams/{teamId}/maintenances | List team maintenances |
| [**updateGlobalMaintenance**](MaintenancesApi.md#updateGlobalMaintenance) | **PATCH** /v1/maintenances/{id} | Update global maintenance |
| [**updateTeamMaintenance**](MaintenancesApi.md#updateTeamMaintenance) | **PATCH** /v1/teams/{teamId}/maintenances/{id} | Update team maintenance |


<a name="cancelGlobalMaintenance"></a>
# **cancelGlobalMaintenance**
> GetGlobalMaintenance cancelGlobalMaintenance(id)

Cancel global maintenance

    This endpoint is used to stop an ongoing maintenance plan early. The functionality allows you to end the maintenance plan before the initially set end time.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the maintenance. | [default to null] |

### Return type

[**GetGlobalMaintenance**](../Models/GetGlobalMaintenance.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="cancelTeamMaintenance"></a>
# **cancelTeamMaintenance**
> GetTeamMaintenance cancelTeamMaintenance(teamId, id)

Cancel team maintenance

    This endpoint is used to stop an ongoing maintenance plan of a specific team early. The functionality allows you to end the maintenance period before the initially set end time.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the maintenance owning team. | [default to null] |
| **id** | **String**| Identifier of the maintenance. | [default to null] |

### Return type

[**GetTeamMaintenance**](../Models/GetTeamMaintenance.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="createGlobalMaintenance"></a>
# **createGlobalMaintenance**
> GetGlobalMaintenance createGlobalMaintenance(CreateMaintenanceRequest)

Create global maintenance

    This endpoint is used to create a new maintenance which applies rules to all teams across your organization in Jira Service Management. The maintenance plan can include various rules that enable or disable multiple entities like policies, integrations or syncs. &lt;b&gt;Please note that integrations and syncs cannot be enabled via a maintenance plan but policies can.&lt;/b&gt;

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateMaintenanceRequest** | [**CreateMaintenanceRequest**](../Models/CreateMaintenanceRequest.md)|  | |

### Return type

[**GetGlobalMaintenance**](../Models/GetGlobalMaintenance.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createTeamMaintenance"></a>
# **createTeamMaintenance**
> GetTeamMaintenance createTeamMaintenance(teamId, CreateMaintenanceRequest)

Create team maintenance

    This endpoint is used to create a new maintenance for a specific team in Jira Service Management. The maintenance plan can include various rules that enable or disable multiple entities like policies, integrations or syncs. &lt;b&gt;Please note that integrations and syncs cannot be enabled via a maintenance plan but policies can.&lt;/b&gt;

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the maintenance owning team. | [default to null] |
| **CreateMaintenanceRequest** | [**CreateMaintenanceRequest**](../Models/CreateMaintenanceRequest.md)|  | |

### Return type

[**GetTeamMaintenance**](../Models/GetTeamMaintenance.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteGlobalMaintenance"></a>
# **deleteGlobalMaintenance**
> deleteGlobalMaintenance(id)

Deletes global maintenance

    This request is used to delete a global maintenance.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the maintenance. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteTeamMaintenance"></a>
# **deleteTeamMaintenance**
> deleteTeamMaintenance(teamId, id)

Delete team maintenance

    Deletes a maintenance with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the maintenance owning team. | [default to null] |
| **id** | **String**| Identifier of the maintenance. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getGlobalMaintenance"></a>
# **getGlobalMaintenance**
> GetGlobalMaintenance getGlobalMaintenance(id)

Get global maintenance

    Gets an account based global maintenance with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the maintenance. | [default to null] |

### Return type

[**GetGlobalMaintenance**](../Models/GetGlobalMaintenance.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getTeamMaintenance"></a>
# **getTeamMaintenance**
> GetTeamMaintenance getTeamMaintenance(teamId, id)

Get team maintenance

    This request is used to retrieve a specific maintenance of a specific team.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the maintenance owning team. | [default to null] |
| **id** | **String**| Identifier of the maintenance. | [default to null] |

### Return type

[**GetTeamMaintenance**](../Models/GetTeamMaintenance.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listGlobalMaintenances"></a>
# **listGlobalMaintenances**
> listGlobalMaintenances_200_response listGlobalMaintenances(type, offset, size)

List global maintenances

    This endpoint is used to retrieve a list of maintenance that have been created within your organization&#39;s account in the Jira Service Management system. It optionally takes three parameters - offset, size and type.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| Defines which maintenance will be listed according to maintenance status. | [optional] [default to all] [enum: all, non-expired, past] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 20] |

### Return type

[**listGlobalMaintenances_200_response**](../Models/listGlobalMaintenances_200_response.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listTeamMaintenances"></a>
# **listTeamMaintenances**
> listTeamMaintenances_200_response listTeamMaintenances(teamId, type, offset, size)

List team maintenances

    This endpoint is used to retrieve a list of maintenance associated with a specific team in the Jira Service Management system. It optionally takes three parameters - offset, size and type.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the maintenance owning team. | [default to null] |
| **type** | **String**| Defines which maintenance will be listed according to maintenance status. | [optional] [default to all] [enum: all, non-expired, past] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **size** | **Integer**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 20] |

### Return type

[**listTeamMaintenances_200_response**](../Models/listTeamMaintenances_200_response.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateGlobalMaintenance"></a>
# **updateGlobalMaintenance**
> GetGlobalMaintenance updateGlobalMaintenance(id, UpdateMaintenanceRequest)

Update global maintenance

    This endpoint is used to update a global maintenance in Jira Service Management.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the maintenance. | [default to null] |
| **UpdateMaintenanceRequest** | [**UpdateMaintenanceRequest**](../Models/UpdateMaintenanceRequest.md)|  | |

### Return type

[**GetGlobalMaintenance**](../Models/GetGlobalMaintenance.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateTeamMaintenance"></a>
# **updateTeamMaintenance**
> GetTeamMaintenance updateTeamMaintenance(teamId, id, UpdateMaintenanceRequest)

Update team maintenance

    Updates a team maintenance with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **teamId** | **String**| Identifier of the maintenance owning team. | [default to null] |
| **id** | **String**| Identifier of the maintenance. | [default to null] |
| **UpdateMaintenanceRequest** | [**UpdateMaintenanceRequest**](../Models/UpdateMaintenanceRequest.md)|  | |

### Return type

[**GetTeamMaintenance**](../Models/GetTeamMaintenance.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

