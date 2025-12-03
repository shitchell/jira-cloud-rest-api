# ServerInformation
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **baseUrl** | **String** | The base URL of the Jira instance. | [optional] [default to null] |
| **buildDate** | **Date** | The timestamp when the Jira version was built. | [optional] [default to null] |
| **buildNumber** | **Integer** | The build number of the Jira version. | [optional] [default to null] |
| **deploymentType** | **String** | The type of server deployment. This is always returned as *Cloud*. | [optional] [default to null] |
| **displayUrl** | **String** | The display URL of the Jira instance. | [optional] [default to null] |
| **displayUrlConfluence** | **String** | The display URL of Confluence. | [optional] [default to null] |
| **displayUrlServicedeskHelpCenter** | **String** | The display URL of the Servicedesk Help Center. | [optional] [default to null] |
| **healthChecks** | [**List**](HealthCheckResult.md) | Jira instance health check results. Deprecated and no longer returned. | [optional] [default to null] |
| **scmInfo** | **String** | The unique identifier of the Jira version. | [optional] [default to null] |
| **serverTime** | **Date** | The time in Jira when this request was responded to. | [optional] [default to null] |
| **serverTimeZone** | **String** | The default timezone of the Jira server. In a format known as Olson Time Zones, IANA Time Zones or TZ Database Time Zones. | [optional] [default to null] |
| **serverTitle** | **String** | The name of the Jira instance. | [optional] [default to null] |
| **version** | **String** | The version of Jira. | [optional] [default to null] |
| **versionNumbers** | **List** | The major, minor, and revision version numbers of the Jira version. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

