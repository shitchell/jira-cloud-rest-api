# ApplicationRole
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **defaultGroups** | **Set** | The groups that are granted default access for this application role. As a group&#39;s name can change, use of &#x60;defaultGroupsDetails&#x60; is recommended to identify a groups. | [optional] [default to null] |
| **defaultGroupsDetails** | [**List**](GroupName.md) | The groups that are granted default access for this application role. | [optional] [default to null] |
| **defined** | **Boolean** | Deprecated. | [optional] [default to null] |
| **groupDetails** | [**List**](GroupName.md) | The groups associated with the application role. | [optional] [default to null] |
| **groups** | **Set** | The groups associated with the application role. As a group&#39;s name can change, use of &#x60;groupDetails&#x60; is recommended to identify a groups. | [optional] [default to null] |
| **hasUnlimitedSeats** | **Boolean** |  | [optional] [default to null] |
| **key** | **String** | The key of the application role. | [optional] [default to null] |
| **name** | **String** | The display name of the application role. | [optional] [default to null] |
| **numberOfSeats** | **Integer** | The maximum count of users on your license. | [optional] [default to null] |
| **platform** | **Boolean** | Indicates if the application role belongs to Jira platform (&#x60;jira-core&#x60;). | [optional] [default to null] |
| **remainingSeats** | **Integer** | The count of users remaining on your license. | [optional] [default to null] |
| **selectedByDefault** | **Boolean** | Determines whether this application role should be selected by default on user creation. | [optional] [default to null] |
| **userCount** | **Integer** | The number of users counting against your license. | [optional] [default to null] |
| **userCountDescription** | **String** | The [type of users](https://confluence.atlassian.com/x/lRW3Ng) being counted against your license. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

