# JQLFunctionsAppsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getPrecomputations**](JQLFunctionsAppsApi.md#getPrecomputations) | **GET** /rest/api/3/jql/function/computation | Get precomputations (apps) |
| [**getPrecomputationsByID**](JQLFunctionsAppsApi.md#getPrecomputationsByID) | **POST** /rest/api/3/jql/function/computation/search | Get precomputations by ID (apps) |
| [**updatePrecomputations**](JQLFunctionsAppsApi.md#updatePrecomputations) | **POST** /rest/api/3/jql/function/computation | Update precomputations (apps) |


<a name="getPrecomputations"></a>
# **getPrecomputations**
> PageBean2JqlFunctionPrecomputationBean getPrecomputations(functionKey, startAt, maxResults, orderBy)

Get precomputations (apps)

    Returns the list of a function&#39;s precomputations along with information about when they were created, updated, and last used. Each precomputation has a &#x60;value&#x60; \\- the JQL fragment to replace the custom function clause with.  **[Permissions](#permissions) required:** This API is only accessible to apps and apps can only inspect their own functions.  The new &#x60;read:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **functionKey** | [**List**](../Models/String.md)| The function key in format:   *  Forge: &#x60;ari:cloud:ecosystem::extension/[App ID]/[Environment ID]/static/[Function key from manifest]&#x60;  *  Connect: &#x60;[App key]__[Module key]&#x60; | [optional] [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;functionKey&#x60; Sorts by the functionKey.  *  &#x60;used&#x60; Sorts by the used timestamp.  *  &#x60;created&#x60; Sorts by the created timestamp.  *  &#x60;updated&#x60; Sorts by the updated timestamp. | [optional] [default to null] |

### Return type

[**PageBean2JqlFunctionPrecomputationBean**](../Models/PageBean2JqlFunctionPrecomputationBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPrecomputationsByID"></a>
# **getPrecomputationsByID**
> JqlFunctionPrecomputationGetByIdResponse getPrecomputationsByID(JqlFunctionPrecomputationGetByIdRequest, orderBy)

Get precomputations by ID (apps)

    Returns function precomputations by IDs, along with information about when they were created, updated, and last used. Each precomputation has a &#x60;value&#x60; \\- the JQL fragment to replace the custom function clause with.  **[Permissions](#permissions) required:** This API is only accessible to apps and apps can only inspect their own functions.  The new &#x60;read:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **JqlFunctionPrecomputationGetByIdRequest** | [**JqlFunctionPrecomputationGetByIdRequest**](../Models/JqlFunctionPrecomputationGetByIdRequest.md)|  | |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;functionKey&#x60; Sorts by the functionKey.  *  &#x60;used&#x60; Sorts by the used timestamp.  *  &#x60;created&#x60; Sorts by the created timestamp.  *  &#x60;updated&#x60; Sorts by the updated timestamp. | [optional] [default to null] |

### Return type

[**JqlFunctionPrecomputationGetByIdResponse**](../Models/JqlFunctionPrecomputationGetByIdResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updatePrecomputations"></a>
# **updatePrecomputations**
> JqlFunctionPrecomputationUpdateResponse updatePrecomputations(JqlFunctionPrecomputationUpdateRequestBean, skipNotFoundPrecomputations)

Update precomputations (apps)

    Update the precomputation value of a function created by a Forge/Connect app.  **[Permissions](#permissions) required:** An API for apps to update their own precomputations.  The new &#x60;write:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **JqlFunctionPrecomputationUpdateRequestBean** | [**JqlFunctionPrecomputationUpdateRequestBean**](../Models/JqlFunctionPrecomputationUpdateRequestBean.md)|  | |
| **skipNotFoundPrecomputations** | **Boolean**|  | [optional] [default to false] |

### Return type

[**JqlFunctionPrecomputationUpdateResponse**](../Models/JqlFunctionPrecomputationUpdateResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

