# SyncsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createSync**](SyncsApi.md#createSync) | **POST** /v1/syncs | Create sync |
| [**deleteSync**](SyncsApi.md#deleteSync) | **DELETE** /v1/syncs/{id} | Delete sync |
| [**getSync**](SyncsApi.md#getSync) | **GET** /v1/syncs/{id} | Get sync |
| [**list**](SyncsApi.md#list) | **GET** /v1/syncs | List syncs |
| [**updateSync**](SyncsApi.md#updateSync) | **PATCH** /v1/syncs/{id} | Update sync |


<a name="createSync"></a>
# **createSync**
> SyncMetadata createSync(CreateSyncDto)

Create sync

    Creates a sync for syncing alerts created and issues in a selected project.  - The user should have sync creation permission.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateSyncDto** | [**CreateSyncDto**](../Models/CreateSyncDto.md)|  | |

### Return type

[**SyncMetadata**](../Models/SyncMetadata.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteSync"></a>
# **deleteSync**
> deleteSync(id)

Delete sync

    Deletes a sync.  - The user should have delete permission for sync.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSync"></a>
# **getSync**
> Sync getSync(id)

Get sync

    Returns the sync.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Id of the sync. | [default to null] |

### Return type

[**Sync**](../Models/Sync.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="list"></a>
# **list**
> Syncs list(type, teamId, offset, size)

List syncs

    Lists syncs according to the provided filters. - The user should have view permission for syncs.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **type** | **String**| Type of the sync. (For instance, \&quot;jira-software-cloud\&quot; for Jira Software Cloud Sync.) | [optional] [default to null] |
| **teamId** | **String**| Id of the team that the syncs belongs to. | [optional] [default to null] |
| **offset** | **String**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to null] |
| **size** | **String**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to null] |

### Return type

[**Syncs**](../Models/Syncs.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateSync"></a>
# **updateSync**
> SyncMetadata updateSync(id, UpdateSyncDto)

Update sync

    Updates a sync.  - The user should have edit permission for sync.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Id of the sync. | [default to null] |
| **UpdateSyncDto** | [**UpdateSyncDto**](../Models/UpdateSyncDto.md)|  | |

### Return type

[**SyncMetadata**](../Models/SyncMetadata.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

