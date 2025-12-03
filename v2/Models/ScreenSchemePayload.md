# ScreenSchemePayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **defaultScreen** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] [default to null] |
| **description** | **String** | The description of the screen scheme | [optional] [default to null] |
| **name** | **String** | The name of the screen scheme | [optional] [default to null] |
| **pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] [default to null] |
| **screens** | [**Map**](ProjectCreateResourceIdentifier.md) | Similar to the field layout scheme those mappings allow users to set different screens for different operations: default - always there, applied to all operations that don&#39;t have an explicit mapping &#x60;create&#x60;, &#x60;view&#x60;, &#x60;edit&#x60; - specific operations that are available and users can assign a different screen for each one of them https://support.atlassian.com/jira-cloud-administration/docs/manage-screen-schemes/\\#Associating-a-screen-with-an-issue-operation | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

