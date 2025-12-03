# GroupsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addUserToGroup**](GroupsApi.md#addUserToGroup) | **POST** /rest/api/2/group/user | Add user to group |
| [**bulkGetGroups**](GroupsApi.md#bulkGetGroups) | **GET** /rest/api/2/group/bulk | Bulk get groups |
| [**createGroup**](GroupsApi.md#createGroup) | **POST** /rest/api/2/group | Create group |
| [**findGroups**](GroupsApi.md#findGroups) | **GET** /rest/api/2/groups/picker | Find groups |
| [**getGroup**](GroupsApi.md#getGroup) | **GET** /rest/api/2/group | Get group |
| [**getUsersFromGroup**](GroupsApi.md#getUsersFromGroup) | **GET** /rest/api/2/group/member | Get users from group |
| [**removeGroup**](GroupsApi.md#removeGroup) | **DELETE** /rest/api/2/group | Remove group |
| [**removeUserFromGroup**](GroupsApi.md#removeUserFromGroup) | **DELETE** /rest/api/2/group/user | Remove user from group |


<a name="addUserToGroup"></a>
# **addUserToGroup**
> Group addUserToGroup(UpdateUserToGroupBean, groupname, groupId)

Add user to group

    Adds a user to a group.  **[Permissions](#permissions) required:** Site administration (that is, member of the *site-admin* [group](https://confluence.atlassian.com/x/24xjL)).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **UpdateUserToGroupBean** | [**UpdateUserToGroupBean**](../Models/UpdateUserToGroupBean.md)| The user to add to the group. | |
| **groupname** | **String**| As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended to identify a group.   The name of the group. This parameter cannot be used with the &#x60;groupId&#x60; parameter. | [optional] [default to null] |
| **groupId** | **String**| The ID of the group. This parameter cannot be used with the &#x60;groupName&#x60; parameter. | [optional] [default to null] |

### Return type

[**Group**](../Models/Group.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="bulkGetGroups"></a>
# **bulkGetGroups**
> PageBeanGroupDetails bulkGetGroups(startAt, maxResults, groupId, groupName, accessType, applicationKey)

Bulk get groups

    Returns a [paginated](#pagination) list of groups.  **[Permissions](#permissions) required:** *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **groupId** | [**Set**](../Models/String.md)| The ID of a group. To specify multiple IDs, pass multiple &#x60;groupId&#x60; parameters. For example, &#x60;groupId&#x3D;5b10a2844c20165700ede21g&amp;groupId&#x3D;5b10ac8d82e05b22cc7d4ef5&#x60;. | [optional] [default to null] |
| **groupName** | [**Set**](../Models/String.md)| The name of a group. To specify multiple names, pass multiple &#x60;groupName&#x60; parameters. For example, &#x60;groupName&#x3D;administrators&amp;groupName&#x3D;jira-software-users&#x60;. | [optional] [default to null] |
| **accessType** | **String**| The access level of a group. Valid values: &#39;site-admin&#39;, &#39;admin&#39;, &#39;user&#39;. | [optional] [default to null] |
| **applicationKey** | **String**| The application key of the product user groups to search for. Valid values: &#39;jira-servicedesk&#39;, &#39;jira-software&#39;, &#39;jira-product-discovery&#39;, &#39;jira-core&#39;. | [optional] [default to null] |

### Return type

[**PageBeanGroupDetails**](../Models/PageBeanGroupDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="createGroup"></a>
# **createGroup**
> Group createGroup(AddGroupBean)

Create group

    Creates a group.  **[Permissions](#permissions) required:** Site administration (that is, member of the *site-admin* [group](https://confluence.atlassian.com/x/24xjL)).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **AddGroupBean** | [**AddGroupBean**](../Models/AddGroupBean.md)| The name of the group. | |

### Return type

[**Group**](../Models/Group.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="findGroups"></a>
# **findGroups**
> FoundGroups findGroups(accountId, query, exclude, excludeId, maxResults, caseInsensitive, userName)

Find groups

    Returns a list of groups whose names contain a query string. A list of group names can be provided to exclude groups from the results.  The primary use case for this resource is to populate a group picker suggestions list. To this end, the returned object includes the &#x60;html&#x60; field where the matched query term is highlighted in the group name with the HTML strong tag. Also, the groups list is wrapped in a response object that contains a header for use in the picker, specifically *Showing X of Y matching groups*.  The list returns with the groups sorted. If no groups match the list criteria, an empty list is returned.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** *Browse projects* [project permission](https://confluence.atlassian.com/x/yodKLg). Anonymous calls and calls by users without the required permission return an empty list.  *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg). Without this permission, calls where query is not an exact match to an existing group will return an empty list.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**| This parameter is deprecated, setting it does not affect the results. To find groups containing a particular user, use [Get user groups](#api-rest-api-2-user-groups-get). | [optional] [default to null] |
| **query** | **String**| The string to find in group names. | [optional] [default to null] |
| **exclude** | [**List**](../Models/String.md)| As a group&#39;s name can change, use of &#x60;excludeGroupIds&#x60; is recommended to identify a group.   A group to exclude from the result. To exclude multiple groups, provide an ampersand-separated list. For example, &#x60;exclude&#x3D;group1&amp;exclude&#x3D;group2&#x60;. This parameter cannot be used with the &#x60;excludeGroupIds&#x60; parameter. | [optional] [default to null] |
| **excludeId** | [**List**](../Models/String.md)| A group ID to exclude from the result. To exclude multiple groups, provide an ampersand-separated list. For example, &#x60;excludeId&#x3D;group1-id&amp;excludeId&#x3D;group2-id&#x60;. This parameter cannot be used with the &#x60;excludeGroups&#x60; parameter. | [optional] [default to null] |
| **maxResults** | **Integer**| The maximum number of groups to return. The maximum number of groups that can be returned is limited by the system property &#x60;jira.ajax.autocomplete.limit&#x60;. | [optional] [default to null] |
| **caseInsensitive** | **Boolean**| Whether the search for groups should be case insensitive. | [optional] [default to false] |
| **userName** | **String**| This parameter is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

[**FoundGroups**](../Models/FoundGroups.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getGroup"></a>
# **getGroup**
> Group getGroup(groupname, groupId, expand)

Get group

    This operation is deprecated, use [&#x60;group/member&#x60;](#api-rest-api-2-group-member-get).  Returns all users in a group.  **[Permissions](#permissions) required:** either of:   *  *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **groupname** | **String**| As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended to identify a group.   The name of the group. This parameter cannot be used with the &#x60;groupId&#x60; parameter. | [optional] [default to null] |
| **groupId** | **String**| The ID of the group. This parameter cannot be used with the &#x60;groupName&#x60; parameter. | [optional] [default to null] |
| **expand** | **String**| List of fields to expand. | [optional] [default to null] |

### Return type

[**Group**](../Models/Group.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUsersFromGroup"></a>
# **getUsersFromGroup**
> PageBeanUserDetails getUsersFromGroup(groupname, groupId, includeInactiveUsers, startAt, maxResults)

Get users from group

    Returns a [paginated](#pagination) list of all users in a group.  Note that users are ordered by username, however the username is not returned in the results due to privacy reasons.  **[Permissions](#permissions) required:** either of:   *  *Browse users and groups* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *  *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **groupname** | **String**| As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended to identify a group.   The name of the group. This parameter cannot be used with the &#x60;groupId&#x60; parameter. | [optional] [default to null] |
| **groupId** | **String**| The ID of the group. This parameter cannot be used with the &#x60;groupName&#x60; parameter. | [optional] [default to null] |
| **includeInactiveUsers** | **Boolean**| Include inactive users. | [optional] [default to false] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page (number should be between 1 and 50). | [optional] [default to 50] |

### Return type

[**PageBeanUserDetails**](../Models/PageBeanUserDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeGroup"></a>
# **removeGroup**
> removeGroup(groupname, groupId, swapGroup, swapGroupId)

Remove group

    Deletes a group.  **[Permissions](#permissions) required:** Site administration (that is, member of the *site-admin* strategic [group](https://confluence.atlassian.com/x/24xjL)).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **groupname** | **String**|  | [optional] [default to null] |
| **groupId** | **String**| The ID of the group. This parameter cannot be used with the &#x60;groupname&#x60; parameter. | [optional] [default to null] |
| **swapGroup** | **String**| As a group&#39;s name can change, use of &#x60;swapGroupId&#x60; is recommended to identify a group.   The group to transfer restrictions to. Only comments and worklogs are transferred. If restrictions are not transferred, comments and worklogs are inaccessible after the deletion. This parameter cannot be used with the &#x60;swapGroupId&#x60; parameter. | [optional] [default to null] |
| **swapGroupId** | **String**| The ID of the group to transfer restrictions to. Only comments and worklogs are transferred. If restrictions are not transferred, comments and worklogs are inaccessible after the deletion. This parameter cannot be used with the &#x60;swapGroup&#x60; parameter. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="removeUserFromGroup"></a>
# **removeUserFromGroup**
> removeUserFromGroup(accountId, groupname, groupId, username)

Remove user from group

    Removes a user from a group.  **[Permissions](#permissions) required:** Site administration (that is, member of the *site-admin* [group](https://confluence.atlassian.com/x/24xjL)).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **accountId** | **String**| The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [default to null] |
| **groupname** | **String**| As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended to identify a group.   The name of the group. This parameter cannot be used with the &#x60;groupId&#x60; parameter. | [optional] [default to null] |
| **groupId** | **String**| The ID of the group. This parameter cannot be used with the &#x60;groupName&#x60; parameter. | [optional] [default to null] |
| **username** | **String**| This parameter is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

