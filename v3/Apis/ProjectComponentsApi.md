# ProjectComponentsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createComponent**](ProjectComponentsApi.md#createComponent) | **POST** /rest/api/3/component | Create component |
| [**deleteComponent**](ProjectComponentsApi.md#deleteComponent) | **DELETE** /rest/api/3/component/{id} | Delete component |
| [**findComponentsForProjects**](ProjectComponentsApi.md#findComponentsForProjects) | **GET** /rest/api/3/component | Find components for projects |
| [**getComponent**](ProjectComponentsApi.md#getComponent) | **GET** /rest/api/3/component/{id} | Get component |
| [**getComponentRelatedIssues**](ProjectComponentsApi.md#getComponentRelatedIssues) | **GET** /rest/api/3/component/{id}/relatedIssueCounts | Get component issues count |
| [**getProjectComponents**](ProjectComponentsApi.md#getProjectComponents) | **GET** /rest/api/3/project/{projectIdOrKey}/components | Get project components |
| [**getProjectComponentsPaginated**](ProjectComponentsApi.md#getProjectComponentsPaginated) | **GET** /rest/api/3/project/{projectIdOrKey}/component | Get project components paginated |
| [**updateComponent**](ProjectComponentsApi.md#updateComponent) | **PUT** /rest/api/3/component/{id} | Update component |


<a name="createComponent"></a>
# **createComponent**
> ProjectComponent createComponent(ProjectComponent)

Create component

    Creates a component. Use components to provide containers for issues within a project. Use components to provide containers for issues within a project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project in which the component is created or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ProjectComponent** | [**ProjectComponent**](../Models/ProjectComponent.md)|  | |

### Return type

[**ProjectComponent**](../Models/ProjectComponent.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteComponent"></a>
# **deleteComponent**
> deleteComponent(id, moveIssuesTo)

Delete component

    Deletes a component.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the component or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the component. | [default to null] |
| **moveIssuesTo** | **String**| The ID of the component to replace the deleted component. If this value is null no replacement is made. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="findComponentsForProjects"></a>
# **findComponentsForProjects**
> PageBean2ComponentJsonBean findComponentsForProjects(projectIdsOrKeys, startAt, maxResults, orderBy, query)

Find components for projects

    Returns a [paginated](#pagination) list of all components in a project, including global (Compass) components when applicable.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdsOrKeys** | [**List**](../Models/String.md)| The project IDs and/or project keys (case sensitive). | [optional] [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;description&#x60; Sorts by the component description.  *  &#x60;name&#x60; Sorts by component name. | [optional] [default to null] [enum: description, -description, +description, name, -name, +name] |
| **query** | **String**| Filter the results using a literal string. Components with a matching &#x60;name&#x60; or &#x60;description&#x60; are returned (case insensitive). | [optional] [default to null] |

### Return type

[**PageBean2ComponentJsonBean**](../Models/PageBean2ComponentJsonBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getComponent"></a>
# **getComponent**
> ProjectComponent getComponent(id)

Get component

    Returns a component.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for project containing the component.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the component. | [default to null] |

### Return type

[**ProjectComponent**](../Models/ProjectComponent.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getComponentRelatedIssues"></a>
# **getComponentRelatedIssues**
> ComponentIssuesCount getComponentRelatedIssues(id)

Get component issues count

    Returns the counts of issues assigned to the component.  This operation can be accessed anonymously.  **Deprecation notice:** The required OAuth 2.0 scopes will be updated on June 15, 2024.   *  **Classic**: &#x60;read:jira-work&#x60;  *  **Granular**: &#x60;read:field:jira&#x60;, &#x60;read:project.component:jira&#x60;  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the component. | [default to null] |

### Return type

[**ComponentIssuesCount**](../Models/ComponentIssuesCount.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectComponents"></a>
# **getProjectComponents**
> List getProjectComponents(projectIdOrKey, componentSource)

Get project components

    Returns all components in a project. See the [Get project components paginated](#api-rest-api-3-project-projectIdOrKey-component-get) resource if you want to get a full list of components with pagination.  If your project uses Compass components, this API will return a paginated list of Compass components that are linked to issues in that project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **componentSource** | **String**| The source of the components to return. Can be &#x60;jira&#x60; (default), &#x60;compass&#x60; or &#x60;auto&#x60;. When &#x60;auto&#x60; is specified, the API will return connected Compass components if the project is opted into Compass, otherwise it will return Jira components. Defaults to &#x60;jira&#x60;. | [optional] [default to jira] [enum: jira, compass, auto] |

### Return type

[**List**](../Models/ProjectComponent.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectComponentsPaginated"></a>
# **getProjectComponentsPaginated**
> PageBeanComponentWithIssueCount getProjectComponentsPaginated(projectIdOrKey, startAt, maxResults, orderBy, componentSource, query)

Get project components paginated

    Returns a [paginated](#pagination) list of all components in a project. See the [Get project components](#api-rest-api-3-project-projectIdOrKey-components-get) resource if you want to get a full list of versions without pagination.  If your project uses Compass components, this API will return a list of Compass components that are linked to issues in that project.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;description&#x60; Sorts by the component description.  *  &#x60;issueCount&#x60; Sorts by the count of issues associated with the component.  *  &#x60;lead&#x60; Sorts by the user key of the component&#39;s project lead.  *  &#x60;name&#x60; Sorts by component name. | [optional] [default to null] [enum: description, -description, +description, issueCount, -issueCount, +issueCount, lead, -lead, +lead, name, -name, +name] |
| **componentSource** | **String**| The source of the components to return. Can be &#x60;jira&#x60; (default), &#x60;compass&#x60; or &#x60;auto&#x60;. When &#x60;auto&#x60; is specified, the API will return connected Compass components if the project is opted into Compass, otherwise it will return Jira components. Defaults to &#x60;jira&#x60;. | [optional] [default to jira] [enum: jira, compass, auto] |
| **query** | **String**| Filter the results using a literal string. Components with a matching &#x60;name&#x60; or &#x60;description&#x60; are returned (case insensitive). | [optional] [default to null] |

### Return type

[**PageBeanComponentWithIssueCount**](../Models/PageBeanComponentWithIssueCount.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateComponent"></a>
# **updateComponent**
> ProjectComponent updateComponent(id, ProjectComponent)

Update component

    Updates a component. Any fields included in the request are overwritten. If &#x60;leadAccountId&#x60; is an empty string (\&quot;\&quot;) the component lead is removed.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the component or *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the component. | [default to null] |
| **ProjectComponent** | [**ProjectComponent**](../Models/ProjectComponent.md)|  | |

### Return type

[**ProjectComponent**](../Models/ProjectComponent.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

