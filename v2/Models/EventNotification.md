# EventNotification
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **emailAddress** | **String** | The email address. | [optional] [default to null] |
| **expand** | **String** | Expand options that include additional event notification details in the response. | [optional] [default to null] |
| **field** | [**FieldDetails**](FieldDetails.md) | The custom user or group field. | [optional] [default to null] |
| **group** | [**GroupName**](GroupName.md) | The specified group. | [optional] [default to null] |
| **id** | **Long** | The ID of the notification. | [optional] [default to null] |
| **notificationType** | **String** | Identifies the recipients of the notification. | [optional] [default to null] |
| **parameter** | **String** | As a group&#39;s name can change, use of &#x60;recipient&#x60; is recommended. The identifier associated with the &#x60;notificationType&#x60; value that defines the receiver of the notification, where the receiver isn&#39;t implied by &#x60;notificationType&#x60; value. So, when &#x60;notificationType&#x60; is:   *  &#x60;User&#x60; The &#x60;parameter&#x60; is the user account ID.  *  &#x60;Group&#x60; The &#x60;parameter&#x60; is the group name.  *  &#x60;ProjectRole&#x60; The &#x60;parameter&#x60; is the project role ID.  *  &#x60;UserCustomField&#x60; The &#x60;parameter&#x60; is the ID of the custom field.  *  &#x60;GroupCustomField&#x60; The &#x60;parameter&#x60; is the ID of the custom field. | [optional] [default to null] |
| **projectRole** | [**ProjectRole**](ProjectRole.md) | The specified project role. | [optional] [default to null] |
| **recipient** | **String** | The identifier associated with the &#x60;notificationType&#x60; value that defines the receiver of the notification, where the receiver isn&#39;t implied by the &#x60;notificationType&#x60; value. So, when &#x60;notificationType&#x60; is:   *  &#x60;User&#x60;, &#x60;recipient&#x60; is the user account ID.  *  &#x60;Group&#x60;, &#x60;recipient&#x60; is the group ID.  *  &#x60;ProjectRole&#x60;, &#x60;recipient&#x60; is the project role ID.  *  &#x60;UserCustomField&#x60;, &#x60;recipient&#x60; is the ID of the custom field.  *  &#x60;GroupCustomField&#x60;, &#x60;recipient&#x60; is the ID of the custom field. | [optional] [default to null] |
| **user** | [**UserDetails**](UserDetails.md) | The specified user. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

