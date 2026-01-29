# SyncActionsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**create**](SyncActionsApi.md#create) | **POST** /v1/syncs/{syncId}/actions | Create sync action |
| [**delete**](SyncActionsApi.md#delete) | **DELETE** /v1/syncs/{syncId}/actions/{id} | Delete sync action |
| [**get**](SyncActionsApi.md#get) | **GET** /v1/syncs/{syncId}/actions/{id} | Get sync action |
| [**list1**](SyncActionsApi.md#list1) | **GET** /v1/syncs/{syncId}/actions | List sync actions |
| [**reorder**](SyncActionsApi.md#reorder) | **PATCH** /v1/syncs/{syncId}/actions/{id}/order | Reorder sync action |
| [**update**](SyncActionsApi.md#update) | **PATCH** /v1/syncs/{syncId}/actions/{id} | Update sync action |


<a name="create"></a>
# **create**
> SyncAction create(syncId, CreateSyncActionRequest)

Create sync action

    Creates a sync action

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync. | [default to null] |
| **CreateSyncActionRequest** | [**CreateSyncActionRequest**](../Models/CreateSyncActionRequest.md)|  | |

### Return type

[**SyncAction**](../Models/SyncAction.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="delete"></a>
# **delete**
> delete(syncId, id)

Delete sync action

    Deletes a sync action.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync. | [default to null] |
| **id** | **String**| Id of the sync action. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="get"></a>
# **get**
> SyncAction get(syncId, id)

Get sync action

    Gets a sync action.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync. | [default to null] |
| **id** | **String**| Id of the sync action. | [default to null] |

### Return type

[**SyncAction**](../Models/SyncAction.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="list1"></a>
# **list1**
> SyncActions list1(type, direction, groupId, name, offset, size)

List sync actions

    Lists sync actions of a sync

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| Type of the action. | [optional] [default to null] |
| **direction** | **String**| Direction of the action. | [optional] [default to null] |
| **groupId** | **String**| Id of the action group that the action belongs to. | [optional] [default to null] |
| **name** | **String**| Name of the action. | [optional] [default to null] |
| **offset** | **String**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to null] |
| **size** | **String**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to null] |

### Return type

[**SyncActions**](../Models/SyncActions.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="reorder"></a>
# **reorder**
> reorder(syncId, id, UpdateSyncActionOrderRequest)

Reorder sync action

    Reorders a sync action.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync. | [default to null] |
| **id** | **String**| Id of the sync action. | [default to null] |
| **UpdateSyncActionOrderRequest** | [**UpdateSyncActionOrderRequest**](../Models/UpdateSyncActionOrderRequest.md)|  | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="update"></a>
# **update**
> SyncAction update(syncId, id, UpdateSyncActionRequest)

Update sync action

    Updates a sync action.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync. | [default to null] |
| **id** | **String**| Id of the sync action. | [default to null] |
| **UpdateSyncActionRequest** | [**UpdateSyncActionRequest**](../Models/UpdateSyncActionRequest.md)|  | |

### Return type

[**SyncAction**](../Models/SyncAction.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

