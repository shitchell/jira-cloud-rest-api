# IssueRemoteLinksApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createOrUpdateRemoteIssueLink**](IssueRemoteLinksApi.md#createOrUpdateRemoteIssueLink) | **POST** /rest/api/2/issue/{issueIdOrKey}/remotelink | Create or update remote issue link |
| [**deleteRemoteIssueLinkByGlobalId**](IssueRemoteLinksApi.md#deleteRemoteIssueLinkByGlobalId) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/remotelink | Delete remote issue link by global ID |
| [**deleteRemoteIssueLinkById**](IssueRemoteLinksApi.md#deleteRemoteIssueLinkById) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/remotelink/{linkId} | Delete remote issue link by ID |
| [**getRemoteIssueLinkById**](IssueRemoteLinksApi.md#getRemoteIssueLinkById) | **GET** /rest/api/2/issue/{issueIdOrKey}/remotelink/{linkId} | Get remote issue link by ID |
| [**getRemoteIssueLinks**](IssueRemoteLinksApi.md#getRemoteIssueLinks) | **GET** /rest/api/2/issue/{issueIdOrKey}/remotelink | Get remote issue links |
| [**updateRemoteIssueLink**](IssueRemoteLinksApi.md#updateRemoteIssueLink) | **PUT** /rest/api/2/issue/{issueIdOrKey}/remotelink/{linkId} | Update remote issue link by ID |


<a name="createOrUpdateRemoteIssueLink"></a>
# **createOrUpdateRemoteIssueLink**
> RemoteIssueLinkIdentifies createOrUpdateRemoteIssueLink(issueIdOrKey, RemoteIssueLinkRequest)

Create or update remote issue link

    Creates or updates a remote issue link for an issue.  If a &#x60;globalId&#x60; is provided and a remote issue link with that global ID is found it is updated. Any fields without values in the request are set to null. Otherwise, the remote issue link is created.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **RemoteIssueLinkRequest** | [**RemoteIssueLinkRequest**](../Models/RemoteIssueLinkRequest.md)|  | |

### Return type

[**RemoteIssueLinkIdentifies**](../Models/RemoteIssueLinkIdentifies.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteRemoteIssueLinkByGlobalId"></a>
# **deleteRemoteIssueLinkByGlobalId**
> deleteRemoteIssueLinkByGlobalId(issueIdOrKey, globalId)

Delete remote issue link by global ID

    Deletes the remote issue link from the issue using the link&#39;s global ID. Where the global ID includes reserved URL characters these must be escaped in the request. For example, pass &#x60;system&#x3D;http://www.mycompany.com/support&amp;id&#x3D;1&#x60; as &#x60;system%3Dhttp%3A%2F%2Fwww.mycompany.com%2Fsupport%26id%3D1&#x60;.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is implemented, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **globalId** | **String**| The global ID of a remote issue link. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="deleteRemoteIssueLinkById"></a>
# **deleteRemoteIssueLinkById**
> deleteRemoteIssueLinkById(issueIdOrKey, linkId)

Delete remote issue link by ID

    Deletes a remote issue link from an issue.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects*, *Edit issues*, and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **linkId** | **String**| The ID of a remote issue link. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getRemoteIssueLinkById"></a>
# **getRemoteIssueLinkById**
> RemoteIssueLink getRemoteIssueLinkById(issueIdOrKey, linkId)

Get remote issue link by ID

    Returns a remote issue link for an issue.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **linkId** | **String**| The ID of the remote issue link. | [default to null] |

### Return type

[**RemoteIssueLink**](../Models/RemoteIssueLink.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRemoteIssueLinks"></a>
# **getRemoteIssueLinks**
> RemoteIssueLink getRemoteIssueLinks(issueIdOrKey, globalId)

Get remote issue links

    Returns the remote issue links for an issue. When a remote issue link global ID is provided the record with that global ID is returned, otherwise all remote issue links are returned. Where a global ID includes reserved URL characters these must be escaped in the request. For example, pass &#x60;system&#x3D;http://www.mycompany.com/support&amp;id&#x3D;1&#x60; as &#x60;system%3Dhttp%3A%2F%2Fwww.mycompany.com%2Fsupport%26id%3D1&#x60;.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **globalId** | **String**| The global ID of the remote issue link. | [optional] [default to null] |

### Return type

[**RemoteIssueLink**](../Models/RemoteIssueLink.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateRemoteIssueLink"></a>
# **updateRemoteIssueLink**
> oas_any_type_not_mapped updateRemoteIssueLink(issueIdOrKey, linkId, RemoteIssueLinkRequest)

Update remote issue link by ID

    Updates a remote issue link for an issue.  Note: Fields without values in the request are set to null.  This operation requires [issue linking to be active](https://confluence.atlassian.com/x/yoXKM).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **linkId** | **String**| The ID of the remote issue link. | [default to null] |
| **RemoteIssueLinkRequest** | [**RemoteIssueLinkRequest**](../Models/RemoteIssueLinkRequest.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

