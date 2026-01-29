# Documentation for JSM Operations API

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Class | Method | HTTP request | Description |
|------------ | ------------- | ------------- | -------------|
| *AlertsApi* | [**ackAlert**](Apis/AlertsApi.md#ackAlert) | **POST** /v1/alerts/{id}/acknowledge | Acknowledge alert |
*AlertsApi* | [**addAlertNote**](Apis/AlertsApi.md#addAlertNote) | **POST** /v1/alerts/{id}/notes | Add alert note |
*AlertsApi* | [**addExtraPropertyToAlert**](Apis/AlertsApi.md#addExtraPropertyToAlert) | **POST** /v1/alerts/{id}/extra-properties | Add extra properties to alert |
*AlertsApi* | [**addResponder**](Apis/AlertsApi.md#addResponder) | **POST** /v1/alerts/{id}/responders | Add responder to alert |
*AlertsApi* | [**addTags**](Apis/AlertsApi.md#addTags) | **POST** /v1/alerts/{id}/tags | Add tags to alert |
*AlertsApi* | [**assignAlert**](Apis/AlertsApi.md#assignAlert) | **POST** /v1/alerts/{id}/assign | Assign alert |
*AlertsApi* | [**closeAlert**](Apis/AlertsApi.md#closeAlert) | **POST** /v1/alerts/{id}/close | Close alert |
*AlertsApi* | [**createAlert**](Apis/AlertsApi.md#createAlert) | **POST** /v1/alerts | Create alert |
*AlertsApi* | [**deleteAlert**](Apis/AlertsApi.md#deleteAlert) | **DELETE** /v1/alerts/{id} | Delete alert |
*AlertsApi* | [**deleteAlertNote**](Apis/AlertsApi.md#deleteAlertNote) | **DELETE** /v1/alerts/{alertId}/notes/{id} | Delete alert note |
*AlertsApi* | [**deleteExtraPropertyFromAlert**](Apis/AlertsApi.md#deleteExtraPropertyFromAlert) | **DELETE** /v1/alerts/{id}/extra-properties | Delete extra properties from alert |
*AlertsApi* | [**deleteTags**](Apis/AlertsApi.md#deleteTags) | **DELETE** /v1/alerts/{id}/tags | Delete tags from alert |
*AlertsApi* | [**escalateAlert**](Apis/AlertsApi.md#escalateAlert) | **POST** /v1/alerts/{id}/escalate | Escalate alert to next |
*AlertsApi* | [**executeAlertAction**](Apis/AlertsApi.md#executeAlertAction) | **POST** /v1/alerts/{id}/action | Execute custom action |
*AlertsApi* | [**getAlertLogs**](Apis/AlertsApi.md#getAlertLogs) | **GET** /v1/alerts/{id}/logs | List alert logs |
*AlertsApi* | [**getAlertNotes**](Apis/AlertsApi.md#getAlertNotes) | **GET** /v1/alerts/{id}/notes | List alert notes |
*AlertsApi* | [**getAlertWithAlias**](Apis/AlertsApi.md#getAlertWithAlias) | **GET** /v1/alerts/alias | Get alert by alias |
*AlertsApi* | [**getAlertWithId**](Apis/AlertsApi.md#getAlertWithId) | **GET** /v1/alerts/{id} | Get alert |
*AlertsApi* | [**getRequestStatus**](Apis/AlertsApi.md#getRequestStatus) | **GET** /v1/alerts/requests/{id} | Get request status |
*AlertsApi* | [**listAlerts**](Apis/AlertsApi.md#listAlerts) | **GET** /v1/alerts | List alerts |
*AlertsApi* | [**snoozeAlert**](Apis/AlertsApi.md#snoozeAlert) | **POST** /v1/alerts/{id}/snooze | Snooze alert |
*AlertsApi* | [**unackAlert**](Apis/AlertsApi.md#unackAlert) | **POST** /v1/alerts/{id}/unacknowledge | Unacknowledge alert |
*AlertsApi* | [**updateAlertDescription**](Apis/AlertsApi.md#updateAlertDescription) | **PATCH** /v1/alerts/{id}/description | Update alert description |
*AlertsApi* | [**updateAlertMessage**](Apis/AlertsApi.md#updateAlertMessage) | **PATCH** /v1/alerts/{id}/message | Update alert message |
*AlertsApi* | [**updateAlertNote**](Apis/AlertsApi.md#updateAlertNote) | **PATCH** /v1/alerts/{alertId}/notes/{id} | Update alert note |
*AlertsApi* | [**updateAlertPriority**](Apis/AlertsApi.md#updateAlertPriority) | **PATCH** /v1/alerts/{id}/priority | Update alert priority |
| *AuditLogsApi* | [**listLogs**](Apis/AuditLogsApi.md#listLogs) | **GET** /v1/logs | Get audit Logs |
| *ContactsApi* | [**activate**](Apis/ContactsApi.md#activate) | **PATCH** /v1/users/contacts/{id}/activate | Activate contact |
*ContactsApi* | [**create**](Apis/ContactsApi.md#create) | **POST** /v1/users/contacts | Create contact |
*ContactsApi* | [**deactivate**](Apis/ContactsApi.md#deactivate) | **PATCH** /v1/users/contacts/{id}/deactivate | Deactivate contact |
*ContactsApi* | [**delete1**](Apis/ContactsApi.md#delete1) | **DELETE** /v1/users/contacts/{id} | Delete contact |
*ContactsApi* | [**get**](Apis/ContactsApi.md#get) | **GET** /v1/users/contacts/{id} | Get contact |
*ContactsApi* | [**list**](Apis/ContactsApi.md#list) | **GET** /v1/users/contacts | List contacts |
*ContactsApi* | [**update1**](Apis/ContactsApi.md#update1) | **PATCH** /v1/users/contacts/{id} | Update contact |
| *CustomUserRolesApi* | [**assignCustomRole**](Apis/CustomUserRolesApi.md#assignCustomRole) | **POST** /v1/roles/assign | Assign custom user role |
*CustomUserRolesApi* | [**createCustomRole**](Apis/CustomUserRolesApi.md#createCustomRole) | **POST** /v1/roles | Create custom user role |
*CustomUserRolesApi* | [**delete**](Apis/CustomUserRolesApi.md#delete) | **DELETE** /v1/roles/{identifier} | Delete custom user role. |
*CustomUserRolesApi* | [**getRole**](Apis/CustomUserRolesApi.md#getRole) | **GET** /v1/roles/{identifier} | Get custom user role |
*CustomUserRolesApi* | [**getRoles**](Apis/CustomUserRolesApi.md#getRoles) | **GET** /v1/roles | List custom user roles |
*CustomUserRolesApi* | [**update**](Apis/CustomUserRolesApi.md#update) | **PUT** /v1/roles/{identifier} | Update custom user role |
| *EscalationsApi* | [**createEscalation**](Apis/EscalationsApi.md#createEscalation) | **POST** /v1/teams/{teamId}/escalations | Create escalation |
*EscalationsApi* | [**deleteEscalation**](Apis/EscalationsApi.md#deleteEscalation) | **DELETE** /v1/teams/{teamId}/escalations/{id} | Delete escalation |
*EscalationsApi* | [**getEscalation**](Apis/EscalationsApi.md#getEscalation) | **GET** /v1/teams/{teamId}/escalations/{id} | Get escalation |
*EscalationsApi* | [**listEscalation**](Apis/EscalationsApi.md#listEscalation) | **GET** /v1/teams/{teamId}/escalations | List escalations |
*EscalationsApi* | [**updateEscalation**](Apis/EscalationsApi.md#updateEscalation) | **PATCH** /v1/teams/{teamId}/escalations/{id} | Update escalation |
| *ForwardingRulesApi* | [**createForwarding**](Apis/ForwardingRulesApi.md#createForwarding) | **POST** /v1/forwarding-rules | Create forwarding rule |
*ForwardingRulesApi* | [**deleteForwarding**](Apis/ForwardingRulesApi.md#deleteForwarding) | **DELETE** /v1/forwarding-rules/{id} | Delete forwarding rule |
*ForwardingRulesApi* | [**getForwarding**](Apis/ForwardingRulesApi.md#getForwarding) | **GET** /v1/forwarding-rules/{id} | Get forwarding rule |
*ForwardingRulesApi* | [**listForwardings**](Apis/ForwardingRulesApi.md#listForwardings) | **GET** /v1/forwarding-rules | List forwarding rules |
*ForwardingRulesApi* | [**updateForwarding**](Apis/ForwardingRulesApi.md#updateForwarding) | **PUT** /v1/forwarding-rules/{id} | Update forwarding rule |
| *HeartbeatsApi* | [**createHeartbeat**](Apis/HeartbeatsApi.md#createHeartbeat) | **POST** /v1/teams/{teamId}/heartbeats | Create heartbeat |
*HeartbeatsApi* | [**deleteHeartbeat**](Apis/HeartbeatsApi.md#deleteHeartbeat) | **DELETE** /v1/teams/{teamId}/heartbeats | Delete heartbeat |
*HeartbeatsApi* | [**listHeartbeats**](Apis/HeartbeatsApi.md#listHeartbeats) | **GET** /v1/teams/{teamId}/heartbeats | List heartbeats |
*HeartbeatsApi* | [**pingHeartbeat**](Apis/HeartbeatsApi.md#pingHeartbeat) | **POST** /v1/teams/{teamId}/heartbeats/ping | Ping Heartbeat |
*HeartbeatsApi* | [**updateHeartbeat**](Apis/HeartbeatsApi.md#updateHeartbeat) | **PATCH** /v1/teams/{teamId}/heartbeats | Update heartbeat |
| *IntegrationActionsApi* | [**create1**](Apis/IntegrationActionsApi.md#create1) | **POST** /v1/integrations/{integrationId}/actions | Create integration action |
*IntegrationActionsApi* | [**delete**](Apis/IntegrationActionsApi.md#delete) | **DELETE** /v1/integrations/{integrationId}/actions/{id} | Delete integration action |
*IntegrationActionsApi* | [**get1**](Apis/IntegrationActionsApi.md#get1) | **GET** /v1/integrations/{integrationId}/actions/{id} | Get integration action |
*IntegrationActionsApi* | [**list1**](Apis/IntegrationActionsApi.md#list1) | **GET** /v1/integrations/{integrationId}/actions | List integration actions |
*IntegrationActionsApi* | [**reorder**](Apis/IntegrationActionsApi.md#reorder) | **PATCH** /v1/integrations/{integrationId}/actions/{id}/order | Reorder integration action |
*IntegrationActionsApi* | [**update1**](Apis/IntegrationActionsApi.md#update1) | **PATCH** /v1/integrations/{integrationId}/actions/{id} | Update integration action |
| *IntegrationOutgoingFiltersApi* | [**get**](Apis/IntegrationOutgoingFiltersApi.md#get) | **GET** /v1/integrations/{integrationId}/outgoing/alert-filter/main | Get integration alert filter |
*IntegrationOutgoingFiltersApi* | [**update**](Apis/IntegrationOutgoingFiltersApi.md#update) | **PATCH** /v1/integrations/{integrationId}/outgoing/alert-filter/main | Update integration alert filter |
| *IntegrationsApi* | [**create**](Apis/IntegrationsApi.md#create) | **POST** /v1/integrations | Create integration |
*IntegrationsApi* | [**delete1**](Apis/IntegrationsApi.md#delete1) | **DELETE** /v1/integrations/{id} | Delete integration |
*IntegrationsApi* | [**get2**](Apis/IntegrationsApi.md#get2) | **GET** /v1/integrations/{id} | Get integration |
*IntegrationsApi* | [**list**](Apis/IntegrationsApi.md#list) | **GET** /v1/integrations | List integrations |
*IntegrationsApi* | [**update2**](Apis/IntegrationsApi.md#update2) | **PATCH** /v1/integrations/{id} | Update integration |
| *JECApi* | [**createJecChannel**](Apis/JECApi.md#createJecChannel) | **POST** /v1/jec/channels | Create JEC Channel |
*JECApi* | [**deleteJecChannel**](Apis/JECApi.md#deleteJecChannel) | **DELETE** /v1/jec/channels/{id} | Delete JEC channel |
*JECApi* | [**getJecChannel**](Apis/JECApi.md#getJecChannel) | **GET** /v1/jec/channels/{id} | Get JEC channel |
*JECApi* | [**listJecChannel**](Apis/JECApi.md#listJecChannel) | **GET** /v1/jec/channels | List JEC channels |
*JECApi* | [**sendJecAction**](Apis/JECApi.md#sendJecAction) | **POST** /v1/jec/action | Send JEC Action |
| *MaintenancesApi* | [**cancelGlobalMaintenance**](Apis/MaintenancesApi.md#cancelGlobalMaintenance) | **POST** /v1/maintenances/{id}/cancel | Cancel global maintenance |
*MaintenancesApi* | [**cancelTeamMaintenance**](Apis/MaintenancesApi.md#cancelTeamMaintenance) | **POST** /v1/teams/{teamId}/maintenances/{id}/cancel | Cancel team maintenance |
*MaintenancesApi* | [**createGlobalMaintenance**](Apis/MaintenancesApi.md#createGlobalMaintenance) | **POST** /v1/maintenances | Create global maintenance |
*MaintenancesApi* | [**createTeamMaintenance**](Apis/MaintenancesApi.md#createTeamMaintenance) | **POST** /v1/teams/{teamId}/maintenances | Create team maintenance |
*MaintenancesApi* | [**deleteGlobalMaintenance**](Apis/MaintenancesApi.md#deleteGlobalMaintenance) | **DELETE** /v1/maintenances/{id} | Deletes global maintenance |
*MaintenancesApi* | [**deleteTeamMaintenance**](Apis/MaintenancesApi.md#deleteTeamMaintenance) | **DELETE** /v1/teams/{teamId}/maintenances/{id} | Delete team maintenance |
*MaintenancesApi* | [**getGlobalMaintenance**](Apis/MaintenancesApi.md#getGlobalMaintenance) | **GET** /v1/maintenances/{id} | Get global maintenance |
*MaintenancesApi* | [**getTeamMaintenance**](Apis/MaintenancesApi.md#getTeamMaintenance) | **GET** /v1/teams/{teamId}/maintenances/{id} | Get team maintenance |
*MaintenancesApi* | [**listGlobalMaintenances**](Apis/MaintenancesApi.md#listGlobalMaintenances) | **GET** /v1/maintenances | List global maintenances |
*MaintenancesApi* | [**listTeamMaintenances**](Apis/MaintenancesApi.md#listTeamMaintenances) | **GET** /v1/teams/{teamId}/maintenances | List team maintenances |
*MaintenancesApi* | [**updateGlobalMaintenance**](Apis/MaintenancesApi.md#updateGlobalMaintenance) | **PATCH** /v1/maintenances/{id} | Update global maintenance |
*MaintenancesApi* | [**updateTeamMaintenance**](Apis/MaintenancesApi.md#updateTeamMaintenance) | **PATCH** /v1/teams/{teamId}/maintenances/{id} | Update team maintenance |
| *NotificationRuleStepsApi* | [**createNotificationRuleStep**](Apis/NotificationRuleStepsApi.md#createNotificationRuleStep) | **POST** /v1/notification-rules/{ruleId}/steps | Create notification rule step |
*NotificationRuleStepsApi* | [**deleteNotificationRuleStep**](Apis/NotificationRuleStepsApi.md#deleteNotificationRuleStep) | **DELETE** /v1/notification-rules/{ruleId}/steps/{id} | Delete notification rule step |
*NotificationRuleStepsApi* | [**getNotificationRuleStep**](Apis/NotificationRuleStepsApi.md#getNotificationRuleStep) | **GET** /v1/notification-rules/{ruleId}/steps/{id} | Get notification rule step |
*NotificationRuleStepsApi* | [**listNotificationRuleSteps**](Apis/NotificationRuleStepsApi.md#listNotificationRuleSteps) | **GET** /v1/notification-rules/{ruleId}/steps | List notification rule steps |
*NotificationRuleStepsApi* | [**updateNotificationRuleStep**](Apis/NotificationRuleStepsApi.md#updateNotificationRuleStep) | **PATCH** /v1/notification-rules/{ruleId}/steps/{id} | Update notification rule step |
| *NotificationRulesApi* | [**createNotificationRule**](Apis/NotificationRulesApi.md#createNotificationRule) | **POST** /v1/notification-rules | Create notification rule |
*NotificationRulesApi* | [**deleteNotificationRule**](Apis/NotificationRulesApi.md#deleteNotificationRule) | **DELETE** /v1/notification-rules/{id} | Delete notification rule |
*NotificationRulesApi* | [**getNotificationRule**](Apis/NotificationRulesApi.md#getNotificationRule) | **GET** /v1/notification-rules/{id} | Get notification rule |
*NotificationRulesApi* | [**listNotificationRule**](Apis/NotificationRulesApi.md#listNotificationRule) | **GET** /v1/notification-rules | List notification rules |
*NotificationRulesApi* | [**updateNotificationRule**](Apis/NotificationRulesApi.md#updateNotificationRule) | **PATCH** /v1/notification-rules/{id} | Update notification rule |
| *PoliciesApi* | [**createGlobalPolicy**](Apis/PoliciesApi.md#createGlobalPolicy) | **POST** /v1/alerts/policies | Create global alert policy |
*PoliciesApi* | [**createGlobalPolicy_0**](Apis/PoliciesApi.md#createGlobalPolicy_0) | **POST** /v1/alerts/policies/{policyId}/change-order | Change the order of global alert policy |
*PoliciesApi* | [**deleteGlobalPolicies**](Apis/PoliciesApi.md#deleteGlobalPolicies) | **DELETE** /v1/alerts/policies/{policyId} | Delete global alert policy |
*PoliciesApi* | [**disableGlobalPolicy**](Apis/PoliciesApi.md#disableGlobalPolicy) | **POST** /v1/alerts/policies/{policyId}/disable | Disable the global alert policy |
*PoliciesApi* | [**enableGlobalPolicy**](Apis/PoliciesApi.md#enableGlobalPolicy) | **POST** /v1/alerts/policies/{policyId}/enable | Enable the global alert policy |
*PoliciesApi* | [**getGlobalPolicies**](Apis/PoliciesApi.md#getGlobalPolicies) | **GET** /v1/alerts/policies/{policyId} | Get global alert policy |
*PoliciesApi* | [**listGlobalPolicies**](Apis/PoliciesApi.md#listGlobalPolicies) | **GET** /v1/alerts/policies | List global alert policies |
*PoliciesApi* | [**putGlobalPolicies**](Apis/PoliciesApi.md#putGlobalPolicies) | **PUT** /v1/alerts/policies/{policyId} | Put global alert policy |
| *RoutingRulesApi* | [**changeRoutingRuleOrder**](Apis/RoutingRulesApi.md#changeRoutingRuleOrder) | **PATCH** /v1/teams/{teamId}/routing-rules/{id}/change-order | Change routing rule order |
*RoutingRulesApi* | [**createRoutingRule**](Apis/RoutingRulesApi.md#createRoutingRule) | **POST** /v1/teams/{teamId}/routing-rules | Create routing rule |
*RoutingRulesApi* | [**deleteRoutingRule**](Apis/RoutingRulesApi.md#deleteRoutingRule) | **DELETE** /v1/teams/{teamId}/routing-rules/{id} | Delete routing rule |
*RoutingRulesApi* | [**getRoutingRule**](Apis/RoutingRulesApi.md#getRoutingRule) | **GET** /v1/teams/{teamId}/routing-rules/{id} | Get routing rule |
*RoutingRulesApi* | [**listRoutingRules**](Apis/RoutingRulesApi.md#listRoutingRules) | **GET** /v1/teams/{teamId}/routing-rules | List routing rules |
*RoutingRulesApi* | [**updateRoutingRule**](Apis/RoutingRulesApi.md#updateRoutingRule) | **PATCH** /v1/teams/{teamId}/routing-rules/{id} | Update routing rule |
| *ScheduleOnCallsApi* | [**exportOnCalls**](Apis/ScheduleOnCallsApi.md#exportOnCalls) | **GET** /v1/schedules/on-calls/{userIdentifier}.ics | Export on-call responders |
*ScheduleOnCallsApi* | [**getNextOnCalls**](Apis/ScheduleOnCallsApi.md#getNextOnCalls) | **GET** /v1/schedules/{scheduleId}/next-on-calls | List next on-call responders |
*ScheduleOnCallsApi* | [**getOnCalls**](Apis/ScheduleOnCallsApi.md#getOnCalls) | **GET** /v1/schedules/{scheduleId}/on-calls | List on-call responders |
| *ScheduleOverridesApi* | [**createOverride**](Apis/ScheduleOverridesApi.md#createOverride) | **POST** /v1/schedules/{scheduleId}/overrides | Create override |
*ScheduleOverridesApi* | [**deleteOverride**](Apis/ScheduleOverridesApi.md#deleteOverride) | **DELETE** /v1/schedules/{scheduleId}/overrides/{alias} | Delete override |
*ScheduleOverridesApi* | [**getOverride**](Apis/ScheduleOverridesApi.md#getOverride) | **GET** /v1/schedules/{scheduleId}/overrides/{alias} | Get override |
*ScheduleOverridesApi* | [**listOverrides**](Apis/ScheduleOverridesApi.md#listOverrides) | **GET** /v1/schedules/{scheduleId}/overrides | List overrides |
*ScheduleOverridesApi* | [**updateOverride**](Apis/ScheduleOverridesApi.md#updateOverride) | **PUT** /v1/schedules/{scheduleId}/overrides/{alias} | Update override |
| *ScheduleRotationsApi* | [**createRotation**](Apis/ScheduleRotationsApi.md#createRotation) | **POST** /v1/schedules/{scheduleId}/rotations | Create rotation |
*ScheduleRotationsApi* | [**deleteRotation**](Apis/ScheduleRotationsApi.md#deleteRotation) | **DELETE** /v1/schedules/{scheduleId}/rotations/{id} | Delete rotation |
*ScheduleRotationsApi* | [**getRotation**](Apis/ScheduleRotationsApi.md#getRotation) | **GET** /v1/schedules/{scheduleId}/rotations/{id} | Get rotation |
*ScheduleRotationsApi* | [**listRotations**](Apis/ScheduleRotationsApi.md#listRotations) | **GET** /v1/schedules/{scheduleId}/rotations | List rotations |
*ScheduleRotationsApi* | [**updateRotation**](Apis/ScheduleRotationsApi.md#updateRotation) | **PATCH** /v1/schedules/{scheduleId}/rotations/{id} | Update rotation |
| *ScheduleTimelinesApi* | [**exportTimeline**](Apis/ScheduleTimelinesApi.md#exportTimeline) | **GET** /v1/schedules/{scheduleId}.ics | Export schedule timeline |
*ScheduleTimelinesApi* | [**getTimeline**](Apis/ScheduleTimelinesApi.md#getTimeline) | **GET** /v1/schedules/{scheduleId}/timeline | Get schedule timeline |
| *SchedulesApi* | [**createSchedule**](Apis/SchedulesApi.md#createSchedule) | **POST** /v1/schedules | Create schedule |
*SchedulesApi* | [**deleteSchedule**](Apis/SchedulesApi.md#deleteSchedule) | **DELETE** /v1/schedules/{id} | Delete schedule |
*SchedulesApi* | [**getSchedule**](Apis/SchedulesApi.md#getSchedule) | **GET** /v1/schedules/{id} | Get schedule |
*SchedulesApi* | [**listSchedules**](Apis/SchedulesApi.md#listSchedules) | **GET** /v1/schedules | List schedules |
*SchedulesApi* | [**updateSchedule**](Apis/SchedulesApi.md#updateSchedule) | **PATCH** /v1/schedules/{id} | Update schedule |
| *SyncActionGroupsApi* | [**create1**](Apis/SyncActionGroupsApi.md#create1) | **POST** /v1/syncs/{syncId}/action-groups | Create sync action group |
*SyncActionGroupsApi* | [**delete1**](Apis/SyncActionGroupsApi.md#delete1) | **DELETE** /v1/syncs/{syncId}/action-groups/{id} | Delete sync action group |
*SyncActionGroupsApi* | [**get1**](Apis/SyncActionGroupsApi.md#get1) | **GET** /v1/syncs/{syncId}/action-groups/{id} | Get sync action group |
*SyncActionGroupsApi* | [**list2**](Apis/SyncActionGroupsApi.md#list2) | **GET** /v1/syncs/{syncId}/action-groups | List sync action groups |
*SyncActionGroupsApi* | [**reorder1**](Apis/SyncActionGroupsApi.md#reorder1) | **PATCH** /v1/syncs/{syncId}/action-groups/{id}/order | Reorder sync action group |
*SyncActionGroupsApi* | [**update1**](Apis/SyncActionGroupsApi.md#update1) | **PATCH** /v1/syncs/{syncId}/action-groups/{id} | Update sync action group |
| *SyncActionsApi* | [**create**](Apis/SyncActionsApi.md#create) | **POST** /v1/syncs/{syncId}/actions | Create sync action |
*SyncActionsApi* | [**delete**](Apis/SyncActionsApi.md#delete) | **DELETE** /v1/syncs/{syncId}/actions/{id} | Delete sync action |
*SyncActionsApi* | [**get**](Apis/SyncActionsApi.md#get) | **GET** /v1/syncs/{syncId}/actions/{id} | Get sync action |
*SyncActionsApi* | [**list1**](Apis/SyncActionsApi.md#list1) | **GET** /v1/syncs/{syncId}/actions | List sync actions |
*SyncActionsApi* | [**reorder**](Apis/SyncActionsApi.md#reorder) | **PATCH** /v1/syncs/{syncId}/actions/{id}/order | Reorder sync action |
*SyncActionsApi* | [**update**](Apis/SyncActionsApi.md#update) | **PATCH** /v1/syncs/{syncId}/actions/{id} | Update sync action |
| *SyncsApi* | [**createSync**](Apis/SyncsApi.md#createSync) | **POST** /v1/syncs | Create sync |
*SyncsApi* | [**deleteSync**](Apis/SyncsApi.md#deleteSync) | **DELETE** /v1/syncs/{id} | Delete sync |
*SyncsApi* | [**getSync**](Apis/SyncsApi.md#getSync) | **GET** /v1/syncs/{id} | Get sync |
*SyncsApi* | [**list**](Apis/SyncsApi.md#list) | **GET** /v1/syncs | List syncs |
*SyncsApi* | [**updateSync**](Apis/SyncsApi.md#updateSync) | **PATCH** /v1/syncs/{id} | Update sync |
| *TeamApi* | [**enableOperations**](Apis/TeamApi.md#enableOperations) | **POST** /v1/teams/{teamId}/enable-ops | Enable Operations in team |
*TeamApi* | [**getTeamRequestStatus**](Apis/TeamApi.md#getTeamRequestStatus) | **GET** /v1/teams/{teamId}/requests/{requestId} | Get status of a team request |
*TeamApi* | [**getTeams**](Apis/TeamApi.md#getTeams) | **GET** /v1/teams | List teams |
| *TeamPoliciesApi* | [**createGlobalPolicy**](Apis/TeamPoliciesApi.md#createGlobalPolicy) | **POST** /v1/teams/{teamId}/policies/{policyId}/change-order | Change the order of team policy |
*TeamPoliciesApi* | [**deleteGlobalPolicies**](Apis/TeamPoliciesApi.md#deleteGlobalPolicies) | **DELETE** /v1/teams/{teamId}/policies/{policyId} | Delete global alert policy |
*TeamPoliciesApi* | [**disableGlobalPolicy**](Apis/TeamPoliciesApi.md#disableGlobalPolicy) | **POST** /v1/teams/{teamId}/policies/{policyId}/disable | Disable the global alert policy |
*TeamPoliciesApi* | [**enableGlobalPolicy**](Apis/TeamPoliciesApi.md#enableGlobalPolicy) | **POST** /v1/teams/{teamId}/policies/{policyId}/enable | Enable the team policy |
*TeamPoliciesApi* | [**getTeamPolicies**](Apis/TeamPoliciesApi.md#getTeamPolicies) | **GET** /v1/teams/{teamId}/policies/{policyId} | Get team policy |
*TeamPoliciesApi* | [**listTeamPolicies**](Apis/TeamPoliciesApi.md#listTeamPolicies) | **GET** /v1/teams/{teamId}/policies | List team policies |
*TeamPoliciesApi* | [**putTeamPolicies**](Apis/TeamPoliciesApi.md#putTeamPolicies) | **POST** /v1/teams/{teamId}/policies | Create team policy |
*TeamPoliciesApi* | [**putTeamPolicies_0**](Apis/TeamPoliciesApi.md#putTeamPolicies_0) | **PUT** /v1/teams/{teamId}/policies/{policyId} | Put team policy |
| *TeamRolesApi* | [**create**](Apis/TeamRolesApi.md#create) | **POST** /v1/teams/{teamId}/roles | Create team role |
*TeamRolesApi* | [**delete**](Apis/TeamRolesApi.md#delete) | **DELETE** /v1/teams/{teamId}/roles/{identifier} | Delete a team role. |
*TeamRolesApi* | [**getRole**](Apis/TeamRolesApi.md#getRole) | **GET** /v1/teams/{teamId}/roles/{identifier} | Get Team role |
*TeamRolesApi* | [**getRole_0**](Apis/TeamRolesApi.md#getRole_0) | **GET** /v1/teams/{teamId}/roles | List Team roles |
*TeamRolesApi* | [**update**](Apis/TeamRolesApi.md#update) | **PATCH** /v1/teams/{teamId}/roles/{identifier} | Update team role |


<a name="documentation-for-models"></a>
## Documentation for Models

 - [ActionDetail](./Models/ActionDetail.md)
 - [ActionMapping](./Models/ActionMapping.md)
 - [ActionMappingDto](./Models/ActionMappingDto.md)
 - [ActionsDto](./Models/ActionsDto.md)
 - [AddExtraPropertiesRequest](./Models/AddExtraPropertiesRequest.md)
 - [AddResponderRequest](./Models/AddResponderRequest.md)
 - [AddedActionDto](./Models/AddedActionDto.md)
 - [AlertErrorResponse](./Models/AlertErrorResponse.md)
 - [AlertLog](./Models/AlertLog.md)
 - [AlertLogLink](./Models/AlertLogLink.md)
 - [AlertLogsResponse](./Models/AlertLogsResponse.md)
 - [AlertNote](./Models/AlertNote.md)
 - [AlertNoteLink](./Models/AlertNoteLink.md)
 - [AlertResponse](./Models/AlertResponse.md)
 - [AlertSnoozeRequest](./Models/AlertSnoozeRequest.md)
 - [AlertTagsRequest](./Models/AlertTagsRequest.md)
 - [AssignAlertRequest](./Models/AssignAlertRequest.md)
 - [AssignRoleRequest](./Models/AssignRoleRequest.md)
 - [AuditLogResponse](./Models/AuditLogResponse.md)
 - [ChangePolicyOrderRequest](./Models/ChangePolicyOrderRequest.md)
 - [ContactCreateResponse](./Models/ContactCreateResponse.md)
 - [ContactResponse](./Models/ContactResponse.md)
 - [ContactStatus](./Models/ContactStatus.md)
 - [ContactSuccessResponse](./Models/ContactSuccessResponse.md)
 - [ContactWithApplyOrderResponse](./Models/ContactWithApplyOrderResponse.md)
 - [CreateActionGroupDto](./Models/CreateActionGroupDto.md)
 - [CreateAlertRequest](./Models/CreateAlertRequest.md)
 - [CreateContactPayload](./Models/CreateContactPayload.md)
 - [CreateEscalationRequest](./Models/CreateEscalationRequest.md)
 - [CreateForwardingRuleRequest](./Models/CreateForwardingRuleRequest.md)
 - [CreateGlobalPolicyRequest](./Models/CreateGlobalPolicyRequest.md)
 - [CreateGlobalPolicyRequest_filter](./Models/CreateGlobalPolicyRequest_filter.md)
 - [CreateGlobalPolicyRequest_filter_conditions_inner](./Models/CreateGlobalPolicyRequest_filter_conditions_inner.md)
 - [CreateGlobalPolicyRequest_responders_inner](./Models/CreateGlobalPolicyRequest_responders_inner.md)
 - [CreateGlobalPolicyRequest_timeRestriction](./Models/CreateGlobalPolicyRequest_timeRestriction.md)
 - [CreateGlobalPolicyRequest_timeRestriction_timeRestrictions_inner](./Models/CreateGlobalPolicyRequest_timeRestriction_timeRestrictions_inner.md)
 - [CreateHeartbeatRequest](./Models/CreateHeartbeatRequest.md)
 - [CreateIntegrationActionRequest](./Models/CreateIntegrationActionRequest.md)
 - [CreateIntegrationRequest](./Models/CreateIntegrationRequest.md)
 - [CreateJecChannelDto](./Models/CreateJecChannelDto.md)
 - [CreateMaintenanceRequest](./Models/CreateMaintenanceRequest.md)
 - [CreateOverrideRequest](./Models/CreateOverrideRequest.md)
 - [CreateRotationRequest](./Models/CreateRotationRequest.md)
 - [CreateRotationRequest_timeRestriction](./Models/CreateRotationRequest_timeRestriction.md)
 - [CreateRoutingRuleRequest](./Models/CreateRoutingRuleRequest.md)
 - [CreateRoutingRuleRequest_criteria](./Models/CreateRoutingRuleRequest_criteria.md)
 - [CreateRoutingRuleRequest_timeRestriction](./Models/CreateRoutingRuleRequest_timeRestriction.md)
 - [CreateScheduleRequest](./Models/CreateScheduleRequest.md)
 - [CreateSyncActionRequest](./Models/CreateSyncActionRequest.md)
 - [CreateSyncDto](./Models/CreateSyncDto.md)
 - [CustomRolesLinks](./Models/CustomRolesLinks.md)
 - [CustomRolesPaginatedResponse](./Models/CustomRolesPaginatedResponse.md)
 - [CustomUserRoleCreateRequest](./Models/CustomUserRoleCreateRequest.md)
 - [CustomUserRoleSuccessResponse](./Models/CustomUserRoleSuccessResponse.md)
 - [CustomUserRoleSummaryResponse](./Models/CustomUserRoleSummaryResponse.md)
 - [CustomUserRoleUpdateRequest](./Models/CustomUserRoleUpdateRequest.md)
 - [DeleteExtraPropertiesRequest](./Models/DeleteExtraPropertiesRequest.md)
 - [EnableOpsRequest](./Models/EnableOpsRequest.md)
 - [ErrorResponse](./Models/ErrorResponse.md)
 - [ErrorResponseList](./Models/ErrorResponseList.md)
 - [ErrorResponses](./Models/ErrorResponses.md)
 - [EscalateToNextRequest](./Models/EscalateToNextRequest.md)
 - [EscalationLinks](./Models/EscalationLinks.md)
 - [EscalationPaginatedResponse](./Models/EscalationPaginatedResponse.md)
 - [EscalationRepeat](./Models/EscalationRepeat.md)
 - [EscalationResponse](./Models/EscalationResponse.md)
 - [EscalationRule](./Models/EscalationRule.md)
 - [EscalationRuleResponse](./Models/EscalationRuleResponse.md)
 - [EscalationRuleResponse_recipient](./Models/EscalationRuleResponse_recipient.md)
 - [ExecuteCustomActionRequest](./Models/ExecuteCustomActionRequest.md)
 - [Filter](./Models/Filter.md)
 - [FilterDto](./Models/FilterDto.md)
 - [ForwardingLinks](./Models/ForwardingLinks.md)
 - [ForwardingPaginatedResponse](./Models/ForwardingPaginatedResponse.md)
 - [ForwardingResponder](./Models/ForwardingResponder.md)
 - [ForwardingRuleResponse](./Models/ForwardingRuleResponse.md)
 - [GetAlertNotesResponse](./Models/GetAlertNotesResponse.md)
 - [GetCustomUserRoleResponse](./Models/GetCustomUserRoleResponse.md)
 - [GetGlobalAlertPolicy](./Models/GetGlobalAlertPolicy.md)
 - [GetGlobalAlertPolicy_filter](./Models/GetGlobalAlertPolicy_filter.md)
 - [GetGlobalAlertPolicy_filter_conditions_inner](./Models/GetGlobalAlertPolicy_filter_conditions_inner.md)
 - [GetGlobalMaintenance](./Models/GetGlobalMaintenance.md)
 - [GetRequestStatusResponse](./Models/GetRequestStatusResponse.md)
 - [GetTeamMaintenance](./Models/GetTeamMaintenance.md)
 - [GetTeamMaintenance_rules_inner](./Models/GetTeamMaintenance_rules_inner.md)
 - [GlobalPolicyLinks](./Models/GlobalPolicyLinks.md)
 - [GlobalPolicyPaginatedResponse](./Models/GlobalPolicyPaginatedResponse.md)
 - [Heartbeat](./Models/Heartbeat.md)
 - [HeartbeatLinks](./Models/HeartbeatLinks.md)
 - [HeartbeatPaginatedResponse](./Models/HeartbeatPaginatedResponse.md)
 - [Integration](./Models/Integration.md)
 - [IntegrationAction](./Models/IntegrationAction.md)
 - [IntegrationActions](./Models/IntegrationActions.md)
 - [IntegrationCondition](./Models/IntegrationCondition.md)
 - [IntegrationConditionDto](./Models/IntegrationConditionDto.md)
 - [IntegrationDetail](./Models/IntegrationDetail.md)
 - [IntegrationFilter](./Models/IntegrationFilter.md)
 - [IntegrationResponse](./Models/IntegrationResponse.md)
 - [Integrations](./Models/Integrations.md)
 - [IntegrationsCondition](./Models/IntegrationsCondition.md)
 - [IntegrationsLinks](./Models/IntegrationsLinks.md)
 - [JecChannel](./Models/JecChannel.md)
 - [JecChannelList](./Models/JecChannelList.md)
 - [JecChannelWithApiKey](./Models/JecChannelWithApiKey.md)
 - [JecLinks](./Models/JecLinks.md)
 - [ListAlertResponse](./Models/ListAlertResponse.md)
 - [ListAlertResponseLink](./Models/ListAlertResponseLink.md)
 - [ListAuditLogResponse](./Models/ListAuditLogResponse.md)
 - [ListAuditLogResponseLink](./Models/ListAuditLogResponseLink.md)
 - [ListErrorResponse](./Models/ListErrorResponse.md)
 - [ListOverridesResponse](./Models/ListOverridesResponse.md)
 - [ListPlatformTeamResponse](./Models/ListPlatformTeamResponse.md)
 - [ListRotationsResponse](./Models/ListRotationsResponse.md)
 - [ListSchedulesResponse](./Models/ListSchedulesResponse.md)
 - [ListTeamRoleResponse_inner](./Models/ListTeamRoleResponse_inner.md)
 - [LogsErrorResponse](./Models/LogsErrorResponse.md)
 - [MaintenanceEntity](./Models/MaintenanceEntity.md)
 - [MaintenanceInterval](./Models/MaintenanceInterval.md)
 - [MaintenanceLinks](./Models/MaintenanceLinks.md)
 - [MaintenanceRule](./Models/MaintenanceRule.md)
 - [MaintenanceSource](./Models/MaintenanceSource.md)
 - [NextOnCallParticipants](./Models/NextOnCallParticipants.md)
 - [NextOnCallResponse](./Models/NextOnCallResponse.md)
 - [NextOnCallUsers](./Models/NextOnCallUsers.md)
 - [NoteRequest](./Models/NoteRequest.md)
 - [NotificationPolicyListResponse](./Models/NotificationPolicyListResponse.md)
 - [NotificationRuleRepeat](./Models/NotificationRuleRepeat.md)
 - [NotificationRuleRequest](./Models/NotificationRuleRequest.md)
 - [NotificationRuleRequest_criteria](./Models/NotificationRuleRequest_criteria.md)
 - [NotificationRuleRequest_timeRestriction](./Models/NotificationRuleRequest_timeRestriction.md)
 - [NotificationRuleResponse](./Models/NotificationRuleResponse.md)
 - [NotificationRulesCondition](./Models/NotificationRulesCondition.md)
 - [NotificationRulesContact](./Models/NotificationRulesContact.md)
 - [NotificationRulesCreateNotificationRuleStepRequest](./Models/NotificationRulesCreateNotificationRuleStepRequest.md)
 - [NotificationRulesDayTimeRestriction](./Models/NotificationRulesDayTimeRestriction.md)
 - [NotificationRulesLinks](./Models/NotificationRulesLinks.md)
 - [NotificationRulesMatchAllAnyConditionsFilter](./Models/NotificationRulesMatchAllAnyConditionsFilter.md)
 - [NotificationRulesMatchAllFilter](./Models/NotificationRulesMatchAllFilter.md)
 - [NotificationRulesNotificationRuleStep](./Models/NotificationRulesNotificationRuleStep.md)
 - [NotificationRulesPaginatedResponse](./Models/NotificationRulesPaginatedResponse.md)
 - [NotificationRulesStepContact](./Models/NotificationRulesStepContact.md)
 - [NotificationRulesStepCreateNotificationRuleStepRequest](./Models/NotificationRulesStepCreateNotificationRuleStepRequest.md)
 - [NotificationRulesStepLinks](./Models/NotificationRulesStepLinks.md)
 - [NotificationRulesStepNotificationRuleStep](./Models/NotificationRulesStepNotificationRuleStep.md)
 - [NotificationRulesStepPaginatedResponse](./Models/NotificationRulesStepPaginatedResponse.md)
 - [NotificationRulesTimeOfDayTimeRestrictionInterval](./Models/NotificationRulesTimeOfDayTimeRestrictionInterval.md)
 - [NotificationRulesWeekTimeRestriction](./Models/NotificationRulesWeekTimeRestriction.md)
 - [NotificationRulesWeekdayTimeRestrictionInterval](./Models/NotificationRulesWeekdayTimeRestrictionInterval.md)
 - [Notify](./Models/Notify.md)
 - [OnCallParticipant](./Models/OnCallParticipant.md)
 - [OnCallParticipants](./Models/OnCallParticipants.md)
 - [OnCallResponse](./Models/OnCallResponse.md)
 - [OnCallUsers](./Models/OnCallUsers.md)
 - [OperationsEnableSuccessResponse](./Models/OperationsEnableSuccessResponse.md)
 - [OpsEnableResponse](./Models/OpsEnableResponse.md)
 - [Override](./Models/Override.md)
 - [OverridePaginationLinks](./Models/OverridePaginationLinks.md)
 - [OverrideResponderInfo](./Models/OverrideResponderInfo.md)
 - [PaginatedResponseContactWithApplyOrderResponse](./Models/PaginatedResponseContactWithApplyOrderResponse.md)
 - [PaginatedResponseCustomUserRoleSummaryResponse](./Models/PaginatedResponseCustomUserRoleSummaryResponse.md)
 - [PlatformTeamDto](./Models/PlatformTeamDto.md)
 - [PolicyFilterDto](./Models/PolicyFilterDto.md)
 - [PolicyListResponse](./Models/PolicyListResponse.md)
 - [PolicyTimeRestrictionDto](./Models/PolicyTimeRestrictionDto.md)
 - [Priority](./Models/Priority.md)
 - [Recipient](./Models/Recipient.md)
 - [RequestStatus](./Models/RequestStatus.md)
 - [RequestStatusResponse](./Models/RequestStatusResponse.md)
 - [Responder](./Models/Responder.md)
 - [ResponderInfo](./Models/ResponderInfo.md)
 - [Rotation](./Models/Rotation.md)
 - [RotationPaginationLinks](./Models/RotationPaginationLinks.md)
 - [Rotation_timeRestriction](./Models/Rotation_timeRestriction.md)
 - [RoutingRuleChangeOrderRequest](./Models/RoutingRuleChangeOrderRequest.md)
 - [RoutingRuleResponse](./Models/RoutingRuleResponse.md)
 - [RoutingRulesCondition](./Models/RoutingRulesCondition.md)
 - [RoutingRulesDayTimeRestriction](./Models/RoutingRulesDayTimeRestriction.md)
 - [RoutingRulesLinks](./Models/RoutingRulesLinks.md)
 - [RoutingRulesMatchAllAnyConditionsFilter](./Models/RoutingRulesMatchAllAnyConditionsFilter.md)
 - [RoutingRulesMatchAllFilter](./Models/RoutingRulesMatchAllFilter.md)
 - [RoutingRulesPaginatedResponse](./Models/RoutingRulesPaginatedResponse.md)
 - [RoutingRulesTimeOfDayTimeRestrictionInterval](./Models/RoutingRulesTimeOfDayTimeRestrictionInterval.md)
 - [RoutingRulesWeekTimeRestriction](./Models/RoutingRulesWeekTimeRestriction.md)
 - [RoutingRulesWeekdayTimeRestrictionInterval](./Models/RoutingRulesWeekdayTimeRestrictionInterval.md)
 - [Schedule](./Models/Schedule.md)
 - [SchedulePaginationLinks](./Models/SchedulePaginationLinks.md)
 - [ScheduleTimelineResponse](./Models/ScheduleTimelineResponse.md)
 - [SchedulesErrorResponse](./Models/SchedulesErrorResponse.md)
 - [SendJecActionDto](./Models/SendJecActionDto.md)
 - [SimpleCreateData](./Models/SimpleCreateData.md)
 - [SimpleData](./Models/SimpleData.md)
 - [SimpleSuccessResponse](./Models/SimpleSuccessResponse.md)
 - [Status](./Models/Status.md)
 - [SuccessResponse](./Models/SuccessResponse.md)
 - [Sync](./Models/Sync.md)
 - [SyncAction](./Models/SyncAction.md)
 - [SyncActionGroup](./Models/SyncActionGroup.md)
 - [SyncActionGroupMetadataDto](./Models/SyncActionGroupMetadataDto.md)
 - [SyncActionMetadataDto](./Models/SyncActionMetadataDto.md)
 - [SyncActions](./Models/SyncActions.md)
 - [SyncLinks](./Models/SyncLinks.md)
 - [SyncMetadata](./Models/SyncMetadata.md)
 - [Syncs](./Models/Syncs.md)
 - [TeamAlertPolicyDto](./Models/TeamAlertPolicyDto.md)
 - [TeamAlertPolicyLinks](./Models/TeamAlertPolicyLinks.md)
 - [TeamAlertPolicyPaginatedResponse](./Models/TeamAlertPolicyPaginatedResponse.md)
 - [TeamNotificationPolicyDto](./Models/TeamNotificationPolicyDto.md)
 - [TeamNotificationPolicyDto_autoCloseAction](./Models/TeamNotificationPolicyDto_autoCloseAction.md)
 - [TeamNotificationPolicyDto_autoRestartAction](./Models/TeamNotificationPolicyDto_autoRestartAction.md)
 - [TeamNotificationPolicyDto_deduplicationAction](./Models/TeamNotificationPolicyDto_deduplicationAction.md)
 - [TeamNotificationPolicyDto_delayAction](./Models/TeamNotificationPolicyDto_delayAction.md)
 - [TeamNotificationPolicyDto_delayAction_delayTime](./Models/TeamNotificationPolicyDto_delayAction_delayTime.md)
 - [TeamNotificationPolicyLinks](./Models/TeamNotificationPolicyLinks.md)
 - [TeamNotificationPolicyPaginatedResponse](./Models/TeamNotificationPolicyPaginatedResponse.md)
 - [TeamRoleCreateRequest](./Models/TeamRoleCreateRequest.md)
 - [TeamRoleResponse](./Models/TeamRoleResponse.md)
 - [TeamRoleUpdateRequest](./Models/TeamRoleUpdateRequest.md)
 - [TeamRoleUpdateRequest_rights_inner](./Models/TeamRoleUpdateRequest_rights_inner.md)
 - [TimeOfDayTimeRestriction](./Models/TimeOfDayTimeRestriction.md)
 - [TimeOfDayTimeRestrictionRequest](./Models/TimeOfDayTimeRestrictionRequest.md)
 - [TimeOfDayTimeRestrictionSettings](./Models/TimeOfDayTimeRestrictionSettings.md)
 - [TimeOfDayTimeRestrictionSettingsRequest](./Models/TimeOfDayTimeRestrictionSettingsRequest.md)
 - [Timeline](./Models/Timeline.md)
 - [TimelinePeriod](./Models/TimelinePeriod.md)
 - [TimelineResponder](./Models/TimelineResponder.md)
 - [TimelineRotation](./Models/TimelineRotation.md)
 - [UnauthorizedErrorResponse](./Models/UnauthorizedErrorResponse.md)
 - [UpdateActionGroupDto](./Models/UpdateActionGroupDto.md)
 - [UpdateAlertDescriptionRequest](./Models/UpdateAlertDescriptionRequest.md)
 - [UpdateAlertMessageRequest](./Models/UpdateAlertMessageRequest.md)
 - [UpdateAlertPriorityRequest](./Models/UpdateAlertPriorityRequest.md)
 - [UpdateContactPayload](./Models/UpdateContactPayload.md)
 - [UpdateEscalationRequest](./Models/UpdateEscalationRequest.md)
 - [UpdateHeartbeatRequest](./Models/UpdateHeartbeatRequest.md)
 - [UpdateIntegrationActionOrderRequest](./Models/UpdateIntegrationActionOrderRequest.md)
 - [UpdateIntegrationActionRequest](./Models/UpdateIntegrationActionRequest.md)
 - [UpdateIntegrationRequest](./Models/UpdateIntegrationRequest.md)
 - [UpdateMaintenanceRequest](./Models/UpdateMaintenanceRequest.md)
 - [UpdateNotificationRuleStepRequest](./Models/UpdateNotificationRuleStepRequest.md)
 - [UpdateOverrideRequest](./Models/UpdateOverrideRequest.md)
 - [UpdateRotationRequest](./Models/UpdateRotationRequest.md)
 - [UpdateRoutingRuleRequest](./Models/UpdateRoutingRuleRequest.md)
 - [UpdateScheduleRequest](./Models/UpdateScheduleRequest.md)
 - [UpdateSyncActionGroupOrderRequest](./Models/UpdateSyncActionGroupOrderRequest.md)
 - [UpdateSyncActionOrderRequest](./Models/UpdateSyncActionOrderRequest.md)
 - [UpdateSyncActionRequest](./Models/UpdateSyncActionRequest.md)
 - [UpdateSyncDto](./Models/UpdateSyncDto.md)
 - [UpdatedActionDto](./Models/UpdatedActionDto.md)
 - [VisibleTo](./Models/VisibleTo.md)
 - [WeekdayTimeRestriction](./Models/WeekdayTimeRestriction.md)
 - [WeekdayTimeRestrictionRequest](./Models/WeekdayTimeRestrictionRequest.md)
 - [WeekdayTimeRestrictionSettings](./Models/WeekdayTimeRestrictionSettings.md)
 - [WeekdayTimeRestrictionSettingsRequest](./Models/WeekdayTimeRestrictionSettingsRequest.md)
 - [listGlobalMaintenances_200_response](./Models/listGlobalMaintenances_200_response.md)
 - [listTeamMaintenances_200_response](./Models/listTeamMaintenances_200_response.md)
 - [listTeamPolicies_200_response](./Models/listTeamPolicies_200_response.md)
 - [putTeamPolicies_request](./Models/putTeamPolicies_request.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="basicAuth"></a>
### basicAuth

- **Type**: HTTP basic authentication

<a name="OAuth2"></a>
### OAuth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://auth.stg.atlassian.com/authorize
- **Scopes**:
  - read:ops-alert:jira-service-management: Read Jira Service Management operations alert data
  - write:ops-alert:jira-service-management: Create and manage Jira Service Management operations alerts
  - delete:ops-alert:jira-service-management: Delete Jira Service Management operations alert
  - read:ops-config:jira-service-management: Read Jira Service Management operations configuration
  - write:ops-config:jira-service-management: Create and manage Jira Service Management operations configuration
  - delete:ops-config:jira-service-management: Delete Jira Service Management operations configuration

