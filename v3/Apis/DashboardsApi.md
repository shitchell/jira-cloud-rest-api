# DashboardsApi

All URIs are relative to *https://your-domain.atlassian.net*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addGadget**](DashboardsApi.md#addGadget) | **POST** /rest/api/3/dashboard/{dashboardId}/gadget | Add gadget to dashboard |
| [**bulkEditDashboards**](DashboardsApi.md#bulkEditDashboards) | **PUT** /rest/api/3/dashboard/bulk/edit | Bulk edit dashboards |
| [**copyDashboard**](DashboardsApi.md#copyDashboard) | **POST** /rest/api/3/dashboard/{id}/copy | Copy dashboard |
| [**createDashboard**](DashboardsApi.md#createDashboard) | **POST** /rest/api/3/dashboard | Create dashboard |
| [**deleteDashboard**](DashboardsApi.md#deleteDashboard) | **DELETE** /rest/api/3/dashboard/{id} | Delete dashboard |
| [**deleteDashboardItemProperty**](DashboardsApi.md#deleteDashboardItemProperty) | **DELETE** /rest/api/3/dashboard/{dashboardId}/items/{itemId}/properties/{propertyKey} | Delete dashboard item property |
| [**getAllAvailableDashboardGadgets**](DashboardsApi.md#getAllAvailableDashboardGadgets) | **GET** /rest/api/3/dashboard/gadgets | Get available gadgets |
| [**getAllDashboards**](DashboardsApi.md#getAllDashboards) | **GET** /rest/api/3/dashboard | Get all dashboards |
| [**getAllGadgets**](DashboardsApi.md#getAllGadgets) | **GET** /rest/api/3/dashboard/{dashboardId}/gadget | Get gadgets |
| [**getDashboard**](DashboardsApi.md#getDashboard) | **GET** /rest/api/3/dashboard/{id} | Get dashboard |
| [**getDashboardItemProperty**](DashboardsApi.md#getDashboardItemProperty) | **GET** /rest/api/3/dashboard/{dashboardId}/items/{itemId}/properties/{propertyKey} | Get dashboard item property |
| [**getDashboardItemPropertyKeys**](DashboardsApi.md#getDashboardItemPropertyKeys) | **GET** /rest/api/3/dashboard/{dashboardId}/items/{itemId}/properties | Get dashboard item property keys |
| [**getDashboardsPaginated**](DashboardsApi.md#getDashboardsPaginated) | **GET** /rest/api/3/dashboard/search | Search for dashboards |
| [**removeGadget**](DashboardsApi.md#removeGadget) | **DELETE** /rest/api/3/dashboard/{dashboardId}/gadget/{gadgetId} | Remove gadget from dashboard |
| [**setDashboardItemProperty**](DashboardsApi.md#setDashboardItemProperty) | **PUT** /rest/api/3/dashboard/{dashboardId}/items/{itemId}/properties/{propertyKey} | Set dashboard item property |
| [**updateDashboard**](DashboardsApi.md#updateDashboard) | **PUT** /rest/api/3/dashboard/{id} | Update dashboard |
| [**updateGadget**](DashboardsApi.md#updateGadget) | **PUT** /rest/api/3/dashboard/{dashboardId}/gadget/{gadgetId} | Update gadget on dashboard |


<a name="addGadget"></a>
# **addGadget**
> DashboardGadget addGadget(dashboardId, DashboardGadgetSettings)

Add gadget to dashboard

    Adds a gadget to a dashboard.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **dashboardId** | **Long**| The ID of the dashboard. | [default to null] |
| **DashboardGadgetSettings** | [**DashboardGadgetSettings**](../Models/DashboardGadgetSettings.md)|  | |

### Return type

[**DashboardGadget**](../Models/DashboardGadget.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="bulkEditDashboards"></a>
# **bulkEditDashboards**
> BulkEditShareableEntityResponse bulkEditDashboards(BulkEditShareableEntityRequest)

Bulk edit dashboards

    Bulk edit dashboards. Maximum number of dashboards to be edited at the same time is 100.  **[Permissions](#permissions) required:** None  The dashboards to be updated must be owned by the user, or the user must be an administrator.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **BulkEditShareableEntityRequest** | [**BulkEditShareableEntityRequest**](../Models/BulkEditShareableEntityRequest.md)| The details of dashboards being updated in bulk. | |

### Return type

[**BulkEditShareableEntityResponse**](../Models/BulkEditShareableEntityResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="copyDashboard"></a>
# **copyDashboard**
> Dashboard copyDashboard(id, DashboardDetails, extendAdminPermissions)

Copy dashboard

    Copies a dashboard. Any values provided in the &#x60;dashboard&#x60; parameter replace those in the copied dashboard.  **[Permissions](#permissions) required:** None  The dashboard to be copied must be owned by or shared with the user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**|  | [default to null] |
| **DashboardDetails** | [**DashboardDetails**](../Models/DashboardDetails.md)| Dashboard details. | |
| **extendAdminPermissions** | **Boolean**| Whether admin level permissions are used. It should only be true if the user has *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) | [optional] [default to false] |

### Return type

[**Dashboard**](../Models/Dashboard.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createDashboard"></a>
# **createDashboard**
> Dashboard createDashboard(DashboardDetails, extendAdminPermissions)

Create dashboard

    Creates a dashboard.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **DashboardDetails** | [**DashboardDetails**](../Models/DashboardDetails.md)| Dashboard details. | |
| **extendAdminPermissions** | **Boolean**| Whether admin level permissions are used. It should only be true if the user has *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) | [optional] [default to false] |

### Return type

[**Dashboard**](../Models/Dashboard.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteDashboard"></a>
# **deleteDashboard**
> deleteDashboard(id)

Delete dashboard

    Deletes a dashboard.  **[Permissions](#permissions) required:** None  The dashboard to be deleted must be owned by the user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the dashboard. | [default to null] |

### Return type

null (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="deleteDashboardItemProperty"></a>
# **deleteDashboardItemProperty**
> oas_any_type_not_mapped deleteDashboardItemProperty(dashboardId, itemId, propertyKey)

Delete dashboard item property

    Deletes a dashboard item property.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The user must have edit permission of the dashboard.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **dashboardId** | **String**| The ID of the dashboard. | [default to null] |
| **itemId** | **String**| The ID of the dashboard item. | [default to null] |
| **propertyKey** | **String**| The key of the dashboard item property. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAllAvailableDashboardGadgets"></a>
# **getAllAvailableDashboardGadgets**
> AvailableDashboardGadgetsResponse getAllAvailableDashboardGadgets()

Get available gadgets

    Gets a list of all available gadgets that can be added to all dashboards.  **[Permissions](#permissions) required:** None.

### Parameters
This endpoint does not need any parameter.

### Return type

[**AvailableDashboardGadgetsResponse**](../Models/AvailableDashboardGadgetsResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAllDashboards"></a>
# **getAllDashboards**
> PageOfDashboards getAllDashboards(filter, startAt, maxResults)

Get all dashboards

    Returns a list of dashboards owned by or shared with the user. The list may be filtered to include only favorite or owned dashboards.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **filter** | **String**| The filter applied to the list of dashboards. Valid values are:   *  &#x60;favourite&#x60; Returns dashboards the user has marked as favorite.  *  &#x60;my&#x60; Returns dashboards owned by the user. | [optional] [default to null] [enum: my, favourite] |
| **startAt** | **Integer**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 20] |

### Return type

[**PageOfDashboards**](../Models/PageOfDashboards.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getAllGadgets"></a>
# **getAllGadgets**
> DashboardGadgetResponse getAllGadgets(dashboardId, moduleKey, uri, gadgetId)

Get gadgets

    Returns a list of dashboard gadgets on a dashboard.  This operation returns:   *  Gadgets from a list of IDs, when &#x60;id&#x60; is set.  *  Gadgets with a module key, when &#x60;moduleKey&#x60; is set.  *  Gadgets from a list of URIs, when &#x60;uri&#x60; is set.  *  All gadgets, when no other parameters are set.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **dashboardId** | **Long**| The ID of the dashboard. | [default to null] |
| **moduleKey** | [**List**](../Models/String.md)| The list of gadgets module keys. To include multiple module keys, separate module keys with ampersand: &#x60;moduleKey&#x3D;key:one&amp;moduleKey&#x3D;key:two&#x60;. | [optional] [default to null] |
| **uri** | [**List**](../Models/String.md)| The list of gadgets URIs. To include multiple URIs, separate URIs with ampersand: &#x60;uri&#x3D;/rest/example/uri/1&amp;uri&#x3D;/rest/example/uri/2&#x60;. | [optional] [default to null] |
| **gadgetId** | [**List**](../Models/Long.md)| The list of gadgets IDs. To include multiple IDs, separate IDs with ampersand: &#x60;gadgetId&#x3D;10000&amp;gadgetId&#x3D;10001&#x60;. | [optional] [default to null] |

### Return type

[**DashboardGadgetResponse**](../Models/DashboardGadgetResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDashboard"></a>
# **getDashboard**
> Dashboard getDashboard(id)

Get dashboard

    Returns a dashboard.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** None.  However, to get a dashboard, the dashboard must be shared with the user or the user must own it. Note, users with the *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) are considered owners of the System dashboard. The System dashboard is considered to be shared with all other users.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the dashboard. | [default to null] |

### Return type

[**Dashboard**](../Models/Dashboard.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDashboardItemProperty"></a>
# **getDashboardItemProperty**
> EntityProperty getDashboardItemProperty(dashboardId, itemId, propertyKey)

Get dashboard item property

    Returns the key and value of a dashboard item property.  A dashboard item enables an app to add user-specific information to a user dashboard. Dashboard items are exposed to users as gadgets that users can add to their dashboards. For more information on how users do this, see [Adding and customizing gadgets](https://confluence.atlassian.com/x/7AeiLQ).  When an app creates a dashboard item it registers a callback to receive the dashboard item ID. The callback fires whenever the item is rendered or, where the item is configurable, the user edits the item. The app then uses this resource to store the item&#39;s content or configuration details. For more information on working with dashboard items, see [ Building a dashboard item for a JIRA Connect add-on](https://developer.atlassian.com/server/jira/platform/guide-building-a-dashboard-item-for-a-jira-connect-add-on-33746254/) and the [Dashboard Item](https://developer.atlassian.com/cloud/jira/platform/modules/dashboard-item/) documentation.  There is no resource to set or get dashboard items.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The user must have read permission of the dashboard or have the dashboard shared with them.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **dashboardId** | **String**| The ID of the dashboard. | [default to null] |
| **itemId** | **String**| The ID of the dashboard item. | [default to null] |
| **propertyKey** | **String**| The key of the dashboard item property. | [default to null] |

### Return type

[**EntityProperty**](../Models/EntityProperty.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDashboardItemPropertyKeys"></a>
# **getDashboardItemPropertyKeys**
> PropertyKeys getDashboardItemPropertyKeys(dashboardId, itemId)

Get dashboard item property keys

    Returns the keys of all properties for a dashboard item.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The user must have read permission of the dashboard or have the dashboard shared with them.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **dashboardId** | **String**| The ID of the dashboard. | [default to null] |
| **itemId** | **String**| The ID of the dashboard item. | [default to null] |

### Return type

[**PropertyKeys**](../Models/PropertyKeys.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDashboardsPaginated"></a>
# **getDashboardsPaginated**
> PageBeanDashboard getDashboardsPaginated(dashboardName, accountId, owner, groupname, groupId, projectId, orderBy, startAt, maxResults, status, expand)

Search for dashboards

    Returns a [paginated](#pagination) list of dashboards. This operation is similar to [Get dashboards](#api-rest-api-3-dashboard-get) except that the results can be refined to include dashboards that have specific attributes. For example, dashboards with a particular name. When multiple attributes are specified only filters matching all attributes are returned.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The following dashboards that match the query parameters are returned:   *  Dashboards owned by the user. Not returned for anonymous users.  *  Dashboards shared with a group that the user is a member of. Not returned for anonymous users.  *  Dashboards shared with a private project that the user can browse. Not returned for anonymous users.  *  Dashboards shared with a public project.  *  Dashboards shared with the public.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **dashboardName** | **String**| String used to perform a case-insensitive partial match with &#x60;name&#x60;. | [optional] [default to null] |
| **accountId** | **String**| User account ID used to return dashboards with the matching &#x60;owner.accountId&#x60;. This parameter cannot be used with the &#x60;owner&#x60; parameter. | [optional] [default to null] |
| **owner** | **String**| This parameter is deprecated because of privacy changes. Use &#x60;accountId&#x60; instead. See the [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/) for details. User name used to return dashboards with the matching &#x60;owner.name&#x60;. This parameter cannot be used with the &#x60;accountId&#x60; parameter. | [optional] [default to null] |
| **groupname** | **String**| As a group&#39;s name can change, use of &#x60;groupId&#x60; is recommended. Group name used to return dashboards that are shared with a group that matches &#x60;sharePermissions.group.name&#x60;. This parameter cannot be used with the &#x60;groupId&#x60; parameter. | [optional] [default to null] |
| **groupId** | **String**| Group ID used to return dashboards that are shared with a group that matches &#x60;sharePermissions.group.groupId&#x60;. This parameter cannot be used with the &#x60;groupname&#x60; parameter. | [optional] [default to null] |
| **projectId** | **Long**| Project ID used to returns dashboards that are shared with a project that matches &#x60;sharePermissions.project.id&#x60;. | [optional] [default to null] |
| **orderBy** | **String**| [Order](#ordering) the results by a field:   *  &#x60;description&#x60; Sorts by dashboard description. Note that this sort works independently of whether the expand to display the description field is in use.  *  &#x60;favourite_count&#x60; Sorts by dashboard popularity.  *  &#x60;id&#x60; Sorts by dashboard ID.  *  &#x60;is_favourite&#x60; Sorts by whether the dashboard is marked as a favorite.  *  &#x60;name&#x60; Sorts by dashboard name.  *  &#x60;owner&#x60; Sorts by dashboard owner name. | [optional] [default to name] [enum: description, -description, +description, favorite_count, -favorite_count, +favorite_count, id, -id, +id, is_favorite, -is_favorite, +is_favorite, name, -name, +name, owner, -owner, +owner] |
| **startAt** | **Long**| The index of the first item to return in a page of results (page offset). | [optional] [default to 0] |
| **maxResults** | **Integer**| The maximum number of items to return per page. | [optional] [default to 50] |
| **status** | **String**| The status to filter by. It may be active, archived or deleted. | [optional] [default to active] [enum: active, archived, deleted] |
| **expand** | **String**| Use [expand](#expansion) to include additional information about dashboard in the response. This parameter accepts a comma-separated list. Expand options include:   *  &#x60;description&#x60; Returns the description of the dashboard.  *  &#x60;owner&#x60; Returns the owner of the dashboard.  *  &#x60;viewUrl&#x60; Returns the URL that is used to view the dashboard.  *  &#x60;favourite&#x60; Returns &#x60;isFavourite&#x60;, an indicator of whether the user has set the dashboard as a favorite.  *  &#x60;favouritedCount&#x60; Returns &#x60;popularity&#x60;, a count of how many users have set this dashboard as a favorite.  *  &#x60;sharePermissions&#x60; Returns details of the share permissions defined for the dashboard.  *  &#x60;editPermissions&#x60; Returns details of the edit permissions defined for the dashboard.  *  &#x60;isWritable&#x60; Returns whether the current user has permission to edit the dashboard. | [optional] [default to null] |

### Return type

[**PageBeanDashboard**](../Models/PageBeanDashboard.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="removeGadget"></a>
# **removeGadget**
> oas_any_type_not_mapped removeGadget(dashboardId, gadgetId)

Remove gadget from dashboard

    Removes a dashboard gadget from a dashboard.  When a gadget is removed from a dashboard, other gadgets in the same column are moved up to fill the emptied position.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **dashboardId** | **Long**| The ID of the dashboard. | [default to null] |
| **gadgetId** | **Long**| The ID of the gadget. | [default to null] |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="setDashboardItemProperty"></a>
# **setDashboardItemProperty**
> oas_any_type_not_mapped setDashboardItemProperty(dashboardId, itemId, propertyKey, body)

Set dashboard item property

    Sets the value of a dashboard item property. Use this resource in apps to store custom data against a dashboard item.  A dashboard item enables an app to add user-specific information to a user dashboard. Dashboard items are exposed to users as gadgets that users can add to their dashboards. For more information on how users do this, see [Adding and customizing gadgets](https://confluence.atlassian.com/x/7AeiLQ).  When an app creates a dashboard item it registers a callback to receive the dashboard item ID. The callback fires whenever the item is rendered or, where the item is configurable, the user edits the item. The app then uses this resource to store the item&#39;s content or configuration details. For more information on working with dashboard items, see [ Building a dashboard item for a JIRA Connect add-on](https://developer.atlassian.com/server/jira/platform/guide-building-a-dashboard-item-for-a-jira-connect-add-on-33746254/) and the [Dashboard Item](https://developer.atlassian.com/cloud/jira/platform/modules/dashboard-item/) documentation.  There is no resource to set or get dashboard items.  The value of the request body must be a [valid](http://tools.ietf.org/html/rfc4627), non-empty JSON blob. The maximum length is 32768 characters.  This operation can be accessed anonymously.  **[Permissions](#permissions) required:** The user must have edit permisson of the dashboard.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **dashboardId** | **String**| The ID of the dashboard. | [default to null] |
| **itemId** | **String**| The ID of the dashboard item. | [default to null] |
| **propertyKey** | **String**| The key of the dashboard item property. The maximum length is 255 characters. For dashboard items with a spec URI and no complete module key, if the provided propertyKey is equal to \&quot;config\&quot;, the request body&#39;s JSON must be an object with all keys and values as strings. | [default to null] |
| **body** | **oas_any_type_not_mapped**| The value of the property. The value has to be a valid, non-empty [JSON](https://tools.ietf.org/html/rfc4627) value. The maximum length of the property value is 32768 bytes. | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateDashboard"></a>
# **updateDashboard**
> Dashboard updateDashboard(id, DashboardDetails, extendAdminPermissions)

Update dashboard

    Updates a dashboard, replacing all the dashboard details with those provided.  **[Permissions](#permissions) required:** None  The dashboard to be updated must be owned by the user.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **String**| The ID of the dashboard to update. | [default to null] |
| **DashboardDetails** | [**DashboardDetails**](../Models/DashboardDetails.md)| Replacement dashboard details. | |
| **extendAdminPermissions** | **Boolean**| Whether admin level permissions are used. It should only be true if the user has *Administer Jira* [global permission](https://confluence.atlassian.com/x/x4dKLg) | [optional] [default to false] |

### Return type

[**Dashboard**](../Models/Dashboard.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateGadget"></a>
# **updateGadget**
> oas_any_type_not_mapped updateGadget(dashboardId, gadgetId, DashboardGadgetUpdateRequest)

Update gadget on dashboard

    Changes the title, position, and color of the gadget on a dashboard.  **[Permissions](#permissions) required:** None.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **dashboardId** | **Long**| The ID of the dashboard. | [default to null] |
| **gadgetId** | **Long**| The ID of the gadget. | [default to null] |
| **DashboardGadgetUpdateRequest** | [**DashboardGadgetUpdateRequest**](../Models/DashboardGadgetUpdateRequest.md)|  | |

### Return type

[**oas_any_type_not_mapped**](../Models/AnyType.md)

### Authorization

[OAuth2](../README.md#OAuth2), [basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

