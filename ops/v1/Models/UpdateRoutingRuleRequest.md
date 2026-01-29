# UpdateRoutingRuleRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **name** | **String** | Name of the routing rule. | [optional] [default to null] |
| **order** | **Integer** | The order of the team routing rule within the rules. Order value is actually the index of the team routing rule whose minimum value is 0 and whose maximum value is n-1 (number of team routing rules is n). | [optional] [default to null] |
| **criteria** | [**CreateRoutingRuleRequest_criteria**](CreateRoutingRuleRequest_criteria.md) |  | [optional] [default to null] |
| **timeRestriction** | [**CreateRoutingRuleRequest_timeRestriction**](CreateRoutingRuleRequest_timeRestriction.md) |  | [optional] [default to null] |
| **notify** | [**Notify**](Notify.md) |  | [optional] [default to null] |
| **timezone** | **String** | Timezone of team routing rule. If timezone field is not given, account timezone is used as default. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

