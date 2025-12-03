# Votes
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **hasVoted** | **Boolean** | Whether the user making this request has voted on the issue. | [optional] [default to null] |
| **self** | **URI** | The URL of these issue vote details. | [optional] [default to null] |
| **voters** | [**List**](User.md) | List of the users who have voted on this issue. An empty list is returned when the calling user doesn&#39;t have the *View voters and watchers* project permission. | [optional] [default to null] |
| **votes** | **Long** | The number of votes on the issue. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

