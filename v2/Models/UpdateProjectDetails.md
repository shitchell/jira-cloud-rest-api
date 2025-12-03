# UpdateProjectDetails
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **assigneeType** | **String** | The default assignee when creating issues for this project. | [optional] [default to null] |
| **avatarId** | **Long** | An integer value for the project&#39;s avatar. | [optional] [default to null] |
| **categoryId** | **Long** | The ID of the project&#39;s category. A complete list of category IDs is found using the [Get all project categories](#api-rest-api-2-projectCategory-get) operation. To remove the project category from the project, set the value to &#x60;-1.&#x60; | [optional] [default to null] |
| **description** | **String** | A brief description of the project. | [optional] [default to null] |
| **issueSecurityScheme** | **Long** | The ID of the issue security scheme for the project, which enables you to control who can and cannot view issues. Use the [Get issue security schemes](#api-rest-api-2-issuesecurityschemes-get) resource to get all issue security scheme IDs. | [optional] [default to null] |
| **key** | **String** | Project keys must be unique and start with an uppercase letter followed by one or more uppercase alphanumeric characters. The maximum length is 10 characters. | [optional] [default to null] |
| **lead** | **String** | This parameter is deprecated because of privacy changes. Use &#x60;leadAccountId&#x60; instead. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. The user name of the project lead. Cannot be provided with &#x60;leadAccountId&#x60;. | [optional] [default to null] |
| **leadAccountId** | **String** | The account ID of the project lead. Cannot be provided with &#x60;lead&#x60;. | [optional] [default to null] |
| **name** | **String** | The name of the project. | [optional] [default to null] |
| **notificationScheme** | **Long** | The ID of the notification scheme for the project. Use the [Get notification schemes](#api-rest-api-2-notificationscheme-get) resource to get a list of notification scheme IDs. | [optional] [default to null] |
| **permissionScheme** | **Long** | The ID of the permission scheme for the project. Use the [Get all permission schemes](#api-rest-api-2-permissionscheme-get) resource to see a list of all permission scheme IDs. | [optional] [default to null] |
| **releasedProjectKeys** | **Set** | Previous project keys to be released from the current project. Released keys must belong to the current project and not contain the current project key | [optional] [default to null] |
| **url** | **String** | A link to information about this project, such as project documentation | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

