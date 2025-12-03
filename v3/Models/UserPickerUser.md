# UserPickerUser
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **accountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] [default to null] |
| **accountType** | **String** | The user account type. Can take the following values:   *  &#x60;atlassian&#x60; regular Atlassian user account  *  &#x60;app&#x60; system account used for Connect applications and OAuth to represent external systems  *  &#x60;customer&#x60; Jira Service Desk account representing an external service desk | [optional] [default to null] |
| **avatarUrl** | **URI** | The avatar URL of the user. | [optional] [default to null] |
| **displayName** | **String** | The display name of the user. Depending on the user’s privacy setting, this may be returned as null. | [optional] [default to null] |
| **html** | **String** | The display name, email address, and key of the user with the matched query string highlighted with the HTML bold tag. | [optional] [default to null] |
| **key** | **String** | This property is no longer available. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **name** | **String** | This property is no longer available . See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

