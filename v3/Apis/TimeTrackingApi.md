# TimeTrackingApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAvailableTimeTrackingImplementations**](TimeTrackingApi.md#getAvailableTimeTrackingImplementations) | **GET** /rest/api/3/configuration/timetracking/list | Get all time tracking providers |
| [**getSelectedTimeTrackingImplementation**](TimeTrackingApi.md#getSelectedTimeTrackingImplementation) | **GET** /rest/api/3/configuration/timetracking | Get selected time tracking provider |
| [**getSharedTimeTrackingConfiguration**](TimeTrackingApi.md#getSharedTimeTrackingConfiguration) | **GET** /rest/api/3/configuration/timetracking/options | Get time tracking settings |
| [**selectTimeTrackingImplementation**](TimeTrackingApi.md#selectTimeTrackingImplementation) | **PUT** /rest/api/3/configuration/timetracking | Select time tracking provider |
| [**setSharedTimeTrackingConfiguration**](TimeTrackingApi.md#setSharedTimeTrackingConfiguration) | **PUT** /rest/api/3/configuration/timetracking/options | Set time tracking settings |


<a name="getAvailableTimeTrackingImplementations"></a>
# **getAvailableTimeTrackingImplementations**
> List getAvailableTimeTrackingImplementations()

Get all time tracking providers

    Returns all time tracking providers. By default, Jira only has one time tracking provider: *JIRA provided time tracking*. However, you can install other time tracking providers via apps from the Atlassian Marketplace. For more information on time tracking providers, see the documentation for the [ Time Tracking Provider](https://developer.atlassian.com/cloud/jira/platform/modules/time-tracking-provider/) module.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/TimeTrackingProvider.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSelectedTimeTrackingImplementation"></a>
# **getSelectedTimeTrackingImplementation**
> TimeTrackingProvider getSelectedTimeTrackingImplementation()

Get selected time tracking provider

    Returns the time tracking provider that is currently selected. Note that if time tracking is disabled, then a successful but empty response is returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TimeTrackingProvider**](../Models/TimeTrackingProvider.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSharedTimeTrackingConfiguration"></a>
# **getSharedTimeTrackingConfiguration**
> TimeTrackingConfiguration getSharedTimeTrackingConfiguration()

Get time tracking settings

    Returns the time tracking settings. This includes settings such as the time format, default time unit, and others. For more information, see [Configuring time tracking](https://confluence.atlassian.com/x/qoXKM).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**TimeTrackingConfiguration**](../Models/TimeTrackingConfiguration.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="selectTimeTrackingImplementation"></a>
# **selectTimeTrackingImplementation**
> oas_any_type_not_mapped selectTimeTrackingImplementation(TimeTrackingProvider)

Select time tracking provider

    Selects a time tracking provider.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **TimeTrackingProvider** | [**TimeTrackingProvider**](../Models/TimeTrackingProvider.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="setSharedTimeTrackingConfiguration"></a>
# **setSharedTimeTrackingConfiguration**
> TimeTrackingConfiguration setSharedTimeTrackingConfiguration(TimeTrackingConfiguration)

Set time tracking settings

    Sets the time tracking settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **TimeTrackingConfiguration** | [**TimeTrackingConfiguration**](../Models/TimeTrackingConfiguration.md)|  | |

### Return type

[**TimeTrackingConfiguration**](../Models/TimeTrackingConfiguration.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

