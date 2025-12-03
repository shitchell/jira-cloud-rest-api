# IssueFieldOptionScopeBean
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **global** | [**GlobalScopeBean**](GlobalScopeBean.md) | Defines the behavior of the option within the global context. If this property is set, even if set to an empty object, then the option is available in all projects. | [optional] [default to null] |
| **projects** | **Set** | DEPRECATED | [optional] [default to null] |
| **projects2** | [**Set**](ProjectScopeBean.md) | Defines the projects in which the option is available and the behavior of the option within each project. Specify one object per project. The behavior of the option in a project context overrides the behavior in the global context. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

