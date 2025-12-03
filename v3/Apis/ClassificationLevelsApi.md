# ClassificationLevelsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAllUserDataClassificationLevels**](ClassificationLevelsApi.md#getAllUserDataClassificationLevels) | **GET** /rest/api/3/classification-levels | Get all classification levels |


<a name="getAllUserDataClassificationLevels"></a>
# **getAllUserDataClassificationLevels**
> DataClassificationLevelsBean getAllUserDataClassificationLevels(status, orderBy)

Get all classification levels

    Returns all classification levels.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **status** | [**Set**](../Models/String.md)| Optional set of statuses to filter by. | [optional] [default to null] [enum: PUBLISHED, ARCHIVED, DRAFT] |
| **orderBy** | **String**| Ordering of the results by a given field. If not provided, values will not be sorted. | [optional] [default to null] [enum: rank, -rank, +rank] |

### Return type

[**DataClassificationLevelsBean**](../Models/DataClassificationLevelsBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

