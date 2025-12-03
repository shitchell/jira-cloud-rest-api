# WorkflowUpdate
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **defaultStatusMappings** | [**List**](StatusMigration.md) | The mapping of old to new status ID. | [optional] [default to null] |
| **description** | **String** | The new description for this workflow. | [optional] [default to null] |
| **id** | **String** | The ID of this workflow. | [default to null] |
| **loopedTransitionContainerLayout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] [default to null] |
| **startPointLayout** | [**WorkflowLayout**](WorkflowLayout.md) |  | [optional] [default to null] |
| **statusMappings** | [**List**](StatusMappingDTO.md) | The mapping of old to new status ID for a specific project and issue type. | [optional] [default to null] |
| **statuses** | [**List**](StatusLayoutUpdate.md) | The statuses associated with this workflow. | [default to null] |
| **transitions** | [**List**](TransitionUpdateDTO.md) | The transitions of this workflow. | [default to null] |
| **version** | [**DocumentVersion**](DocumentVersion.md) |  | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

