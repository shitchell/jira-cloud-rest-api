# AuditRecordBean
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **associatedItems** | [**List**](AssociatedItemBean.md) | The list of items associated with the changed record. | [optional] [default to null] |
| **authorKey** | **String** | Deprecated, use &#x60;authorAccountId&#x60; instead. The key of the user who created the audit record. | [optional] [default to null] |
| **category** | **String** | The category of the audit record. For a list of these categories, see the help article [Auditing in Jira applications](https://confluence.atlassian.com/x/noXKM). | [optional] [default to null] |
| **changedValues** | [**List**](ChangedValueBean.md) | The list of values changed in the record event. | [optional] [default to null] |
| **created** | **Date** | The date and time on which the audit record was created. | [optional] [default to null] |
| **description** | **String** | The description of the audit record. | [optional] [default to null] |
| **eventSource** | **String** | The event the audit record originated from. | [optional] [default to null] |
| **id** | **Long** | The ID of the audit record. | [optional] [default to null] |
| **objectItem** | [**AssociatedItemBean**](AssociatedItemBean.md) |  | [optional] [default to null] |
| **remoteAddress** | **String** | The URL of the computer where the creation of the audit record was initiated. | [optional] [default to null] |
| **summary** | **String** | The summary of the audit record. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

