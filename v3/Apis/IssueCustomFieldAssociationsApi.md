# IssueCustomFieldAssociationsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createAssociations**](IssueCustomFieldAssociationsApi.md#createAssociations) | **PUT** /rest/api/3/field/association | Create associations |
| [**removeAssociations**](IssueCustomFieldAssociationsApi.md#removeAssociations) | **DELETE** /rest/api/3/field/association | Remove associations |


<a name="createAssociations"></a>
# **createAssociations**
> oas_any_type_not_mapped createAssociations(FieldAssociationsRequest)

Create associations

    Associates fields with projects.  Fields will be associated with each issue type on the requested projects.  Fields will be associated with all projects that share the same field configuration which the provided projects are using. This means that while the field will be associated with the requested projects, it will also be associated with any other projects that share the same field configuration.  If a success response is returned it means that the field association has been created in any applicable contexts where it wasn&#39;t already present.  Up to 50 fields and up to 100 projects can be associated in a single request. If more fields or projects are provided a 400 response will be returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **FieldAssociationsRequest** | [**FieldAssociationsRequest**](../Models/FieldAssociationsRequest.md)| Payload containing the fields to associate and the projects to associate them to. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="removeAssociations"></a>
# **removeAssociations**
> oas_any_type_not_mapped removeAssociations(FieldAssociationsRequest)

Remove associations

    Unassociates a set of fields with a project and issue type context.  Fields will be unassociated with all projects/issue types that share the same field configuration which the provided project and issue types are using. This means that while the field will be unassociated with the provided project and issue types, it will also be unassociated with any other projects and issue types that share the same field configuration.  If a success response is returned it means that the field association has been removed in any applicable contexts where it was present.  Up to 50 fields and up to 100 projects and issue types can be unassociated in a single request. If more fields or projects are provided a 400 response will be returned.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **FieldAssociationsRequest** | [**FieldAssociationsRequest**](../Models/FieldAssociationsRequest.md)| Payload containing the fields to uassociate and the projects and issue types to unassociate them to. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

