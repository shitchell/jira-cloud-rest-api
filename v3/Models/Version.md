# Version
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **approvers** | [**List**](VersionApprover.md) | If the expand option &#x60;approvers&#x60; is used, returns a list containing the approvers for this version. | [optional] [default to null] |
| **archived** | **Boolean** | Indicates that the version is archived. Optional when creating or updating a version. | [optional] [default to null] |
| **description** | **String** | The description of the version. Optional when creating or updating a version. The maximum size is 16,384 bytes. | [optional] [default to null] |
| **driver** | **String** | If the expand option &#x60;driver&#x60; is used, returns the Atlassian account ID of the driver. | [optional] [default to null] |
| **expand** | **String** | Use [expand](em&gt;#expansion) to include additional information about version in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;operations&#x60; Returns the list of operations available for this version.  *  &#x60;issuesstatus&#x60; Returns the count of issues in this version for each of the status categories *to do*, *in progress*, *done*, and *unmapped*. The *unmapped* property contains a count of issues with a status other than *to do*, *in progress*, and *done*.  *  &#x60;driver&#x60; Returns the Atlassian account ID of the version driver.  *  &#x60;approvers&#x60; Returns a list containing approvers for this version.  Optional for create and update. | [optional] [default to null] |
| **id** | **String** | The ID of the version. | [optional] [default to null] |
| **issuesStatusForFixVersion** | [**VersionIssuesStatus**](VersionIssuesStatus.md) | If the expand option &#x60;issuesstatus&#x60; is used, returns the count of issues in this version for each of the status categories *to do*, *in progress*, *done*, and *unmapped*. The *unmapped* property contains a count of issues with a status other than *to do*, *in progress*, and *done*. | [optional] [default to null] |
| **moveUnfixedIssuesTo** | **URI** | The URL of the self link to the version to which all unfixed issues are moved when a version is released. Not applicable when creating a version. Optional when updating a version. | [optional] [default to null] |
| **name** | **String** | The unique name of the version. Required when creating a version. Optional when updating a version. The maximum length is 255 characters. | [optional] [default to null] |
| **operations** | [**List**](SimpleLink.md) | If the expand option &#x60;operations&#x60; is used, returns the list of operations available for this version. | [optional] [default to null] |
| **overdue** | **Boolean** | Indicates that the version is overdue. | [optional] [default to null] |
| **project** | **String** | Deprecated. Use &#x60;projectId&#x60;. | [optional] [default to null] |
| **projectId** | **Long** | The ID of the project to which this version is attached. Required when creating a version. Not applicable when updating a version. | [optional] [default to null] |
| **releaseDate** | **date** | The release date of the version. Expressed in ISO 8601 format (yyyy-mm-dd). Optional when creating or updating a version. | [optional] [default to null] |
| **released** | **Boolean** | Indicates that the version is released. If the version is released a request to release again is ignored. Not applicable when creating a version. Optional when updating a version. | [optional] [default to null] |
| **self** | **URI** | The URL of the version. | [optional] [default to null] |
| **startDate** | **date** | The start date of the version. Expressed in ISO 8601 format (yyyy-mm-dd). Optional when creating or updating a version. | [optional] [default to null] |
| **userReleaseDate** | **String** | The date on which work on this version is expected to finish, expressed in the instance&#39;s *Day/Month/Year Format* date format. | [optional] [default to null] |
| **userStartDate** | **String** | The date on which work on this version is expected to start, expressed in the instance&#39;s *Day/Month/Year Format* date format. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

