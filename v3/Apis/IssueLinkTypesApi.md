# IssueLinkTypesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createIssueLinkType**](IssueLinkTypesApi.md#createIssueLinkType) | **POST** /rest/api/3/issueLinkType | Create issue link type |
| [**deleteIssueLinkType**](IssueLinkTypesApi.md#deleteIssueLinkType) | **DELETE** /rest/api/3/issueLinkType/{issueLinkTypeId} | Delete issue link type |
| [**getIssueLinkType**](IssueLinkTypesApi.md#getIssueLinkType) | **GET** /rest/api/3/issueLinkType/{issueLinkTypeId} | Get issue link type |
| [**getIssueLinkTypes**](IssueLinkTypesApi.md#getIssueLinkTypes) | **GET** /rest/api/3/issueLinkType | Get issue link types |
| [**updateIssueLinkType**](IssueLinkTypesApi.md#updateIssueLinkType) | **PUT** /rest/api/3/issueLinkType/{issueLinkTypeId} | Update issue link type |


<a name="createIssueLinkType"></a>
# **createIssueLinkType**
> IssueLinkType createIssueLinkType(IssueLinkType)

Create issue link type

    Creates an issue link type. Use this operation to create descriptions of the reasons why issues are linked. The issue link type consists of a name and descriptions for a link&#39;s inward and outward relationships.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueLinkType** | [**IssueLinkType**](../Models/IssueLinkType.md)|  | |

### Return type

[**IssueLinkType**](../Models/IssueLinkType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteIssueLinkType"></a>
# **deleteIssueLinkType**
> deleteIssueLinkType(issueLinkTypeId)

Delete issue link type

    Deletes an issue link type.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueLinkTypeId** | **String**| The ID of the issue link type. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getIssueLinkType"></a>
# **getIssueLinkType**
> IssueLinkType getIssueLinkType(issueLinkTypeId)

Get issue link type

    Returns an issue link type.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for a project in the site.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueLinkTypeId** | **String**| The ID of the issue link type. | [default to null] |

### Return type

[**IssueLinkType**](../Models/IssueLinkType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueLinkTypes"></a>
# **getIssueLinkTypes**
> IssueLinkTypes getIssueLinkTypes()

Get issue link types

    Returns a list of all issue link types.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for a project in the site.

### Parameters
This endpoint does not need any parameter.

### Return type

[**IssueLinkTypes**](../Models/IssueLinkTypes.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateIssueLinkType"></a>
# **updateIssueLinkType**
> IssueLinkType updateIssueLinkType(issueLinkTypeId, IssueLinkType)

Update issue link type

    Updates an issue link type.  To use this operation, the site must have [issue linking](https://confluence.atlassian.com/x/yoXKM) enabled.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueLinkTypeId** | **String**| The ID of the issue link type. | [default to null] |
| **IssueLinkType** | [**IssueLinkType**](../Models/IssueLinkType.md)|  | |

### Return type

[**IssueLinkType**](../Models/IssueLinkType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

