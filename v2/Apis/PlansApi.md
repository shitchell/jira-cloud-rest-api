# PlansApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**archivePlan**](PlansApi.md#archivePlan) | **PUT** /rest/api/2/plans/plan/{planId}/archive | Archive plan |
| [**createPlan**](PlansApi.md#createPlan) | **POST** /rest/api/2/plans/plan | Create plan |
| [**duplicatePlan**](PlansApi.md#duplicatePlan) | **POST** /rest/api/2/plans/plan/{planId}/duplicate | Duplicate plan |
| [**getPlan**](PlansApi.md#getPlan) | **GET** /rest/api/2/plans/plan/{planId} | Get plan |
| [**getPlans**](PlansApi.md#getPlans) | **GET** /rest/api/2/plans/plan | Get plans paginated |
| [**trashPlan**](PlansApi.md#trashPlan) | **PUT** /rest/api/2/plans/plan/{planId}/trash | Trash plan |
| [**updatePlan**](PlansApi.md#updatePlan) | **PUT** /rest/api/2/plans/plan/{planId} | Update plan |


<a name="archivePlan"></a>
# **archivePlan**
> oas_any_type_not_mapped archivePlan(planId)

Archive plan

    Archives a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="createPlan"></a>
# **createPlan**
> Long createPlan(CreatePlanRequest, useGroupId)

Create plan

    Creates a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **CreatePlanRequest** | [**CreatePlanRequest**](../Models/CreatePlanRequest.md)|  | |
| **useGroupId** | **Boolean**| Whether to accept group IDs instead of group names. Group names are deprecated. | [optional] [default to false] |

### Return type

**Long**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="duplicatePlan"></a>
# **duplicatePlan**
> Long duplicatePlan(planId, DuplicatePlanRequest)

Duplicate plan

    Duplicates a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **DuplicatePlanRequest** | [**DuplicatePlanRequest**](../Models/DuplicatePlanRequest.md)|  | |

### Return type

**Long**

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getPlan"></a>
# **getPlan**
> GetPlanResponse getPlan(planId, useGroupId)

Get plan

    Returns a plan.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **useGroupId** | **Boolean**| Whether to return group IDs instead of group names. Group names are deprecated. | [optional] [default to false] |

### Return type

[**GetPlanResponse**](../Models/GetPlanResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPlans"></a>
# **getPlans**
> PageWithCursorGetPlanResponseForPage getPlans(includeTrashed, includeArchived, cursor, maxResults)

Get plans paginated

    Returns a [paginated](#pagination) list of plans.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **includeTrashed** | **Boolean**| Whether to include trashed plans in the results. | [optional] [default to false] |
| **includeArchived** | **Boolean**| Whether to include archived plans in the results. | [optional] [default to false] |
| **cursor** | **String**| The cursor to start from. If not provided, the first page will be returned. | [optional] [default to ] |
| **maxResults** | **Integer**| The maximum number of plans to return per page. The maximum value is 50. The default value is 50. | [optional] [default to 50] |

### Return type

[**PageWithCursorGetPlanResponseForPage**](../Models/PageWithCursorGetPlanResponseForPage.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="trashPlan"></a>
# **trashPlan**
> oas_any_type_not_mapped trashPlan(planId)

Trash plan

    Moves a plan to trash.  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updatePlan"></a>
# **updatePlan**
> oas_any_type_not_mapped updatePlan(planId, body, useGroupId)

Update plan

    Updates any of the following details of a plan using [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902).   *  name  *  leadAccountId  *  scheduling           *  estimation with StoryPoints, Days or Hours as possible values      *  startDate                   *  type with DueDate, TargetStartDate, TargetEndDate or DateCustomField as possible values          *  dateCustomFieldId      *  endDate                   *  type with DueDate, TargetStartDate, TargetEndDate or DateCustomField as possible values          *  dateCustomFieldId      *  inferredDates with None, SprintDates or ReleaseDates as possible values      *  dependencies with Sequential or Concurrent as possible values  *  issueSources           *  type with Board, Project or Filter as possible values      *  value  *  exclusionRules           *  numberOfDaysToShowCompletedIssues      *  issueIds      *  workStatusIds      *  workStatusCategoryIds      *  issueTypeIds      *  releaseIds  *  crossProjectReleases           *  name      *  releaseIds  *  customFields           *  customFieldId      *  filter  *  permissions           *  type with View or Edit as possible values      *  holder                   *  type with Group or AccountId as possible values          *  value  **[Permissions](#permissions) required:** *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg).  *Note that \&quot;add\&quot; operations do not respect array indexes in target locations. Call the \&quot;Get plan\&quot; endpoint to find out the order of array elements.*

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **planId** | **Long**| The ID of the plan. | [default to null] |
| **body** | **Object**|  | |
| **useGroupId** | **Boolean**| Whether to accept group IDs instead of group names. Group names are deprecated. | [optional] [default to false] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json-patch+json
- **Accept**: application/json

