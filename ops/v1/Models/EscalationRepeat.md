# EscalationRepeat
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **waitInterval** | **Integer** | The duration in minutes to repeat the escalation rules after processing the last escalation rule. It is mandatory if you would like to add or remove repeat option. 0 should be given as a value to disable repeat option. | [optional] [default to 0] |
| **count** | **Integer** | Repeat time indicating how many times the repeat action will be performed. | [optional] [default to 1] |
| **resetRecipientStates** | **Boolean** | It is for reverting &lt;b&gt;acknowledge&lt;/b&gt; and &lt;b&gt;seen&lt;/b&gt; states back on each repeat turn if an alert is not closed. | [optional] [default to false] |
| **closeAlertAfterAll** | **Boolean** | It is to close the alert automatically if escalation repeats are completed. | [optional] [default to false] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

