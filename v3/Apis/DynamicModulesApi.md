# DynamicModulesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**dynamicModulesResource.getModulesGet**](DynamicModulesApi.md#dynamicModulesResource.getModulesGet) | **GET** /rest/atlassian-connect/1/app/module/dynamic | Get modules |
| [**dynamicModulesResource.registerModulesPost**](DynamicModulesApi.md#dynamicModulesResource.registerModulesPost) | **POST** /rest/atlassian-connect/1/app/module/dynamic | Register modules |
| [**dynamicModulesResource.removeModulesDelete**](DynamicModulesApi.md#dynamicModulesResource.removeModulesDelete) | **DELETE** /rest/atlassian-connect/1/app/module/dynamic | Remove modules |


<a name="dynamicModulesResource.getModulesGet"></a>
# **dynamicModulesResource.getModulesGet**
> ConnectModules dynamicModulesResource.getModulesGet()

Get modules

    Returns all modules registered dynamically by the calling app.  **[Permissions](#permissions) required:** Only Connect apps can make this request.

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConnectModules**](../Models/ConnectModules.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="dynamicModulesResource.registerModulesPost"></a>
# **dynamicModulesResource.registerModulesPost**
> dynamicModulesResource.registerModulesPost(ConnectModules)

Register modules

    Registers a list of modules.  **[Permissions](#permissions) required:** Only Connect apps can make this request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ConnectModules** | [**ConnectModules**](../Models/ConnectModules.md)|  | |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="dynamicModulesResource.removeModulesDelete"></a>
# **dynamicModulesResource.removeModulesDelete**
> dynamicModulesResource.removeModulesDelete(moduleKey)

Remove modules

    Remove all or a list of modules registered by the calling app.  **[Permissions](#permissions) required:** Only Connect apps can make this request.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **moduleKey** | [**List**](../Models/String.md)| The key of the module to remove. To include multiple module keys, provide multiple copies of this parameter. For example, &#x60;moduleKey&#x3D;dynamic-attachment-entity-property&amp;moduleKey&#x3D;dynamic-select-field&#x60;. Nonexistent keys are ignored. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

