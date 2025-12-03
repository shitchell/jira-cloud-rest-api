# Webhook
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **events** | **List** | The Jira events that trigger the webhook. | [default to null] |
| **expirationDate** | **Long** | The date after which the webhook is no longer sent. Use [Extend webhook life](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-webhooks/#api-rest-api-3-webhook-refresh-put) to extend the date. | [optional] [default to null] |
| **fieldIdsFilter** | **List** | A list of field IDs. When the issue changelog contains any of the fields, the webhook &#x60;jira:issue_updated&#x60; is sent. If this parameter is not present, the app is notified about all field updates. | [optional] [default to null] |
| **id** | **Long** | The ID of the webhook. | [default to null] |
| **issuePropertyKeysFilter** | **List** | A list of issue property keys. A change of those issue properties triggers the &#x60;issue_property_set&#x60; or &#x60;issue_property_deleted&#x60; webhooks. If this parameter is not present, the app is notified about all issue property updates. | [optional] [default to null] |
| **jqlFilter** | **String** | The JQL filter that specifies which issues the webhook is sent for. | [default to null] |
| **url** | **String** | The URL that specifies where the webhooks are sent. | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

