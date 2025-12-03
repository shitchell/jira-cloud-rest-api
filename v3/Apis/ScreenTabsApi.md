# ScreenTabsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addScreenTab**](ScreenTabsApi.md#addScreenTab) | **POST** /rest/api/3/screens/{screenId}/tabs | Create screen tab |
| [**deleteScreenTab**](ScreenTabsApi.md#deleteScreenTab) | **DELETE** /rest/api/3/screens/{screenId}/tabs/{tabId} | Delete screen tab |
| [**getAllScreenTabs**](ScreenTabsApi.md#getAllScreenTabs) | **GET** /rest/api/3/screens/{screenId}/tabs | Get all screen tabs |
| [**getBulkScreenTabs**](ScreenTabsApi.md#getBulkScreenTabs) | **GET** /rest/api/3/screens/tabs | Get bulk screen tabs |
| [**moveScreenTab**](ScreenTabsApi.md#moveScreenTab) | **POST** /rest/api/3/screens/{screenId}/tabs/{tabId}/move/{pos} | Move screen tab |
| [**renameScreenTab**](ScreenTabsApi.md#renameScreenTab) | **PUT** /rest/api/3/screens/{screenId}/tabs/{tabId} | Update screen tab |


<a name="addScreenTab"></a>
# **addScreenTab**
> ScreenableTab addScreenTab(screenId, ScreenableTab)

Create screen tab

    Creates a tab for a screen.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **ScreenableTab** | [**ScreenableTab**](../Models/ScreenableTab.md)|  | |

### Return type

[**ScreenableTab**](../Models/ScreenableTab.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteScreenTab"></a>
# **deleteScreenTab**
> deleteScreenTab(screenId, tabId)

Delete screen tab

    Deletes a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **tabId** | **Long**| The ID of the screen tab. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getAllScreenTabs"></a>
# **getAllScreenTabs**
> List getAllScreenTabs(screenId, projectKey)

Get all screen tabs

    Returns the list of tabs for a screen.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) when the project key is specified, providing that the screen is associated with the project through a Screen Scheme and Issue Type Screen Scheme.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **projectKey** | **String**| The key of the project. | [optional] [default to null] |

### Return type

[**List**](../Models/ScreenableTab.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getBulkScreenTabs"></a>
# **getBulkScreenTabs**
> getBulkScreenTabs(screenId, tabId, startAt, maxResult)

Get bulk screen tabs

    Returns the list of tabs for a bulk of screens.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | [**Set**](../Models/Long.md)| The list of screen IDs. To include multiple screen IDs, provide an ampersand-separated list. For example, &#x60;screenId&#x3D;10000&amp;screenId&#x3D;10001&#x60;. | [optional] [default to null] |
| **tabId** | [**Set**](../Models/Long.md)| The list of tab IDs. To include multiple tab IDs, provide an ampersand-separated list. For example, &#x60;tabId&#x3D;10000&amp;tabId&#x3D;10001&#x60;. | [optional] [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResult** | **Integer**| The maximum number of items to return per page. The maximum number is 100, | [optional] [default to 100] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="moveScreenTab"></a>
# **moveScreenTab**
> oas_any_type_not_mapped moveScreenTab(screenId, tabId, pos)

Move screen tab

    Moves a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **tabId** | **Long**| The ID of the screen tab. | [default to null] |
| **pos** | **Integer**| The position of tab. The base index is 0. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="renameScreenTab"></a>
# **renameScreenTab**
> ScreenableTab renameScreenTab(screenId, tabId, ScreenableTab)

Update screen tab

    Updates the name of a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **tabId** | **Long**| The ID of the screen tab. | [default to null] |
| **ScreenableTab** | [**ScreenableTab**](../Models/ScreenableTab.md)|  | |

### Return type

[**ScreenableTab**](../Models/ScreenableTab.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

