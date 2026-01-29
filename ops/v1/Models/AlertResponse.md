# AlertResponse
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | Identifier of alert. | [optional] [default to null] |
| **tinyId** | **String** | Unique, system-generated identification code assigned to each alert. This ID is shorter and simpler than the primary alert ID, making it easier to reference in communications and operations. It serves as a quick reference point to uniquely identify each alert. | [optional] [default to null] |
| **createdAt** | **Date** | Exact date and time when the alert was generated. It helps in tracking the timeline of the alerts and understanding the chronology of events. | [optional] [default to null] |
| **updatedAt** | **Date** | Exact date and time when the alert was updated. | [optional] [default to null] |
| **message** | **String** | Brief summary of the alert that provides enough information to understand the nature of the issue at a glance. | [optional] [default to null] |
| **entity** | **String** | Entity that the alert is related to. It could be a server, service, application or another source that&#39;s being monitored. The &#39;entity&#39; helps in identifying and categorizing the origin of the alert, enabling quicker diagnostics and resolution of the issue. | [optional] [default to null] |
| **source** | **String** | Origin of the alert, i.e., the system or application where the alert was generated. This field is useful for tracking and sorting alerts according to their originating sources, which can help in troubleshooting and determining the cause of the alerts. | [optional] [default to IP address of the incoming request.] |
| **status** | **String** | Current state of the alert represents whether the alert is new, has been acknowledged by a team member, has been resolved etc. | [optional] [default to null] |
| **alias** | **String** | Client-defined identifier of the alert, that is also the key element of &lt;a target&#x3D;\&quot;_self\&quot; href&#x3D;\&quot;https://support.atlassian.com/atlassian/docs/what-is-alert-de-duplication/\&quot;&gt;Alert De-Duplication&lt;/a&gt;. | [optional] [default to null] |
| **tags** | **List** | Additional categorizing information. These tags can then be used for searching or grouping alerts, making it easier to manage and prioritize them. | [optional] [default to null] |
| **extraProperties** | **Map** | Map of key-value pairs to use as custom properties of the alert. This can include context-specific data, diagnostic information, or other metadata that can assist in understanding and resolving the alert. | [optional] [default to null] |
| **description** | **String** | Detailed information contains more comprehensive information than the &#39;message&#39; field, including the implications of the alert, steps to reproduce the issue, or suggestions for resolving the problem. It serves as a guide for the person or team responding to the alert to better understand the situation and take appropriate actions. | [optional] [default to null] |
| **acknowledged** | **Boolean** | Indicating whether the alert has been acknowledged by a team member or not. If the alert has been acknowledged, it means that someone is actively looking into the issue. | [optional] [default to null] |
| **count** | **Integer** | Represents the number of times the alert has been triggered. Each time the same alert is triggered, instead of creating a new alert, the count of the existing alert increases. This helps in reducing noise and focusing on the recurring issue. | [optional] [default to null] |
| **owner** | **String** | Display name of the alert owner. | [optional] [default to null] |
| **snoozed** | **Boolean** | Reflects whether the alert has been temporarily silenced or not. If set to &#39;true&#39;, it means the alert notifications have been paused for a specified duration and will not disturb the users during this period. | [optional] [default to null] |
| **snoozedUntil** | **Date** | Represents the time until which the alert is snoozed. | [optional] [default to null] |
| **lastOccurredAt** | **Date** | Represents the most recent time the alert was triggered. | [optional] [default to null] |
| **integrationType** | **String** | Denotes the type of integration used to create the alert. | [optional] [default to null] |
| **integrationName** | **String** | Denotes the name of integration used to create the alert. | [optional] [default to null] |
| **priority** | [**Priority**](Priority.md) |  | [optional] [default to null] |
| **responders** | [**List**](Responder.md) | Teams, users, escalations and schedules that the alert will be routed to send notifications. | [optional] [default to null] |
| **actions** | **List** | A list of actions that can be executed on the alert. These actions are custom to your organization and can be used to automate responses to specific alerts. | [optional] [default to null] |
| **seen** | **Boolean** | Represents whether the alert has been viewed by a user or not. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

