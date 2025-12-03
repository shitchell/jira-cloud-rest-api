# IssueLinksApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deleteIssueLink**](IssueLinksApi.md#deleteIssueLink) | **DELETE** /rest/api/2/issueLink/{linkId} | Delete issue link |
| [**getIssueLink**](IssueLinksApi.md#getIssueLink) | **GET** /rest/api/2/issueLink/{linkId} | Get issue link |
| [**linkIssues**](IssueLinksApi.md#linkIssues) | **POST** /rest/api/2/issueLink | Create issue link |


<a name="deleteIssueLink"></a>
# **deleteIssueLink**
> deleteIssueLink(linkId)

Delete issue link

    Deletes an issue link.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  Browse project [project permission](https://confluence.atlassian.com/x/yodKLg) for all the projects containing the issues in the link.  *  *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for at least one of the projects containing issues in the link.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, permission to view both of the issues.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **linkId** | **String**| The ID of the issue link. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getIssueLink"></a>
# **getIssueLink**
> IssueLink getIssueLink(linkId)

Get issue link

    Returns an issue link.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse project* [project permission](https://confluence.atlassian.com/x/yodKLg) for all the projects containing the linked issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, permission to view both of the issues.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **linkId** | **String**| The ID of the issue link. | [default to null] |

### Return type

[**IssueLink**](../Models/IssueLink.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="linkIssues"></a>
# **linkIssues**
> oas_any_type_not_mapped linkIssues(LinkIssueRequestJsonBean)

Create issue link

    Creates a link between two issues. Use this operation to indicate a relationship between two issues and optionally add a comment to the from (outward) issue. To use this resource the site must have [Issue Linking](https://confluence.atlassian.com/x/yoXKM) enabled.  This resource returns nothing on the creation of an issue link. To obtain the ID of the issue link, use &#x60;https://your-domain.atlassian.net/rest/api/2/issue/[linked issue key]?fields&#x3D;issuelinks&#x60;.  If the link request duplicates a link, the response indicates that the issue link was created. If the request included a comment, the comment is added.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse project* [project permission](https://confluence.atlassian.com/x/yodKLg) for all the projects containing the issues to be linked,  *  *Link issues* [project permission](https://confluence.atlassian.com/x/yodKLg) on the project containing the from (outward) issue,  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the comment has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **LinkIssueRequestJsonBean** | [**LinkIssueRequestJsonBean**](../Models/LinkIssueRequestJsonBean.md)| The issue link request. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

