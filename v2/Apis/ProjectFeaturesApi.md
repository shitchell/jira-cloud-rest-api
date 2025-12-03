# ProjectFeaturesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getFeaturesForProject**](ProjectFeaturesApi.md#getFeaturesForProject) | **GET** /rest/api/2/project/{projectIdOrKey}/features | Get project features |
| [**toggleFeatureForProject**](ProjectFeaturesApi.md#toggleFeatureForProject) | **PUT** /rest/api/2/project/{projectIdOrKey}/features/{featureKey} | Set project feature state |


<a name="getFeaturesForProject"></a>
# **getFeaturesForProject**
> ContainerForProjectFeatures getFeaturesForProject(projectIdOrKey)

Get project features

    Returns the list of features for a project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The ID or (case-sensitive) key of the project. | [default to null] |

### Return type

[**ContainerForProjectFeatures**](../Models/ContainerForProjectFeatures.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="toggleFeatureForProject"></a>
# **toggleFeatureForProject**
> ContainerForProjectFeatures toggleFeatureForProject(projectIdOrKey, featureKey, ProjectFeatureState)

Set project feature state

    Sets the state of a project feature.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The ID or (case-sensitive) key of the project. | [default to null] |
| **featureKey** | **String**| The key of the feature. | [default to null] |
| **ProjectFeatureState** | [**ProjectFeatureState**](../Models/ProjectFeatureState.md)| Details of the feature state change. | |

### Return type

[**ContainerForProjectFeatures**](../Models/ContainerForProjectFeatures.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

