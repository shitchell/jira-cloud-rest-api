# JExpEvaluateJiraExpressionResultBean
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **meta** | [**JExpEvaluateMetaDataBean**](JExpEvaluateMetaDataBean.md) | Contains various characteristics of the performed expression evaluation. | [optional] [default to null] |
| **value** | [**oas_any_type_not_mapped**](.md) | The value of the evaluated expression. It may be a primitive JSON value or a Jira REST API object. (Some expressions do not produce any meaningful results—for example, an expression that returns a lambda function—if that&#39;s the case a simple string representation is returned. These string representations should not be relied upon and may change without notice.) | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

