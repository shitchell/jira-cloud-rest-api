# BulkIssuePropertyUpdateRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **expression** | **String** | EXPERIMENTAL. The Jira expression to calculate the value of the property. The value of the expression must be an object that can be converted to JSON, such as a number, boolean, string, list, or map. The context variables available to the expression are &#x60;issue&#x60; and &#x60;user&#x60;. Issues for which the expression returns a value whose JSON representation is longer than 32768 characters are ignored. | [optional] [default to null] |
| **filter** | [**IssueFilterForBulkPropertySet**](IssueFilterForBulkPropertySet.md) | The bulk operation filter. | [optional] [default to null] |
| **value** | [**oas_any_type_not_mapped**](.md) | The value of the property. The value must be a [valid](https://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

