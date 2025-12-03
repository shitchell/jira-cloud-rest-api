# UserPropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteUserProperty**](UserPropertiesApi.md#deleteUserProperty) | **DELETE** /rest/api/2/user/properties/{propertyKey} | Delete user property |
| [**getUserProperty**](UserPropertiesApi.md#getUserProperty) | **GET** /rest/api/2/user/properties/{propertyKey} | Get user property |
| [**getUserPropertyKeys**](UserPropertiesApi.md#getUserPropertyKeys) | **GET** /rest/api/2/user/properties | Get user property keys |
| [**setUserProperty**](UserPropertiesApi.md#setUserProperty) | **PUT** /rest/api/2/user/properties/{propertyKey} | Set user property |


<a name="deleteUserProperty"></a>
# **deleteUserProperty**
> deleteUserProperty(propertyKey, accountId, userKey, username)

Delete user property

    Deletes a property from a user.  Note: This operation does not access the [user properties](https://confluence.atlassian.com/x/8YxjL) created and maintained in Jira.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to delete a property from any user.  *  Access to Jira, to delete a property from the calling user&#39;s record.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyKey** | **String**| The key of the user&#39;s property. | [default to null] |
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] [default to null] |
| **userKey** | **String**| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **username** | **String**| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getUserProperty"></a>
# **getUserProperty**
> EntityProperty getUserProperty(propertyKey, accountId, userKey, username)

Get user property

    Returns the value of a user&#39;s property. If no property key is provided [Get user property keys](#api-rest-api-2-user-properties-get) is called.  Note: This operation does not access the [user properties](https://confluence.atlassian.com/x/8YxjL) created and maintained in Jira.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to get a property from any user.  *  Access to Jira, to get a property from the calling user&#39;s record.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyKey** | **String**| The key of the user&#39;s property. | [default to null] |
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] [default to null] |
| **userKey** | **String**| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **username** | **String**| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

[**EntityProperty**](../Models/EntityProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUserPropertyKeys"></a>
# **getUserPropertyKeys**
> PropertyKeys getUserPropertyKeys(accountId, userKey, username)

Get user property keys

    Returns the keys of all properties for a user.  Note: This operation does not access the [user properties](https://confluence.atlassian.com/x/8YxjL) created and maintained in Jira.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to access the property keys on any user.  *  Access to Jira, to access the calling user&#39;s property keys.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] [default to null] |
| **userKey** | **String**| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **username** | **String**| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

[**PropertyKeys**](../Models/PropertyKeys.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setUserProperty"></a>
# **setUserProperty**
> oas_any_type_not_mapped setUserProperty(propertyKey, body, accountId, userKey, username)

Set user property

    Sets the value of a user&#39;s property. Use this resource to store custom data against a user.  Note: This operation does not access the [user properties](https://confluence.atlassian.com/x/8YxjL) created and maintained in Jira.  **[Permissions](#permissions) required:**   *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), to set a property on any user.  *  Access to Jira, to set a property on the calling user&#39;s record.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyKey** | **String**| The key of the user&#39;s property. The maximum length is 255 characters. | [default to null] |
| **body** | **oas_any_type_not_mapped**| The value of the property. The value has to be a valid, non-empty [JSON](https://tools.ietf.org/html/rfc4627) value. The maximum length of the property value is 32768 bytes. | |
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] [default to null] |
| **userKey** | **String**| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **username** | **String**| This parameter is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

