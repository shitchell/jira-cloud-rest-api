# JQLApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getAutoComplete**](JQLApi.md#getAutoComplete) | **GET** /rest/api/2/jql/autocompletedata | Get field reference data (GET) |
| [**getAutoCompletePost**](JQLApi.md#getAutoCompletePost) | **POST** /rest/api/2/jql/autocompletedata | Get field reference data (POST) |
| [**getFieldAutoCompleteForQueryString**](JQLApi.md#getFieldAutoCompleteForQueryString) | **GET** /rest/api/2/jql/autocompletedata/suggestions | Get field auto complete suggestions |
| [**migrateQueries**](JQLApi.md#migrateQueries) | **POST** /rest/api/2/jql/pdcleaner | Convert user identifiers to account IDs in JQL queries |
| [**parseJqlQueries**](JQLApi.md#parseJqlQueries) | **POST** /rest/api/2/jql/parse | Parse JQL query |
| [**sanitiseJqlQueries**](JQLApi.md#sanitiseJqlQueries) | **POST** /rest/api/2/jql/sanitize | Sanitize JQL queries |


<a name="getAutoComplete"></a>
# **getAutoComplete**
> JQLReferenceData getAutoComplete()

Get field reference data (GET)

    Returns reference data for JQL searches. This is a downloadable version of the documentation provided in [Advanced searching - fields reference](https://confluence.atlassian.com/x/gwORLQ) and [Advanced searching - functions reference](https://confluence.atlassian.com/x/hgORLQ), along with a list of JQL-reserved words. Use this information to assist with the programmatic creation of JQL queries or the validation of queries built in a custom query builder.  To filter visible field details by project or collapse non-unique fields by field type then [Get field reference data (POST)](#api-rest-api-2-jql-autocompletedata-post) can be used.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters
This endpoint does not need any parameter.

### Return type

[**JQLReferenceData**](../Models/JQLReferenceData.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAutoCompletePost"></a>
# **getAutoCompletePost**
> JQLReferenceData getAutoCompletePost(SearchAutoCompleteFilter)

Get field reference data (POST)

    Returns reference data for JQL searches. This is a downloadable version of the documentation provided in [Advanced searching - fields reference](https://confluence.atlassian.com/x/gwORLQ) and [Advanced searching - functions reference](https://confluence.atlassian.com/x/hgORLQ), along with a list of JQL-reserved words. Use this information to assist with the programmatic creation of JQL queries or the validation of queries built in a custom query builder.  This operation can filter the custom fields returned by project. Invalid project IDs in &#x60;projectIds&#x60; are ignored. System fields are always returned.  It can also return the collapsed field for custom fields. Collapsed fields enable searches to be performed across all fields with the same name and of the same field type. For example, the collapsed field &#x60;Component - Component[Dropdown]&#x60; enables dropdown fields &#x60;Component - cf[10061]&#x60; and &#x60;Component - cf[10062]&#x60; to be searched simultaneously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **SearchAutoCompleteFilter** | [**SearchAutoCompleteFilter**](../Models/SearchAutoCompleteFilter.md)|  | |

### Return type

[**JQLReferenceData**](../Models/JQLReferenceData.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getFieldAutoCompleteForQueryString"></a>
# **getFieldAutoCompleteForQueryString**
> AutoCompleteSuggestions getFieldAutoCompleteForQueryString(fieldName, fieldValue, predicateName, predicateValue)

Get field auto complete suggestions

    Returns the JQL search auto complete suggestions for a field.  Suggestions can be obtained by providing:   *  &#x60;fieldName&#x60; to get a list of all values for the field.  *  &#x60;fieldName&#x60; and &#x60;fieldValue&#x60; to get a list of values containing the text in &#x60;fieldValue&#x60;.  *  &#x60;fieldName&#x60; and &#x60;predicateName&#x60; to get a list of all predicate values for the field.  *  &#x60;fieldName&#x60;, &#x60;predicateName&#x60;, and &#x60;predicateValue&#x60; to get a list of predicate values containing the text in &#x60;predicateValue&#x60;.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **fieldName** | **String**| The name of the field. | [optional] [default to null] |
| **fieldValue** | **String**| The partial field item name entered by the user. | [optional] [default to null] |
| **predicateName** | **String**| The name of the [ CHANGED operator predicate](https://confluence.atlassian.com/x/hQORLQ#Advancedsearching-operatorsreference-CHANGEDCHANGED) for which the suggestions are generated. The valid predicate operators are *by*, *from*, and *to*. | [optional] [default to null] |
| **predicateValue** | **String**| The partial predicate item name entered by the user. | [optional] [default to null] |

### Return type

[**AutoCompleteSuggestions**](../Models/AutoCompleteSuggestions.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="migrateQueries"></a>
# **migrateQueries**
> ConvertedJQLQueries migrateQueries(JQLPersonalDataMigrationRequest)

Convert user identifiers to account IDs in JQL queries

    Converts one or more JQL queries with user identifiers (username or user key) to equivalent JQL queries with account IDs.  You may wish to use this operation if your system stores JQL queries and you want to make them GDPR-compliant. For more information about GDPR-related changes, see the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/).  **[Permissions](#permissions) required:** Permission to access Jira.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **JQLPersonalDataMigrationRequest** | [**JQLPersonalDataMigrationRequest**](../Models/JQLPersonalDataMigrationRequest.md)|  | |

### Return type

[**ConvertedJQLQueries**](../Models/ConvertedJQLQueries.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="parseJqlQueries"></a>
# **parseJqlQueries**
> ParsedJqlQueries parseJqlQueries(validation, JqlQueriesToParse)

Parse JQL query

    Parses and validates JQL queries.  Validation is performed in context of the current user.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **validation** | **String**| How to validate the JQL query and treat the validation results. Validation options include:   *  &#x60;strict&#x60; Returns all errors. If validation fails, the query structure is not returned.  *  &#x60;warn&#x60; Returns all errors. If validation fails but the JQL query is correctly formed, the query structure is returned.  *  &#x60;none&#x60; No validation is performed. If JQL query is correctly formed, the query structure is returned. | [default to strict] [enum: strict, warn, none] |
| **JqlQueriesToParse** | [**JqlQueriesToParse**](../Models/JqlQueriesToParse.md)|  | |

### Return type

[**ParsedJqlQueries**](../Models/ParsedJqlQueries.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="sanitiseJqlQueries"></a>
# **sanitiseJqlQueries**
> SanitizedJqlQueries sanitiseJqlQueries(JqlQueriesToSanitize)

Sanitize JQL queries

    Sanitizes one or more JQL queries by converting readable details into IDs where a user doesn&#39;t have permission to view the entity.  For example, if the query contains the clause *project &#x3D; &#39;Secret project&#39;*, and a user does not have browse permission for the project \&quot;Secret project\&quot;, the sanitized query replaces the clause with *project &#x3D; 12345\&quot;* (where 12345 is the ID of the project). If a user has the required permission, the clause is not sanitized. If the account ID is null, sanitizing is performed for an anonymous user.  Note that sanitization doesn&#39;t make the queries GDPR-compliant, because it doesn&#39;t remove user identifiers (username or user key). If you need to make queries GDPR-compliant, use [Convert user identifiers to account IDs in JQL queries](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-jql/#api-rest-api-3-jql-sanitize-post).  Before sanitization each JQL query is parsed. The queries are returned in the same order that they were passed.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **JqlQueriesToSanitize** | [**JqlQueriesToSanitize**](../Models/JqlQueriesToSanitize.md)|  | |

### Return type

[**SanitizedJqlQueries**](../Models/SanitizedJqlQueries.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

