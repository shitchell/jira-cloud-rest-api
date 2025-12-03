# ScreenTabFieldsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addScreenTabField**](ScreenTabFieldsApi.md#addScreenTabField) | **POST** /rest/api/2/screens/{screenId}/tabs/{tabId}/fields | Add screen tab field |
| [**getAllScreenTabFields**](ScreenTabFieldsApi.md#getAllScreenTabFields) | **GET** /rest/api/2/screens/{screenId}/tabs/{tabId}/fields | Get all screen tab fields |
| [**moveScreenTabField**](ScreenTabFieldsApi.md#moveScreenTabField) | **POST** /rest/api/2/screens/{screenId}/tabs/{tabId}/fields/{id}/move | Move screen tab field |
| [**removeScreenTabField**](ScreenTabFieldsApi.md#removeScreenTabField) | **DELETE** /rest/api/2/screens/{screenId}/tabs/{tabId}/fields/{id} | Remove screen tab field |


<a name="addScreenTabField"></a>
# **addScreenTabField**
> ScreenableField addScreenTabField(screenId, tabId, AddFieldBean)

Add screen tab field

    Adds a field to a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **tabId** | **Long**| The ID of the screen tab. | [default to null] |
| **AddFieldBean** | [**AddFieldBean**](../Models/AddFieldBean.md)|  | |

### Return type

[**ScreenableField**](../Models/ScreenableField.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getAllScreenTabFields"></a>
# **getAllScreenTabFields**
> List getAllScreenTabFields(screenId, tabId, projectKey)

Get all screen tab fields

    Returns all fields for a screen tab.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) when the project key is specified, providing that the screen is associated with the project through a Screen Scheme and Issue Type Screen Scheme.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **tabId** | **Long**| The ID of the screen tab. | [default to null] |
| **projectKey** | **String**| The key of the project. | [optional] [default to null] |

### Return type

[**List**](../Models/ScreenableField.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="moveScreenTabField"></a>
# **moveScreenTabField**
> oas_any_type_not_mapped moveScreenTabField(screenId, tabId, id, MoveFieldBean)

Move screen tab field

    Moves a screen tab field.  If &#x60;after&#x60; and &#x60;position&#x60; are provided in the request, &#x60;position&#x60; is ignored.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **tabId** | **Long**| The ID of the screen tab. | [default to null] |
| **id** | **String**| The ID of the field. | [default to null] |
| **MoveFieldBean** | [**MoveFieldBean**](../Models/MoveFieldBean.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="removeScreenTabField"></a>
# **removeScreenTabField**
> removeScreenTabField(screenId, tabId, id)

Remove screen tab field

    Removes a field from a screen tab.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **screenId** | **Long**| The ID of the screen. | [default to null] |
| **tabId** | **Long**| The ID of the screen tab. | [default to null] |
| **id** | **String**| The ID of the field. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

