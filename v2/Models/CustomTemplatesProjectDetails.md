# CustomTemplatesProjectDetails
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **accessLevel** | **String** | The access level of the project. Only used by team-managed project | [optional] [default to null] |
| **additionalProperties** | **Map** | Additional properties of the project | [optional] [default to null] |
| **assigneeType** | **String** | The default assignee when creating issues in the project | [optional] [default to null] |
| **avatarId** | **Long** | The ID of the project&#39;s avatar. Use the \\[Get project avatars\\](\\#api-rest-api-3-project-projectIdOrKey-avatar-get) operation to list the available avatars in a project. | [optional] [default to null] |
| **categoryId** | **Long** | The ID of the project&#39;s category. A complete list of category IDs is found using the [Get all project categories](#api-rest-api-2-projectCategory-get) operation. | [optional] [default to null] |
| **description** | **String** | Brief description of the project | [optional] [default to null] |
| **enableComponents** | **Boolean** | Whether components are enabled for the project. Only used by company-managed project | [optional] [default to false] |
| **key** | **String** | Project keys must be unique and start with an uppercase letter followed by one or more uppercase alphanumeric characters. The maximum length is 10 characters. | [optional] [default to null] |
| **language** | **String** | The default language for the project | [optional] [default to null] |
| **leadAccountId** | **String** | The account ID of the project lead. Either &#x60;lead&#x60; or &#x60;leadAccountId&#x60; must be set when creating a project. Cannot be provided with &#x60;lead&#x60;. | [optional] [default to null] |
| **name** | **String** | Name of the project | [optional] [default to null] |
| **url** | **String** | A link to information about this project, such as project documentation | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

