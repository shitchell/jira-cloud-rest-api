# Filter
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **approximateLastUsed** | **Date** | \\[Experimental\\] Approximate last used time. Returns the date and time when the filter was last used. Returns &#x60;null&#x60; if the filter hasn&#39;t been used after tracking was enabled. For performance reasons, timestamps aren&#39;t updated in real time and therefore may not be exactly accurate. | [optional] [default to null] |
| **description** | **String** | A description of the filter. | [optional] [default to null] |
| **editPermissions** | [**List**](SharePermission.md) | The groups and projects that can edit the filter. | [optional] [default to null] |
| **favourite** | **Boolean** | Whether the filter is selected as a favorite. | [optional] [default to null] |
| **favouritedCount** | **Long** | The count of how many users have selected this filter as a favorite, including the filter owner. | [optional] [default to null] |
| **id** | **String** | The unique identifier for the filter. | [optional] [default to null] |
| **jql** | **String** | The JQL query for the filter. For example, *project &#x3D; SSP AND issuetype &#x3D; Bug*. | [optional] [default to null] |
| **name** | **String** | The name of the filter. Must be unique. | [default to null] |
| **owner** | [**User**](User.md) | The user who owns the filter. This is defaulted to the creator of the filter, however Jira administrators can change the owner of a shared filter in the admin settings. | [optional] [default to null] |
| **searchUrl** | **URI** | A URL to view the filter results in Jira, using the [Search for issues using JQL](#api-rest-api-3-filter-search-get) operation with the filter&#39;s JQL string to return the filter results. For example, *https://your-domain.atlassian.net/rest/api/3/search?jql&#x3D;project+%3D+SSP+AND+issuetype+%3D+Bug*. | [optional] [default to null] |
| **self** | **URI** | The URL of the filter. | [optional] [default to null] |
| **sharePermissions** | [**List**](SharePermission.md) | The groups and projects that the filter is shared with. | [optional] [default to null] |
| **sharedUsers** | [**UserList**](UserList.md) | A paginated list of the users that the filter is shared with. This includes users that are members of the groups or can browse the projects that the filter is shared with. | [optional] [default to null] |
| **subscriptions** | [**FilterSubscriptionsList**](FilterSubscriptionsList.md) | A paginated list of the users that are subscribed to the filter. | [optional] [default to null] |
| **viewUrl** | **URI** | A URL to view the filter results in Jira, using the ID of the filter. For example, *https://your-domain.atlassian.net/issues/?filter&#x3D;10100*. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

