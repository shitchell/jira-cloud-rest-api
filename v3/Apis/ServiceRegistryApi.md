# ServiceRegistryApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**serviceRegistryResource.servicesGet**](ServiceRegistryApi.md#serviceRegistryResource.servicesGet) | **GET** /rest/atlassian-connect/1/service-registry | Retrieve the attributes of service registries |


<a name="serviceRegistryResource.servicesGet"></a>
# **serviceRegistryResource.servicesGet**
> List serviceRegistryResource.servicesGet(serviceIds)

Retrieve the attributes of service registries

    Retrieve the attributes of given service registries.  **[Permissions](#permissions) required:** Only Connect apps can make this request and the servicesIds belong to the tenant you are requesting

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **serviceIds** | [**List**](../Models/String.md)| The ID of the services (the strings starting with \&quot;b:\&quot; need to be decoded in Base64). | [default to null] |

### Return type

[**List**](../Models/ServiceRegistry.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

