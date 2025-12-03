# AppPropertiesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addonPropertiesResource.deleteAddonPropertyDelete**](AppPropertiesApi.md#addonPropertiesResource.deleteAddonPropertyDelete) | **DELETE** /rest/atlassian-connect/1/addons/{addonKey}/properties/{propertyKey} | Delete app property |
| [**addonPropertiesResource.getAddonPropertiesGet**](AppPropertiesApi.md#addonPropertiesResource.getAddonPropertiesGet) | **GET** /rest/atlassian-connect/1/addons/{addonKey}/properties | Get app properties |
| [**addonPropertiesResource.getAddonPropertyGet**](AppPropertiesApi.md#addonPropertiesResource.getAddonPropertyGet) | **GET** /rest/atlassian-connect/1/addons/{addonKey}/properties/{propertyKey} | Get app property |
| [**addonPropertiesResource.putAddonPropertyPut**](AppPropertiesApi.md#addonPropertiesResource.putAddonPropertyPut) | **PUT** /rest/atlassian-connect/1/addons/{addonKey}/properties/{propertyKey} | Set app property |
| [**deleteForgeAppProperty**](AppPropertiesApi.md#deleteForgeAppProperty) | **DELETE** /rest/forge/1/app/properties/{propertyKey} | Delete app property (Forge) |
| [**getForgeAppProperty**](AppPropertiesApi.md#getForgeAppProperty) | **GET** /rest/forge/1/app/properties/{propertyKey} | Get app property (Forge) |
| [**getForgeAppPropertyKeys**](AppPropertiesApi.md#getForgeAppPropertyKeys) | **GET** /rest/forge/1/app/properties | Get app property keys (Forge) |
| [**putForgeAppProperty**](AppPropertiesApi.md#putForgeAppProperty) | **PUT** /rest/forge/1/app/properties/{propertyKey} | Set app property (Forge) |


<a name="addonPropertiesResource.deleteAddonPropertyDelete"></a>
# **addonPropertiesResource.deleteAddonPropertyDelete**
> addonPropertiesResource.deleteAddonPropertyDelete(addonKey, propertyKey)

Delete app property

    Deletes an app&#39;s property.  **[Permissions](#permissions) required:** Only a Connect app whose key matches &#x60;addonKey&#x60; can make this request. Additionally, Forge apps can access Connect app properties (stored against the same &#x60;app.connect.key&#x60;).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **addonKey** | **String**| The key of the app, as defined in its descriptor. | [default to null] |
| **propertyKey** | **String**| The key of the property. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="addonPropertiesResource.getAddonPropertiesGet"></a>
# **addonPropertiesResource.getAddonPropertiesGet**
> PropertyKeys addonPropertiesResource.getAddonPropertiesGet(addonKey)

Get app properties

    Gets all the properties of an app.  **[Permissions](#permissions) required:** Only a Connect app whose key matches &#x60;addonKey&#x60; can make this request. Additionally, Forge apps can access Connect app properties (stored against the same &#x60;app.connect.key&#x60;).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **addonKey** | **String**| The key of the app, as defined in its descriptor. | [default to null] |

### Return type

[**PropertyKeys**](../Models/PropertyKeys.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="addonPropertiesResource.getAddonPropertyGet"></a>
# **addonPropertiesResource.getAddonPropertyGet**
> EntityProperty addonPropertiesResource.getAddonPropertyGet(addonKey, propertyKey)

Get app property

    Returns the key and value of an app&#39;s property.  **[Permissions](#permissions) required:** Only a Connect app whose key matches &#x60;addonKey&#x60; can make this request. Additionally, Forge apps can access Connect app properties (stored against the same &#x60;app.connect.key&#x60;).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **addonKey** | **String**| The key of the app, as defined in its descriptor. | [default to null] |
| **propertyKey** | **String**| The key of the property. | [default to null] |

### Return type

[**EntityProperty**](../Models/EntityProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="addonPropertiesResource.putAddonPropertyPut"></a>
# **addonPropertiesResource.putAddonPropertyPut**
> OperationMessage addonPropertiesResource.putAddonPropertyPut(addonKey, propertyKey, body)

Set app property

    Sets the value of an app&#39;s property. Use this resource to store custom data for your app.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  **[Permissions](#permissions) required:** Only a Connect app whose key matches &#x60;addonKey&#x60; can make this request. Additionally, Forge apps can access Connect app properties (stored against the same &#x60;app.connect.key&#x60;).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **addonKey** | **String**| The key of the app, as defined in its descriptor. | [default to null] |
| **propertyKey** | **String**| The key of the property. | [default to null] |
| **body** | **oas_any_type_not_mapped**|  | |

### Return type

[**OperationMessage**](../Models/OperationMessage.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteForgeAppProperty"></a>
# **deleteForgeAppProperty**
> deleteForgeAppProperty(propertyKey)

Delete app property (Forge)

    Deletes a Forge app&#39;s property.  **[Permissions](#permissions) required:** Only Forge apps can make this request. This API can only be accessed using **[asApp()](https://developer.atlassian.com/platform/forge/apis-reference/fetch-api-product.requestjira/#method-signature)** requests from Forge.  The new &#x60;write:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyKey** | **String**| The key of the property. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getForgeAppProperty"></a>
# **getForgeAppProperty**
> getForgeAppProperty_200_response getForgeAppProperty(propertyKey)

Get app property (Forge)

    Returns the value of a Forge app&#39;s property.  **[Permissions](#permissions) required:** Only Forge apps can make this request. This API can only be accessed using **[asApp()](https://developer.atlassian.com/platform/forge/apis-reference/fetch-api-product.requestjira/#method-signature)** requests from Forge.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyKey** | **String**| The key of the property. | [default to null] |

### Return type

[**getForgeAppProperty_200_response**](../Models/getForgeAppProperty_200_response.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getForgeAppPropertyKeys"></a>
# **getForgeAppPropertyKeys**
> getForgeAppPropertyKeys_200_response getForgeAppPropertyKeys()

Get app property keys (Forge)

    Returns all property keys for the Forge app.  **[Permissions](#permissions) required:** Only Forge apps can make this request. This API can only be accessed using **[asApp()](https://developer.atlassian.com/platform/forge/apis-reference/fetch-api-product.requestjira/#method-signature)** requests from Forge.

### Parameters
This endpoint does not need any parameter.

### Return type

[**getForgeAppPropertyKeys_200_response**](../Models/getForgeAppPropertyKeys_200_response.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="putForgeAppProperty"></a>
# **putForgeAppProperty**
> OperationMessage putForgeAppProperty(propertyKey, body)

Set app property (Forge)

    Sets the value of a Forge app&#39;s property. These values can be retrieved in [Jira expressions](/cloud/jira/platform/jira-expressions/) through the &#x60;app&#x60; [context variable](/cloud/jira/platform/jira-expressions/#context-variables). They are also available in [entity property display conditions](/platform/forge/manifest-reference/display-conditions/entity-property-conditions/).  For other use cases, use the [Storage API](/platform/forge/runtime-reference/storage-api/).  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  **[Permissions](#permissions) required:** Only Forge apps can make this request. This API can only be accessed using **[asApp()](https://developer.atlassian.com/platform/forge/apis-reference/fetch-api-product.requestjira/#method-signature)** requests from Forge.  The new &#x60;write:app-data:jira&#x60; OAuth scope is 100% optional now, and not using it won&#39;t break your app. However, we recommend adding it to your app&#39;s scope list because we will eventually make it mandatory.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **propertyKey** | **String**| The key of the property. | [default to null] |
| **body** | **oas_any_type_not_mapped**|  | |

### Return type

[**OperationMessage**](../Models/OperationMessage.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

