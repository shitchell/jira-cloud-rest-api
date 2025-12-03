# IssueTypeProjectCreatePayload
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **issueTypeHierarchy** | [**List**](IssueTypeHierarchyPayload.md) | Defines the issue type hierarhy to be created and used during this project creation. This will only add new levels if there isn&#39;t an existing level | [optional] [default to null] |
| **issueTypeScheme** | [**IssueTypeSchemePayload**](IssueTypeSchemePayload.md) |  | [optional] [default to null] |
| **issueTypes** | [**List**](IssueTypePayload.md) | Only needed if you want to create issue types, you can otherwise use the ids of issue types in the scheme configuration | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

