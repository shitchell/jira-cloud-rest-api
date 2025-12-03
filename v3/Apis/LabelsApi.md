# LabelsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAllLabels**](LabelsApi.md#getAllLabels) | **GET** /rest/api/3/label | Get all labels |


<a name="getAllLabels"></a>
# **getAllLabels**
> PageBeanString getAllLabels(startAt, maxResults)

Get all labels

    Returns a [paginated](#pagination) list of labels.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 1000] |

### Return type

[**PageBeanString**](../Models/PageBeanString.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

