# RedactionPosition
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **adfPointer** | **String** | The ADF pointer indicating the position of the text to be redacted. This is only required when redacting from rich text(ADF) fields. For plain text fields, this field can be omitted. | [optional] [default to null] |
| **expectedText** | **String** | The text which will be redacted, encoded using SHA256 hash and Base64 digest | [default to null] |
| **from** | **Integer** | The start index(inclusive) for the redaction in specified content | [default to null] |
| **to** | **Integer** | The ending index(exclusive) for the redaction in specified content | [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

