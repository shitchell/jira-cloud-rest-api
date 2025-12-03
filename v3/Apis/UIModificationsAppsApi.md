# UIModificationsAppsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createUiModification**](UIModificationsAppsApi.md#createUiModification) | **POST** /rest/api/3/uiModifications | Create UI modification |
| [**deleteUiModification**](UIModificationsAppsApi.md#deleteUiModification) | **DELETE** /rest/api/3/uiModifications/{uiModificationId} | Delete UI modification |
| [**getUiModifications**](UIModificationsAppsApi.md#getUiModifications) | **GET** /rest/api/3/uiModifications | Get UI modifications |
| [**updateUiModification**](UIModificationsAppsApi.md#updateUiModification) | **PUT** /rest/api/3/uiModifications/{uiModificationId} | Update UI modification |


<a name="createUiModification"></a>
# **createUiModification**
> UiModificationIdentifiers createUiModification(CreateUiModificationDetails)

Create UI modification

    Creates a UI modification. UI modification can only be created by Forge apps.  Each app can define up to 3000 UI modifications. Each UI modification can define up to 1000 contexts. The same context can be assigned to maximum 100 UI modifications.  **[Permissions](#permissions) required:**   *  *None* if the UI modification is created without contexts.  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for one or more projects, if the UI modification is created with contexts.  The new &#x60;write:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateUiModificationDetails** | [**CreateUiModificationDetails**](../Models/CreateUiModificationDetails.md)| Details of the UI modification. | |

### Return type

[**UiModificationIdentifiers**](../Models/UiModificationIdentifiers.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteUiModification"></a>
# **deleteUiModification**
> oas_any_type_not_mapped deleteUiModification(uiModificationId)

Delete UI modification

    Deletes a UI modification. All the contexts that belong to the UI modification are deleted too. UI modification can only be deleted by Forge apps.  **[Permissions](#permissions) required:** None.  The new &#x60;write:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **uiModificationId** | **String**| The ID of the UI modification. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUiModifications"></a>
# **getUiModifications**
> PageBeanUiModificationDetails getUiModifications(startAt, maxResults, expand)

Get UI modifications

    Gets UI modifications. UI modifications can only be retrieved by Forge apps.  **[Permissions](#permissions) required:** None.  The new &#x60;read:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **expand** | **String**| Use expand to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;data&#x60; Returns UI modification data.  *  &#x60;contexts&#x60; Returns UI modification contexts. | [optional] [default to null] |

### Return type

[**PageBeanUiModificationDetails**](../Models/PageBeanUiModificationDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateUiModification"></a>
# **updateUiModification**
> oas_any_type_not_mapped updateUiModification(uiModificationId, UpdateUiModificationDetails)

Update UI modification

    Updates a UI modification. UI modification can only be updated by Forge apps.  Each UI modification can define up to 1000 contexts. The same context can be assigned to maximum 100 UI modifications.  **[Permissions](#permissions) required:**   *  *None* if the UI modification is created without contexts.  *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for one or more projects, if the UI modification is created with contexts.  The new &#x60;write:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **uiModificationId** | **String**| The ID of the UI modification. | [default to null] |
| **UpdateUiModificationDetails** | [**UpdateUiModificationDetails**](../Models/UpdateUiModificationDetails.md)| Details of the UI modification. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

