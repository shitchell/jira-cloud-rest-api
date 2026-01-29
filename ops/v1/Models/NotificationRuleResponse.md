# NotificationRuleResponse
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **String** | Identifier of the notification rule. | [optional] [default to null] |
| **name** | **String** | Name of the notification rule. | [optional] [default to null] |
| **actionType** | **String** | Type of the action that notification rule will have. | [optional] [default to null] |
| **criteria** | [**NotificationRuleRequest_criteria**](NotificationRuleRequest_criteria.md) |  | [optional] [default to null] |
| **notificationTime** | **List** | List of Time Periods that notification for schedule start/end will be sent. If actionType is **scheduleStart** or **scheduleEnd**, notificationTime is mandatory. | [optional] [default to null] |
| **timeRestriction** | [**NotificationRuleRequest_timeRestriction**](NotificationRuleRequest_timeRestriction.md) |  | [optional] [default to null] |
| **schedules** | **List** | This field is valid for Schedule Start/End rules. It can be list of schedule IDs that notification rule will be applied when on call of that schedule starts/ends. This field shall only be populated with the specified users&#39; schedules. | [optional] [default to null] |
| **order** | **Integer** | The order of the notification rule within the notification rules with the same action type. Order value is actually the index of the notification rule whose minimum value is 0 and whose maximum value is n-1 (number of notification rules with the same action type is n). | [optional] [default to null] |
| **steps** | [**List**](NotificationRulesNotificationRuleStep.md) | List of steps that will be added to notification rule. | [optional] [default to null] |
| **repeat** | [**NotificationRuleRepeat**](NotificationRuleRepeat.md) |  | [optional] [default to null] |
| **enabled** | **Boolean** | If notification rule will be enabled or not when it is created. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

