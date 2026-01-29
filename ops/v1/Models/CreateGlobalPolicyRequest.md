# CreateGlobalPolicyRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **type** | **String** | this can be only alert for global policies | [default to null] |
| **name** | **String** | Name of the policy | [default to null] |
| **description** | **String** | Description of the policy | [optional] [default to null] |
| **enabled** | **Boolean** | Initial status of the integration. | [default to null] |
| **filter** | [**CreateGlobalPolicyRequest_filter**](CreateGlobalPolicyRequest_filter.md) |  | [optional] [default to null] |
| **timeRestriction** | [**CreateGlobalPolicyRequest_timeRestriction**](CreateGlobalPolicyRequest_timeRestriction.md) |  | [optional] [default to null] |
| **alias** | **String** | Alias of the alert. You can use {{alias}} to refer to the original alias. Default value  is {{alias}} | [optional] [default to null] |
| **message** | **String** | Message of the alert | [default to null] |
| **alertDescription** | **String** | Description of the alert. You can use {{description}} to refer to the original alert  description. Default value is {{description}} | [optional] [default to null] |
| **source** | **String** | Source field of the alert. You can use {{source}} to refer to the original source.  Default value is {{source}} | [optional] [default to null] |
| **entity** | **String** |  Entity field of the alert. You can use {{entity}} to refer to the original entity.  Default value is {{entity}} | [optional] [default to null] |
| **responders** | [**List**](CreateGlobalPolicyRequest_responders_inner.md) | Responders to add to the alerts original responders value as a list of teams, users or the  reserved word none or all. If ignoreOriginalResponders field is set to true, this will replace the   original responders | [optional] [default to null] |
| **actions** | **List** | Actions as a list of strings to add to the alerts original actions value.    If ignoreOriginalActions field is set to true, this will replace the original actions. | [optional] [default to null] |
| **tags** | **List** | Tags to add to the alerts original tags value as a list of strings. If ignoreOriginalResponders  field is set to true, this will replace the original responders. | [optional] [default to null] |
| **details** | **Object** | Map of key-value pairs to use as custom properties of the alert details.    If ignoreOriginalDetails field is set to true, this will replace the original details. | [optional] [default to null] |
| **continue** | **Boolean** | Will trigger other modify policies if set to true. Default value is false | [optional] [default to null] |
| **updatePriority** | **Boolean** | Priority of the alert. Should be one of P1, P2, P3, P4, or P5 | [optional] [default to null] |
| **keepOriginalResponders** | **Boolean** | If set to false, policy will ignore the original responders of the alert. Default value is true | [optional] [default to null] |
| **keepOriginalDetails** | **Boolean** | If set to false, policy will ignore the original details of the alert. Default value is true | [optional] [default to null] |
| **keepOriginalActions** | **Boolean** | If set to false, policy will ignore the original actions of the alert. Default value is true | [optional] [default to null] |
| **keepOriginalTags** | **Boolean** | If set to false, policy will ignore the original tags of the alert. Default value is true | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

