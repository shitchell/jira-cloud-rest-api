# EscalationRule
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **condition** | **String** | The condition for notifying the recipient of escalation rule that is based on the alert state. | [default to null] |
| **notifyType** | **String** | Recipient calculation logic for escalations. Possible values are: &lt;br /&gt; &lt;b&gt;default&lt;/b&gt;: on call users &lt;br /&gt; &lt;b&gt;next&lt;/b&gt;: next users in rotation &lt;br /&gt; &lt;b&gt;previous&lt;/b&gt;: previous users on rotation &lt;br /&gt; &lt;b&gt;users&lt;/b&gt;: users of the team &lt;br /&gt; &lt;b&gt;admins&lt;/b&gt;: admins of the team &lt;br /&gt; &lt;b&gt;random&lt;/b&gt;: randomly in the team &lt;br /&gt; &lt;b&gt;all&lt;/b&gt;: all members of the team. | [default to null] |
| **delay** | **Long** | Time delay of the escalation rule in minutes. | [default to null] |
| **recipient** | [**Recipient**](Recipient.md) |  | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

