# NotificationRulesApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createNotificationRule**](NotificationRulesApi.md#createNotificationRule) | **POST** /v1/notification-rules | Create notification rule |
| [**deleteNotificationRule**](NotificationRulesApi.md#deleteNotificationRule) | **DELETE** /v1/notification-rules/{id} | Delete notification rule |
| [**getNotificationRule**](NotificationRulesApi.md#getNotificationRule) | **GET** /v1/notification-rules/{id} | Get notification rule |
| [**listNotificationRule**](NotificationRulesApi.md#listNotificationRule) | **GET** /v1/notification-rules | List notification rules |
| [**updateNotificationRule**](NotificationRulesApi.md#updateNotificationRule) | **PATCH** /v1/notification-rules/{id} | Update notification rule |


<a name="createNotificationRule"></a>
# **createNotificationRule**
> NotificationRuleResponse createNotificationRule(NotificationRuleRequest)

Create notification rule

    Creates a notification rule with the given properties for the user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **NotificationRuleRequest** | [**NotificationRuleRequest**](../Models/NotificationRuleRequest.md)|  | |

### Return type

[**NotificationRuleResponse**](../Models/NotificationRuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteNotificationRule"></a>
# **deleteNotificationRule**
> deleteNotificationRule(id)

Delete notification rule

    Deletes a notification rule with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the notification rule | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getNotificationRule"></a>
# **getNotificationRule**
> NotificationRuleResponse getNotificationRule(id)

Get notification rule

    Gets a notification rule with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the notification rule | [default to null] |

### Return type

[**NotificationRuleResponse**](../Models/NotificationRuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listNotificationRule"></a>
# **listNotificationRule**
> NotificationRulesPaginatedResponse listNotificationRule(offset, size)

List notification rules

    Lists all notification rules for the user. It optionally takes two parameters - offset and size.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **size** | **Integer**| The size parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 20] |

### Return type

[**NotificationRulesPaginatedResponse**](../Models/NotificationRulesPaginatedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateNotificationRule"></a>
# **updateNotificationRule**
> NotificationRuleResponse updateNotificationRule(id, NotificationRuleRequest)

Update notification rule

    Updates a notification rule with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the notification rule | [default to null] |
| **NotificationRuleRequest** | [**NotificationRuleRequest**](../Models/NotificationRuleRequest.md)|  | |

### Return type

[**NotificationRuleResponse**](../Models/NotificationRuleResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

