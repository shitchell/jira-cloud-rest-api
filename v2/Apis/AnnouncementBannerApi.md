# AnnouncementBannerApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getBanner**](AnnouncementBannerApi.md#getBanner) | **GET** /rest/api/2/announcementBanner | Get announcement banner configuration |
| [**setBanner**](AnnouncementBannerApi.md#setBanner) | **PUT** /rest/api/2/announcementBanner | Update announcement banner configuration |


<a name="getBanner"></a>
# **getBanner**
> AnnouncementBannerConfiguration getBanner()

Get announcement banner configuration

    Returns the current announcement banner configuration.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**AnnouncementBannerConfiguration**](../Models/AnnouncementBannerConfiguration.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setBanner"></a>
# **setBanner**
> oas_any_type_not_mapped setBanner(AnnouncementBannerConfigurationUpdate)

Update announcement banner configuration

    Updates the announcement banner configuration.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **AnnouncementBannerConfigurationUpdate** | [**AnnouncementBannerConfigurationUpdate**](../Models/AnnouncementBannerConfigurationUpdate.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

