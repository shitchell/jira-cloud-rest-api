# IssueUpdateDetails
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **fields** | [**Map**](AnyType.md) | List of issue screen fields to update, specifying the sub-field to update and its value for each field. This field provides a straightforward option when setting a sub-field. When multiple sub-fields or other operations are required, use &#x60;update&#x60;. Fields included in here cannot be included in &#x60;update&#x60;. | [optional] [default to null] |
| **historyMetadata** | [**HistoryMetadata**](HistoryMetadata.md) | Additional issue history details. | [optional] [default to null] |
| **properties** | [**List**](EntityProperty.md) | Details of issue properties to be add or update. | [optional] [default to null] |
| **transition** | [**IssueTransition**](IssueTransition.md) | Details of a transition. Required when performing a transition, optional when creating or editing an issue. | [optional] [default to null] |
| **update** | [**Map**](array.md) | A Map containing the field field name and a list of operations to perform on the issue screen field. Note that fields included in here cannot be included in &#x60;fields&#x60;. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

