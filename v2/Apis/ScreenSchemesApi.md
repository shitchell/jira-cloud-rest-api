# ScreenSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createScreenScheme**](ScreenSchemesApi.md#createScreenScheme) | **POST** /rest/api/2/screenscheme | Create screen scheme |
| [**deleteScreenScheme**](ScreenSchemesApi.md#deleteScreenScheme) | **DELETE** /rest/api/2/screenscheme/{screenSchemeId} | Delete screen scheme |
| [**getScreenSchemes**](ScreenSchemesApi.md#getScreenSchemes) | **GET** /rest/api/2/screenscheme | Get screen schemes |
| [**updateScreenScheme**](ScreenSchemesApi.md#updateScreenScheme) | **PUT** /rest/api/2/screenscheme/{screenSchemeId} | Update screen scheme |


<a name="createScreenScheme"></a>
# **createScreenScheme**
> ScreenSchemeId createScreenScheme(ScreenSchemeDetails)

Create screen scheme

    Creates a screen scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ScreenSchemeDetails** | [**ScreenSchemeDetails**](../Models/ScreenSchemeDetails.md)|  | |

### Return type

[**ScreenSchemeId**](../Models/ScreenSchemeId.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteScreenScheme"></a>
# **deleteScreenScheme**
> deleteScreenScheme(screenSchemeId)

Delete screen scheme

    Deletes a screen scheme. A screen scheme cannot be deleted if it is used in an issue type screen scheme.  Only screens schemes used in classic projects can be deleted.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenSchemeId** | **String**| The ID of the screen scheme. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getScreenSchemes"></a>
# **getScreenSchemes**
> PageBeanScreenScheme getScreenSchemes(startAt, maxResults, id, expand, queryString, orderBy)

Get screen schemes

    Returns a [paginated](#pagination) list of screen schemes.  Only screen schemes used in classic projects are returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 25] |
| **id** | [**Set**](../Models/Long.md)| The list of screen scheme IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] [default to null] |
| **expand** | **String**| Use [expand](#expansion) include additional information in the response. This parameter accepts &#x60;issueTypeScreenSchemes&#x60; that, for each screen schemes, returns information about the issue type screen scheme the screen scheme is assigned to. | [optional] [default to ] |
| **queryString** | **String**| String used to perform a case-insensitive partial match with screen scheme name. | [optional] [default to ] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;id&#x60; Sorts by screen scheme ID.  *  &#x60;name&#x60; Sorts by screen scheme name. | [optional] [default to null] [enum: name, -name, +name, id, -id, +id] |

### Return type

[**PageBeanScreenScheme**](../Models/PageBeanScreenScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateScreenScheme"></a>
# **updateScreenScheme**
> oas_any_type_not_mapped updateScreenScheme(screenSchemeId, UpdateScreenSchemeDetails)

Update screen scheme

    Updates a screen scheme. Only screen schemes used in classic projects can be updated.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenSchemeId** | **String**| The ID of the screen scheme. | [default to null] |
| **UpdateScreenSchemeDetails** | [**UpdateScreenSchemeDetails**](../Models/UpdateScreenSchemeDetails.md)| The screen scheme update details. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

