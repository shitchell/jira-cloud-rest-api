# UserDetails
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **accountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. | [optional] [default to null] |
| **accountType** | **String** | The type of account represented by this user. This will be one of &#39;atlassian&#39; (normal users), &#39;app&#39; (application user) or &#39;customer&#39; (Jira Service Desk customer user) | [optional] [default to null] |
| **active** | **Boolean** | Whether the user is active. | [optional] [default to null] |
| **avatarUrls** | [**AvatarUrlsBean**](AvatarUrlsBean.md) | The avatars of the user. | [optional] [default to null] |
| **displayName** | **String** | The display name of the user. Depending on the user’s privacy settings, this may return an alternative value. | [optional] [default to null] |
| **emailAddress** | **String** | The email address of the user. Depending on the user’s privacy settings, this may be returned as null. | [optional] [default to null] |
| **key** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **name** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **self** | **String** | The URL of the user. | [optional] [default to null] |
| **timeZone** | **String** | The time zone specified in the user&#39;s profile. Depending on the user’s privacy settings, this may be returned as null. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

