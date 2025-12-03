# LicenseMetricsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getApproximateApplicationLicenseCount**](LicenseMetricsApi.md#getApproximateApplicationLicenseCount) | **GET** /rest/api/3/license/approximateLicenseCount/product/{applicationKey} | Get approximate application license count |
| [**getApproximateLicenseCount**](LicenseMetricsApi.md#getApproximateLicenseCount) | **GET** /rest/api/3/license/approximateLicenseCount | Get approximate license count |
| [**getLicense**](LicenseMetricsApi.md#getLicense) | **GET** /rest/api/3/instance/license | Get license |


<a name="getApproximateApplicationLicenseCount"></a>
# **getApproximateApplicationLicenseCount**
> LicenseMetric getApproximateApplicationLicenseCount(applicationKey)

Get approximate application license count

    Returns the total approximate number of user accounts for a single Jira license. Note that this information is cached with a 7-day lifecycle and could be stale at the time of call.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **applicationKey** | **String**| The ID of the application, represents a specific version of Jira. | [default to null] [enum: jira-core, jira-product-discovery, jira-software, jira-servicedesk] |

### Return type

[**LicenseMetric**](../Models/LicenseMetric.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getApproximateLicenseCount"></a>
# **getApproximateLicenseCount**
> LicenseMetric getApproximateLicenseCount()

Get approximate license count

    Returns the approximate number of user accounts across all Jira licenses. Note that this information is cached with a 7-day lifecycle and could be stale at the time of call.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**LicenseMetric**](../Models/LicenseMetric.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getLicense"></a>
# **getLicense**
> License getLicense()

Get license

    Returns licensing information about the Jira instance.  **[Permissions](#permissions) required:** None.

### Parameters
This endpoint does not need any parameter.

### Return type

[**License**](../Models/License.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

