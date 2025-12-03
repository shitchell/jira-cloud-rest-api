# WebhooksApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteWebhookById**](WebhooksApi.md#deleteWebhookById) | **DELETE** /rest/api/2/webhook | Delete webhooks by ID |
| [**getDynamicWebhooksForApp**](WebhooksApi.md#getDynamicWebhooksForApp) | **GET** /rest/api/2/webhook | Get dynamic webhooks for app |
| [**getFailedWebhooks**](WebhooksApi.md#getFailedWebhooks) | **GET** /rest/api/2/webhook/failed | Get failed webhooks |
| [**refreshWebhooks**](WebhooksApi.md#refreshWebhooks) | **PUT** /rest/api/2/webhook/refresh | Extend webhook life |
| [**registerDynamicWebhooks**](WebhooksApi.md#registerDynamicWebhooks) | **POST** /rest/api/2/webhook | Register dynamic webhooks |


<a name="deleteWebhookById"></a>
# **deleteWebhookById**
> deleteWebhookById(ContainerForWebhookIDs)

Delete webhooks by ID

    Removes webhooks by ID. Only webhooks registered by the calling app are removed. If webhooks created by other apps are specified, they are ignored.  **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/#connect-apps) and [OAuth 2.0](https://developer.atlassian.com/cloud/jira/platform/oauth-2-3lo-apps) apps can use this operation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ContainerForWebhookIDs** | [**ContainerForWebhookIDs**](../Models/ContainerForWebhookIDs.md)|  | |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getDynamicWebhooksForApp"></a>
# **getDynamicWebhooksForApp**
> PageBeanWebhook getDynamicWebhooksForApp(startAt, maxResults)

Get dynamic webhooks for app

    Returns a [paginated](#pagination) list of the webhooks registered by the calling app.  **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/#connect-apps) and [OAuth 2.0](https://developer.atlassian.com/cloud/jira/platform/oauth-2-3lo-apps) apps can use this operation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |

### Return type

[**PageBeanWebhook**](../Models/PageBeanWebhook.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getFailedWebhooks"></a>
# **getFailedWebhooks**
> FailedWebhooks getFailedWebhooks(maxResults, after)

Get failed webhooks

    Returns webhooks that have recently failed to be delivered to the requesting app after the maximum number of retries.  After 72 hours the failure may no longer be returned by this operation.  The oldest failure is returned first.  This method uses a cursor-based pagination. To request the next page use the failure time of the last webhook on the list as the &#x60;failedAfter&#x60; value or use the URL provided in &#x60;next&#x60;.  **[Permissions](#permissions) required:** Only [Connect apps](https://developer.atlassian.com/cloud/jira/platform/index/#connect-apps) can use this operation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **maxResults** | **Integer**| The maximum number of webhooks to return per page. If obeying the maxResults directive would result in records with the same failure time being split across pages, the directive is ignored and all records with the same failure time included on the page. | [optional] [default to null] |
| **after** | **Long**| The time after which any webhook failure must have occurred for the record to be returned, expressed as milliseconds since the UNIX epoch. | [optional] [default to null] |

### Return type

[**FailedWebhooks**](../Models/FailedWebhooks.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="refreshWebhooks"></a>
# **refreshWebhooks**
> WebhooksExpirationDate refreshWebhooks(ContainerForWebhookIDs)

Extend webhook life

    Extends the life of webhook. Webhooks registered through the REST API expire after 30 days. Call this operation to keep them alive.  Unrecognized webhook IDs (those that are not found or belong to other apps) are ignored.  **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/#connect-apps) and [OAuth 2.0](https://developer.atlassian.com/cloud/jira/platform/oauth-2-3lo-apps) apps can use this operation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ContainerForWebhookIDs** | [**ContainerForWebhookIDs**](../Models/ContainerForWebhookIDs.md)|  | |

### Return type

[**WebhooksExpirationDate**](../Models/WebhooksExpirationDate.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="registerDynamicWebhooks"></a>
# **registerDynamicWebhooks**
> ContainerForRegisteredWebhooks registerDynamicWebhooks(WebhookRegistrationDetails)

Register dynamic webhooks

    Registers webhooks.  **NOTE:** for non-public OAuth apps, webhooks are delivered only if there is a match between the app owner and the user who registered a dynamic webhook.  **[Permissions](#permissions) required:** Only [Connect](https://developer.atlassian.com/cloud/jira/platform/#connect-apps) and [OAuth 2.0](https://developer.atlassian.com/cloud/jira/platform/oauth-2-3lo-apps) apps can use this operation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **WebhookRegistrationDetails** | [**WebhookRegistrationDetails**](../Models/WebhookRegistrationDetails.md)|  | |

### Return type

[**ContainerForRegisteredWebhooks**](../Models/ContainerForRegisteredWebhooks.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

