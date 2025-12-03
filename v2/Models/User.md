# User
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **accountId** | **String** | The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*. Required in requests. | [optional] [default to null] |
| **accountType** | **String** | The user account type. Can take the following values:   *  &#x60;atlassian&#x60; regular Atlassian user account  *  &#x60;app&#x60; system account used for Connect applications and OAuth to represent external systems  *  &#x60;customer&#x60; Jira Service Desk account representing an external service desk | [optional] [default to null] |
| **active** | **Boolean** | Whether the user is active. | [optional] [default to null] |
| **applicationRoles** | [**SimpleListWrapperApplicationRole**](SimpleListWrapperApplicationRole.md) | The application roles the user is assigned to. | [optional] [default to null] |
| **avatarUrls** | [**AvatarUrlsBean**](AvatarUrlsBean.md) | The avatars of the user. | [optional] [default to null] |
| **displayName** | **String** | The display name of the user. Depending on the user’s privacy setting, this may return an alternative value. | [optional] [default to null] |
| **emailAddress** | **String** | The email address of the user. Depending on the user’s privacy setting, this may be returned as null. | [optional] [default to null] |
| **expand** | **String** | Expand options that include additional user details in the response. | [optional] [default to null] |
| **groups** | [**SimpleListWrapperGroupName**](SimpleListWrapperGroupName.md) | The groups that the user belongs to. | [optional] [default to null] |
| **key** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **locale** | **String** | The locale of the user. Depending on the user’s privacy setting, this may be returned as null. | [optional] [default to null] |
| **name** | **String** | This property is no longer available and will be removed from the documentation soon. See the [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. | [optional] [default to null] |
| **self** | **URI** | The URL of the user. | [optional] [default to null] |
| **timeZone** | **String** | The time zone specified in the user&#39;s profile. If the user&#39;s time zone is not visible to the current user (due to user&#39;s profile setting), or if a time zone has not been set, the instance&#39;s default time zone will be returned. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

