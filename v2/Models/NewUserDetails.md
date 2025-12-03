# NewUserDetails
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **applicationKeys** | **List** | Deprecated, do not use. | [optional] [default to null] |
| **displayName** | **String** | This property is no longer available. If the user has an Atlassian account, their display name is not changed. If the user does not have an Atlassian account, they are sent an email asking them set up an account. | [optional] [default to null] |
| **emailAddress** | **String** | The email address for the user. | [default to null] |
| **key** | **String** | This property is no longer available. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **name** | **String** | This property is no longer available. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **password** | **String** | This property is no longer available. If the user has an Atlassian account, their password is not changed. If the user does not have an Atlassian account, they are sent an email asking them set up an account. | [optional] [default to null] |
| **products** | **Set** | Products the new user has access to. Valid products are: jira-core, jira-servicedesk, jira-product-discovery, jira-software. To create a user without product access, set this field to be an empty array. | [default to null] |
| **self** | **String** | The URL of the user. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

