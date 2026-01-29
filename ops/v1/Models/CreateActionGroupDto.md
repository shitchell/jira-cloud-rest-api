# CreateActionGroupDto
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **type** | **String** | Type of the action group. It can be *forwarding*, *updating* or *checkbox*. | [default to null] |
| **name** | **String** | Name of the action group. | [default to null] |
| **order** | **Float** | Order of the action group. | [optional] [default to null] |
| **enabled** | **Boolean** | Enabled status of the action group. | [optional] [default to null] |
| **rootAction** | [**AddedActionDto**](AddedActionDto.md) |  | [optional] [default to null] |
| **updateActions** | [**List**](AddedActionDto.md) | List of the actions that will be created. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

