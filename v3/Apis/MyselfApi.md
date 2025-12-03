# MyselfApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getCurrentUser**](MyselfApi.md#getCurrentUser) | **GET** /rest/api/3/myself | Get current user |
| [**getLocale**](MyselfApi.md#getLocale) | **GET** /rest/api/3/mypreferences/locale | Get locale |
| [**getPreference**](MyselfApi.md#getPreference) | **GET** /rest/api/3/mypreferences | Get preference |
| [**removePreference**](MyselfApi.md#removePreference) | **DELETE** /rest/api/3/mypreferences | Delete preference |
| [**setLocale**](MyselfApi.md#setLocale) | **PUT** /rest/api/3/mypreferences/locale | Set locale |
| [**setPreference**](MyselfApi.md#setPreference) | **PUT** /rest/api/3/mypreferences | Set preference |


<a name="getCurrentUser"></a>
# **getCurrentUser**
> User getCurrentUser(expand)

Get current user

    Returns details for the current user.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **expand** | **String**| Use [expand](#expansion) to include additional information about user in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;groups&#x60; Returns all groups, including nested groups, the user belongs to.  *  &#x60;applicationRoles&#x60; Returns the application roles the user is assigned to. | [optional] [default to null] |

### Return type

[**User**](../Models/User.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getLocale"></a>
# **getLocale**
> Locale getLocale()

Get locale

    Returns the locale for the user.  If the user has no language preference set (which is the default setting) or this resource is accessed anonymous, the browser locale detected by Jira is returned. Jira detects the browser locale using the *Accept-Language* header in the request. However, if this doesn&#39;t match a locale available Jira, the site default locale is returned.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters
This endpoint does not need any parameter.

### Return type

[**Locale**](../Models/Locale.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPreference"></a>
# **getPreference**
> String getPreference(key)

Get preference

    Returns the value of a preference of the current user.  Note that these keys are deprecated:   *  *jira.user.locale* The locale of the user. By default this is not set and the user takes the locale of the instance.  *  *jira.user.timezone* The time zone of the user. By default this is not set and the user takes the timezone of the instance.  These system preferences keys will be deprecated by 15/07/2024. You can still retrieve these keys, but it will not have any impact on Notification behaviour.   *  *user.notifications.watcher* Whether the user gets notified when they are watcher.  *  *user.notifications.assignee* Whether the user gets notified when they are assignee.  *  *user.notifications.reporter* Whether the user gets notified when they are reporter.  *  *user.notifications.mentions* Whether the user gets notified when they are mentions.  Use [ Update a user profile](https://developer.atlassian.com/cloud/admin/user-management/rest/#api-users-account-id-manage-profile-patch) from the user management REST API to manage timezone and locale instead.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **key** | **String**| The key of the preference. | [default to null] |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removePreference"></a>
# **removePreference**
> removePreference(key)

Delete preference

    Deletes a preference of the user, which restores the default value of system defined settings.  Note that these keys are deprecated:   *  *jira.user.locale* The locale of the user. By default, not set. The user takes the instance locale.  *  *jira.user.timezone* The time zone of the user. By default, not set. The user takes the instance timezone.  Use [ Update a user profile](https://developer.atlassian.com/cloud/admin/user-management/rest/#api-users-account-id-manage-profile-patch) from the user management REST API to manage timezone and locale instead.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **key** | **String**| The key of the preference. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="setLocale"></a>
# **setLocale**
> oas_any_type_not_mapped setLocale(Locale)

Set locale

    Deprecated, use [ Update a user profile](https://developer.atlassian.com/cloud/admin/user-management/rest/#api-users-account-id-manage-profile-patch) from the user management REST API instead.  Sets the locale of the user. The locale must be one supported by the instance of Jira.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Locale** | [**Locale**](../Models/Locale.md)| The locale defined in a LocaleBean. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="setPreference"></a>
# **setPreference**
> oas_any_type_not_mapped setPreference(key, body)

Set preference

    Creates a preference for the user or updates a preference&#39;s value by sending a plain text string. For example, &#x60;false&#x60;. An arbitrary preference can be created with the value containing up to 255 characters. In addition, the following keys define system preferences that can be set or created:   *  *user.notifications.mimetype* The mime type used in notifications sent to the user. Defaults to &#x60;html&#x60;.  *  *user.default.share.private* Whether new [ filters](https://confluence.atlassian.com/x/eQiiLQ) are set to private. Defaults to &#x60;true&#x60;.  *  *user.keyboard.shortcuts.disabled* Whether keyboard shortcuts are disabled. Defaults to &#x60;false&#x60;.  *  *user.autowatch.disabled* Whether the user automatically watches issues they create or add a comment to. By default, not set: the user takes the instance autowatch setting.  *  *user.notifiy.own.changes* Whether the user gets notified of their own changes.  Note that these keys are deprecated:   *  *jira.user.locale* The locale of the user. By default, not set. The user takes the instance locale.  *  *jira.user.timezone* The time zone of the user. By default, not set. The user takes the instance timezone.  These system preferences keys will be deprecated by 15/07/2024. You can still use these keys to create arbitrary preferences, but it will not have any impact on Notification behaviour.   *  *user.notifications.watcher* Whether the user gets notified when they are watcher.  *  *user.notifications.assignee* Whether the user gets notified when they are assignee.  *  *user.notifications.reporter* Whether the user gets notified when they are reporter.  *  *user.notifications.mentions* Whether the user gets notified when they are mentions.  Use [ Update a user profile](https://developer.atlassian.com/cloud/admin/user-management/rest/#api-users-account-id-manage-profile-patch) from the user management REST API to manage timezone and locale instead.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **key** | **String**| The key of the preference. The maximum length is 255 characters. | [default to null] |
| **body** | **String**| The value of the preference as a plain text string. The maximum length is 255 characters. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json, text/plain
- **Accept**: application/json

