# WorkflowPayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **description** | **String** | The description of the workflow | [optional] [default to null] |
| **loopedTransitionContainerLayout** | [**WorkflowStatusLayoutPayload**](WorkflowStatusLayoutPayload.md) |  | [optional] [default to null] |
| **name** | **String** | The name of the workflow | [optional] [default to null] |
| **onConflict** | **String** | The strategy to use if there is a conflict with another workflow | [optional] [default to NEW] |
| **pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] [default to null] |
| **startPointLayout** | [**WorkflowStatusLayoutPayload**](WorkflowStatusLayoutPayload.md) |  | [optional] [default to null] |
| **statuses** | [**List**](WorkflowStatusPayload.md) | The statuses to be used in the workflow | [optional] [default to null] |
| **transitions** | [**List**](TransitionPayload.md) | The transitions for the workflow | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

