# JECApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createJecChannel**](JECApi.md#createJecChannel) | **POST** /v1/jec/channels | Create JEC Channel |
| [**deleteJecChannel**](JECApi.md#deleteJecChannel) | **DELETE** /v1/jec/channels/{id} | Delete JEC channel |
| [**getJecChannel**](JECApi.md#getJecChannel) | **GET** /v1/jec/channels/{id} | Get JEC channel |
| [**listJecChannel**](JECApi.md#listJecChannel) | **GET** /v1/jec/channels | List JEC channels |
| [**sendJecAction**](JECApi.md#sendJecAction) | **POST** /v1/jec/action | Send JEC Action |


<a name="createJecChannel"></a>
# **createJecChannel**
> JecChannelWithApiKey createJecChannel(CreateJecChannelDto)

Create JEC Channel

    Create JEC Channel

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateJecChannelDto** | [**CreateJecChannelDto**](../Models/CreateJecChannelDto.md)|  | [optional] |

### Return type

[**JecChannelWithApiKey**](../Models/JecChannelWithApiKey.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteJecChannel"></a>
# **deleteJecChannel**
> deleteJecChannel(id)

Delete JEC channel

    Delete JEC channel

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Id of JEC channel. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getJecChannel"></a>
# **getJecChannel**
> JecChannelWithApiKey getJecChannel(id)

Get JEC channel

    Returns JEC channel

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Id of JEC channel. | [default to null] |

### Return type

[**JecChannelWithApiKey**](../Models/JecChannelWithApiKey.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listJecChannel"></a>
# **listJecChannel**
> JecChannelList listJecChannel(ownerDomain, size)

List JEC channels

    Lists JEC channels according to the provided filters. - The user should have view permission for JEC

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ownerDomain** | **String**| Owner domain of the channel. (For instance, \&quot;public_*\&quot;) | [optional] [default to null] |
| **size** | **String**| The limit parameter controls the maximum number of items that may be returned for a single request. | [optional] [default to null] |

### Return type

[**JecChannelList**](../Models/JecChannelList.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="sendJecAction"></a>
# **sendJecAction**
> sendJecAction(channelId, SendJecActionDto)

Send JEC Action

    Send JEC Channel Action

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **channelId** | **String**| Id of JEC channel. | [optional] [default to null] |
| **SendJecActionDto** | [**SendJecActionDto**](../Models/SendJecActionDto.md)|  | [optional] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

