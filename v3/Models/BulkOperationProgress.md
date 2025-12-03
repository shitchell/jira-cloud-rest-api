# BulkOperationProgress
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **created** | **Date** | A timestamp of when the task was submitted. | [optional] [default to null] |
| **failedAccessibleIssues** | [**Map**](array.md) | Map of issue IDs for which the operation failed and that the user has permission to view, to their one or more reasons for failure. These reasons are open-ended text descriptions of the error and are not selected from a predefined list of standard reasons. | [optional] [default to null] |
| **invalidOrInaccessibleIssueCount** | **Integer** | The number of issues that are either invalid or issues that the user doesn&#39;t have permission to view, regardless of the success or failure of the operation. | [optional] [default to null] |
| **processedAccessibleIssues** | **List** | List of issue IDs for which the operation was successful and that the user has permission to view. | [optional] [default to null] |
| **progressPercent** | **Long** | Progress of the task as a percentage. | [optional] [default to null] |
| **started** | **Date** | A timestamp of when the task was started. | [optional] [default to null] |
| **status** | **String** | The status of the task. | [optional] [default to null] |
| **submittedBy** | [**User**](User.md) |  | [optional] [default to null] |
| **taskId** | **String** | The ID of the task. | [optional] [default to null] |
| **totalIssueCount** | **Integer** | The number of issues that the bulk operation was attempted on. | [optional] [default to null] |
| **updated** | **Date** | A timestamp of when the task progress was last updated. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

