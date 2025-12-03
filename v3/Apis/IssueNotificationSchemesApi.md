# IssueNotificationSchemesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addNotifications**](IssueNotificationSchemesApi.md#addNotifications) | **PUT** /rest/api/3/notificationscheme/{id}/notification | Add notifications to notification scheme |
| [**createNotificationScheme**](IssueNotificationSchemesApi.md#createNotificationScheme) | **POST** /rest/api/3/notificationscheme | Create notification scheme |
| [**deleteNotificationScheme**](IssueNotificationSchemesApi.md#deleteNotificationScheme) | **DELETE** /rest/api/3/notificationscheme/{notificationSchemeId} | Delete notification scheme |
| [**getNotificationScheme**](IssueNotificationSchemesApi.md#getNotificationScheme) | **GET** /rest/api/3/notificationscheme/{id} | Get notification scheme |
| [**getNotificationSchemeToProjectMappings**](IssueNotificationSchemesApi.md#getNotificationSchemeToProjectMappings) | **GET** /rest/api/3/notificationscheme/project | Get projects using notification schemes paginated |
| [**getNotificationSchemes**](IssueNotificationSchemesApi.md#getNotificationSchemes) | **GET** /rest/api/3/notificationscheme | Get notification schemes paginated |
| [**removeNotificationFromNotificationScheme**](IssueNotificationSchemesApi.md#removeNotificationFromNotificationScheme) | **DELETE** /rest/api/3/notificationscheme/{notificationSchemeId}/notification/{notificationId} | Remove notification from notification scheme |
| [**updateNotificationScheme**](IssueNotificationSchemesApi.md#updateNotificationScheme) | **PUT** /rest/api/3/notificationscheme/{id} | Update notification scheme |


<a name="addNotifications"></a>
# **addNotifications**
> oas_any_type_not_mapped addNotifications(id, AddNotificationsDetails)

Add notifications to notification scheme

    Adds notifications to a notification scheme. You can add up to 1000 notifications per request.  *Deprecated: The notification type &#x60;EmailAddress&#x60; is no longer supported in Cloud. Refer to the [changelog](https://developer.atlassian.com/cloud/jira/platform/changelog/#CHANGE-1031) for more details.*  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the notification scheme. | [default to null] |
| **AddNotificationsDetails** | [**AddNotificationsDetails**](../Models/AddNotificationsDetails.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createNotificationScheme"></a>
# **createNotificationScheme**
> NotificationSchemeId createNotificationScheme(CreateNotificationSchemeDetails)

Create notification scheme

    Creates a notification scheme with notifications. You can create up to 1000 notifications per request.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateNotificationSchemeDetails** | [**CreateNotificationSchemeDetails**](../Models/CreateNotificationSchemeDetails.md)|  | |

### Return type

[**NotificationSchemeId**](../Models/NotificationSchemeId.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteNotificationScheme"></a>
# **deleteNotificationScheme**
> oas_any_type_not_mapped deleteNotificationScheme(notificationSchemeId)

Delete notification scheme

    Deletes a notification scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **notificationSchemeId** | **String**| The ID of the notification scheme. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getNotificationScheme"></a>
# **getNotificationScheme**
> NotificationScheme getNotificationScheme(id, expand)

Get notification scheme

    Returns a [notification scheme](https://confluence.atlassian.com/x/8YdKLg), including the list of events and the recipients who will receive notifications for those events.  **[Permissions](#permissions) required:** Permission to access Jira, however, the user must have permission to administer at least one project associated with the notification scheme.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**| The ID of the notification scheme. Use [Get notification schemes paginated](#api-rest-api-3-notificationscheme-get) to get a list of notification scheme IDs. | [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;all&#x60; Returns all expandable information  *  &#x60;field&#x60; Returns information about any custom fields assigned to receive an event  *  &#x60;group&#x60; Returns information about any groups assigned to receive an event  *  &#x60;notificationSchemeEvents&#x60; Returns a list of event associations. This list is returned for all expandable information  *  &#x60;projectRole&#x60; Returns information about any project roles assigned to receive an event  *  &#x60;user&#x60; Returns information about any users assigned to receive an event | [optional] [default to null] |

### Return type

[**NotificationScheme**](../Models/NotificationScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getNotificationSchemeToProjectMappings"></a>
# **getNotificationSchemeToProjectMappings**
> PageBeanNotificationSchemeAndProjectMappingJsonBean getNotificationSchemeToProjectMappings(startAt, maxResults, notificationSchemeId, projectId)

Get projects using notification schemes paginated

    Returns a [paginated](#pagination) mapping of project that have notification scheme assigned. You can provide either one or multiple notification scheme IDs or project IDs to filter by. If you don&#39;t provide any, this will return a list of all mappings. Note that only company-managed (classic) projects are supported. This is because team-managed projects don&#39;t have a concept of a default notification scheme. The mappings are ordered by projectId.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **notificationSchemeId** | [**Set**](../Models/String.md)| The list of notifications scheme IDs to be filtered out | [optional] [default to null] |
| **projectId** | [**Set**](../Models/String.md)| The list of project IDs to be filtered out | [optional] [default to null] |

### Return type

[**PageBeanNotificationSchemeAndProjectMappingJsonBean**](../Models/PageBeanNotificationSchemeAndProjectMappingJsonBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getNotificationSchemes"></a>
# **getNotificationSchemes**
> PageBeanNotificationScheme getNotificationSchemes(startAt, maxResults, id, projectId, onlyDefault, expand)

Get notification schemes paginated

    Returns a [paginated](#pagination) list of [notification schemes](https://confluence.atlassian.com/x/8YdKLg) ordered by the display name.  *Note that you should allow for events without recipients to appear in responses.*  **[Permissions](#permissions) required:** Permission to access Jira, however, the user must have permission to administer at least one project associated with a notification scheme for it to be returned.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **String**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **String**| The maximum number of items to return per page. | [optional] [default to 50] |
| **id** | [**Set**](../Models/String.md)| The list of notification schemes IDs to be filtered by | [optional] [default to null] |
| **projectId** | [**Set**](../Models/String.md)| The list of projects IDs to be filtered by | [optional] [default to null] |
| **onlyDefault** | **Boolean**| When set to true, returns only the default notification scheme. If you provide project IDs not associated with the default, returns an empty page. The default value is false. | [optional] [default to false] |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;all&#x60; Returns all expandable information  *  &#x60;field&#x60; Returns information about any custom fields assigned to receive an event  *  &#x60;group&#x60; Returns information about any groups assigned to receive an event  *  &#x60;notificationSchemeEvents&#x60; Returns a list of event associations. This list is returned for all expandable information  *  &#x60;projectRole&#x60; Returns information about any project roles assigned to receive an event  *  &#x60;user&#x60; Returns information about any users assigned to receive an event | [optional] [default to null] |

### Return type

[**PageBeanNotificationScheme**](../Models/PageBeanNotificationScheme.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeNotificationFromNotificationScheme"></a>
# **removeNotificationFromNotificationScheme**
> oas_any_type_not_mapped removeNotificationFromNotificationScheme(notificationSchemeId, notificationId)

Remove notification from notification scheme

    Removes a notification from a notification scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **notificationSchemeId** | **String**| The ID of the notification scheme. | [default to null] |
| **notificationId** | **String**| The ID of the notification. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateNotificationScheme"></a>
# **updateNotificationScheme**
> oas_any_type_not_mapped updateNotificationScheme(id, UpdateNotificationSchemeDetails)

Update notification scheme

    Updates a notification scheme.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the notification scheme. | [default to null] |
| **UpdateNotificationSchemeDetails** | [**UpdateNotificationSchemeDetails**](../Models/UpdateNotificationSchemeDetails.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

