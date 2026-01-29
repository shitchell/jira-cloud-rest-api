# CreateGlobalPolicyRequest_filter_conditions_inner
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **field** | **String** | Specifies which alert field will be used in condition. Possible values are message,  alias, description, source, entity, tags, actions, details, extra-properties, responders, teams  or priority | [optional] [default to null] |
| **not** | **Boolean** | Indicates behaviour of the given operation. Default value is false | [optional] [default to null] |
| **operation** | **String** | It is the operation that will be executed for the given field and key. Possible  operations are matches, contains, starts-with, ends-with, equals, contains-key, contains-value,    greater-than, less-than, is-empty and equals-ignore-whitespace. | [optional] [default to null] |
| **expectedValue** | **String** | User defined value that will be compared with alert field according to the operation. Default value is empty string | [optional] [default to null] |
| **order** | **BigDecimal** | Order of the condition in conditions list | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

