# IssueBulkOperationsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAvailableTransitions**](IssueBulkOperationsApi.md#getAvailableTransitions) | **GET** /rest/api/3/bulk/issues/transition | Get available transitions |
| [**getBulkEditableFields**](IssueBulkOperationsApi.md#getBulkEditableFields) | **GET** /rest/api/3/bulk/issues/fields | Get bulk editable fields |
| [**getBulkOperationProgress**](IssueBulkOperationsApi.md#getBulkOperationProgress) | **GET** /rest/api/3/bulk/queue/{taskId} | Get bulk issue operation progress |
| [**submitBulkDelete**](IssueBulkOperationsApi.md#submitBulkDelete) | **POST** /rest/api/3/bulk/issues/delete | Bulk delete issues |
| [**submitBulkEdit**](IssueBulkOperationsApi.md#submitBulkEdit) | **POST** /rest/api/3/bulk/issues/fields | Bulk edit issues |
| [**submitBulkMove**](IssueBulkOperationsApi.md#submitBulkMove) | **POST** /rest/api/3/bulk/issues/move | Bulk move issues |
| [**submitBulkTransition**](IssueBulkOperationsApi.md#submitBulkTransition) | **POST** /rest/api/3/bulk/issues/transition | Bulk transition issue statuses |
| [**submitBulkUnwatch**](IssueBulkOperationsApi.md#submitBulkUnwatch) | **POST** /rest/api/3/bulk/issues/unwatch | Bulk unwatch issues |
| [**submitBulkWatch**](IssueBulkOperationsApi.md#submitBulkWatch) | **POST** /rest/api/3/bulk/issues/watch | Bulk watch issues |


<a name="getAvailableTransitions"></a>
# **getAvailableTransitions**
> BulkTransitionGetAvailableTransitions getAvailableTransitions(issueIdsOrKeys, endingBefore, startingAfter)

Get available transitions

    Use this API to retrieve a list of transitions available for the specified issues that can be used or bulk transition operations. You can submit either single or multiple issues in the query to obtain the available transitions.  The response will provide the available transitions for issues, organized by their respective workflows. **Only the transitions that are common among the issues within that workflow and do not involve any additional field updates will be included.** For bulk transitions that require additional field updates, please utilise the Jira Cloud UI.  You can request available transitions for up to 1,000 issues in a single operation. This API uses pagination to return responses, delivering 50 workflows at a time.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Transition [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/permissions-for-company-managed-projects/#Transition-issues/) in all projects that contain the selected issues.  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdsOrKeys** | **String**| Comma (,) separated Ids or keys of the issues to get transitions available for them. | [default to null] |
| **endingBefore** | **String**| (Optional)The end cursor for use in pagination. | [optional] [default to null] |
| **startingAfter** | **String**| (Optional)The start cursor for use in pagination. | [optional] [default to null] |

### Return type

[**BulkTransitionGetAvailableTransitions**](../Models/BulkTransitionGetAvailableTransitions.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getBulkEditableFields"></a>
# **getBulkEditableFields**
> BulkEditGetFields getBulkEditableFields(issueIdsOrKeys, searchText, endingBefore, startingAfter)

Get bulk editable fields

    Use this API to get a list of fields visible to the user to perform bulk edit operations. You can pass single or multiple issues in the query to get eligible editable fields. This API uses pagination to return responses, delivering 50 fields at a time.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.  *  Depending on the field, any field-specific permissions required to edit it.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **issueIdsOrKeys** | **String**| The IDs or keys of the issues to get editable fields from. | [default to null] |
| **searchText** | **String**| (Optional)The text to search for in the editable fields. | [optional] [default to null] |
| **endingBefore** | **String**| (Optional)The end cursor for use in pagination. | [optional] [default to null] |
| **startingAfter** | **String**| (Optional)The start cursor for use in pagination. | [optional] [default to null] |

### Return type

[**BulkEditGetFields**](../Models/BulkEditGetFields.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getBulkOperationProgress"></a>
# **getBulkOperationProgress**
> BulkOperationProgress getBulkOperationProgress(taskId)

Get bulk issue operation progress

    Use this to get the progress state for the specified bulk operation &#x60;taskId&#x60;.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  If the task is running, this resource will return:      {\&quot;taskId\&quot;:\&quot;10779\&quot;,\&quot;status\&quot;:\&quot;RUNNING\&quot;,\&quot;progressPercent\&quot;:65,\&quot;submittedBy\&quot;:{\&quot;accountId\&quot;:\&quot;5b10a2844c20165700ede21g\&quot;},\&quot;created\&quot;:1690180055963,\&quot;started\&quot;:1690180056206,\&quot;updated\&quot;:169018005829}  If the task has completed, then this resource will return:      {\&quot;processedAccessibleIssues\&quot;:[10001,10002],\&quot;created\&quot;:1709189449954,\&quot;progressPercent\&quot;:100,\&quot;started\&quot;:1709189450154,\&quot;status\&quot;:\&quot;COMPLETE\&quot;,\&quot;submittedBy\&quot;:{\&quot;accountId\&quot;:\&quot;5b10a2844c20165700ede21g\&quot;},\&quot;invalidOrInaccessibleIssueCount\&quot;:0,\&quot;taskId\&quot;:\&quot;10000\&quot;,\&quot;totalIssueCount\&quot;:2,\&quot;updated\&quot;:1709189450354}  **Note:** You can view task progress for up to 14 days from creation.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **taskId** | **String**| The ID of the task. | [default to null] |

### Return type

[**BulkOperationProgress**](../Models/BulkOperationProgress.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="submitBulkDelete"></a>
# **submitBulkDelete**
> SubmittedBulkOperation submitBulkDelete(IssueBulkDeletePayload)

Bulk delete issues

    Use this API to submit a bulk delete request. You can delete up to 1,000 issues in a single operation.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Delete [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/permissions-for-company-managed-projects/#Delete-issues/) in all projects that contain the selected issues.  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueBulkDeletePayload** | [**IssueBulkDeletePayload**](../Models/IssueBulkDeletePayload.md)| The request body containing the issues to be deleted. | |

### Return type

[**SubmittedBulkOperation**](../Models/SubmittedBulkOperation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="submitBulkEdit"></a>
# **submitBulkEdit**
> SubmittedBulkOperation submitBulkEdit(IssueBulkEditPayload)

Bulk edit issues

    Use this API to submit a bulk edit request and simultaneously edit multiple issues. There are limits applied to the number of issues and fields that can be edited. A single request can accommodate a maximum of 1000 issues (including subtasks) and 200 fields.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  Edit [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueBulkEditPayload** | [**IssueBulkEditPayload**](../Models/IssueBulkEditPayload.md)| The request body containing the issues to be edited and the new field values. | |

### Return type

[**SubmittedBulkOperation**](../Models/SubmittedBulkOperation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="submitBulkMove"></a>
# **submitBulkMove**
> SubmittedBulkOperation submitBulkMove(IssueBulkMovePayload)

Bulk move issues

    Use this API to submit a bulk issue move request. You can move multiple issues from multiple projects in a single request, but they must all be moved to a single project, issue type, and parent. You can&#39;t move more than 1000 issues (including subtasks) at once.  #### Scenarios: ####  This is an early version of the API and it doesn&#39;t have full feature parity with the Bulk Move UI experience.   *  Moving issue of type A to issue of type B in the same project or a different project: &#x60;SUPPORTED&#x60;  *  Moving multiple issues of type A in one or more projects to multiple issues of type B in one of the source projects or a different project: &#x60;SUPPORTED&#x60;  *  Moving issues of multiple issue types in one or more projects to issues of a single issue type in one of the source project or a different project: **&#x60;SUPPORTED&#x60;**       E.g. Moving issues of story and task issue types in project 1 and project 2 to issues of task issue type in project 3  *  Moving a standard parent issue of type A with its multiple subtask issue types in one project to standard issue of type B and multiple subtask issue types in the same project or a different project: &#x60;SUPPORTED&#x60;  *  Moving standard issues with their subtasks to a parent issue in the same project or a different project without losing their relation: &#x60;SUPPORTED&#x60;  *  Moving an epic issue with its child issues to a different project without losing their relation: &#x60;SUPPORTED&#x60;       This usecase is **supported using multiple requests**. Move the epic in one request and then move the children in a separate request with target parent set to the epic issue id              (Alternatively, move them individually and stitch the relationship back with the Bulk Edit API)  #### Limits applied to bulk issue moves: ####  When using the bulk move, keep in mind that there are limits on the number of issues and fields you can include.   *  You can move up to 1,000 issues in a single operation, including any subtasks.  *  The total combined number of fields across all issues must not exceed 1,500,000. For example, if each issue includes 15,000 fields, then the maximum number of issues that can be moved is 100.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Move [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in source projects.  *  Create [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in destination projects.  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in destination projects, if moving subtasks only.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueBulkMovePayload** | [**IssueBulkMovePayload**](../Models/IssueBulkMovePayload.md)|  | |

### Return type

[**SubmittedBulkOperation**](../Models/SubmittedBulkOperation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="submitBulkTransition"></a>
# **submitBulkTransition**
> SubmittedBulkOperation submitBulkTransition(IssueBulkTransitionPayload)

Bulk transition issue statuses

    Use this API to submit a bulk issue status transition request. You can transition multiple issues, alongside with their valid transition Ids. You can transition up to 1,000 issues in a single operation.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Transition [issues permission](https://support.atlassian.com/jira-cloud-administration/docs/permissions-for-company-managed-projects/#Transition-issues/) in all projects that contain the selected issues.  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueBulkTransitionPayload** | [**IssueBulkTransitionPayload**](../Models/IssueBulkTransitionPayload.md)| The request body containing the issues to be transitioned. | |

### Return type

[**SubmittedBulkOperation**](../Models/SubmittedBulkOperation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="submitBulkUnwatch"></a>
# **submitBulkUnwatch**
> SubmittedBulkOperation submitBulkUnwatch(IssueBulkWatchOrUnwatchPayload)

Bulk unwatch issues

    Use this API to submit a bulk unwatch request. You can unwatch up to 1,000 issues in a single operation.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueBulkWatchOrUnwatchPayload** | [**IssueBulkWatchOrUnwatchPayload**](../Models/IssueBulkWatchOrUnwatchPayload.md)| The request body containing the issues to be unwatched. | |

### Return type

[**SubmittedBulkOperation**](../Models/SubmittedBulkOperation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="submitBulkWatch"></a>
# **submitBulkWatch**
> SubmittedBulkOperation submitBulkWatch(IssueBulkWatchOrUnwatchPayload)

Bulk watch issues

    Use this API to submit a bulk watch request. You can watch up to 1,000 issues in a single operation.  **[Permissions](#permissions) required:**   *  Global bulk change [permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-global-permissions/).  *  Browse [project permission](https://support.atlassian.com/jira-cloud-administration/docs/manage-project-permissions/) in all projects that contain the selected issues.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssueBulkWatchOrUnwatchPayload** | [**IssueBulkWatchOrUnwatchPayload**](../Models/IssueBulkWatchOrUnwatchPayload.md)| The request body containing the issues to be watched. | |

### Return type

[**SubmittedBulkOperation**](../Models/SubmittedBulkOperation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

