# IssueCommentsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addComment**](IssueCommentsApi.md#addComment) | **POST** /rest/api/2/issue/{issueIdOrKey}/comment | Add comment |
| [**deleteComment**](IssueCommentsApi.md#deleteComment) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/comment/{id} | Delete comment |
| [**getComment**](IssueCommentsApi.md#getComment) | **GET** /rest/api/2/issue/{issueIdOrKey}/comment/{id} | Get comment |
| [**getComments**](IssueCommentsApi.md#getComments) | **GET** /rest/api/2/issue/{issueIdOrKey}/comment | Get comments |
| [**getCommentsByIds**](IssueCommentsApi.md#getCommentsByIds) | **POST** /rest/api/2/comment/list | Get comments by IDs |
| [**updateComment**](IssueCommentsApi.md#updateComment) | **PUT** /rest/api/2/issue/{issueIdOrKey}/comment/{id} | Update comment |


<a name="addComment"></a>
# **addComment**
> Comment addComment(issueIdOrKey, Comment, expand)

Add comment

    Adds a comment to an issue.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Add comments* [ project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue containing the comment is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **Comment** | [**Comment**](../Models/Comment.md)|  | |
| **expand** | **String**| Use [expand](#expansion) to include additional information about comments in the response. This parameter accepts &#x60;renderedBody&#x60;, which returns the comment body rendered in HTML. | [optional] [default to null] |

### Return type

[**Comment**](../Models/Comment.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteComment"></a>
# **deleteComment**
> deleteComment(issueIdOrKey, id)

Delete comment

    Deletes a comment.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue containing the comment is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  *Delete all comments*[ project permission](https://confluence.atlassian.com/x/yodKLg) to delete any comment or *Delete own comments* to delete comment created by the user,  *  If the comment has visibility restrictions, the user belongs to the group or has the role visibility is restricted to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **id** | **String**| The ID of the comment. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getComment"></a>
# **getComment**
> Comment getComment(issueIdOrKey, id, expand)

Get comment

    Returns a comment.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the comment.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the comment has visibility restrictions, the user belongs to the group or has the role visibility is restricted to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **id** | **String**| The ID of the comment. | [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about comments in the response. This parameter accepts &#x60;renderedBody&#x60;, which returns the comment body rendered in HTML. | [optional] [default to null] |

### Return type

[**Comment**](../Models/Comment.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getComments"></a>
# **getComments**
> PageOfComments getComments(issueIdOrKey, startAt, maxResults, orderBy, expand)

Get comments

    Returns all comments for an issue.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Comments are included in the response where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the comment.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the comment has visibility restrictions, belongs to the group or has the role visibility is role visibility is restricted to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |
| **orderBy** | **String**| [Order](#ordering) the results by a field. Accepts *created* to sort comments by their created date. | [optional] [default to null] [enum: created, -created, +created] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about comments in the response. This parameter accepts &#x60;renderedBody&#x60;, which returns the comment body rendered in HTML. | [optional] [default to null] |

### Return type

[**PageOfComments**](../Models/PageOfComments.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getCommentsByIds"></a>
# **getCommentsByIds**
> PageBeanComment getCommentsByIds(IssueCommentListRequestBean, expand)

Get comments by IDs

    Returns a [paginated](#pagination) list of comments specified by a list of comment IDs.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Comments are returned where the user:   *  has *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the comment.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  If the comment has visibility restrictions, belongs to the group or has the role visibility is restricted to.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueCommentListRequestBean** | [**IssueCommentListRequestBean**](../Models/IssueCommentListRequestBean.md)| The list of comment IDs. | |
| **expand** | **String**| Use [expand](#expansion) to include additional information about comments in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;renderedBody&#x60; Returns the comment body rendered in HTML.  *  &#x60;properties&#x60; Returns the comment&#39;s properties. | [optional] [default to null] |

### Return type

[**PageBeanComment**](../Models/PageBeanComment.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateComment"></a>
# **updateComment**
> Comment updateComment(issueIdOrKey, id, Comment, notifyUsers, overrideEditableFlag, expand)

Update comment

    Updates a comment.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue containing the comment is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  *Edit all comments*[ project permission](https://confluence.atlassian.com/x/yodKLg) to update any comment or *Edit own comments* to update comment created by the user.  *  If the comment has visibility restrictions, the user belongs to the group or has the role visibility is restricted to.  **WARNING:** Child comments inherit visibility from their parent comment. Attempting to update a child comment&#39;s visibility will result in a 400 (Bad Request) error.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **id** | **String**| The ID of the comment. | [default to null] |
| **Comment** | [**Comment**](../Models/Comment.md)|  | |
| **notifyUsers** | **Boolean**| Whether users are notified when a comment is updated. | [optional] [default to true] |
| **overrideEditableFlag** | **Boolean**| Whether screen security is overridden to enable uneditable fields to be edited. Available to Connect app users with the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) and Forge apps acting on behalf of users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to false] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about comments in the response. This parameter accepts &#x60;renderedBody&#x60;, which returns the comment body rendered in HTML. | [optional] [default to null] |

### Return type

[**Comment**](../Models/Comment.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

