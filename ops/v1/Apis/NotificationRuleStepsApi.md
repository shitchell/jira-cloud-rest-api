# NotificationRuleStepsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createNotificationRuleStep**](NotificationRuleStepsApi.md#createNotificationRuleStep) | **POST** /v1/notification-rules/{ruleId}/steps | Create notification rule step |
| [**deleteNotificationRuleStep**](NotificationRuleStepsApi.md#deleteNotificationRuleStep) | **DELETE** /v1/notification-rules/{ruleId}/steps/{id} | Delete notification rule step |
| [**getNotificationRuleStep**](NotificationRuleStepsApi.md#getNotificationRuleStep) | **GET** /v1/notification-rules/{ruleId}/steps/{id} | Get notification rule step |
| [**listNotificationRuleSteps**](NotificationRuleStepsApi.md#listNotificationRuleSteps) | **GET** /v1/notification-rules/{ruleId}/steps | List notification rule steps |
| [**updateNotificationRuleStep**](NotificationRuleStepsApi.md#updateNotificationRuleStep) | **PATCH** /v1/notification-rules/{ruleId}/steps/{id} | Update notification rule step |


<a name="createNotificationRuleStep"></a>
# **createNotificationRuleStep**
> NotificationRulesStepNotificationRuleStep createNotificationRuleStep(ruleId, NotificationRulesStepCreateNotificationRuleStepRequest)

Create notification rule step

    Creates a notification rule step with the given properties.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ruleId** | **String**| Identifier of the notification rule. | [default to null] |
| **NotificationRulesStepCreateNotificationRuleStepRequest** | [**NotificationRulesStepCreateNotificationRuleStepRequest**](../Models/NotificationRulesStepCreateNotificationRuleStepRequest.md)|  | |

### Return type

[**NotificationRulesStepNotificationRuleStep**](../Models/NotificationRulesStepNotificationRuleStep.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteNotificationRuleStep"></a>
# **deleteNotificationRuleStep**
> deleteNotificationRuleStep(ruleId, id)

Delete notification rule step

    Deletes a notification rule step with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ruleId** | **String**| Identifier of the notification rule. | [default to null] |
| **id** | **String**| Identifier of the notification rule step which belongs to given notification rule. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getNotificationRuleStep"></a>
# **getNotificationRuleStep**
> NotificationRulesStepNotificationRuleStep getNotificationRuleStep(ruleId, id)

Get notification rule step

    Gets a notification rule step with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ruleId** | **String**| Identifier of the notification rule. | [default to null] |
| **id** | **String**| Identifier of the notification rule step which belongs to given notification rule. | [default to null] |

### Return type

[**NotificationRulesStepNotificationRuleStep**](../Models/NotificationRulesStepNotificationRuleStep.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listNotificationRuleSteps"></a>
# **listNotificationRuleSteps**
> NotificationRulesStepPaginatedResponse listNotificationRuleSteps(ruleId, offset, size)

List notification rule steps

    Lists all notifaction rule steps for the user. It optionally takes two parameters - offset and size.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ruleId** | **String**| Identifier of the notification rule | [default to null] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **size** | **Integer**| The size parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to 20] |

### Return type

[**NotificationRulesStepPaginatedResponse**](../Models/NotificationRulesStepPaginatedResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateNotificationRuleStep"></a>
# **updateNotificationRuleStep**
> NotificationRulesStepNotificationRuleStep updateNotificationRuleStep(ruleId, id, UpdateNotificationRuleStepRequest)

Update notification rule step

    Updates a notification rule step with given id in the request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ruleId** | **String**| Identifier of the notification rule. | [default to null] |
| **id** | **String**| Identifier of the notification rule step which belongs to given notification rule. | [default to null] |
| **UpdateNotificationRuleStepRequest** | [**UpdateNotificationRuleStepRequest**](../Models/UpdateNotificationRuleStepRequest.md)|  | |

### Return type

[**NotificationRulesStepNotificationRuleStep**](../Models/NotificationRulesStepNotificationRuleStep.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

