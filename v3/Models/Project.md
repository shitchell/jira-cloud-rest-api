# Project
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **archived** | **Boolean** | Whether the project is archived. | [optional] [default to null] |
| **archivedBy** | [**User**](User.md) | The user who archived the project. | [optional] [default to null] |
| **archivedDate** | **Date** | The date when the project was archived. | [optional] [default to null] |
| **assigneeType** | **String** | The default assignee when creating issues for this project. | [optional] [default to null] |
| **avatarUrls** | [**AvatarUrlsBean**](AvatarUrlsBean.md) | The URLs of the project&#39;s avatars. | [optional] [default to null] |
| **components** | [**List**](ProjectComponent.md) | List of the components contained in the project. | [optional] [default to null] |
| **deleted** | **Boolean** | Whether the project is marked as deleted. | [optional] [default to null] |
| **deletedBy** | [**User**](User.md) | The user who marked the project as deleted. | [optional] [default to null] |
| **deletedDate** | **Date** | The date when the project was marked as deleted. | [optional] [default to null] |
| **description** | **String** | A brief description of the project. | [optional] [default to null] |
| **email** | **String** | An email address associated with the project. | [optional] [default to null] |
| **expand** | **String** | Expand options that include additional project details in the response. | [optional] [default to null] |
| **favourite** | **Boolean** | Whether the project is selected as a favorite. | [optional] [default to null] |
| **id** | **String** | The ID of the project. | [optional] [default to null] |
| **insight** | [**ProjectInsight**](ProjectInsight.md) | Insights about the project. | [optional] [default to null] |
| **isPrivate** | **Boolean** | Whether the project is private from the user&#39;s perspective. This means the user can&#39;t see the project or any associated issues. | [optional] [default to null] |
| **issueTypeHierarchy** | [**Hierarchy**](Hierarchy.md) | The issue type hierarchy for the project. | [optional] [default to null] |
| **issueTypes** | [**List**](IssueTypeDetails.md) | List of the issue types available in the project. | [optional] [default to null] |
| **key** | **String** | The key of the project. | [optional] [default to null] |
| **landingPageInfo** | [**ProjectLandingPageInfo**](ProjectLandingPageInfo.md) | The project landing page info. | [optional] [default to null] |
| **lead** | [**User**](User.md) | The username of the project lead. | [optional] [default to null] |
| **name** | **String** | The name of the project. | [optional] [default to null] |
| **permissions** | [**ProjectPermissions**](ProjectPermissions.md) | User permissions on the project | [optional] [default to null] |
| **projectCategory** | [**ProjectCategory**](ProjectCategory.md) | The category the project belongs to. | [optional] [default to null] |
| **projectTypeKey** | **String** | The [project type](https://confluence.atlassian.com/x/GwiiLQ#Jiraapplicationsoverview-Productfeaturesandprojecttypes) of the project. | [optional] [default to null] |
| **properties** | [**Map**](AnyType.md) | Map of project properties | [optional] [default to null] |
| **retentionTillDate** | **Date** | The date when the project is deleted permanently. | [optional] [default to null] |
| **roles** | **Map** | The name and self URL for each role defined in the project. For more information, see [Create project role](#api-rest-api-3-role-post). | [optional] [default to null] |
| **self** | **URI** | The URL of the project details. | [optional] [default to null] |
| **simplified** | **Boolean** | Whether the project is simplified. | [optional] [default to null] |
| **style** | **String** | The type of the project. | [optional] [default to null] |
| **url** | **String** | A link to information about this project, such as project documentation. | [optional] [default to null] |
| **uuid** | **UUID** | Unique ID for next-gen projects. | [optional] [default to null] |
| **versions** | [**List**](Version.md) | The versions defined in the project. For more information, see [Create version](#api-rest-api-3-version-post). | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

