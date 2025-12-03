# IssueBean
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **changelog** | [**PageOfChangelogs**](PageOfChangelogs.md) | Details of changelogs associated with the issue. | [optional] [default to null] |
| **editmeta** | [**IssueUpdateMetadata**](IssueUpdateMetadata.md) | The metadata for the fields on the issue that can be amended. | [optional] [default to null] |
| **expand** | **String** | Expand options that include additional issue details in the response. | [optional] [default to null] |
| **fields** | [**Map**](AnyType.md) |  | [optional] [default to null] |
| **fieldsToInclude** | [**IncludedFields**](IncludedFields.md) |  | [optional] [default to null] |
| **id** | **String** | The ID of the issue. | [optional] [default to null] |
| **key** | **String** | The key of the issue. | [optional] [default to null] |
| **names** | **Map** | The ID and name of each field present on the issue. | [optional] [default to null] |
| **operations** | [**Operations**](Operations.md) | The operations that can be performed on the issue. | [optional] [default to null] |
| **properties** | [**Map**](AnyType.md) | Details of the issue properties identified in the request. | [optional] [default to null] |
| **renderedFields** | [**Map**](AnyType.md) | The rendered value of each field present on the issue. | [optional] [default to null] |
| **schema** | [**Map**](JsonTypeBean.md) | The schema describing each field present on the issue. | [optional] [default to null] |
| **self** | **URI** | The URL of the issue details. | [optional] [default to null] |
| **transitions** | [**List**](IssueTransition.md) | The transitions that can be performed on the issue. | [optional] [default to null] |
| **versionedRepresentations** | [**Map**](map.md) | The versions of each field on the issue. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

