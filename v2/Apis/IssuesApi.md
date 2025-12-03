# IssuesApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**archiveIssues**](IssuesApi.md#archiveIssues) | **PUT** /rest/api/2/issue/archive | Archive issue(s) by issue ID/key |
| [**archiveIssuesAsync**](IssuesApi.md#archiveIssuesAsync) | **POST** /rest/api/2/issue/archive | Archive issue(s) by JQL |
| [**assignIssue**](IssuesApi.md#assignIssue) | **PUT** /rest/api/2/issue/{issueIdOrKey}/assignee | Assign issue |
| [**bulkFetchIssues**](IssuesApi.md#bulkFetchIssues) | **POST** /rest/api/2/issue/bulkfetch | Bulk fetch issues |
| [**createIssue**](IssuesApi.md#createIssue) | **POST** /rest/api/2/issue | Create issue |
| [**createIssues**](IssuesApi.md#createIssues) | **POST** /rest/api/2/issue/bulk | Bulk create issue |
| [**deleteIssue**](IssuesApi.md#deleteIssue) | **DELETE** /rest/api/2/issue/{issueIdOrKey} | Delete issue |
| [**doTransition**](IssuesApi.md#doTransition) | **POST** /rest/api/2/issue/{issueIdOrKey}/transitions | Transition issue |
| [**editIssue**](IssuesApi.md#editIssue) | **PUT** /rest/api/2/issue/{issueIdOrKey} | Edit issue |
| [**exportArchivedIssues**](IssuesApi.md#exportArchivedIssues) | **PUT** /rest/api/2/issues/archive/export | Export archived issue(s) |
| [**getBulkChangelogs**](IssuesApi.md#getBulkChangelogs) | **POST** /rest/api/2/changelog/bulkfetch | Bulk fetch changelogs |
| [**getChangeLogs**](IssuesApi.md#getChangeLogs) | **GET** /rest/api/2/issue/{issueIdOrKey}/changelog | Get changelogs |
| [**getChangeLogsByIds**](IssuesApi.md#getChangeLogsByIds) | **POST** /rest/api/2/issue/{issueIdOrKey}/changelog/list | Get changelogs by IDs |
| [**getCreateIssueMeta**](IssuesApi.md#getCreateIssueMeta) | **GET** /rest/api/2/issue/createmeta | Get create issue metadata |
| [**getCreateIssueMetaIssueTypeId**](IssuesApi.md#getCreateIssueMetaIssueTypeId) | **GET** /rest/api/2/issue/createmeta/{projectIdOrKey}/issuetypes/{issueTypeId} | Get create field metadata for a project and issue type id |
| [**getCreateIssueMetaIssueTypes**](IssuesApi.md#getCreateIssueMetaIssueTypes) | **GET** /rest/api/2/issue/createmeta/{projectIdOrKey}/issuetypes | Get create metadata issue types for a project |
| [**getEditIssueMeta**](IssuesApi.md#getEditIssueMeta) | **GET** /rest/api/2/issue/{issueIdOrKey}/editmeta | Get edit issue metadata |
| [**getEvents**](IssuesApi.md#getEvents) | **GET** /rest/api/2/events | Get events |
| [**getIssue**](IssuesApi.md#getIssue) | **GET** /rest/api/2/issue/{issueIdOrKey} | Get issue |
| [**getIssueLimitReport**](IssuesApi.md#getIssueLimitReport) | **GET** /rest/api/2/issue/limit/report | Get issue limit report |
| [**getTransitions**](IssuesApi.md#getTransitions) | **GET** /rest/api/2/issue/{issueIdOrKey}/transitions | Get transitions |
| [**notify**](IssuesApi.md#notify) | **POST** /rest/api/2/issue/{issueIdOrKey}/notify | Send notification for issue |
| [**unarchiveIssues**](IssuesApi.md#unarchiveIssues) | **PUT** /rest/api/2/issue/unarchive | Unarchive issue(s) by issue keys/ID |


<a name="archiveIssues"></a>
# **archiveIssues**
> IssueArchivalSyncResponse archiveIssues(IssueArchivalSyncRequest)

Archive issue(s) by issue ID/key

    Enables admins to archive up to 1000 issues in a single request using issue ID/key, returning details of the issue(s) archived in the process and the errors encountered, if any.  **Note that:**   *  you can&#39;t archive subtasks directly, only through their parent issues  *  you can only archive issues from software, service management, and business projects  **[Permissions](#permissions) required:** Jira admin or site admin: [global permission](https://confluence.atlassian.com/x/x4dKLg)  **License required:** Premium or Enterprise  **Signed-in users only:** This API can&#39;t be accessed anonymously.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueArchivalSyncRequest** | [**IssueArchivalSyncRequest**](../Models/IssueArchivalSyncRequest.md)| Contains a list of issue keys or IDs to be archived. | |

### Return type

[**IssueArchivalSyncResponse**](../Models/IssueArchivalSyncResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="archiveIssuesAsync"></a>
# **archiveIssuesAsync**
> String archiveIssuesAsync(ArchiveIssueAsyncRequest)

Archive issue(s) by JQL

    Enables admins to archive up to 100,000 issues in a single request using JQL, returning the URL to check the status of the submitted request.  You can use the [get task](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-tasks/#api-rest-api-3-task-taskid-get) and [cancel task](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-tasks/#api-rest-api-3-task-taskid-cancel-post) APIs to manage the request.  **Note that:**   *  you can&#39;t archive subtasks directly, only through their parent issues  *  you can only archive issues from software, service management, and business projects  **[Permissions](#permissions) required:** Jira admin or site admin: [global permission](https://confluence.atlassian.com/x/x4dKLg)  **License required:** Premium or Enterprise  **Signed-in users only:** This API can&#39;t be accessed anonymously.  **Rate limiting:** Only a single request per jira instance can be active at any given time.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ArchiveIssueAsyncRequest** | [**ArchiveIssueAsyncRequest**](../Models/ArchiveIssueAsyncRequest.md)| A JQL query specifying the issues to archive. Note that subtasks can only be archived through their parent issues. | |

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="assignIssue"></a>
# **assignIssue**
> oas_any_type_not_mapped assignIssue(issueIdOrKey, User)

Assign issue

    Assigns an issue to a user. Use this operation when the calling user does not have the *Edit Issues* permission but has the *Assign issue* permission for the project that the issue is in.  If &#x60;name&#x60; or &#x60;accountId&#x60; is set to:   *  &#x60;\&quot;-1\&quot;&#x60;, the issue is assigned to the default assignee for the project.  *  &#x60;null&#x60;, the issue is set to unassigned.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse Projects* and *Assign Issues* [ project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue to be assigned. | [default to null] |
| **User** | [**User**](../Models/User.md)| The request object with the user that the issue is assigned to. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="bulkFetchIssues"></a>
# **bulkFetchIssues**
> BulkIssueResults bulkFetchIssues(BulkFetchIssueRequestBean)

Bulk fetch issues

    Returns the details for a set of requested issues. You can request up to 100 issues.  Each issue is identified by its ID or key, however, if the identifier doesn&#39;t match an issue, a case-insensitive search and check for moved issues is performed. If a matching issue is found its details are returned, a 302 or other redirect is **not** returned.  Issues will be returned in ascending &#x60;id&#x60; order. If there are errors, Jira will return a list of issues which couldn&#39;t be fetched along with error messages.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Issues are included in the response where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **BulkFetchIssueRequestBean** | [**BulkFetchIssueRequestBean**](../Models/BulkFetchIssueRequestBean.md)| A JSON object containing the information about which issues and fields to fetch. | |

### Return type

[**BulkIssueResults**](../Models/BulkIssueResults.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createIssue"></a>
# **createIssue**
> CreatedIssue createIssue(IssueUpdateDetails, updateHistory)

Create issue

    Creates an issue or, where the option to create subtasks is enabled in Jira, a subtask. A transition may be applied, to move the issue or subtask to a workflow step other than the default start step, and issue properties set.  The content of the issue or subtask is defined using &#x60;update&#x60; and &#x60;fields&#x60;. The fields that can be set in the issue or subtask are determined using the [ Get create issue metadata](#api-rest-api-2-issue-createmeta-get). These are the same fields that appear on the issue&#39;s create screen.  Creating a subtask differs from creating an issue as follows:   *  &#x60;issueType&#x60; must be set to a subtask issue type (use [ Get create issue metadata](#api-rest-api-2-issue-createmeta-get) to find subtask issue types).  *  &#x60;parent&#x60; must contain the ID or key of the parent issue.  **[Permissions](#permissions) required:** *Browse projects* and *Create issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project in which the issue or subtask is created.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueUpdateDetails** | [**IssueUpdateDetails**](../Models/IssueUpdateDetails.md)|  | |
| **updateHistory** | **Boolean**| Whether the project in which the issue is created is added to the user&#39;s **Recently viewed** project list, as shown under **Projects** in Jira. When provided, the issue type and request type are added to the user&#39;s history for a project. These values are then used to provide defaults on the issue create screen. | [optional] [default to false] |

### Return type

[**CreatedIssue**](../Models/CreatedIssue.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createIssues"></a>
# **createIssues**
> CreatedIssues createIssues(IssuesUpdateBean)

Bulk create issue

    Creates upto **50** issues and, where the option to create subtasks is enabled in Jira, subtasks. Transitions may be applied, to move the issues or subtasks to a workflow step other than the default start step, and issue properties set.  The content of each issue or subtask is defined using &#x60;update&#x60; and &#x60;fields&#x60;. The fields that can be set in the issue or subtask are determined using the [ Get create issue metadata](#api-rest-api-2-issue-createmeta-get). These are the same fields that appear on the issues&#39; create screens.  Creating a subtask differs from creating an issue as follows:   *  &#x60;issueType&#x60; must be set to a subtask issue type (use [ Get create issue metadata](#api-rest-api-2-issue-createmeta-get) to find subtask issue types).  *  &#x60;parent&#x60; the must contain the ID or key of the parent issue.  **[Permissions](#permissions) required:** *Browse projects* and *Create issues* [project permissions](https://confluence.atlassian.com/x/yodKLg) for the project in which each issue or subtask is created.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssuesUpdateBean** | [**IssuesUpdateBean**](../Models/IssuesUpdateBean.md)|  | |

### Return type

[**CreatedIssues**](../Models/CreatedIssues.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteIssue"></a>
# **deleteIssue**
> deleteIssue(issueIdOrKey, deleteSubtasks)

Delete issue

    Deletes an issue.  An issue cannot be deleted if it has one or more subtasks. To delete an issue with subtasks, set &#x60;deleteSubtasks&#x60;. This causes the issue&#39;s subtasks to be deleted with the issue.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Delete issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **deleteSubtasks** | **String**| Whether the issue&#39;s subtasks are deleted when the issue is deleted. | [optional] [default to false] [enum: true, false] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="doTransition"></a>
# **doTransition**
> oas_any_type_not_mapped doTransition(issueIdOrKey, IssueUpdateDetails)

Transition issue

    Performs an issue transition and, if the transition has a screen, updates the fields from the transition screen.  sortByCategory To update the fields on the transition screen, specify the fields in the &#x60;fields&#x60; or &#x60;update&#x60; parameters in the request body. Get details about the fields using [ Get transitions](#api-rest-api-2-issue-issueIdOrKey-transitions-get) with the &#x60;transitions.fields&#x60; expand.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Transition issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **IssueUpdateDetails** | [**IssueUpdateDetails**](../Models/IssueUpdateDetails.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="editIssue"></a>
# **editIssue**
> oas_any_type_not_mapped editIssue(issueIdOrKey, IssueUpdateDetails, notifyUsers, overrideScreenSecurity, overrideEditableFlag, returnIssue, expand)

Edit issue

    Edits an issue. Issue properties may be updated as part of the edit. Please note that issue transition is not supported and is ignored here. To transition an issue, please use [Transition issue](#api-rest-api-2-issue-issueIdOrKey-transitions-post).  The edits to the issue&#39;s fields are defined using &#x60;update&#x60; and &#x60;fields&#x60;. The fields that can be edited are determined using [ Get edit issue metadata](#api-rest-api-2-issue-issueIdOrKey-editmeta-get).  The parent field may be set by key or ID. For standard issue types, the parent may be removed by setting &#x60;update.parent.set.none&#x60; to *true*.  Connect apps having an app user with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), and Forge apps acting on behalf of users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), can override the screen security configuration using &#x60;overrideScreenSecurity&#x60; and &#x60;overrideEditableFlag&#x60;.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* and *Edit issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **IssueUpdateDetails** | [**IssueUpdateDetails**](../Models/IssueUpdateDetails.md)|  | |
| **notifyUsers** | **Boolean**| Whether a notification email about the issue update is sent to all watchers. To disable the notification, administer Jira or administer project permissions are required. If the user doesn&#39;t have the necessary permission the request is ignored. | [optional] [default to true] |
| **overrideScreenSecurity** | **Boolean**| Whether screen security is overridden to enable hidden fields to be edited. Available to Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) and Forge apps acting on behalf of users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to false] |
| **overrideEditableFlag** | **Boolean**| Whether screen security is overridden to enable uneditable fields to be edited. Available to Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) and Forge apps acting on behalf of users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to false] |
| **returnIssue** | **Boolean**| Whether the response should contain the issue with fields edited in this request. The returned issue will have the same format as in the [Get issue API](#api-rest-api-3-issue-issueidorkey-get). | [optional] [default to false] |
| **expand** | **String**| The Get issue API expand parameter to use in the response if the &#x60;returnIssue&#x60; parameter is &#x60;true&#x60;. | [optional] [default to ] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="exportArchivedIssues"></a>
# **exportArchivedIssues**
> ExportArchivedIssuesTaskProgressResponse exportArchivedIssues(ArchivedIssuesFilterRequest)

Export archived issue(s)

    Enables admins to retrieve details of all archived issues. Upon a successful request, the admin who submitted it will receive an email with a link to download a CSV file with the issue details.  Note that this API only exports the values of system fields and archival-specific fields (&#x60;ArchivedBy&#x60; and &#x60;ArchivedDate&#x60;). Custom fields aren&#39;t supported.  **[Permissions](#permissions) required:** Jira admin or site admin: [global permission](https://confluence.atlassian.com/x/x4dKLg)  **License required:** Premium or Enterprise  **Signed-in users only:** This API can&#39;t be accessed anonymously.  **Rate limiting:** Only a single request can be active at any given time.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **ArchivedIssuesFilterRequest** | [**ArchivedIssuesFilterRequest**](../Models/ArchivedIssuesFilterRequest.md)| You can filter the issues in your request by the &#x60;projects&#x60;, &#x60;archivedBy&#x60;, &#x60;archivedDate&#x60;, &#x60;issueTypes&#x60;, and &#x60;reporters&#x60; fields. All filters are optional. If you don&#39;t provide any filters, you&#39;ll get a list of up to one million archived issues. | |

### Return type

[**ExportArchivedIssuesTaskProgressResponse**](../Models/ExportArchivedIssuesTaskProgressResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getBulkChangelogs"></a>
# **getBulkChangelogs**
> BulkChangelogResponseBean getBulkChangelogs(BulkChangelogRequestBean)

Bulk fetch changelogs

    Bulk fetch changelogs for multiple issues and filter by fields  Returns a paginated list of all changelogs for given issues sorted by changelog date and issue IDs, starting from the oldest changelog and smallest issue ID.  Issues are identified by their ID or key, and optionally changelogs can be filtered by their field IDs. You can request the changelogs of up to 1000 issues and can filter them by up to 10 field IDs.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the projects that the issues are in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issues.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **BulkChangelogRequestBean** | [**BulkChangelogRequestBean**](../Models/BulkChangelogRequestBean.md)| A JSON object containing the bulk fetch changelog request filters such as issue IDs and field IDs. | |

### Return type

[**BulkChangelogResponseBean**](../Models/BulkChangelogResponseBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getChangeLogs"></a>
# **getChangeLogs**
> PageBeanChangelog getChangeLogs(issueIdOrKey, startAt, maxResults)

Get changelogs

    Returns a [paginated](#pagination) list of all changelogs for an issue sorted by date, starting from the oldest.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **startAt** | **Integer**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 100] |

### Return type

[**PageBeanChangelog**](../Models/PageBeanChangelog.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getChangeLogsByIds"></a>
# **getChangeLogsByIds**
> PageOfChangelogs getChangeLogsByIds(issueIdOrKey, IssueChangelogIds)

Get changelogs by IDs

    Returns changelogs for an issue specified by a list of changelog IDs.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **IssueChangelogIds** | [**IssueChangelogIds**](../Models/IssueChangelogIds.md)|  | |

### Return type

[**PageOfChangelogs**](../Models/PageOfChangelogs.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getCreateIssueMeta"></a>
# **getCreateIssueMeta**
> IssueCreateMetadata getCreateIssueMeta(projectIds, projectKeys, issuetypeIds, issuetypeNames, expand)

Get create issue metadata

    Returns details of projects, issue types within projects, and, when requested, the create screen fields for each issue type for the user. Use the information to populate the requests in [ Create issue](#api-rest-api-2-issue-post) and [Create issues](#api-rest-api-2-issue-bulk-post).  Deprecated, see [Create Issue Meta Endpoint Deprecation Notice](https://developer.atlassian.com/cloud/jira/platform/changelog/#CHANGE-1304).  The request can be restricted to specific projects or issue types using the query parameters. The response will contain information for the valid projects, issue types, or project and issue type combinations requested. Note that invalid project, issue type, or project and issue type combinations do not generate errors.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Create issues* [project permission](https://confluence.atlassian.com/x/yodKLg) in the requested projects.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIds** | [**List**](../Models/String.md)| List of project IDs. This parameter accepts a comma-separated list. Multiple project IDs can also be provided using an ampersand-separated list. For example, &#x60;projectIds&#x3D;10000,10001&amp;projectIds&#x3D;10020,10021&#x60;. This parameter may be provided with &#x60;projectKeys&#x60;. | [optional] [default to null] |
| **projectKeys** | [**List**](../Models/String.md)| List of project keys. This parameter accepts a comma-separated list. Multiple project keys can also be provided using an ampersand-separated list. For example, &#x60;projectKeys&#x3D;proj1,proj2&amp;projectKeys&#x3D;proj3&#x60;. This parameter may be provided with &#x60;projectIds&#x60;. | [optional] [default to null] |
| **issuetypeIds** | [**List**](../Models/String.md)| List of issue type IDs. This parameter accepts a comma-separated list. Multiple issue type IDs can also be provided using an ampersand-separated list. For example, &#x60;issuetypeIds&#x3D;10000,10001&amp;issuetypeIds&#x3D;10020,10021&#x60;. This parameter may be provided with &#x60;issuetypeNames&#x60;. | [optional] [default to null] |
| **issuetypeNames** | [**List**](../Models/String.md)| List of issue type names. This parameter accepts a comma-separated list. Multiple issue type names can also be provided using an ampersand-separated list. For example, &#x60;issuetypeNames&#x3D;name1,name2&amp;issuetypeNames&#x3D;name3&#x60;. This parameter may be provided with &#x60;issuetypeIds&#x60;. | [optional] [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about issue metadata in the response. This parameter accepts &#x60;projects.issuetypes.fields&#x60;, which returns information about the fields in the issue creation screen for each issue type. Fields hidden from the screen are not returned. Use the information to populate the &#x60;fields&#x60; and &#x60;update&#x60; fields in [Create issue](#api-rest-api-2-issue-post) and [Create issues](#api-rest-api-2-issue-bulk-post). | [optional] [default to null] |

### Return type

[**IssueCreateMetadata**](../Models/IssueCreateMetadata.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getCreateIssueMetaIssueTypeId"></a>
# **getCreateIssueMetaIssueTypeId**
> PageOfCreateMetaIssueTypeWithField getCreateIssueMetaIssueTypeId(projectIdOrKey, issueTypeId, startAt, maxResults)

Get create field metadata for a project and issue type id

    Returns a page of field metadata for a specified project and issuetype id. Use the information to populate the requests in [ Create issue](#api-rest-api-2-issue-post) and [Create issues](#api-rest-api-2-issue-bulk-post).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Create issues* [project permission](https://confluence.atlassian.com/x/yodKLg) in the requested projects.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The ID or key of the project. | [default to null] |
| **issueTypeId** | **String**| The issuetype ID. | [default to null] |
| **startAt** | **Integer**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |

### Return type

[**PageOfCreateMetaIssueTypeWithField**](../Models/PageOfCreateMetaIssueTypeWithField.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getCreateIssueMetaIssueTypes"></a>
# **getCreateIssueMetaIssueTypes**
> PageOfCreateMetaIssueTypes getCreateIssueMetaIssueTypes(projectIdOrKey, startAt, maxResults)

Get create metadata issue types for a project

    Returns a page of issue type metadata for a specified project. Use the information to populate the requests in [ Create issue](#api-rest-api-2-issue-post) and [Create issues](#api-rest-api-2-issue-bulk-post).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Create issues* [project permission](https://confluence.atlassian.com/x/yodKLg) in the requested projects.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **projectIdOrKey** | **String**| The ID or key of the project. | [default to null] |
| **startAt** | **Integer**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |

### Return type

[**PageOfCreateMetaIssueTypes**](../Models/PageOfCreateMetaIssueTypes.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getEditIssueMeta"></a>
# **getEditIssueMeta**
> IssueUpdateMetadata getEditIssueMeta(issueIdOrKey, overrideScreenSecurity, overrideEditableFlag)

Get edit issue metadata

    Returns the edit screen fields for an issue that are visible to and editable by the user. Use the information to populate the requests in [Edit issue](#api-rest-api-2-issue-issueIdOrKey-put).  This endpoint will check for these conditions:  1.  Field is available on a field screen - through screen, screen scheme, issue type screen scheme, and issue type scheme configuration. &#x60;overrideScreenSecurity&#x3D;true&#x60; skips this condition. 2.  Field is visible in the [field configuration](https://support.atlassian.com/jira-cloud-administration/docs/change-a-field-configuration/). &#x60;overrideScreenSecurity&#x3D;true&#x60; skips this condition. 3.  Field is shown on the issue: each field has different conditions here. For example: Attachment field only shows if attachments are enabled. Assignee only shows if user has permissions to assign the issue. 4.  If a field is custom then it must have valid custom field context, applicable for its project and issue type. All system fields are assumed to have context in all projects and all issue types. 5.  Issue has a project, issue type, and status defined. 6.  Issue is assigned to a valid workflow, and the current status has assigned a workflow step. &#x60;overrideEditableFlag&#x3D;true&#x60; skips this condition. 7.  The current workflow step is editable. This is true by default, but [can be disabled by setting](https://support.atlassian.com/jira-cloud-administration/docs/use-workflow-properties/) the &#x60;jira.issue.editable&#x60; property to &#x60;false&#x60;. &#x60;overrideEditableFlag&#x3D;true&#x60; skips this condition. 8.  User has [Edit issues permission](https://support.atlassian.com/jira-cloud-administration/docs/permissions-for-company-managed-projects/). 9.  Workflow permissions allow editing a field. This is true by default but [can be modified](https://support.atlassian.com/jira-cloud-administration/docs/use-workflow-properties/) using &#x60;jira.permission.*&#x60; workflow properties.  Fields hidden using [Issue layout settings page](https://support.atlassian.com/jira-software-cloud/docs/configure-field-layout-in-the-issue-view/) remain editable.  Connect apps having an app user with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), and Forge apps acting on behalf of users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg), can return additional details using:   *  &#x60;overrideScreenSecurity&#x60; When this flag is &#x60;true&#x60;, then this endpoint skips checking if fields are available through screens, and field configuration (conditions 1. and 2. from the list above).  *  &#x60;overrideEditableFlag&#x60; When this flag is &#x60;true&#x60;, then this endpoint skips checking if workflow is present and if the current step is editable (conditions 6. and 7. from the list above).  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  Note: For any fields to be editable the user must have the *Edit issues* [project permission](https://confluence.atlassian.com/x/yodKLg) for the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **overrideScreenSecurity** | **Boolean**| Whether hidden fields are returned. Available to Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) and Forge apps acting on behalf of users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to false] |
| **overrideEditableFlag** | **Boolean**| Whether non-editable fields are returned. Available to Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) and Forge apps acting on behalf of users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to false] |

### Return type

[**IssueUpdateMetadata**](../Models/IssueUpdateMetadata.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getEvents"></a>
# **getEvents**
> List getEvents()

Get events

    Returns all issue events.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/IssueEvent.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssue"></a>
# **getIssue**
> IssueBean getIssue(issueIdOrKey, fields, fieldsByKeys, expand, properties, updateHistory, failFast)

Get issue

    Returns the details for an issue.  The issue is identified by its ID or key, however, if the identifier doesn&#39;t match an issue, a case-insensitive search and check for moved issues is performed. If a matching issue is found its details are returned, a 302 or other redirect is **not** returned. The issue key returned in the response is the key of the issue found.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **fields** | [**List**](../Models/String.md)| A list of fields to return for the issue. This parameter accepts a comma-separated list. Use it to retrieve a subset of fields. Allowed values:   *  &#x60;*all&#x60; Returns all fields.  *  &#x60;*navigable&#x60; Returns navigable fields.  *  Any issue field, prefixed with a minus to exclude.  Examples:   *  &#x60;summary,comment&#x60; Returns only the summary and comments fields.  *  &#x60;-description&#x60; Returns all (default) fields except description.  *  &#x60;*navigable,-comment&#x60; Returns all navigable fields except comment.  This parameter may be specified multiple times. For example, &#x60;fields&#x3D;field1,field2&amp; fields&#x3D;field3&#x60;.  Note: All fields are returned by default. This differs from [Search for issues using JQL (GET)](#api-rest-api-2-search-get) and [Search for issues using JQL (POST)](#api-rest-api-2-search-post) where the default is all navigable fields. | [optional] [default to null] |
| **fieldsByKeys** | **Boolean**| Whether fields in &#x60;fields&#x60; are referenced by keys rather than IDs. This parameter is useful where fields have been added by a connect app and a field&#39;s key may differ from its ID. | [optional] [default to false] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about the issues in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;renderedFields&#x60; Returns field values rendered in HTML format.  *  &#x60;names&#x60; Returns the display name of each field.  *  &#x60;schema&#x60; Returns the schema describing a field type.  *  &#x60;transitions&#x60; Returns all possible transitions for the issue.  *  &#x60;editmeta&#x60; Returns information about how each field can be edited.  *  &#x60;changelog&#x60; Returns a list of recent updates to an issue, sorted by date, starting from the most recent.  *  &#x60;versionedRepresentations&#x60; Returns a JSON array for each version of a field&#39;s value, with the highest number representing the most recent version. Note: When included in the request, the &#x60;fields&#x60; parameter is ignored. | [optional] [default to null] |
| **properties** | [**List**](../Models/String.md)| A list of issue properties to return for the issue. This parameter accepts a comma-separated list. Allowed values:   *  &#x60;*all&#x60; Returns all issue properties.  *  Any issue property key, prefixed with a minus to exclude.  Examples:   *  &#x60;*all&#x60; Returns all properties.  *  &#x60;*all,-prop1&#x60; Returns all properties except &#x60;prop1&#x60;.  *  &#x60;prop1,prop2&#x60; Returns &#x60;prop1&#x60; and &#x60;prop2&#x60; properties.  This parameter may be specified multiple times. For example, &#x60;properties&#x3D;prop1,prop2&amp; properties&#x3D;prop3&#x60;. | [optional] [default to null] |
| **updateHistory** | **Boolean**| Whether the project in which the issue is created is added to the user&#39;s **Recently viewed** project list, as shown under **Projects** in Jira. This also populates the [JQL issues search](#api-rest-api-2-search-get) &#x60;lastViewed&#x60; field. | [optional] [default to false] |
| **failFast** | **Boolean**| Whether to fail the request quickly in case of an error while loading fields for an issue. For &#x60;failFast&#x3D;true&#x60;, if one field fails, the entire operation fails. For &#x60;failFast&#x3D;false&#x60;, the operation will continue even if a field fails. It will return a valid response, but without values for the failed field(s). | [optional] [default to false] |

### Return type

[**IssueBean**](../Models/IssueBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getIssueLimitReport"></a>
# **getIssueLimitReport**
> IssueLimitReportResponseBean getIssueLimitReport(isReturningKeys)

Get issue limit report

    Returns all issues breaching and approaching per-issue limits.  **[Permissions](#permissions) required:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) is required for the project the issues are in. Results may be incomplete otherwise  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **isReturningKeys** | **Boolean**| Return issue keys instead of issue ids in the response.  Usage: Add &#x60;?isReturningKeys&#x3D;true&#x60; to the end of the path to request issue keys. | [optional] [default to false] |

### Return type

[**IssueLimitReportResponseBean**](../Models/IssueLimitReportResponseBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getTransitions"></a>
# **getTransitions**
> Transitions getTransitions(issueIdOrKey, expand, transitionId, skipRemoteOnlyCondition, includeUnavailableTransitions, sortByOpsBarAndStatus)

Get transitions

    Returns either all transitions or a transition that can be performed by the user on an issue, based on the issue&#39;s status.  Note, if a request is made for a transition that does not exist or cannot be performed on the issue, given its status, the response will return any empty transitions list.  This operation can be accessed anonymously.  **[Permissions](#permissions) required: A list or transition is returned only when the user has:**   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  However, if the user does not have the *Transition issues* [ project permission](https://confluence.atlassian.com/x/yodKLg) the response will not list any transitions.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| The ID or key of the issue. | [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about transitions in the response. This parameter accepts &#x60;transitions.fields&#x60;, which returns information about the fields in the transition screen for each transition. Fields hidden from the screen are not returned. Use this information to populate the &#x60;fields&#x60; and &#x60;update&#x60; fields in [Transition issue](#api-rest-api-2-issue-issueIdOrKey-transitions-post). | [optional] [default to null] |
| **transitionId** | **String**| The ID of the transition. | [optional] [default to null] |
| **skipRemoteOnlyCondition** | **Boolean**| Whether transitions with the condition *Hide From User Condition* are included in the response. Available to Connect and Forge app users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) and Forge apps acting on behalf of users with *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg). | [optional] [default to false] |
| **includeUnavailableTransitions** | **Boolean**| Whether details of transitions that fail a condition are included in the response | [optional] [default to false] |
| **sortByOpsBarAndStatus** | **Boolean**| Whether the transitions are sorted by ops-bar sequence value first then category order (Todo, In Progress, Done) or only by ops-bar sequence value. | [optional] [default to false] |

### Return type

[**Transitions**](../Models/Transitions.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="notify"></a>
# **notify**
> oas_any_type_not_mapped notify(issueIdOrKey, Notification)

Send notification for issue

    Creates an email notification for an issue and adds it to the mail queue.  **[Permissions](#permissions) required:**   *  *Browse Projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdOrKey** | **String**| ID or key of the issue that the notification is sent for. | [default to null] |
| **Notification** | [**Notification**](../Models/Notification.md)| The request object for the notification and recipients. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="unarchiveIssues"></a>
# **unarchiveIssues**
> IssueArchivalSyncResponse unarchiveIssues(IssueArchivalSyncRequest)

Unarchive issue(s) by issue keys/ID

    Enables admins to unarchive up to 1000 issues in a single request using issue ID/key, returning details of the issue(s) unarchived in the process and the errors encountered, if any.  **Note that:**   *  you can&#39;t unarchive subtasks directly, only through their parent issues  *  you can only unarchive issues from software, service management, and business projects  **[Permissions](#permissions) required:** Jira admin or site admin: [global permission](https://confluence.atlassian.com/x/x4dKLg)  **License required:** Premium or Enterprise  **Signed-in users only:** This API can&#39;t be accessed anonymously.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueArchivalSyncRequest** | [**IssueArchivalSyncRequest**](../Models/IssueArchivalSyncRequest.md)| Contains a list of issue keys or IDs to be unarchived. | |

### Return type

[**IssueArchivalSyncResponse**](../Models/IssueArchivalSyncResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

