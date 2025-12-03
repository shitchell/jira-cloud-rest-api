# IssueSearchApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**countIssues**](IssueSearchApi.md#countIssues) | **POST** /rest/api/3/search/approximate-count | Count issues using JQL |
| [**getIssuePickerResource**](IssueSearchApi.md#getIssuePickerResource) | **GET** /rest/api/3/issue/picker | Get issue picker suggestions |
| [**matchIssues**](IssueSearchApi.md#matchIssues) | **POST** /rest/api/3/jql/match | Check issues against JQL |
| [**searchAndReconsileIssuesUsingJql**](IssueSearchApi.md#searchAndReconsileIssuesUsingJql) | **GET** /rest/api/3/search/jql | Search for issues using JQL enhanced search (GET) |
| [**searchAndReconsileIssuesUsingJqlPost**](IssueSearchApi.md#searchAndReconsileIssuesUsingJqlPost) | **POST** /rest/api/3/search/jql | Search for issues using JQL enhanced search (POST) |
| [**searchForIssuesUsingJql**](IssueSearchApi.md#searchForIssuesUsingJql) | **GET** /rest/api/3/search | Currently being removed. Search for issues using JQL (GET) |
| [**searchForIssuesUsingJqlPost**](IssueSearchApi.md#searchForIssuesUsingJqlPost) | **POST** /rest/api/3/search | Currently being removed. Search for issues using JQL (POST) |


<a name="countIssues"></a>
# **countIssues**
> JQLCountResultsBean countIssues(JQLCountRequestBean)

Count issues using JQL

    Provide an estimated count of the issues that match the [JQL](https://confluence.atlassian.com/x/egORLQ). Recent updates might not be immediately visible in the returned output. This endpoint requires JQL to be bounded.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Issues are included in the response where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **JQLCountRequestBean** | [**JQLCountRequestBean**](../Models/JQLCountRequestBean.md)| A JSON object containing the search request. | |

### Return type

[**JQLCountResultsBean**](../Models/JQLCountResultsBean.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getIssuePickerResource"></a>
# **getIssuePickerResource**
> IssuePickerSuggestions getIssuePickerResource(query, currentJQL, currentIssueKey, currentProjectId, showSubTasks, showSubTaskParent)

Get issue picker suggestions

    Returns lists of issues matching a query string. Use this resource to provide auto-completion suggestions when the user is looking for an issue using a word or string.  This operation returns two lists:   *  &#x60;History Search&#x60; which includes issues from the user&#39;s history of created, edited, or viewed issues that contain the string in the &#x60;query&#x60; parameter.  *  &#x60;Current Search&#x60; which includes issues that match the JQL expression in &#x60;currentJQL&#x60; and contain the string in the &#x60;query&#x60; parameter.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **query** | **String**| A string to match against text fields in the issue such as title, description, or comments. | [optional] [default to null] |
| **currentJQL** | **String**| A JQL query defining a list of issues to search for the query term. Note that &#x60;username&#x60; and &#x60;userkey&#x60; cannot be used as search terms for this parameter, due to privacy reasons. Use &#x60;accountId&#x60; instead. | [optional] [default to null] |
| **currentIssueKey** | **String**| The key of an issue to exclude from search results. For example, the issue the user is viewing when they perform this query. | [optional] [default to null] |
| **currentProjectId** | **String**| The ID of a project that suggested issues must belong to. | [optional] [default to null] |
| **showSubTasks** | **Boolean**| Indicate whether to include subtasks in the suggestions list. | [optional] [default to null] |
| **showSubTaskParent** | **Boolean**| When &#x60;currentIssueKey&#x60; is a subtask, whether to include the parent issue in the suggestions if it matches the query. | [optional] [default to null] |

### Return type

[**IssuePickerSuggestions**](../Models/IssuePickerSuggestions.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="matchIssues"></a>
# **matchIssues**
> IssueMatches matchIssues(IssuesAndJQLQueries)

Check issues against JQL

    Checks whether one or more issues would be returned by one or more JQL queries.  **[Permissions](#permissions) required:** None, however, issues are only matched against JQL queries where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project that the issue is in.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **IssuesAndJQLQueries** | [**IssuesAndJQLQueries**](../Models/IssuesAndJQLQueries.md)|  | |

### Return type

[**IssueMatches**](../Models/IssueMatches.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="searchAndReconsileIssuesUsingJql"></a>
# **searchAndReconsileIssuesUsingJql**
> SearchAndReconcileResults searchAndReconsileIssuesUsingJql(jql, nextPageToken, maxResults, fields, expand, properties, fieldsByKeys, failFast, reconcileIssues)

Search for issues using JQL enhanced search (GET)

    Searches for issues using [JQL](https://confluence.atlassian.com/x/egORLQ). Recent updates might not be immediately visible in the returned search results. If you need [read-after-write](https://developer.atlassian.com/cloud/jira/platform/search-and-reconcile/) consistency, you can utilize the &#x60;reconcileIssues&#x60; parameter to ensure stronger consistency assurances. This operation can be accessed anonymously.  If the JQL query expression is too large to be encoded as a query parameter, use the [POST](#api-rest-api-3-search-post) version of this resource.  **[Permissions](#permissions) required:** Issues are included in the response where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **jql** | **String**| A [JQL](https://confluence.atlassian.com/x/egORLQ) expression. For performance reasons, this parameter requires a bounded query. A bounded query is a query with a search restriction.   *  Example of an unbounded query: &#x60;order by key desc&#x60;.  *  Example of a bounded query: &#x60;assignee &#x3D; currentUser() order by key&#x60;.  Additionally, &#x60;orderBy&#x60; clause can contain a maximum of 7 fields. | [optional] [default to null] |
| **nextPageToken** | **String**| The token for a page to fetch that is not the first page. The first page has a &#x60;nextPageToken&#x60; of &#x60;null&#x60;. Use the &#x60;nextPageToken&#x60; to fetch the next page of issues.  Note: The &#x60;nextPageToken&#x60; field is **not included** in the response for the last page, indicating there is no next page. | [optional] [default to null] |
| **maxResults** | **Integer**| The maximum number of items to return per page. To manage page size, API may return fewer items per page where a large number of fields or properties are requested. The greatest number of items returned per page is achieved when requesting &#x60;id&#x60; or &#x60;key&#x60; only. It returns max 5000 issues. | [optional] [default to 50] |
| **fields** | [**List**](../Models/String.md)| A list of fields to return for each issue, use it to retrieve a subset of fields. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;*all&#x60; Returns all fields.  *  &#x60;*navigable&#x60; Returns navigable fields.  *  &#x60;id&#x60; Returns only issue IDs.  *  Any issue field, prefixed with a minus to exclude.  The default is &#x60;id&#x60;.  Examples:   *  &#x60;summary,comment&#x60; Returns only the summary and comments fields only.  *  &#x60;-description&#x60; Returns all navigable (default) fields except description.  *  &#x60;*all,-comment&#x60; Returns all fields except comments.  Multiple &#x60;fields&#x60; parameters can be included in a request.  Note: By default, this resource returns IDs only. This differs from [GET issue](#api-rest-api-3-issue-issueIdOrKey-get) where the default is all fields. | [optional] [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about issues in the response. Note that, unlike the majority of instances where &#x60;expand&#x60; is specified, &#x60;expand&#x60; is defined as a comma-delimited string of values. The expand options are:   *  &#x60;renderedFields&#x60; Returns field values rendered in HTML format.  *  &#x60;names&#x60; Returns the display name of each field.  *  &#x60;schema&#x60; Returns the schema describing a field type.  *  &#x60;transitions&#x60; Returns all possible transitions for the issue.  *  &#x60;operations&#x60; Returns all possible operations for the issue.  *  &#x60;editmeta&#x60; Returns information about how each field can be edited.  *  &#x60;changelog&#x60; Returns a list of recent updates to an issue, sorted by date, starting from the most recent.  *  &#x60;versionedRepresentations&#x60; Instead of &#x60;fields&#x60;, returns &#x60;versionedRepresentations&#x60; a JSON array containing each version of a field&#39;s value, with the highest numbered item representing the most recent version.  Examples: &#x60;\&quot;names,changelog\&quot;&#x60; Returns the display name of each field as well as a list of recent updates to an issue. | [optional] [default to null] |
| **properties** | [**List**](../Models/String.md)| A list of up to 5 issue properties to include in the results. This parameter accepts a comma-separated list. | [optional] [default to null] |
| **fieldsByKeys** | **Boolean**| Reference fields by their key (rather than ID). The default is &#x60;false&#x60;. | [optional] [default to false] |
| **failFast** | **Boolean**| Fail this request early if we can&#39;t retrieve all field data. | [optional] [default to false] |
| **reconcileIssues** | [**List**](../Models/Long.md)| Strong consistency issue ids to be reconciled with search results. Accepts max 50 ids | [optional] [default to null] |

### Return type

[**SearchAndReconcileResults**](../Models/SearchAndReconcileResults.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="searchAndReconsileIssuesUsingJqlPost"></a>
# **searchAndReconsileIssuesUsingJqlPost**
> SearchAndReconcileResults searchAndReconsileIssuesUsingJqlPost(SearchAndReconcileRequestBean)

Search for issues using JQL enhanced search (POST)

    Searches for issues using [JQL](https://confluence.atlassian.com/x/egORLQ). Recent updates might not be immediately visible in the returned search results. If you need [read-after-write](https://developer.atlassian.com/cloud/jira/platform/search-and-reconcile/) consistency, you can utilize the &#x60;reconcileIssues&#x60; parameter to ensure stronger consistency assurances. This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Issues are included in the response where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **SearchAndReconcileRequestBean** | [**SearchAndReconcileRequestBean**](../Models/SearchAndReconcileRequestBean.md)|  | |

### Return type

[**SearchAndReconcileResults**](../Models/SearchAndReconcileResults.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="searchForIssuesUsingJql"></a>
# **searchForIssuesUsingJql**
> SearchResults searchForIssuesUsingJql(jql, startAt, maxResults, validateQuery, fields, expand, properties, fieldsByKeys, failFast)

Currently being removed. Search for issues using JQL (GET)

    Endpoint is currently being removed. [More details](https://developer.atlassian.com/changelog/#CHANGE-2046)  Searches for issues using [JQL](https://confluence.atlassian.com/x/egORLQ).  If the JQL query expression is too large to be encoded as a query parameter, use the [POST](#api-rest-api-3-search-post) version of this resource.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Issues are included in the response where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **jql** | **String**| The [JQL](https://confluence.atlassian.com/x/egORLQ) that defines the search. Note:   *  If no JQL expression is provided, all issues are returned.  *  &#x60;username&#x60; and &#x60;userkey&#x60; cannot be used as search terms due to privacy reasons. Use &#x60;accountId&#x60; instead.  *  If a user has hidden their email address in their user profile, partial matches of the email address will not find the user. An exact match is required. | [optional] [default to null] |
| **startAt** | **Integer**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. To manage page size, Jira may return fewer items per page where a large number of fields or properties are requested. The greatest number of items returned per page is achieved when requesting &#x60;id&#x60; or &#x60;key&#x60; only. | [optional] [default to 50] |
| **validateQuery** | **String**| Determines how to validate the JQL query and treat the validation results. Supported values are:   *  &#x60;strict&#x60; Returns a 400 response code if any errors are found, along with a list of all errors (and warnings).  *  &#x60;warn&#x60; Returns all errors as warnings.  *  &#x60;none&#x60; No validation is performed.  *  &#x60;true&#x60; *Deprecated* A legacy synonym for &#x60;strict&#x60;.  *  &#x60;false&#x60; *Deprecated* A legacy synonym for &#x60;warn&#x60;.  Note: If the JQL is not correctly formed a 400 response code is returned, regardless of the &#x60;validateQuery&#x60; value. | [optional] [default to strict] [enum: strict, warn, none, true, false] |
| **fields** | [**List**](../Models/String.md)| A list of fields to return for each issue, use it to retrieve a subset of fields. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;*all&#x60; Returns all fields.  *  &#x60;*navigable&#x60; Returns navigable fields.  *  Any issue field, prefixed with a minus to exclude.  Examples:   *  &#x60;summary,comment&#x60; Returns only the summary and comments fields.  *  &#x60;-description&#x60; Returns all navigable (default) fields except description.  *  &#x60;*all,-comment&#x60; Returns all fields except comments.  This parameter may be specified multiple times. For example, &#x60;fields&#x3D;field1,field2&amp;fields&#x3D;field3&#x60;.  Note: All navigable fields are returned by default. This differs from [GET issue](#api-rest-api-3-issue-issueIdOrKey-get) where the default is all fields. | [optional] [default to null] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about issues in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;renderedFields&#x60; Returns field values rendered in HTML format.  *  &#x60;names&#x60; Returns the display name of each field.  *  &#x60;schema&#x60; Returns the schema describing a field type.  *  &#x60;transitions&#x60; Returns all possible transitions for the issue.  *  &#x60;operations&#x60; Returns all possible operations for the issue.  *  &#x60;editmeta&#x60; Returns information about how each field can be edited.  *  &#x60;changelog&#x60; Returns a list of recent updates to an issue, sorted by date, starting from the most recent.  *  &#x60;versionedRepresentations&#x60; Instead of &#x60;fields&#x60;, returns &#x60;versionedRepresentations&#x60; a JSON array containing each version of a field&#39;s value, with the highest numbered item representing the most recent version. | [optional] [default to null] |
| **properties** | [**List**](../Models/String.md)| A list of issue property keys for issue properties to include in the results. This parameter accepts a comma-separated list. Multiple properties can also be provided using an ampersand separated list. For example, &#x60;properties&#x3D;prop1,prop2&amp;properties&#x3D;prop3&#x60;. A maximum of 5 issue property keys can be specified. | [optional] [default to null] |
| **fieldsByKeys** | **Boolean**| Reference fields by their key (rather than ID). | [optional] [default to false] |
| **failFast** | **Boolean**| Whether to fail the request quickly in case of an error while loading fields for an issue. For &#x60;failFast&#x3D;true&#x60;, if one field fails, the entire operation fails. For &#x60;failFast&#x3D;false&#x60;, the operation will continue even if a field fails. It will return a valid response, but without values for the failed field(s). | [optional] [default to false] |

### Return type

[**SearchResults**](../Models/SearchResults.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="searchForIssuesUsingJqlPost"></a>
# **searchForIssuesUsingJqlPost**
> SearchResults searchForIssuesUsingJqlPost(SearchRequestBean)

Currently being removed. Search for issues using JQL (POST)

    Endpoint is currently being removed. [More details](https://developer.atlassian.com/changelog/#CHANGE-2046)  Searches for issues using [JQL](https://confluence.atlassian.com/x/egORLQ).  There is a [GET](#api-rest-api-3-search-get) version of this resource that can be used for smaller JQL query expressions.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** Issues are included in the response where the user has:   *  *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg) for the project containing the issue.  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg) is configured, issue-level security permission to view the issue.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **SearchRequestBean** | [**SearchRequestBean**](../Models/SearchRequestBean.md)| A JSON object containing the search request. | |

### Return type

[**SearchResults**](../Models/SearchResults.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

