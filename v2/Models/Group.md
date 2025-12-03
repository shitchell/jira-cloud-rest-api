# Group
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **expand** | **String** | Expand options that include additional group details in the response. | [optional] [default to null] |
| **groupId** | **String** | The ID of the group, which uniquely identifies the group across all Atlassian products. For example, *952d12c3-5b5b-4d04-bb32-44d383afc4b2*. | [optional] [default to null] |
| **name** | **String** | The name of group. | [optional] [default to null] |
| **self** | **URI** | The URL for these group details. | [optional] [default to null] |
| **users** | [**PagedListUserDetailsApplicationUser**](PagedListUserDetailsApplicationUser.md) | A paginated list of the users that are members of the group. A maximum of 50 users is returned in the list, to access additional users append &#x60;[start-index:end-index]&#x60; to the expand request. For example, to access the next 50 users, use&#x60;?expand&#x3D;users[51:100]&#x60;. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

