# GetGlobalMaintenance
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | Identifier of the maintenance. | [optional] [default to null] |
| **status** | [**Status**](Status.md) |  | [optional] [default to null] |
| **description** | **String** | Description or name for the maintenance plan. This can be any text that helps identify the purpose or characteristics of the maintenance plan. | [optional] [default to null] |
| **startDate** | **Date** | Date and time when the maintenance plan starts. | [optional] [default to null] |
| **endDate** | **Date** | Date and time when the maintenance plan ends. | [optional] [default to null] |
| **rules** | [**List**](GetTeamMaintenance_rules_inner.md) | Rules of maintenance, which takes a list of rule objects and defines the maintenance rules over policies, integrations and syncs. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

