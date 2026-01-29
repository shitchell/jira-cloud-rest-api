# AlertsApi

All URIs are relative to *https://api.atlassian.com/jsm/ops/api*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**ackAlert**](AlertsApi.md#ackAlert) | **POST** /v1/alerts/{id}/acknowledge | Acknowledge alert |
| [**addAlertNote**](AlertsApi.md#addAlertNote) | **POST** /v1/alerts/{id}/notes | Add alert note |
| [**addExtraPropertyToAlert**](AlertsApi.md#addExtraPropertyToAlert) | **POST** /v1/alerts/{id}/extra-properties | Add extra properties to alert |
| [**addResponder**](AlertsApi.md#addResponder) | **POST** /v1/alerts/{id}/responders | Add responder to alert |
| [**addTags**](AlertsApi.md#addTags) | **POST** /v1/alerts/{id}/tags | Add tags to alert |
| [**assignAlert**](AlertsApi.md#assignAlert) | **POST** /v1/alerts/{id}/assign | Assign alert |
| [**closeAlert**](AlertsApi.md#closeAlert) | **POST** /v1/alerts/{id}/close | Close alert |
| [**createAlert**](AlertsApi.md#createAlert) | **POST** /v1/alerts | Create alert |
| [**deleteAlert**](AlertsApi.md#deleteAlert) | **DELETE** /v1/alerts/{id} | Delete alert |
| [**deleteAlertNote**](AlertsApi.md#deleteAlertNote) | **DELETE** /v1/alerts/{alertId}/notes/{id} | Delete alert note |
| [**deleteExtraPropertyFromAlert**](AlertsApi.md#deleteExtraPropertyFromAlert) | **DELETE** /v1/alerts/{id}/extra-properties | Delete extra properties from alert |
| [**deleteTags**](AlertsApi.md#deleteTags) | **DELETE** /v1/alerts/{id}/tags | Delete tags from alert |
| [**escalateAlert**](AlertsApi.md#escalateAlert) | **POST** /v1/alerts/{id}/escalate | Escalate alert to next |
| [**executeAlertAction**](AlertsApi.md#executeAlertAction) | **POST** /v1/alerts/{id}/action | Execute custom action |
| [**getAlertLogs**](AlertsApi.md#getAlertLogs) | **GET** /v1/alerts/{id}/logs | List alert logs |
| [**getAlertNotes**](AlertsApi.md#getAlertNotes) | **GET** /v1/alerts/{id}/notes | List alert notes |
| [**getAlertWithAlias**](AlertsApi.md#getAlertWithAlias) | **GET** /v1/alerts/alias | Get alert by alias |
| [**getAlertWithId**](AlertsApi.md#getAlertWithId) | **GET** /v1/alerts/{id} | Get alert |
| [**getRequestStatus**](AlertsApi.md#getRequestStatus) | **GET** /v1/alerts/requests/{id} | Get request status |
| [**listAlerts**](AlertsApi.md#listAlerts) | **GET** /v1/alerts | List alerts |
| [**snoozeAlert**](AlertsApi.md#snoozeAlert) | **POST** /v1/alerts/{id}/snooze | Snooze alert |
| [**unackAlert**](AlertsApi.md#unackAlert) | **POST** /v1/alerts/{id}/unacknowledge | Unacknowledge alert |
| [**updateAlertDescription**](AlertsApi.md#updateAlertDescription) | **PATCH** /v1/alerts/{id}/description | Update alert description |
| [**updateAlertMessage**](AlertsApi.md#updateAlertMessage) | **PATCH** /v1/alerts/{id}/message | Update alert message |
| [**updateAlertNote**](AlertsApi.md#updateAlertNote) | **PATCH** /v1/alerts/{alertId}/notes/{id} | Update alert note |
| [**updateAlertPriority**](AlertsApi.md#updateAlertPriority) | **PATCH** /v1/alerts/{id}/priority | Update alert priority |


<a name="ackAlert"></a>
# **ackAlert**
> SuccessResponse ackAlert(id)

Acknowledge alert

    This endpoint is used to acknowledge an existing alert. Acknowledging an alert indicates that it has been received and is being acted upon, preventing duplicate efforts and coordinating response actions.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="addAlertNote"></a>
# **addAlertNote**
> AlertNote addAlertNote(id, NoteRequest)

Add alert note

    This endpoint is used to add a note to an existing alert.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **NoteRequest** | [**NoteRequest**](../Models/NoteRequest.md)|  | |

### Return type

[**AlertNote**](../Models/AlertNote.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="addExtraPropertyToAlert"></a>
# **addExtraPropertyToAlert**
> SuccessResponse addExtraPropertyToAlert(id, AddExtraPropertiesRequest)

Add extra properties to alert

    This endpoint is used to enrich existing alerts with additional information to provide more detailed context.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **AddExtraPropertiesRequest** | [**AddExtraPropertiesRequest**](../Models/AddExtraPropertiesRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="addResponder"></a>
# **addResponder**
> SuccessResponse addResponder(id, AddResponderRequest)

Add responder to alert

    This endpoint is used to assign a responder to an existing alert. The responder is the individual or team responsible for addressing the alert. This operation streamlines the alert management process by ensuring that alerts are directed to the correct parties for timely resolution.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **AddResponderRequest** | [**AddResponderRequest**](../Models/AddResponderRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="addTags"></a>
# **addTags**
> SuccessResponse addTags(id, AlertTagsRequest)

Add tags to alert

    This endpoint is used to add tags to an existing alert. Tags provide a means to categorize and manage alerts more effectively, enabling quick identification and sorting of related alerts based on the assigned tags.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **AlertTagsRequest** | [**AlertTagsRequest**](../Models/AlertTagsRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="assignAlert"></a>
# **assignAlert**
> SuccessResponse assignAlert(id, AssignAlertRequest)

Assign alert

    This endpoint is used to assign an existing alert to a user or a group. Assigning an alert ensures that responsibility for addressing the alert is clearly established, promoting efficient alert management and quicker resolution times. It is a crucial operation for coordinating incident response efforts effectively.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **AssignAlertRequest** | [**AssignAlertRequest**](../Models/AssignAlertRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="closeAlert"></a>
# **closeAlert**
> SuccessResponse closeAlert(id)

Close alert

    This endpoint is used to close an existing alert. Closing an alert indicates that the issue has been resolved and no further action is necessary. This operation is essential for maintaining an accurate overview of the operational status and for ensuring that only active, unresolved issues remain open.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="createAlert"></a>
# **createAlert**
> SuccessResponse createAlert(CreateAlertRequest)

Create alert

    The endpoint allows users to programmatically generate alerts with customized parameters. It integrates with existing systems to transform raw data into actionable alerts, ensuring timely notifications for incident management.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreateAlertRequest** | [**CreateAlertRequest**](../Models/CreateAlertRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteAlert"></a>
# **deleteAlert**
> SuccessResponse deleteAlert(id)

Delete alert

    This endpoint is utilized to delete alerts, along with the unique identifier of the alert.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteAlertNote"></a>
# **deleteAlertNote**
> deleteAlertNote(alertId, id)

Delete alert note

    This endpoint is used to delete a note from an existing alert.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **alertId** | **String**| Identifier of the alert. | [default to null] |
| **id** | **String**| Identifier of the note. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteExtraPropertyFromAlert"></a>
# **deleteExtraPropertyFromAlert**
> SuccessResponse deleteExtraPropertyFromAlert(alertId, DeleteExtraPropertiesRequest)

Delete extra properties from alert

    This endpoint is used to delete the multiple extra properties.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **alertId** | **String**| Identifier of the alert. | [default to null] |
| **DeleteExtraPropertiesRequest** | [**DeleteExtraPropertiesRequest**](../Models/DeleteExtraPropertiesRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteTags"></a>
# **deleteTags**
> SuccessResponse deleteTags(alertId, AlertTagsRequest)

Delete tags from alert

    This endpoint is used to remove tags from an existing alert. This operation allows for the modification of alert categorization and can aid in the management process by enabling alerts to be unlinked from certain categories or groups, as represented by their tags.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **alertId** | **String**| Identifier of the alert. | [default to null] |
| **AlertTagsRequest** | [**AlertTagsRequest**](../Models/AlertTagsRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="escalateAlert"></a>
# **escalateAlert**
> SuccessResponse escalateAlert(id, EscalateToNextRequest)

Escalate alert to next

    This endpoint is used to escalate an existing alert. Escalation triggers the defined escalation policies which could involve notifying additional users or teams, or increasing the frequency of notifications for the alert. This operation is particularly useful in situations where an alert requires urgent attention or has not been addressed within a certain timeframe according to the pre-set escalation paths.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **EscalateToNextRequest** | [**EscalateToNextRequest**](../Models/EscalateToNextRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="executeAlertAction"></a>
# **executeAlertAction**
> SuccessResponse executeAlertAction(id, ExecuteCustomActionRequest)

Execute custom action

    This endpoint is used to execute custom actions on an existing alert. Custom actions allow for more flexible and specific responses to alerts, including integrations with external systems or triggering complex workflows. This operation is a powerful tool for extending the capabilities of the alert management process beyond predefined actions.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |
| **ExecuteCustomActionRequest** | [**ExecuteCustomActionRequest**](../Models/ExecuteCustomActionRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getAlertLogs"></a>
# **getAlertLogs**
> AlertLogsResponse getAlertLogs(id, after, size)

List alert logs

    This endpoint is used to retrieve a paginated list of alert logs which provides users to obtain a comprehensive record of alert activities. This includes alert creation, acknowledgment, assignment, and closure details. This endpoint is crucial for audit purposes, incident reviews, and enhancing the overall incident management process by providing complete visibility into alert history.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **after** | **String**| This parameter is used in pagination for the alert logs retrieved by the system. It accepts a string key of the last record from the previous page. The system will return the next page of logs that come after this specified key. This is useful for fetching subsequent segments of data when there are more logs than the limit specified. | [optional] [default to null] |
| **size** | **Integer**| This parameter is used to limit the number of alert logs returned by the system. It accepts an integer that specifies the maximum number of logs to be retrieved. | [optional] [default to 20] |

### Return type

[**AlertLogsResponse**](../Models/AlertLogsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAlertNotes"></a>
# **getAlertNotes**
> GetAlertNotesResponse getAlertNotes(id, after, size)

List alert notes

    This endpoint is used to retrieve a list of notes for a specified alert. Notes provide additional information or context about an alert, helping to enhance the understanding and management of alerts.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **after** | **String**| This parameter is used in pagination for the alert notes. It accepts a string key of the last record from the previous page. The system will return the next page of notes that come after this specified key. This is useful for fetching subsequent segments of data when there are more notes than the size specified. | [optional] [default to null] |
| **size** | **Integer**| This parameter is used to limit the number of alert notes returned by the system. It accepts an integer that specifies the maximum number of notes to be retrieved. | [optional] [default to 20] |

### Return type

[**GetAlertNotesResponse**](../Models/GetAlertNotesResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAlertWithAlias"></a>
# **getAlertWithAlias**
> AlertResponse getAlertWithAlias(alias)

Get alert by alias

    This endpoint provides users the ability to retrieve comprehensive details of a specific alert using its unique alias as a query parameter.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **alias** | **String**| Alias of the requested alert. | [default to null] |

### Return type

[**AlertResponse**](../Models/AlertResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAlertWithId"></a>
# **getAlertWithId**
> AlertResponse getAlertWithId(id)

Get alert

    This endpoint provides users the ability to retrieve comprehensive details of a specific alert using its unique id.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |

### Return type

[**AlertResponse**](../Models/AlertResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getRequestStatus"></a>
# **getRequestStatus**
> GetRequestStatusResponse getRequestStatus(id)

Get request status

    Alert creation, deletion, and action requests are processed asynchronously to provide higher availability and scalability. This endpoint is used to track the status and alert details (if any) of the request whose identifier is given.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the questioned request. Please note that ID of the request was provided within response. | [default to null] |

### Return type

[**GetRequestStatusResponse**](../Models/GetRequestStatusResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listAlerts"></a>
# **listAlerts**
> ListAlertResponse listAlerts(size, sort, offset, order, query, from, to)

List alerts

    This endpoint is designed to provide a comprehensive view of all alerts in your system. This API supports pagination and filtering with allowing you to customize the view based on your specific needs. More than 20000 alerts cannot be retrieved. Sum of offset and size should be lower than 20K.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **size** | **Integer**| Maximum number of items to provide in the result. | [optional] [default to 20] |
| **sort** | **String**| Name of the field that result set will be sorted by. | [optional] [default to insertedAt] [enum: createdAt, insertedAt, lastOccurredAt, priority] |
| **offset** | **Integer**| The offset parameter controls the starting point within the collection of resource results. | [optional] [default to 0] |
| **order** | **String**| Sorting order of the result set. | [optional] [default to desc] [enum: asc, desc] |
| **query** | **String**| This parameter is used to filter the alerts based on specified criteria. It accepts a string value that represents the search query. This parameter provides a powerful way to retrieve alerts that meet certain conditions or contain specific information. You can refer &lt;a target&#x3D;\&quot;_self\&quot; href&#x3D;\&quot;https://operations-help.atlassian.net/wiki/spaces/OPSHELP/pages/8028374/Search+syntax+for+alerts\&quot;&gt;Alerts Search Query Help&lt;/a&gt; for further information about search queries. | [optional] [default to null] |
| **from** | **Integer**| The starting date-time to consider while filtering the alerts. It helps in narrowing down the list of alerts to a specific time frame. | [optional] [default to null] |
| **to** | **Integer**| The ending date-time to consider while filtering the alerts. Used in conjunction with &#39;from&#39;, it defines the specific time window to focus on for the alert listing. | [optional] [default to null] |

### Return type

[**ListAlertResponse**](../Models/ListAlertResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="snoozeAlert"></a>
# **snoozeAlert**
> SuccessResponse snoozeAlert(id, AlertSnoozeRequest)

Snooze alert

    This endpoint is used to snooze an existing alert. The snooze operation temporarily silences the alert, preventing it from triggering notifications for a specified period. This is particularly useful for managing alerts that require attention at a later time or to reduce noise from non-critical alerts.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **AlertSnoozeRequest** | [**AlertSnoozeRequest**](../Models/AlertSnoozeRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="unackAlert"></a>
# **unackAlert**
> SuccessResponse unackAlert(id)

Unacknowledge alert

    This endpoint is used to set the &#39;acknowledged&#39; property of an existing alert as &#39;false&#39;, effectively marking it&#39;s status as &#39;open&#39;. This allows for better tracking and management of alerts by indicating that an alert has not yet been acknowledged or addressed.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateAlertDescription"></a>
# **updateAlertDescription**
> SuccessResponse updateAlertDescription(id, UpdateAlertDescriptionRequest)

Update alert description

    This endpoint is used to update the description of an existing alert. This endpoint plays a crucial role in ensuring that team members have the most current details for incident response.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **UpdateAlertDescriptionRequest** | [**UpdateAlertDescriptionRequest**](../Models/UpdateAlertDescriptionRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateAlertMessage"></a>
# **updateAlertMessage**
> SuccessResponse updateAlertMessage(id, UpdateAlertMessageRequest)

Update alert message

    This endpoint is used to update the message of an existing alert. This endpoint plays a crucial role in ensuring that alert messages remain accurate and up-to-date, aiding in the effective management and resolution of incidents.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **UpdateAlertMessageRequest** | [**UpdateAlertMessageRequest**](../Models/UpdateAlertMessageRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateAlertNote"></a>
# **updateAlertNote**
> AlertNote updateAlertNote(alertId, id, NoteRequest)

Update alert note

    This endpoint is used to update a note associated with a specific alert.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **alertId** | **String**| Identifier of the alert. | [default to null] |
| **id** | **String**| Identifier of the note. | [default to null] |
| **NoteRequest** | [**NoteRequest**](../Models/NoteRequest.md)|  | |

### Return type

[**AlertNote**](../Models/AlertNote.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateAlertPriority"></a>
# **updateAlertPriority**
> SuccessResponse updateAlertPriority(id, UpdateAlertPriorityRequest)

Update alert priority

    This endpoint is used to modify the priority level of an existing alert. This endpoint allows for dynamic control over alert urgency. This aids in effective incident management by ensuring the most critical issues are addressed first.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| Identifier of the alert. | [default to null] |
| **UpdateAlertPriorityRequest** | [**UpdateAlertPriorityRequest**](../Models/UpdateAlertPriorityRequest.md)|  | |

### Return type

[**SuccessResponse**](../Models/SuccessResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

