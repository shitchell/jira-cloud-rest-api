# BoardPayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **boardFilterJQL** | **String** | Takes in a JQL string to create a new filter. If no value is provided, it&#39;ll default to a JQL filter for the project creating | [optional] [default to null] |
| **cardColorStrategy** | **String** | Card color settings of the board | [optional] [default to null] |
| **cardLayout** | [**CardLayout**](CardLayout.md) |  | [optional] [default to null] |
| **cardLayouts** | [**List**](CardLayoutField.md) | Card layout settings of the board | [optional] [default to null] |
| **columns** | [**List**](BoardColumnPayload.md) | The columns of the board | [optional] [default to null] |
| **features** | [**List**](BoardFeaturePayload.md) | Feature settings for the board | [optional] [default to null] |
| **name** | **String** | The name of the board | [optional] [default to null] |
| **pcri** | [**ProjectCreateResourceIdentifier**](ProjectCreateResourceIdentifier.md) |  | [optional] [default to null] |
| **quickFilters** | [**List**](QuickFilterPayload.md) | The quick filters for the board. | [optional] [default to null] |
| **supportsSprint** | **Boolean** | Whether sprints are supported on the board | [optional] [default to true] |
| **swimlanes** | [**SwimlanesPayload**](SwimlanesPayload.md) |  | [optional] [default to null] |
| **workingDaysConfig** | [**WorkingDaysConfig**](WorkingDaysConfig.md) |  | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

