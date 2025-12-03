# IssueFieldsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCustomField**](IssueFieldsApi.md#createCustomField) | **POST** /rest/api/2/field | Create custom field |
| [**deleteCustomField**](IssueFieldsApi.md#deleteCustomField) | **DELETE** /rest/api/2/field/{id} | Delete custom field |
| [**getContextsForFieldDeprecated**](IssueFieldsApi.md#getContextsForFieldDeprecated) | **GET** /rest/api/2/field/{fieldId}/contexts | Get contexts for a field |
| [**getFields**](IssueFieldsApi.md#getFields) | **GET** /rest/api/2/field | Get fields |
| [**getFieldsPaginated**](IssueFieldsApi.md#getFieldsPaginated) | **GET** /rest/api/2/field/search | Get fields paginated |
| [**getTrashedFieldsPaginated**](IssueFieldsApi.md#getTrashedFieldsPaginated) | **GET** /rest/api/2/field/search/trashed | Get fields in trash paginated |
| [**restoreCustomField**](IssueFieldsApi.md#restoreCustomField) | **POST** /rest/api/2/field/{id}/restore | Restore custom field from trash |
| [**trashCustomField**](IssueFieldsApi.md#trashCustomField) | **POST** /rest/api/2/field/{id}/trash | Move custom field to trash |
| [**updateCustomField**](IssueFieldsApi.md#updateCustomField) | **PUT** /rest/api/2/field/{fieldId} | Update custom field |


<a name="createCustomField"></a>
# **createCustomField**
> FieldDetails createCustomField(CustomFieldDefinitionJsonBean)

Create custom field

    Creates a custom field.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CustomFieldDefinitionJsonBean** | [**CustomFieldDefinitionJsonBean**](../Models/CustomFieldDefinitionJsonBean.md)| Definition of the custom field to be created | |

### Return type

[**FieldDetails**](../Models/FieldDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteCustomField"></a>
# **deleteCustomField**
> deleteCustomField(id)

Delete custom field

    Deletes a custom field. The custom field is deleted whether it is in the trash or not. See [Edit or delete a custom field](https://confluence.atlassian.com/x/Z44fOw) for more information on trashing and deleting custom fields.  This operation is [asynchronous](#async). Follow the &#x60;location&#x60; link in the response to determine the status of the task and use [Get task](#api-rest-api-2-task-taskId-get) to obtain subsequent updates.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of a custom field. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getContextsForFieldDeprecated"></a>
# **getContextsForFieldDeprecated**
> PageBeanContext getContextsForFieldDeprecated(fieldId, startAt, maxResults)

Get contexts for a field

    Returns a [paginated](#pagination) list of the contexts a field is used in. Deprecated, use [ Get custom field contexts](#api-rest-api-2-field-fieldId-context-get).  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the field to return contexts for. | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 20] |

### Return type

[**PageBeanContext**](../Models/PageBeanContext.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getFields"></a>
# **getFields**
> List getFields()

Get fields

    Returns system and custom issue fields according to the following rules:   *  Fields that cannot be added to the issue navigator are always returned.  *  Fields that cannot be placed on an issue screen are always returned.  *  Fields that depend on global Jira settings are only returned if the setting is enabled. That is, timetracking fields, subtasks, votes, and watches.  *  For all other fields, this operation only returns the fields that the user has permission to view (that is, the field is used in at least one project that the user has *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for.)  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/FieldDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getFieldsPaginated"></a>
# **getFieldsPaginated**
> PageBeanField getFieldsPaginated(startAt, maxResults, type, id, query, orderBy, expand, projectIds)

Get fields paginated

    Returns a [paginated](#pagination) list of fields for Classic Jira projects. The list can include:   *  all fields  *  specific fields, by defining &#x60;id&#x60;  *  fields that contain a string in the field name or description, by defining &#x60;query&#x60;  *  specific fields that contain a string in the field name or description, by defining &#x60;id&#x60; and &#x60;query&#x60;  Use &#x60;type&#x60; must be set to &#x60;custom&#x60; to show custom fields only.  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **type** | [**List**](../Models/String.md)| The type of fields to search. | [optional] [default to null] [enum: custom, system] |
| **id** | [**Set**](../Models/String.md)| The IDs of the custom fields to return or, where &#x60;query&#x60; is specified, filter. | [optional] [default to null] |
| **query** | **String**| String used to perform a case-insensitive partial match with field names or descriptions. | [optional] [default to null] |
| **orderBy** | **String**| [Order](#ordering) the results by:   *  &#x60;contextsCount&#x60; sorts by the number of contexts related to a field  *  &#x60;lastUsed&#x60; sorts by the date when the value of the field last changed  *  &#x60;name&#x60; sorts by the field name  *  &#x60;screensCount&#x60; sorts by the number of screens related to a field | [optional] [default to null] [enum: contextsCount, -contextsCount, +contextsCount, lastUsed, -lastUsed, +lastUsed, name, -name, +name, screensCount, -screensCount, +screensCount, projectsCount, -projectsCount, +projectsCount] |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;key&#x60; returns the key for each field  *  &#x60;stableId&#x60; returns the stableId for each field  *  &#x60;lastUsed&#x60; returns the date when the value of the field last changed  *  &#x60;screensCount&#x60; returns the number of screens related to a field  *  &#x60;contextsCount&#x60; returns the number of contexts related to a field  *  &#x60;isLocked&#x60; returns information about whether the field is locked  *  &#x60;searcherKey&#x60; returns the searcher key for each custom field | [optional] [default to null] |
| **projectIds** | [**Set**](../Models/Long.md)| The IDs of the projects to filter the fields by. Fields belonging to project Ids that the user does not have access to will not be returned | [optional] [default to null] |

### Return type

[**PageBeanField**](../Models/PageBeanField.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getTrashedFieldsPaginated"></a>
# **getTrashedFieldsPaginated**
> PageBeanField getTrashedFieldsPaginated(startAt, maxResults, id, query, expand, orderBy)

Get fields in trash paginated

    Returns a [paginated](#pagination) list of fields in the trash. The list may be restricted to fields whose field name or description partially match a string.  Only custom fields can be queried, &#x60;type&#x60; must be set to &#x60;custom&#x60;.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **id** | [**Set**](../Models/String.md)|  | [optional] [default to null] |
| **query** | **String**| String used to perform a case-insensitive partial match with field names or descriptions. | [optional] [default to null] |
| **expand** | **String**|  | [optional] [default to null] [enum: name, -name, +name, trashDate, -trashDate, +trashDate, plannedDeletionDate, -plannedDeletionDate, +plannedDeletionDate, projectsCount, -projectsCount, +projectsCount] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;name&#x60; sorts by the field name  *  &#x60;trashDate&#x60; sorts by the date the field was moved to the trash  *  &#x60;plannedDeletionDate&#x60; sorts by the planned deletion date | [optional] [default to null] |

### Return type

[**PageBeanField**](../Models/PageBeanField.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="restoreCustomField"></a>
# **restoreCustomField**
> oas_any_type_not_mapped restoreCustomField(id)

Restore custom field from trash

    Restores a custom field from trash. See [Edit or delete a custom field](https://confluence.atlassian.com/x/Z44fOw) for more information on trashing and deleting custom fields.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of a custom field. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="trashCustomField"></a>
# **trashCustomField**
> oas_any_type_not_mapped trashCustomField(id)

Move custom field to trash

    Moves a custom field to trash. See [Edit or delete a custom field](https://confluence.atlassian.com/x/Z44fOw) for more information on trashing and deleting custom fields.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of a custom field. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateCustomField"></a>
# **updateCustomField**
> oas_any_type_not_mapped updateCustomField(fieldId, UpdateCustomFieldDetails)

Update custom field

    Updates a custom field.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldId** | **String**| The ID of the custom field. | [default to null] |
| **UpdateCustomFieldDetails** | [**UpdateCustomFieldDetails**](../Models/UpdateCustomFieldDetails.md)| The custom field update details. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

