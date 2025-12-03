# FieldReferenceData
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **auto** | **String** | Whether the field provide auto-complete suggestions. | [optional] [default to null] |
| **cfid** | **String** | If the item is a custom field, the ID of the custom field. | [optional] [default to null] |
| **deprecated** | **String** | Whether this field has been deprecated. | [optional] [default to null] |
| **deprecatedSearcherKey** | **String** | The searcher key of the field, only passed when the field is deprecated. | [optional] [default to null] |
| **displayName** | **String** | The display name contains the following:   *  for system fields, the field name. For example, &#x60;Summary&#x60;.  *  for collapsed custom fields, the field name followed by a hyphen and then the field name and field type. For example, &#x60;Component - Component[Dropdown]&#x60;.  *  for other custom fields, the field name followed by a hyphen and then the custom field ID. For example, &#x60;Component - cf[10061]&#x60;. | [optional] [default to null] |
| **operators** | **List** | The valid search operators for the field. | [optional] [default to null] |
| **orderable** | **String** | Whether the field can be used in a query&#39;s &#x60;ORDER BY&#x60; clause. | [optional] [default to null] |
| **searchable** | **String** | Whether the content of this field can be searched. | [optional] [default to null] |
| **types** | **List** | The data types of items in the field. | [optional] [default to null] |
| **value** | **String** | The field identifier. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

