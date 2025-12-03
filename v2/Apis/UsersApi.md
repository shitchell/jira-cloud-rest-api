# UsersApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**bulkGetUsers**](UsersApi.md#bulkGetUsers) | **GET** /rest/api/2/user/bulk | Bulk get users |
| [**bulkGetUsersMigration**](UsersApi.md#bulkGetUsersMigration) | **GET** /rest/api/2/user/bulk/migration | Get account IDs for users |
| [**createUser**](UsersApi.md#createUser) | **POST** /rest/api/2/user | Create user |
| [**getAllUsers**](UsersApi.md#getAllUsers) | **GET** /rest/api/2/users/search | Get all users |
| [**getAllUsersDefault**](UsersApi.md#getAllUsersDefault) | **GET** /rest/api/2/users | Get all users default |
| [**getUser**](UsersApi.md#getUser) | **GET** /rest/api/2/user | Get user |
| [**getUserDefaultColumns**](UsersApi.md#getUserDefaultColumns) | **GET** /rest/api/2/user/columns | Get user default columns |
| [**getUserEmail**](UsersApi.md#getUserEmail) | **GET** /rest/api/2/user/email | Get user email |
| [**getUserEmailBulk**](UsersApi.md#getUserEmailBulk) | **GET** /rest/api/2/user/email/bulk | Get user email bulk |
| [**getUserGroups**](UsersApi.md#getUserGroups) | **GET** /rest/api/2/user/groups | Get user groups |
| [**removeUser**](UsersApi.md#removeUser) | **DELETE** /rest/api/2/user | Delete user |
| [**resetUserColumns**](UsersApi.md#resetUserColumns) | **DELETE** /rest/api/2/user/columns | Reset user default columns |
| [**setUserColumns**](UsersApi.md#setUserColumns) | **PUT** /rest/api/2/user/columns | Set user default columns |


<a name="bulkGetUsers"></a>
# **bulkGetUsers**
> PageBeanUser bulkGetUsers(accountId, startAt, maxResults, username, key)

Bulk get users

    Returns a [paginated](#pagination) list of the users specified by one or more account IDs.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | [**List**](../Models/String.md)| The account ID of a user. To specify multiple users, pass multiple &#x60;accountId&#x60; parameters. For example, &#x60;accountId&#x3D;5b10a2844c20165700ede21g&amp;accountId&#x3D;5b10ac8d82e05b22cc7d4ef5&#x60;. | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 10] |
| **username** | [**List**](../Models/String.md)| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **key** | [**List**](../Models/String.md)| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

[**PageBeanUser**](../Models/PageBeanUser.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="bulkGetUsersMigration"></a>
# **bulkGetUsersMigration**
> List bulkGetUsersMigration(startAt, maxResults, username, key)

Get account IDs for users

    Returns the account IDs for the users specified in the &#x60;key&#x60; or &#x60;username&#x60; parameters. Note that multiple &#x60;key&#x60; or &#x60;username&#x60; parameters can be specified.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 10] |
| **username** | [**List**](../Models/String.md)| Username of a user. To specify multiple users, pass multiple copies of this parameter. For example, &#x60;username&#x3D;fred&amp;username&#x3D;barney&#x60;. Required if &#x60;key&#x60; isn&#39;t provided. Cannot be provided if &#x60;key&#x60; is present. | [optional] [default to null] |
| **key** | [**List**](../Models/String.md)| Key of a user. To specify multiple users, pass multiple copies of this parameter. For example, &#x60;key&#x3D;fred&amp;key&#x3D;barney&#x60;. Required if &#x60;username&#x60; isn&#39;t provided. Cannot be provided if &#x60;username&#x60; is present. | [optional] [default to null] |

### Return type

[**List**](../Models/UserMigrationBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="createUser"></a>
# **createUser**
> User createUser(NewUserDetails)

Create user

    Creates a user. This resource is retained for legacy compatibility. As soon as a more suitable alternative is available this resource will be deprecated.  If the user exists and has access to Jira, the operation returns a 201 status. If the user exists but does not have access to Jira, the operation returns a 400 status.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **NewUserDetails** | [**NewUserDetails**](../Models/NewUserDetails.md)| Details about the user to be created. | |

### Return type

[**User**](../Models/User.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getAllUsers"></a>
# **getAllUsers**
> List getAllUsers(startAt, maxResults)

Get all users

    Returns a list of all users, including active users, inactive users and previously deleted users that have an Atlassian account.  Privacy controls are applied to the response based on the users&#39; preferences. This could mean, for example, that the user&#39;s email address is hidden. See the [Profile visibility overview](https://developer.atlassian.com/cloud/jira/platform/profile-visibility/) for more details.  **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Integer**| The index of the first item to return. | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return (limited to 1000). | [optional] [default to 50] |

### Return type

[**List**](../Models/User.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAllUsersDefault"></a>
# **getAllUsersDefault**
> List getAllUsersDefault(startAt, maxResults)

Get all users default

    Returns a list of all users, including active users, inactive users and previously deleted users that have an Atlassian account.  Privacy controls are applied to the response based on the users&#39; preferences. This could mean, for example, that the user&#39;s email address is hidden. See the [Profile visibility overview](https://developer.atlassian.com/cloud/jira/platform/profile-visibility/) for more details.  **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Integer**| The index of the first item to return. | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return (limited to 1000). | [optional] [default to 50] |

### Return type

[**List**](../Models/User.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> User getUser(accountId, username, key, expand)

Get user

    Returns a user.  Privacy controls are applied to the response based on the user&#39;s preferences. This could mean, for example, that the user&#39;s email address is hidden. See the [Profile visibility overview](https://developer.atlassian.com/cloud/jira/platform/profile-visibility/) for more details.  **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Required. | [optional] [default to null] |
| **username** | **String**| This parameter is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide) for details. | [optional] [default to null] |
| **key** | **String**| This parameter is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide) for details. | [optional] [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about users in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;groups&#x60; includes all groups and nested groups to which the user belongs.  *  &#x60;applicationRoles&#x60; includes details of all the applications to which the user has access. | [optional] [default to null] |

### Return type

[**User**](../Models/User.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUserDefaultColumns"></a>
# **getUserDefaultColumns**
> List getUserDefaultColumns(accountId, username)

Get user default columns

    Returns the default [issue table columns](https://confluence.atlassian.com/x/XYdKLg) for the user. If &#x60;accountId&#x60; is not passed in the request, the calling user&#39;s details are returned.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLgl), to get the column details for any user.  *  Permission to access Jira, to get the calling user&#39;s column details.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] [default to null] |
| **username** | **String**| This parameter is no longer available See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

[**List**](../Models/ColumnItem.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUserEmail"></a>
# **getUserEmail**
> UnrestrictedUserEmail getUserEmail(accountId)

Get user email

    Returns a user&#39;s email address regardless of the user&#39;s profile visibility settings. For Connect apps, this API is only available to apps approved by Atlassian, according to these [guidelines](https://community.developer.atlassian.com/t/guidelines-for-requesting-access-to-email-address/27603). For Forge apps, this API only supports access via asApp() requests.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, &#x60;5b10ac8d82e05b22cc7d4ef5&#x60;. | [default to null] |

### Return type

[**UnrestrictedUserEmail**](../Models/UnrestrictedUserEmail.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUserEmailBulk"></a>
# **getUserEmailBulk**
> UnrestrictedUserEmail getUserEmailBulk(accountId)

Get user email bulk

    Returns a user&#39;s email address regardless of the user&#39;s profile visibility settings. For Connect apps, this API is only available to apps approved by Atlassian, according to these [guidelines](https://community.developer.atlassian.com/t/guidelines-for-requesting-access-to-email-address/27603). For Forge apps, this API only supports access via asApp() requests.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | [**List**](../Models/String.md)| The account IDs of the users for which emails are required. An &#x60;accountId&#x60; is an identifier that uniquely identifies the user across all Atlassian products. For example, &#x60;5b10ac8d82e05b22cc7d4ef5&#x60;. Note, this should be treated as an opaque identifier (that is, do not assume any structure in the value). | [default to null] |

### Return type

[**UnrestrictedUserEmail**](../Models/UnrestrictedUserEmail.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUserGroups"></a>
# **getUserGroups**
> List getUserGroups(accountId, username, key)

Get user groups

    Returns the groups to which a user belongs.  **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [default to null] |
| **username** | **String**| This parameter is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **key** | **String**| This parameter is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

[**List**](../Models/GroupName.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeUser"></a>
# **removeUser**
> removeUser(accountId, username, key)

Delete user

    Deletes a user. If the operation completes successfully then the user is removed from Jira&#39;s user base. This operation does not delete the user&#39;s Atlassian account.  **[Permissions](#permissions) required:** Site administration (that is, membership of the *site-admin* [group](https://confluence.atlassian.com/x/24xjL)).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [default to null] |
| **username** | **String**| This parameter is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **key** | **String**| This parameter is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="resetUserColumns"></a>
# **resetUserColumns**
> resetUserColumns(accountId, username)

Reset user default columns

    Resets the default [ issue table columns](https://confluence.atlassian.com/x/XYdKLg) for the user to the system default. If &#x60;accountId&#x60; is not passed, the calling user&#39;s default columns are reset.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to set the columns on any user.  *  Permission to access Jira, to set the calling user&#39;s columns.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] [default to null] |
| **username** | **String**| This parameter is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="setUserColumns"></a>
# **setUserColumns**
> oas_any_type_not_mapped setUserColumns(UserColumnRequestBody, accountId)

Set user default columns

    Sets the default [ issue table columns](https://confluence.atlassian.com/x/XYdKLg) for the user. If an account ID is not passed, the calling user&#39;s default columns are set. If no column details are sent, then all default columns are removed.  The parameters for this resource are expressed as HTML form data. For example, in curl:  &#x60;curl -X PUT -d columns&#x3D;summary -d columns&#x3D;description https://your-domain.atlassian.net/rest/api/2/user/columns?accountId&#x3D;5b10ac8d82e05b22cc7d4ef5&#39;&#x60;  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to set the columns on any user.  *  Permission to access Jira, to set the calling user&#39;s columns.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **UserColumnRequestBody** | [**UserColumnRequestBody**](../Models/UserColumnRequestBody.md)| The ID of a column to set. To set multiple columns, send multiple &#x60;columns&#x60; parameters. | |
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

