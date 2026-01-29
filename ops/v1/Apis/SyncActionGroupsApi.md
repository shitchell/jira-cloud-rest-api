# SyncActionGroupsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**create1**](SyncActionGroupsApi.md#create1) | **POST** /v1/syncs/{syncId}/action-groups | Create sync action group |
| [**delete1**](SyncActionGroupsApi.md#delete1) | **DELETE** /v1/syncs/{syncId}/action-groups/{id} | Delete sync action group |
| [**get1**](SyncActionGroupsApi.md#get1) | **GET** /v1/syncs/{syncId}/action-groups/{id} | Get sync action group |
| [**list2**](SyncActionGroupsApi.md#list2) | **GET** /v1/syncs/{syncId}/action-groups | List sync action groups |
| [**reorder1**](SyncActionGroupsApi.md#reorder1) | **PATCH** /v1/syncs/{syncId}/action-groups/{id}/order | Reorder sync action group |
| [**update1**](SyncActionGroupsApi.md#update1) | **PATCH** /v1/syncs/{syncId}/action-groups/{id} | Update sync action group |


<a name="create1"></a>
# **create1**
> SyncActionGroupMetadataDto create1(syncId, CreateActionGroupDto)

Create sync action group

    Creates a sync action group

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync | [default to null] |
| **CreateActionGroupDto** | [**CreateActionGroupDto**](../Models/CreateActionGroupDto.md)|  | |

### Return type

[**SyncActionGroupMetadataDto**](../Models/SyncActionGroupMetadataDto.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="delete1"></a>
# **delete1**
> delete1(syncId, id)

Delete sync action group

    Deletes a sync action group.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync | [default to null] |
| **id** | **String**| Id of the action group | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="get1"></a>
# **get1**
> SyncActionGroup get1(syncId, actionGroupId)

Get sync action group

    Gets a sync action group.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync | [default to null] |
| **actionGroupId** | **String**| Id of the action group | [default to null] |

### Return type

[**SyncActionGroup**](../Models/SyncActionGroup.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="list2"></a>
# **list2**
> SyncActions list2(syncId, type)

List sync action groups

    Lists sync action groups of a sync

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync | [default to null] |
| **type** | **String**| Type of the action group. | [optional] [default to null] |

### Return type

[**SyncActions**](../Models/SyncActions.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="reorder1"></a>
# **reorder1**
> reorder1(syncId, id, UpdateSyncActionGroupOrderRequest)

Reorder sync action group

    Reorders a sync action group.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync | [default to null] |
| **id** | **String**| Id of the action group | [default to null] |
| **UpdateSyncActionGroupOrderRequest** | [**UpdateSyncActionGroupOrderRequest**](../Models/UpdateSyncActionGroupOrderRequest.md)|  | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="update1"></a>
# **update1**
> SyncAction update1(syncId, id, UpdateActionGroupDto)

Update sync action group

    Updates a sync action group.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **syncId** | **String**| Id of the sync | [default to null] |
| **id** | **String**| Id of the action group | [default to null] |
| **UpdateActionGroupDto** | [**UpdateActionGroupDto**](../Models/UpdateActionGroupDto.md)|  | |

### Return type

[**SyncAction**](../Models/SyncAction.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

