# ScreensApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addFieldToDefaultScreen**](ScreensApi.md#addFieldToDefaultScreen) | **POST** /rest/api/3/screens/addToDefault/{fieldId} | Add field to default screen |
| [**createScreen**](ScreensApi.md#createScreen) | **POST** /rest/api/3/screens | Create screen |
| [**deleteScreen**](ScreensApi.md#deleteScreen) | **DELETE** /rest/api/3/screens/{screenId} | Delete screen |
| [**getAvailableScreenFields**](ScreensApi.md#getAvailableScreenFields) | **GET** /rest/api/3/screens/{screenId}/availableFields | Get available screen fields |
| [**getScreens**](ScreensApi.md#getScreens) | **GET** /rest/api/3/screens | Get screens |
| [**getScreensForField**](ScreensApi.md#getScreensForField) | **GET** /rest/api/3/field/{fieldId}/screens | Get screens for a field |
| [**updateScreen**](ScreensApi.md#updateScreen) | **PUT** /rest/api/3/screens/{screenId} | Update screen |


<a name="addFieldToDefaultScreen"></a>
# **addFieldToDefaultScreen**
> oas_any_type_not_mapped addFieldToDefaultScreen(fieldId)

Add field to default screen

    Adds a field to the default tab of the default screen.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the field. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="createScreen"></a>
# **createScreen**
> Screen createScreen(ScreenDetails)

Create screen

    Creates a screen with a default field tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ScreenDetails** | [**ScreenDetails**](../Models/ScreenDetails.md)|  | |

### Return type

[**Screen**](../Models/Screen.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteScreen"></a>
# **deleteScreen**
> deleteScreen(screenId)

Delete screen

    Deletes a screen. A screen cannot be deleted if it is used in a screen scheme, workflow, or workflow draft.  Only screens used in classic projects can be deleted.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAvailableScreenFields"></a>
# **getAvailableScreenFields**
> List getAvailableScreenFields(screenId)

Get available screen fields

    Returns the fields that can be added to a tab on a screen.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |

### Return type

[**List**](../Models/ScreenableField.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getScreens"></a>
# **getScreens**
> PageBeanScreen getScreens(startAt, maxResults, id, queryString, scope, orderBy)

Get screens

    Returns a [paginated](#pagination) list of all screens or those specified by one or more screen IDs.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |
| **id** | [**Set**](../Models/Long.md)| The list of screen IDs. To include multiple IDs, provide an ampersand-separated list. For example, &#x60;id&#x3D;10000&amp;id&#x3D;10001&#x60;. | [optional] [default to null] |
| **queryString** | **String**| String used to perform a case-insensitive partial match with screen name. | [optional] [default to ] |
| **scope** | [**Set**](../Models/String.md)| The scope filter string. To filter by multiple scope, provide an ampersand-separated list. For example, &#x60;scope&#x3D;GLOBAL&amp;scope&#x3D;PROJECT&#x60;. | [optional] [default to null] [enum: GLOBAL, TEMPLATE, PROJECT] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;id&#x60; Sorts by screen ID.  *  &#x60;name&#x60; Sorts by screen name. | [optional] [default to null] [enum: name, -name, +name, id, -id, +id] |

### Return type

[**PageBeanScreen**](../Models/PageBeanScreen.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getScreensForField"></a>
# **getScreensForField**
> PageBeanScreenWithTab getScreensForField(fieldId, startAt, maxResults, expand)

Get screens for a field

    Returns a [paginated](#pagination) list of the screens a field is used in.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the field to return screens for. | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about screens in the response. This parameter accepts &#x60;tab&#x60; which returns details about the screen tabs the field is used in. | [optional] [default to null] |

### Return type

[**PageBeanScreenWithTab**](../Models/PageBeanScreenWithTab.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateScreen"></a>
# **updateScreen**
> Screen updateScreen(screenId, UpdateScreenDetails)

Update screen

    Updates a screen. Only screens used in classic projects can be updated.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **UpdateScreenDetails** | [**UpdateScreenDetails**](../Models/UpdateScreenDetails.md)|  | |

### Return type

[**Screen**](../Models/Screen.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

