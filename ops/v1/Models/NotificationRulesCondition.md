# NotificationRulesCondition
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **field** | **String** | Specifies which alert field will be used in condition. | [default to null] |
| **key** | **String** | If field is set as extra-properties, key could be used for key-value pair. | [optional] [default to null] |
| **not** | **Boolean** | Indicates behaviour of the given operation. | [optional] [default to false] |
| **operation** | **String** | It is the operation that will be executed for the given field and key. Available operations changes according to the fields type:  - String Operations: contains, equals, starts-with, ends-with, matches, is-empty, equals-ignore-whitespace  - List Operations: contains, is-empty  - Map Operations: contains, contains-key, contains-value, is-empty  - Number Operations: matches, equals, greater-than, less-than  - Boolean Operations: equals | [default to null] |
| **expectedValue** | **String** | User defined value that will be compared with alert field according to the operation. Default value is empty string. | [optional] [default to null] |
| **order** | **Integer** | Order of the condition in conditions list. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

