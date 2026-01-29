# ContactsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**activate**](ContactsApi.md#activate) | **PATCH** /v1/users/contacts/{id}/activate | Activate contact |
| [**create**](ContactsApi.md#create) | **POST** /v1/users/contacts | Create contact |
| [**deactivate**](ContactsApi.md#deactivate) | **PATCH** /v1/users/contacts/{id}/deactivate | Deactivate contact |
| [**delete1**](ContactsApi.md#delete1) | **DELETE** /v1/users/contacts/{id} | Delete contact |
| [**get**](ContactsApi.md#get) | **GET** /v1/users/contacts/{id} | Get contact |
| [**list**](ContactsApi.md#list) | **GET** /v1/users/contacts | List contacts |
| [**update1**](ContactsApi.md#update1) | **PATCH** /v1/users/contacts/{id} | Update contact |


<a name="activate"></a>
# **activate**
> ContactSuccessResponse activate(id)

Activate contact

    Activates a contact of a user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |

### Return type

[**ContactSuccessResponse**](../Models/ContactSuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="create"></a>
# **create**
> ContactCreateResponse create(CreateContactPayload)

Create contact

    Creates a new contact for a user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateContactPayload** | [**CreateContactPayload**](../Models/CreateContactPayload.md)|  | [optional] |

### Return type

[**ContactCreateResponse**](../Models/ContactCreateResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deactivate"></a>
# **deactivate**
> ContactSuccessResponse deactivate(id)

Deactivate contact

    Deactivates a contact of a user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |

### Return type

[**ContactSuccessResponse**](../Models/ContactSuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="delete1"></a>
# **delete1**
> delete1(id)

Delete contact

    Delete a contact of a user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="get"></a>
# **get**
> ContactResponse get(id)

Get contact

    Returns the details of a contact.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |

### Return type

[**ContactResponse**](../Models/ContactResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="list"></a>
# **list**
> PaginatedResponseContactWithApplyOrderResponse list(offset, size, targetAccountId)

List contacts

    Returns the list of the contacts of a user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **offset** | **Integer**|  | [optional] [default to 0] |
| **size** | **Integer**|  | [optional] [default to 20] |
| **targetAccountId** | **String**| This field is used by users with Jira Admin or Ops Admin privileges to retrieve the contact information of the target user. | [optional] [default to null] |

### Return type

[**PaginatedResponseContactWithApplyOrderResponse**](../Models/PaginatedResponseContactWithApplyOrderResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="update1"></a>
# **update1**
> ContactSuccessResponse update1(id, UpdateContactPayload)

Update contact

    Update the details of a contact of a user. This method can be applied only to email contacts.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |
| **UpdateContactPayload** | [**UpdateContactPayload**](../Models/UpdateContactPayload.md)|  | [optional] |

### Return type

[**ContactSuccessResponse**](../Models/ContactSuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

