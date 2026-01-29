# CreateAlertRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **message** | **String** | Brief summary of the alert that provides enough information to understand the nature of the issue at a glance. | [default to null] |
| **responders** | [**List**](Responder.md) | Teams, users, escalations and schedules that the alert will be routed to send notifications. | [optional] [default to null] |
| **visibleTo** | [**List**](VisibleTo.md) |  | [optional] [default to null] |
| **note** | **String** | Additional context or information about the alert that isn&#39;t captured in other fields. This could include steps taken to address the alert, details about the potential cause, or other relevant information. | [optional] [default to null] |
| **alias** | **String** | Client-defined identifier of the alert, that is also the key element of &lt;a target&#x3D;\&quot;_self\&quot; href&#x3D;\&quot;https://support.atlassian.com/atlassian/docs/what-is-alert-de-duplication/\&quot;&gt;Alert De-Duplication&lt;/a&gt;. | [optional] [default to null] |
| **entity** | **String** | Entity that the alert is related to. It could be a server, service, application or another source that&#39;s being monitored. The &#39;entity&#39; helps in identifying and categorizing the origin of the alert, enabling quicker diagnostics and resolution of the issue. | [optional] [default to null] |
| **source** | **String** | Origin of the alert, i.e., the system or application where the alert was generated. This field is useful for tracking and sorting alerts according to their originating sources, which can help in troubleshooting and determining the cause of the alerts. | [optional] [default to IP address of the incoming request.] |
| **tags** | **List** | Additional categorizing information. These tags can then be used for searching or grouping alerts, making it easier to manage and prioritize them. | [optional] [default to null] |
| **actions** | **List** | A list of actions that can be executed on the alert. These actions are custom to your organization and can be used to automate responses to specific alerts. | [optional] [default to null] |
| **description** | **String** | Detailed information contains more comprehensive information than the &#39;message&#39; field, including the implications of the alert, steps to reproduce the issue, or suggestions for resolving the problem. It serves as a guide for the person or team responding to the alert to better understand the situation and take appropriate actions. | [optional] [default to null] |
| **priority** | [**Priority**](Priority.md) |  | [optional] [default to null] |
| **extraProperties** | **Map** | Map of key-value pairs to use as custom properties of the alert. This can include context-specific data, diagnostic information, or other metadata that can assist in understanding and resolving the alert. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

