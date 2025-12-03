# ProjectVersionsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createRelatedWork**](ProjectVersionsApi.md#createRelatedWork) | **POST** /rest/api/3/version/{id}/relatedwork | Create related work |
| [**createVersion**](ProjectVersionsApi.md#createVersion) | **POST** /rest/api/3/version | Create version |
| [**deleteAndReplaceVersion**](ProjectVersionsApi.md#deleteAndReplaceVersion) | **POST** /rest/api/3/version/{id}/removeAndSwap | Delete and replace version |
| [**deleteRelatedWork**](ProjectVersionsApi.md#deleteRelatedWork) | **DELETE** /rest/api/3/version/{versionId}/relatedwork/{relatedWorkId} | Delete related work |
| [**deleteVersion**](ProjectVersionsApi.md#deleteVersion) | **DELETE** /rest/api/3/version/{id} | Delete version |
| [**getProjectVersions**](ProjectVersionsApi.md#getProjectVersions) | **GET** /rest/api/3/project/{projectIdOrKey}/versions | Get project versions |
| [**getProjectVersionsPaginated**](ProjectVersionsApi.md#getProjectVersionsPaginated) | **GET** /rest/api/3/project/{projectIdOrKey}/version | Get project versions paginated |
| [**getRelatedWork**](ProjectVersionsApi.md#getRelatedWork) | **GET** /rest/api/3/version/{id}/relatedwork | Get related work |
| [**getVersion**](ProjectVersionsApi.md#getVersion) | **GET** /rest/api/3/version/{id} | Get version |
| [**getVersionRelatedIssues**](ProjectVersionsApi.md#getVersionRelatedIssues) | **GET** /rest/api/3/version/{id}/relatedIssueCounts | Get version&#39;s related issues count |
| [**getVersionUnresolvedIssues**](ProjectVersionsApi.md#getVersionUnresolvedIssues) | **GET** /rest/api/3/version/{id}/unresolvedIssueCount | Get version&#39;s unresolved issues count |
| [**mergeVersions**](ProjectVersionsApi.md#mergeVersions) | **PUT** /rest/api/3/version/{id}/mergeto/{moveIssuesTo} | Merge versions |
| [**moveVersion**](ProjectVersionsApi.md#moveVersion) | **POST** /rest/api/3/version/{id}/move | Move version |
| [**updateRelatedWork**](ProjectVersionsApi.md#updateRelatedWork) | **PUT** /rest/api/3/version/{id}/relatedwork | Update related work |
| [**updateVersion**](ProjectVersionsApi.md#updateVersion) | **PUT** /rest/api/3/version/{id} | Update version |


<a name="createRelatedWork"></a>
# **createRelatedWork**
> VersionRelatedWork createRelatedWork(id, VersionRelatedWork)

Create related work

    Creates a related work for the given version. You can only create a generic link type of related works via this API. relatedWorkId will be auto-generated UUID, that does not need to be provided.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Resolve issues:* and *Edit issues* [Managing project permissions](https://confluence.atlassian.com/adminjiraserver/managing-project-permissions-938847145.html) for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |
| **VersionRelatedWork** | [**VersionRelatedWork**](../Models/VersionRelatedWork.md)|  | |

### Return type

[**VersionRelatedWork**](../Models/VersionRelatedWork.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createVersion"></a>
# **createVersion**
> Version createVersion(Version)

Create version

    Creates a project version.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project the version is added to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **Version** | [**Version**](../Models/Version.md)|  | |

### Return type

[**Version**](../Models/Version.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteAndReplaceVersion"></a>
# **deleteAndReplaceVersion**
> oas_any_type_not_mapped deleteAndReplaceVersion(id, DeleteAndReplaceVersionBean)

Delete and replace version

    Deletes a project version.  Alternative versions can be provided to update issues that use the deleted version in &#x60;fixVersion&#x60;, &#x60;affectedVersion&#x60;, or any version picker custom fields. If alternatives are not provided, occurrences of &#x60;fixVersion&#x60;, &#x60;affectedVersion&#x60;, and any version picker custom field, that contain the deleted version, are cleared. Any replacement version must be in the same project as the version being deleted and cannot be the version being deleted.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version. | [default to null] |
| **DeleteAndReplaceVersionBean** | [**DeleteAndReplaceVersionBean**](../Models/DeleteAndReplaceVersionBean.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteRelatedWork"></a>
# **deleteRelatedWork**
> deleteRelatedWork(versionId, relatedWorkId)

Delete related work

    Deletes the given related work for the given version.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Resolve issues:* and *Edit issues* [Managing project permissions](https://confluence.atlassian.com/adminjiraserver/managing-project-permissions-938847145.html) for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **versionId** | **String**| The ID of the version that the target related work belongs to. | [default to null] |
| **relatedWorkId** | **String**| The ID of the related work to delete. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="deleteVersion"></a>
# **deleteVersion**
> deleteVersion(id, moveFixIssuesTo, moveAffectedIssuesTo)

Delete version

    Deletes a project version.  Deprecated, use [ Delete and replace version](#api-rest-api-3-version-id-removeAndSwap-post) that supports swapping version values in custom fields, in addition to the swapping for &#x60;fixVersion&#x60; and &#x60;affectedVersion&#x60; provided in this resource.  Alternative versions can be provided to update issues that use the deleted version in &#x60;fixVersion&#x60; or &#x60;affectedVersion&#x60;. If alternatives are not provided, occurrences of &#x60;fixVersion&#x60; and &#x60;affectedVersion&#x60; that contain the deleted version are cleared.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version. | [default to null] |
| **moveFixIssuesTo** | **String**| The ID of the version to update &#x60;fixVersion&#x60; to when the field contains the deleted version. The replacement version must be in the same project as the version being deleted and cannot be the version being deleted. | [optional] [default to null] |
| **moveAffectedIssuesTo** | **String**| The ID of the version to update &#x60;affectedVersion&#x60; to when the field contains the deleted version. The replacement version must be in the same project as the version being deleted and cannot be the version being deleted. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getProjectVersions"></a>
# **getProjectVersions**
> List getProjectVersions(projectIdOrKey, expand)

Get project versions

    Returns all versions in a project. The response is not paginated. Use [Get project versions paginated](#api-rest-api-3-project-projectIdOrKey-version-get) if you want to get the versions in a project with pagination.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts &#x60;operations&#x60;, which returns actions that can be performed on the version. | [optional] [default to null] |

### Return type

[**List**](../Models/Version.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getProjectVersionsPaginated"></a>
# **getProjectVersionsPaginated**
> PageBeanVersion getProjectVersionsPaginated(projectIdOrKey, startAt, maxResults, orderBy, query, status, expand)

Get project versions paginated

    Returns a [paginated](#pagination) list of all versions in a project. See the [Get project versions](#api-rest-api-3-project-projectIdOrKey-versions-get) resource if you want to get a full list of versions without pagination.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The project ID or project key (case sensitive). | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;description&#x60; Sorts by version description.  *  &#x60;name&#x60; Sorts by version name.  *  &#x60;releaseDate&#x60; Sorts by release date, starting with the oldest date. Versions with no release date are listed last.  *  &#x60;sequence&#x60; Sorts by the order of appearance in the user interface.  *  &#x60;startDate&#x60; Sorts by start date, starting with the oldest date. Versions with no start date are listed last. | [optional] [default to null] [enum: description, -description, +description, name, -name, +name, releaseDate, -releaseDate, +releaseDate, sequence, -sequence, +sequence, startDate, -startDate, +startDate] |
| **query** | **String**| Filter the results using a literal string. Versions with matching &#x60;name&#x60; or &#x60;description&#x60; are returned (case insensitive). | [optional] [default to null] |
| **status** | **String**| A list of status values used to filter the results by version status. This parameter accepts a comma-separated list. The status values are &#x60;released&#x60;, &#x60;unreleased&#x60;, and &#x60;archived&#x60;. | [optional] [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;issuesstatus&#x60; Returns the number of issues in each status category for each version.  *  &#x60;operations&#x60; Returns actions that can be performed on the specified version.  *  &#x60;driver&#x60; Returns the Atlassian account ID of the version driver.  *  &#x60;approvers&#x60; Returns a list containing the approvers for this version. | [optional] [default to null] |

### Return type

[**PageBeanVersion**](../Models/PageBeanVersion.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRelatedWork"></a>
# **getRelatedWork**
> List getRelatedWork(id)

Get related work

    Returns related work items for the given version id.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version. | [default to null] |

### Return type

[**List**](../Models/VersionRelatedWork.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getVersion"></a>
# **getVersion**
> Version getVersion(id, expand)

Get version

    Returns a project version.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version. | [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about version in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;operations&#x60; Returns the list of operations available for this version.  *  &#x60;issuesstatus&#x60; Returns the count of issues in this version for each of the status categories *to do*, *in progress*, *done*, and *unmapped*. The *unmapped* property represents the number of issues with a status other than *to do*, *in progress*, and *done*.  *  &#x60;driver&#x60; Returns the Atlassian account ID of the version driver.  *  &#x60;approvers&#x60; Returns a list containing the Atlassian account IDs of approvers for this version. | [optional] [default to null] |

### Return type

[**Version**](../Models/Version.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getVersionRelatedIssues"></a>
# **getVersionRelatedIssues**
> VersionIssueCounts getVersionRelatedIssues(id)

Get version&#39;s related issues count

    Returns the following counts for a version:   *  Number of issues where the &#x60;fixVersion&#x60; is set to the version.  *  Number of issues where the &#x60;affectedVersion&#x60; is set to the version.  *  Number of issues where a version custom field is set to the version.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* project permission for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version. | [default to null] |

### Return type

[**VersionIssueCounts**](../Models/VersionIssueCounts.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getVersionUnresolvedIssues"></a>
# **getVersionUnresolvedIssues**
> VersionUnresolvedIssuesCount getVersionUnresolvedIssues(id)

Get version&#39;s unresolved issues count

    Returns counts of the issues and unresolved issues for the project version.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* project permission for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version. | [default to null] |

### Return type

[**VersionUnresolvedIssuesCount**](../Models/VersionUnresolvedIssuesCount.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="mergeVersions"></a>
# **mergeVersions**
> oas_any_type_not_mapped mergeVersions(id, moveIssuesTo)

Merge versions

    Merges two project versions. The merge is completed by deleting the version specified in &#x60;id&#x60; and replacing any occurrences of its ID in &#x60;fixVersion&#x60; with the version ID specified in &#x60;moveIssuesTo&#x60;.  Consider using [ Delete and replace version](#api-rest-api-3-version-id-removeAndSwap-post) instead. This resource supports swapping version values in &#x60;fixVersion&#x60;, &#x60;affectedVersion&#x60;, and custom fields.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version to delete. | [default to null] |
| **moveIssuesTo** | **String**| The ID of the version to merge into. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="moveVersion"></a>
# **moveVersion**
> Version moveVersion(id, VersionMoveBean)

Move version

    Modifies the version&#39;s sequence within the project, which affects the display order of the versions in Jira.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* project permission for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version to be moved. | [default to null] |
| **VersionMoveBean** | [**VersionMoveBean**](../Models/VersionMoveBean.md)|  | |

### Return type

[**Version**](../Models/Version.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateRelatedWork"></a>
# **updateRelatedWork**
> VersionRelatedWork updateRelatedWork(id, VersionRelatedWork)

Update related work

    Updates the given related work. You can only update generic link related works via Rest APIs. Any archived version related works can&#39;t be edited.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Resolve issues:* and *Edit issues* [Managing project permissions](https://confluence.atlassian.com/adminjiraserver/managing-project-permissions-938847145.html) for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version to update the related work on. For the related work id, pass it to the input JSON. | [default to null] |
| **VersionRelatedWork** | [**VersionRelatedWork**](../Models/VersionRelatedWork.md)|  | |

### Return type

[**VersionRelatedWork**](../Models/VersionRelatedWork.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateVersion"></a>
# **updateVersion**
> Version updateVersion(id, Version)

Update version

    Updates a project version.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) or *Administer Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that contains the version.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the version. | [default to null] |
| **Version** | [**Version**](../Models/Version.md)|  | |

### Return type

[**Version**](../Models/Version.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

