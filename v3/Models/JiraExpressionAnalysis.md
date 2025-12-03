# JiraExpressionAnalysis
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **complexity** | [**JiraExpressionComplexity**](JiraExpressionComplexity.md) |  | [optional] [default to null] |
| **errors** | [**List**](JiraExpressionValidationError.md) | A list of validation errors. Not included if the expression is valid. | [optional] [default to null] |
| **expression** | **String** | The analysed expression. | [default to null] |
| **type** | **String** | EXPERIMENTAL. The inferred type of the expression. | [optional] [default to null] |
| **valid** | **Boolean** | Whether the expression is valid and the interpreter will evaluate it. Note that the expression may fail at runtime (for example, if it executes too many expensive operations). | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

