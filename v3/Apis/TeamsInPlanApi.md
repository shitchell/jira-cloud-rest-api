# TeamsInPlanApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addAtlassianTeam**](TeamsInPlanApi.md#addAtlassianTeam) | **POST** /rest/api/3/plans/plan/{planId}/team/atlassian | Add Atlassian team to plan |
| [**createPlanOnlyTeam**](TeamsInPlanApi.md#createPlanOnlyTeam) | **POST** /rest/api/3/plans/plan/{planId}/team/planonly | Create plan-only team |
| [**deletePlanOnlyTeam**](TeamsInPlanApi.md#deletePlanOnlyTeam) | **DELETE** /rest/api/3/plans/plan/{planId}/team/planonly/{planOnlyTeamId} | Delete plan-only team |
| [**getAtlassianTeam**](TeamsInPlanApi.md#getAtlassianTeam) | **GET** /rest/api/3/plans/plan/{planId}/team/atlassian/{atlassianTeamId} | Get Atlassian team in plan |
| [**getPlanOnlyTeam**](TeamsInPlanApi.md#getPlanOnlyTeam) | **GET** /rest/api/3/plans/plan/{planId}/team/planonly/{planOnlyTeamId} | Get plan-only team |
| [**getTeams**](TeamsInPlanApi.md#getTeams) | **GET** /rest/api/3/plans/plan/{planId}/team | Get teams in plan paginated |
| [**removeAtlassianTeam**](TeamsInPlanApi.md#removeAtlassianTeam) | **DELETE** /rest/api/3/plans/plan/{planId}/team/atlassian/{atlassianTeamId} | Remove Atlassian team from plan |
| [**updateAtlassianTeam**](TeamsInPlanApi.md#updateAtlassianTeam) | **PUT** /rest/api/3/plans/plan/{planId}/team/atlassian/{atlassianTeamId} | Update Atlassian team in plan |
| [**updatePlanOnlyTeam**](TeamsInPlanApi.md#updatePlanOnlyTeam) | **PUT** /rest/api/3/plans/plan/{planId}/team/planonly/{planOnlyTeamId} | Update plan-only team |


<a name="addAtlassianTeam"></a>
# **addAtlassianTeam**
> oas_any_type_not_mapped addAtlassianTeam(planId, AddAtlassianTeamRequest)

Add Atlassian team to plan

    Adds an existing Atlassian team to a plan and configures their plannning settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **AddAtlassianTeamRequest** | [**AddAtlassianTeamRequest**](../Models/AddAtlassianTeamRequest.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createPlanOnlyTeam"></a>
# **createPlanOnlyTeam**
> Long createPlanOnlyTeam(planId, CreatePlanOnlyTeamRequest)

Create plan-only team

    Creates a plan-only team and configures their planning settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **CreatePlanOnlyTeamRequest** | [**CreatePlanOnlyTeamRequest**](../Models/CreatePlanOnlyTeamRequest.md)|  | |

### Return type

**Long**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deletePlanOnlyTeam"></a>
# **deletePlanOnlyTeam**
> oas_any_type_not_mapped deletePlanOnlyTeam(planId, planOnlyTeamId)

Delete plan-only team

    Deletes a plan-only team and their planning settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **planOnlyTeamId** | **Long**| The ID of the plan-only team. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAtlassianTeam"></a>
# **getAtlassianTeam**
> GetAtlassianTeamResponse getAtlassianTeam(planId, atlassianTeamId)

Get Atlassian team in plan

    Returns planning settings for an Atlassian team in a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **atlassianTeamId** | **String**| The ID of the Atlassian team. | [default to null] |

### Return type

[**GetAtlassianTeamResponse**](../Models/GetAtlassianTeamResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPlanOnlyTeam"></a>
# **getPlanOnlyTeam**
> GetPlanOnlyTeamResponse getPlanOnlyTeam(planId, planOnlyTeamId)

Get plan-only team

    Returns planning settings for a plan-only team.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **planOnlyTeamId** | **Long**| The ID of the plan-only team. | [default to null] |

### Return type

[**GetPlanOnlyTeamResponse**](../Models/GetPlanOnlyTeamResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getTeams"></a>
# **getTeams**
> PageWithCursorGetTeamResponseForPage getTeams(planId, cursor, maxResults)

Get teams in plan paginated

    Returns a [paginated](#pagination) list of plan-only and Atlassian teams in a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **cursor** | **String**| The cursor to start from. If not provided, the first page will be returned. | [optional] [default to ] |
| **maxResults** | **Integer**| The maximum number of plan teams to return per page. The maximum value is 50. The default value is 50. | [optional] [default to 50] |

### Return type

[**PageWithCursorGetTeamResponseForPage**](../Models/PageWithCursorGetTeamResponseForPage.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeAtlassianTeam"></a>
# **removeAtlassianTeam**
> oas_any_type_not_mapped removeAtlassianTeam(planId, atlassianTeamId)

Remove Atlassian team from plan

    Removes an Atlassian team from a plan and deletes their planning settings.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **atlassianTeamId** | **String**| The ID of the Atlassian team. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateAtlassianTeam"></a>
# **updateAtlassianTeam**
> oas_any_type_not_mapped updateAtlassianTeam(planId, atlassianTeamId, body)

Update Atlassian team in plan

    Updates any of the following planning settings of an Atlassian team in a plan using [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902).   *  planningStyle  *  issueSourceId  *  sprintLength  *  capacity  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *Note that \&quot;add\&quot; operations do not respect array indexes in target locations. Call the \&quot;Get Atlassian team in plan\&quot; endpoint to find out the order of array elements.*

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **atlassianTeamId** | **String**| The ID of the Atlassian team. | [default to null] |
| **body** | **Object**|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json-patch+json
- **Accept**: application/json

<a name="updatePlanOnlyTeam"></a>
# **updatePlanOnlyTeam**
> oas_any_type_not_mapped updatePlanOnlyTeam(planId, planOnlyTeamId, body)

Update plan-only team

    Updates any of the following planning settings of a plan-only team using [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902).   *  name  *  planningStyle  *  issueSourceId  *  sprintLength  *  capacity  *  memberAccountIds  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *Note that \&quot;add\&quot; operations do not respect array indexes in target locations. Call the \&quot;Get plan-only team\&quot; endpoint to find out the order of array elements.*

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **planOnlyTeamId** | **Long**| The ID of the plan-only team. | [default to null] |
| **body** | **Object**|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json-patch+json
- **Accept**: application/json

