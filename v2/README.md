# Documentation for The Jira Cloud platform REST API

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://your-domain.atlassian.net*

| Class | Method | HTTP request | Description |
|------------ | ------------- | ------------- | -------------|
| *AnnouncementBannerApi* | [**getBanner**](Apis/AnnouncementBannerApi.md#getBanner) | **GET** /rest/api/2/announcementBanner | Get announcement banner configuration |
*AnnouncementBannerApi* | [**setBanner**](Apis/AnnouncementBannerApi.md#setBanner) | **PUT** /rest/api/2/announcementBanner | Update announcement banner configuration |
| *AppDataPoliciesApi* | [**getPolicies**](Apis/AppDataPoliciesApi.md#getPolicies) | **GET** /rest/api/2/data-policy/project | Get data policy for projects |
*AppDataPoliciesApi* | [**getPolicy**](Apis/AppDataPoliciesApi.md#getPolicy) | **GET** /rest/api/2/data-policy | Get data policy for the workspace |
| *AppMigrationApi* | [**appIssueFieldValueUpdateResource.updateIssueFieldsPut**](Apis/AppMigrationApi.md#appIssueFieldValueUpdateResource.updateIssueFieldsPut) | **PUT** /rest/atlassian-connect/1/migration/field | Bulk update custom field value |
*AppMigrationApi* | [**migrationResource.updateEntityPropertiesValuePut**](Apis/AppMigrationApi.md#migrationResource.updateEntityPropertiesValuePut) | **PUT** /rest/atlassian-connect/1/migration/properties/{entityType} | Bulk update entity properties |
*AppMigrationApi* | [**migrationResource.workflowRuleSearchPost**](Apis/AppMigrationApi.md#migrationResource.workflowRuleSearchPost) | **POST** /rest/atlassian-connect/1/migration/workflow/rule/search | Get workflow transition rule configurations |
| *AppPropertiesApi* | [**addonPropertiesResource.deleteAddonPropertyDelete**](Apis/AppPropertiesApi.md#addonPropertiesResource.deleteAddonPropertyDelete) | **DELETE** /rest/atlassian-connect/1/addons/{addonKey}/properties/{propertyKey} | Delete app property |
*AppPropertiesApi* | [**addonPropertiesResource.getAddonPropertiesGet**](Apis/AppPropertiesApi.md#addonPropertiesResource.getAddonPropertiesGet) | **GET** /rest/atlassian-connect/1/addons/{addonKey}/properties | Get app properties |
*AppPropertiesApi* | [**addonPropertiesResource.getAddonPropertyGet**](Apis/AppPropertiesApi.md#addonPropertiesResource.getAddonPropertyGet) | **GET** /rest/atlassian-connect/1/addons/{addonKey}/properties/{propertyKey} | Get app property |
*AppPropertiesApi* | [**addonPropertiesResource.putAddonPropertyPut**](Apis/AppPropertiesApi.md#addonPropertiesResource.putAddonPropertyPut) | **PUT** /rest/atlassian-connect/1/addons/{addonKey}/properties/{propertyKey} | Set app property |
*AppPropertiesApi* | [**deleteForgeAppProperty**](Apis/AppPropertiesApi.md#deleteForgeAppProperty) | **DELETE** /rest/forge/1/app/properties/{propertyKey} | Delete app property (Forge) |
*AppPropertiesApi* | [**getForgeAppProperty**](Apis/AppPropertiesApi.md#getForgeAppProperty) | **GET** /rest/forge/1/app/properties/{propertyKey} | Get app property (Forge) |
*AppPropertiesApi* | [**getForgeAppPropertyKeys**](Apis/AppPropertiesApi.md#getForgeAppPropertyKeys) | **GET** /rest/forge/1/app/properties | Get app property keys (Forge) |
*AppPropertiesApi* | [**putForgeAppProperty**](Apis/AppPropertiesApi.md#putForgeAppProperty) | **PUT** /rest/forge/1/app/properties/{propertyKey} | Set app property (Forge) |
| *ApplicationRolesApi* | [**getAllApplicationRoles**](Apis/ApplicationRolesApi.md#getAllApplicationRoles) | **GET** /rest/api/2/applicationrole | Get all application roles |
*ApplicationRolesApi* | [**getApplicationRole**](Apis/ApplicationRolesApi.md#getApplicationRole) | **GET** /rest/api/2/applicationrole/{key} | Get application role |
| *AuditRecordsApi* | [**getAuditRecords**](Apis/AuditRecordsApi.md#getAuditRecords) | **GET** /rest/api/2/auditing/record | Get audit records |
| *AvatarsApi* | [**deleteAvatar**](Apis/AvatarsApi.md#deleteAvatar) | **DELETE** /rest/api/2/universal_avatar/type/{type}/owner/{owningObjectId}/avatar/{id} | Delete avatar |
*AvatarsApi* | [**getAllSystemAvatars**](Apis/AvatarsApi.md#getAllSystemAvatars) | **GET** /rest/api/2/avatar/{type}/system | Get system avatars by type |
*AvatarsApi* | [**getAvatarImageByID**](Apis/AvatarsApi.md#getAvatarImageByID) | **GET** /rest/api/2/universal_avatar/view/type/{type}/avatar/{id} | Get avatar image by ID |
*AvatarsApi* | [**getAvatarImageByOwner**](Apis/AvatarsApi.md#getAvatarImageByOwner) | **GET** /rest/api/2/universal_avatar/view/type/{type}/owner/{entityId} | Get avatar image by owner |
*AvatarsApi* | [**getAvatarImageByType**](Apis/AvatarsApi.md#getAvatarImageByType) | **GET** /rest/api/2/universal_avatar/view/type/{type} | Get avatar image by type |
*AvatarsApi* | [**getAvatars**](Apis/AvatarsApi.md#getAvatars) | **GET** /rest/api/2/universal_avatar/type/{type}/owner/{entityId} | Get avatars |
*AvatarsApi* | [**storeAvatar**](Apis/AvatarsApi.md#storeAvatar) | **POST** /rest/api/2/universal_avatar/type/{type}/owner/{entityId} | Load avatar |
| *ClassificationLevelsApi* | [**getAllUserDataClassificationLevels**](Apis/ClassificationLevelsApi.md#getAllUserDataClassificationLevels) | **GET** /rest/api/2/classification-levels | Get all classification levels |
| *DashboardsApi* | [**addGadget**](Apis/DashboardsApi.md#addGadget) | **POST** /rest/api/2/dashboard/{dashboardId}/gadget | Add gadget to dashboard |
*DashboardsApi* | [**bulkEditDashboards**](Apis/DashboardsApi.md#bulkEditDashboards) | **PUT** /rest/api/2/dashboard/bulk/edit | Bulk edit dashboards |
*DashboardsApi* | [**copyDashboard**](Apis/DashboardsApi.md#copyDashboard) | **POST** /rest/api/2/dashboard/{id}/copy | Copy dashboard |
*DashboardsApi* | [**createDashboard**](Apis/DashboardsApi.md#createDashboard) | **POST** /rest/api/2/dashboard | Create dashboard |
*DashboardsApi* | [**deleteDashboard**](Apis/DashboardsApi.md#deleteDashboard) | **DELETE** /rest/api/2/dashboard/{id} | Delete dashboard |
*DashboardsApi* | [**deleteDashboardItemProperty**](Apis/DashboardsApi.md#deleteDashboardItemProperty) | **DELETE** /rest/api/2/dashboard/{dashboardId}/items/{itemId}/properties/{propertyKey} | Delete dashboard item property |
*DashboardsApi* | [**getAllAvailableDashboardGadgets**](Apis/DashboardsApi.md#getAllAvailableDashboardGadgets) | **GET** /rest/api/2/dashboard/gadgets | Get available gadgets |
*DashboardsApi* | [**getAllDashboards**](Apis/DashboardsApi.md#getAllDashboards) | **GET** /rest/api/2/dashboard | Get all dashboards |
*DashboardsApi* | [**getAllGadgets**](Apis/DashboardsApi.md#getAllGadgets) | **GET** /rest/api/2/dashboard/{dashboardId}/gadget | Get gadgets |
*DashboardsApi* | [**getDashboard**](Apis/DashboardsApi.md#getDashboard) | **GET** /rest/api/2/dashboard/{id} | Get dashboard |
*DashboardsApi* | [**getDashboardItemProperty**](Apis/DashboardsApi.md#getDashboardItemProperty) | **GET** /rest/api/2/dashboard/{dashboardId}/items/{itemId}/properties/{propertyKey} | Get dashboard item property |
*DashboardsApi* | [**getDashboardItemPropertyKeys**](Apis/DashboardsApi.md#getDashboardItemPropertyKeys) | **GET** /rest/api/2/dashboard/{dashboardId}/items/{itemId}/properties | Get dashboard item property keys |
*DashboardsApi* | [**getDashboardsPaginated**](Apis/DashboardsApi.md#getDashboardsPaginated) | **GET** /rest/api/2/dashboard/search | Search for dashboards |
*DashboardsApi* | [**removeGadget**](Apis/DashboardsApi.md#removeGadget) | **DELETE** /rest/api/2/dashboard/{dashboardId}/gadget/{gadgetId} | Remove gadget from dashboard |
*DashboardsApi* | [**setDashboardItemProperty**](Apis/DashboardsApi.md#setDashboardItemProperty) | **PUT** /rest/api/2/dashboard/{dashboardId}/items/{itemId}/properties/{propertyKey} | Set dashboard item property |
*DashboardsApi* | [**updateDashboard**](Apis/DashboardsApi.md#updateDashboard) | **PUT** /rest/api/2/dashboard/{id} | Update dashboard |
*DashboardsApi* | [**updateGadget**](Apis/DashboardsApi.md#updateGadget) | **PUT** /rest/api/2/dashboard/{dashboardId}/gadget/{gadgetId} | Update gadget on dashboard |
| *DefaultApi* | [**getWorklogsByIssueIdAndWorklogId**](Apis/DefaultApi.md#getWorklogsByIssueIdAndWorklogId) | **POST** /rest/internal/api/latest/worklog/bulk | Get worklogs by issue id and worklog id |
| *DynamicModulesApi* | [**dynamicModulesResource.getModulesGet**](Apis/DynamicModulesApi.md#dynamicModulesResource.getModulesGet) | **GET** /rest/atlassian-connect/1/app/module/dynamic | Get modules |
*DynamicModulesApi* | [**dynamicModulesResource.registerModulesPost**](Apis/DynamicModulesApi.md#dynamicModulesResource.registerModulesPost) | **POST** /rest/atlassian-connect/1/app/module/dynamic | Register modules |
*DynamicModulesApi* | [**dynamicModulesResource.removeModulesDelete**](Apis/DynamicModulesApi.md#dynamicModulesResource.removeModulesDelete) | **DELETE** /rest/atlassian-connect/1/app/module/dynamic | Remove modules |
| *FilterSharingApi* | [**addSharePermission**](Apis/FilterSharingApi.md#addSharePermission) | **POST** /rest/api/2/filter/{id}/permission | Add share permission |
*FilterSharingApi* | [**deleteSharePermission**](Apis/FilterSharingApi.md#deleteSharePermission) | **DELETE** /rest/api/2/filter/{id}/permission/{permissionId} | Delete share permission |
*FilterSharingApi* | [**getDefaultShareScope**](Apis/FilterSharingApi.md#getDefaultShareScope) | **GET** /rest/api/2/filter/defaultShareScope | Get default share scope |
*FilterSharingApi* | [**getSharePermission**](Apis/FilterSharingApi.md#getSharePermission) | **GET** /rest/api/2/filter/{id}/permission/{permissionId} | Get share permission |
*FilterSharingApi* | [**getSharePermissions**](Apis/FilterSharingApi.md#getSharePermissions) | **GET** /rest/api/2/filter/{id}/permission | Get share permissions |
*FilterSharingApi* | [**setDefaultShareScope**](Apis/FilterSharingApi.md#setDefaultShareScope) | **PUT** /rest/api/2/filter/defaultShareScope | Set default share scope |
| *FiltersApi* | [**changeFilterOwner**](Apis/FiltersApi.md#changeFilterOwner) | **PUT** /rest/api/2/filter/{id}/owner | Change filter owner |
*FiltersApi* | [**createFilter**](Apis/FiltersApi.md#createFilter) | **POST** /rest/api/2/filter | Create filter |
*FiltersApi* | [**deleteFavouriteForFilter**](Apis/FiltersApi.md#deleteFavouriteForFilter) | **DELETE** /rest/api/2/filter/{id}/favourite | Remove filter as favorite |
*FiltersApi* | [**deleteFilter**](Apis/FiltersApi.md#deleteFilter) | **DELETE** /rest/api/2/filter/{id} | Delete filter |
*FiltersApi* | [**getColumns**](Apis/FiltersApi.md#getColumns) | **GET** /rest/api/2/filter/{id}/columns | Get columns |
*FiltersApi* | [**getFavouriteFilters**](Apis/FiltersApi.md#getFavouriteFilters) | **GET** /rest/api/2/filter/favourite | Get favorite filters |
*FiltersApi* | [**getFilter**](Apis/FiltersApi.md#getFilter) | **GET** /rest/api/2/filter/{id} | Get filter |
*FiltersApi* | [**getFiltersPaginated**](Apis/FiltersApi.md#getFiltersPaginated) | **GET** /rest/api/2/filter/search | Search for filters |
*FiltersApi* | [**getMyFilters**](Apis/FiltersApi.md#getMyFilters) | **GET** /rest/api/2/filter/my | Get my filters |
*FiltersApi* | [**resetColumns**](Apis/FiltersApi.md#resetColumns) | **DELETE** /rest/api/2/filter/{id}/columns | Reset columns |
*FiltersApi* | [**setColumns**](Apis/FiltersApi.md#setColumns) | **PUT** /rest/api/2/filter/{id}/columns | Set columns |
*FiltersApi* | [**setFavouriteForFilter**](Apis/FiltersApi.md#setFavouriteForFilter) | **PUT** /rest/api/2/filter/{id}/favourite | Add filter as favorite |
*FiltersApi* | [**updateFilter**](Apis/FiltersApi.md#updateFilter) | **PUT** /rest/api/2/filter/{id} | Update filter |
| *GroupAndUserPickerApi* | [**findUsersAndGroups**](Apis/GroupAndUserPickerApi.md#findUsersAndGroups) | **GET** /rest/api/2/groupuserpicker | Find users and groups |
| *GroupsApi* | [**addUserToGroup**](Apis/GroupsApi.md#addUserToGroup) | **POST** /rest/api/2/group/user | Add user to group |
*GroupsApi* | [**bulkGetGroups**](Apis/GroupsApi.md#bulkGetGroups) | **GET** /rest/api/2/group/bulk | Bulk get groups |
*GroupsApi* | [**createGroup**](Apis/GroupsApi.md#createGroup) | **POST** /rest/api/2/group | Create group |
*GroupsApi* | [**findGroups**](Apis/GroupsApi.md#findGroups) | **GET** /rest/api/2/groups/picker | Find groups |
*GroupsApi* | [**getGroup**](Apis/GroupsApi.md#getGroup) | **GET** /rest/api/2/group | Get group |
*GroupsApi* | [**getUsersFromGroup**](Apis/GroupsApi.md#getUsersFromGroup) | **GET** /rest/api/2/group/member | Get users from group |
*GroupsApi* | [**removeGroup**](Apis/GroupsApi.md#removeGroup) | **DELETE** /rest/api/2/group | Remove group |
*GroupsApi* | [**removeUserFromGroup**](Apis/GroupsApi.md#removeUserFromGroup) | **DELETE** /rest/api/2/group/user | Remove user from group |
| *IssueAttachmentsApi* | [**addAttachment**](Apis/IssueAttachmentsApi.md#addAttachment) | **POST** /rest/api/2/issue/{issueIdOrKey}/attachments | Add attachment |
*IssueAttachmentsApi* | [**expandAttachmentForHumans**](Apis/IssueAttachmentsApi.md#expandAttachmentForHumans) | **GET** /rest/api/2/attachment/{id}/expand/human | Get all metadata for an expanded attachment |
*IssueAttachmentsApi* | [**expandAttachmentForMachines**](Apis/IssueAttachmentsApi.md#expandAttachmentForMachines) | **GET** /rest/api/2/attachment/{id}/expand/raw | Get contents metadata for an expanded attachment |
*IssueAttachmentsApi* | [**getAttachment**](Apis/IssueAttachmentsApi.md#getAttachment) | **GET** /rest/api/2/attachment/{id} | Get attachment metadata |
*IssueAttachmentsApi* | [**getAttachmentContent**](Apis/IssueAttachmentsApi.md#getAttachmentContent) | **GET** /rest/api/2/attachment/content/{id} | Get attachment content |
*IssueAttachmentsApi* | [**getAttachmentMeta**](Apis/IssueAttachmentsApi.md#getAttachmentMeta) | **GET** /rest/api/2/attachment/meta | Get Jira attachment settings |
*IssueAttachmentsApi* | [**getAttachmentThumbnail**](Apis/IssueAttachmentsApi.md#getAttachmentThumbnail) | **GET** /rest/api/2/attachment/thumbnail/{id} | Get attachment thumbnail |
*IssueAttachmentsApi* | [**removeAttachment**](Apis/IssueAttachmentsApi.md#removeAttachment) | **DELETE** /rest/api/2/attachment/{id} | Delete attachment |
| *IssueCommentPropertiesApi* | [**deleteCommentProperty**](Apis/IssueCommentPropertiesApi.md#deleteCommentProperty) | **DELETE** /rest/api/2/comment/{commentId}/properties/{propertyKey} | Delete comment property |
*IssueCommentPropertiesApi* | [**getCommentProperty**](Apis/IssueCommentPropertiesApi.md#getCommentProperty) | **GET** /rest/api/2/comment/{commentId}/properties/{propertyKey} | Get comment property |
*IssueCommentPropertiesApi* | [**getCommentPropertyKeys**](Apis/IssueCommentPropertiesApi.md#getCommentPropertyKeys) | **GET** /rest/api/2/comment/{commentId}/properties | Get comment property keys |
*IssueCommentPropertiesApi* | [**setCommentProperty**](Apis/IssueCommentPropertiesApi.md#setCommentProperty) | **PUT** /rest/api/2/comment/{commentId}/properties/{propertyKey} | Set comment property |
| *IssueCommentsApi* | [**addComment**](Apis/IssueCommentsApi.md#addComment) | **POST** /rest/api/2/issue/{issueIdOrKey}/comment | Add comment |
*IssueCommentsApi* | [**deleteComment**](Apis/IssueCommentsApi.md#deleteComment) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/comment/{id} | Delete comment |
*IssueCommentsApi* | [**getComment**](Apis/IssueCommentsApi.md#getComment) | **GET** /rest/api/2/issue/{issueIdOrKey}/comment/{id} | Get comment |
*IssueCommentsApi* | [**getComments**](Apis/IssueCommentsApi.md#getComments) | **GET** /rest/api/2/issue/{issueIdOrKey}/comment | Get comments |
*IssueCommentsApi* | [**getCommentsByIds**](Apis/IssueCommentsApi.md#getCommentsByIds) | **POST** /rest/api/2/comment/list | Get comments by IDs |
*IssueCommentsApi* | [**updateComment**](Apis/IssueCommentsApi.md#updateComment) | **PUT** /rest/api/2/issue/{issueIdOrKey}/comment/{id} | Update comment |
| *IssueCustomFieldAssociationsApi* | [**createAssociations**](Apis/IssueCustomFieldAssociationsApi.md#createAssociations) | **PUT** /rest/api/2/field/association | Create associations |
*IssueCustomFieldAssociationsApi* | [**removeAssociations**](Apis/IssueCustomFieldAssociationsApi.md#removeAssociations) | **DELETE** /rest/api/2/field/association | Remove associations |
| *IssueCustomFieldConfigurationAppsApi* | [**getCustomFieldConfiguration**](Apis/IssueCustomFieldConfigurationAppsApi.md#getCustomFieldConfiguration) | **GET** /rest/api/2/app/field/{fieldIdOrKey}/context/configuration | Get custom field configurations |
*IssueCustomFieldConfigurationAppsApi* | [**getCustomFieldsConfigurations**](Apis/IssueCustomFieldConfigurationAppsApi.md#getCustomFieldsConfigurations) | **POST** /rest/api/2/app/field/context/configuration/list | Bulk get custom field configurations |
*IssueCustomFieldConfigurationAppsApi* | [**updateCustomFieldConfiguration**](Apis/IssueCustomFieldConfigurationAppsApi.md#updateCustomFieldConfiguration) | **PUT** /rest/api/2/app/field/{fieldIdOrKey}/context/configuration | Update custom field configurations |
| *IssueCustomFieldContextsApi* | [**addIssueTypesToContext**](Apis/IssueCustomFieldContextsApi.md#addIssueTypesToContext) | **PUT** /rest/api/2/field/{fieldId}/context/{contextId}/issuetype | Add issue types to context |
*IssueCustomFieldContextsApi* | [**assignProjectsToCustomFieldContext**](Apis/IssueCustomFieldContextsApi.md#assignProjectsToCustomFieldContext) | **PUT** /rest/api/2/field/{fieldId}/context/{contextId}/project | Assign custom field context to projects |
*IssueCustomFieldContextsApi* | [**createCustomFieldContext**](Apis/IssueCustomFieldContextsApi.md#createCustomFieldContext) | **POST** /rest/api/2/field/{fieldId}/context | Create custom field context |
*IssueCustomFieldContextsApi* | [**deleteCustomFieldContext**](Apis/IssueCustomFieldContextsApi.md#deleteCustomFieldContext) | **DELETE** /rest/api/2/field/{fieldId}/context/{contextId} | Delete custom field context |
*IssueCustomFieldContextsApi* | [**getContextsForField**](Apis/IssueCustomFieldContextsApi.md#getContextsForField) | **GET** /rest/api/2/field/{fieldId}/context | Get custom field contexts |
*IssueCustomFieldContextsApi* | [**getCustomFieldContextsForProjectsAndIssueTypes**](Apis/IssueCustomFieldContextsApi.md#getCustomFieldContextsForProjectsAndIssueTypes) | **POST** /rest/api/2/field/{fieldId}/context/mapping | Get custom field contexts for projects and issue types |
*IssueCustomFieldContextsApi* | [**getDefaultValues**](Apis/IssueCustomFieldContextsApi.md#getDefaultValues) | **GET** /rest/api/2/field/{fieldId}/context/defaultValue | Get custom field contexts default values |
*IssueCustomFieldContextsApi* | [**getIssueTypeMappingsForContexts**](Apis/IssueCustomFieldContextsApi.md#getIssueTypeMappingsForContexts) | **GET** /rest/api/2/field/{fieldId}/context/issuetypemapping | Get issue types for custom field context |
*IssueCustomFieldContextsApi* | [**getProjectContextMapping**](Apis/IssueCustomFieldContextsApi.md#getProjectContextMapping) | **GET** /rest/api/2/field/{fieldId}/context/projectmapping | Get project mappings for custom field context |
*IssueCustomFieldContextsApi* | [**removeCustomFieldContextFromProjects**](Apis/IssueCustomFieldContextsApi.md#removeCustomFieldContextFromProjects) | **POST** /rest/api/2/field/{fieldId}/context/{contextId}/project/remove | Remove custom field context from projects |
*IssueCustomFieldContextsApi* | [**removeIssueTypesFromContext**](Apis/IssueCustomFieldContextsApi.md#removeIssueTypesFromContext) | **POST** /rest/api/2/field/{fieldId}/context/{contextId}/issuetype/remove | Remove issue types from context |
*IssueCustomFieldContextsApi* | [**setDefaultValues**](Apis/IssueCustomFieldContextsApi.md#setDefaultValues) | **PUT** /rest/api/2/field/{fieldId}/context/defaultValue | Set custom field contexts default values |
*IssueCustomFieldContextsApi* | [**updateCustomFieldContext**](Apis/IssueCustomFieldContextsApi.md#updateCustomFieldContext) | **PUT** /rest/api/2/field/{fieldId}/context/{contextId} | Update custom field context |
| *IssueCustomFieldOptionsApi* | [**createCustomFieldOption**](Apis/IssueCustomFieldOptionsApi.md#createCustomFieldOption) | **POST** /rest/api/2/field/{fieldId}/context/{contextId}/option | Create custom field options (context) |
*IssueCustomFieldOptionsApi* | [**deleteCustomFieldOption**](Apis/IssueCustomFieldOptionsApi.md#deleteCustomFieldOption) | **DELETE** /rest/api/2/field/{fieldId}/context/{contextId}/option/{optionId} | Delete custom field options (context) |
*IssueCustomFieldOptionsApi* | [**getCustomFieldOption**](Apis/IssueCustomFieldOptionsApi.md#getCustomFieldOption) | **GET** /rest/api/2/customFieldOption/{id} | Get custom field option |
*IssueCustomFieldOptionsApi* | [**getOptionsForContext**](Apis/IssueCustomFieldOptionsApi.md#getOptionsForContext) | **GET** /rest/api/2/field/{fieldId}/context/{contextId}/option | Get custom field options (context) |
*IssueCustomFieldOptionsApi* | [**reorderCustomFieldOptions**](Apis/IssueCustomFieldOptionsApi.md#reorderCustomFieldOptions) | **PUT** /rest/api/2/field/{fieldId}/context/{contextId}/option/move | Reorder custom field options (context) |
*IssueCustomFieldOptionsApi* | [**replaceCustomFieldOption**](Apis/IssueCustomFieldOptionsApi.md#replaceCustomFieldOption) | **DELETE** /rest/api/2/field/{fieldId}/context/{contextId}/option/{optionId}/issue | Replace custom field options |
*IssueCustomFieldOptionsApi* | [**updateCustomFieldOption**](Apis/IssueCustomFieldOptionsApi.md#updateCustomFieldOption) | **PUT** /rest/api/2/field/{fieldId}/context/{contextId}/option | Update custom field options (context) |
| *IssueCustomFieldOptionsAppsApi* | [**createIssueFieldOption**](Apis/IssueCustomFieldOptionsAppsApi.md#createIssueFieldOption) | **POST** /rest/api/2/field/{fieldKey}/option | Create issue field option |
*IssueCustomFieldOptionsAppsApi* | [**deleteIssueFieldOption**](Apis/IssueCustomFieldOptionsAppsApi.md#deleteIssueFieldOption) | **DELETE** /rest/api/2/field/{fieldKey}/option/{optionId} | Delete issue field option |
*IssueCustomFieldOptionsAppsApi* | [**getAllIssueFieldOptions**](Apis/IssueCustomFieldOptionsAppsApi.md#getAllIssueFieldOptions) | **GET** /rest/api/2/field/{fieldKey}/option | Get all issue field options |
*IssueCustomFieldOptionsAppsApi* | [**getIssueFieldOption**](Apis/IssueCustomFieldOptionsAppsApi.md#getIssueFieldOption) | **GET** /rest/api/2/field/{fieldKey}/option/{optionId} | Get issue field option |
*IssueCustomFieldOptionsAppsApi* | [**getSelectableIssueFieldOptions**](Apis/IssueCustomFieldOptionsAppsApi.md#getSelectableIssueFieldOptions) | **GET** /rest/api/2/field/{fieldKey}/option/suggestions/edit | Get selectable issue field options |
*IssueCustomFieldOptionsAppsApi* | [**getVisibleIssueFieldOptions**](Apis/IssueCustomFieldOptionsAppsApi.md#getVisibleIssueFieldOptions) | **GET** /rest/api/2/field/{fieldKey}/option/suggestions/search | Get visible issue field options |
*IssueCustomFieldOptionsAppsApi* | [**replaceIssueFieldOption**](Apis/IssueCustomFieldOptionsAppsApi.md#replaceIssueFieldOption) | **DELETE** /rest/api/2/field/{fieldKey}/option/{optionId}/issue | Replace issue field option |
*IssueCustomFieldOptionsAppsApi* | [**updateIssueFieldOption**](Apis/IssueCustomFieldOptionsAppsApi.md#updateIssueFieldOption) | **PUT** /rest/api/2/field/{fieldKey}/option/{optionId} | Update issue field option |
| *IssueCustomFieldValuesAppsApi* | [**updateCustomFieldValue**](Apis/IssueCustomFieldValuesAppsApi.md#updateCustomFieldValue) | **PUT** /rest/api/2/app/field/{fieldIdOrKey}/value | Update custom field value |
*IssueCustomFieldValuesAppsApi* | [**updateMultipleCustomFieldValues**](Apis/IssueCustomFieldValuesAppsApi.md#updateMultipleCustomFieldValues) | **POST** /rest/api/2/app/field/value | Update custom fields |
| *IssueFieldConfigurationsApi* | [**assignFieldConfigurationSchemeToProject**](Apis/IssueFieldConfigurationsApi.md#assignFieldConfigurationSchemeToProject) | **PUT** /rest/api/2/fieldconfigurationscheme/project | Assign field configuration scheme to project |
*IssueFieldConfigurationsApi* | [**createFieldConfiguration**](Apis/IssueFieldConfigurationsApi.md#createFieldConfiguration) | **POST** /rest/api/2/fieldconfiguration | Create field configuration |
*IssueFieldConfigurationsApi* | [**createFieldConfigurationScheme**](Apis/IssueFieldConfigurationsApi.md#createFieldConfigurationScheme) | **POST** /rest/api/2/fieldconfigurationscheme | Create field configuration scheme |
*IssueFieldConfigurationsApi* | [**deleteFieldConfiguration**](Apis/IssueFieldConfigurationsApi.md#deleteFieldConfiguration) | **DELETE** /rest/api/2/fieldconfiguration/{id} | Delete field configuration |
*IssueFieldConfigurationsApi* | [**deleteFieldConfigurationScheme**](Apis/IssueFieldConfigurationsApi.md#deleteFieldConfigurationScheme) | **DELETE** /rest/api/2/fieldconfigurationscheme/{id} | Delete field configuration scheme |
*IssueFieldConfigurationsApi* | [**getAllFieldConfigurationSchemes**](Apis/IssueFieldConfigurationsApi.md#getAllFieldConfigurationSchemes) | **GET** /rest/api/2/fieldconfigurationscheme | Get all field configuration schemes |
*IssueFieldConfigurationsApi* | [**getAllFieldConfigurations**](Apis/IssueFieldConfigurationsApi.md#getAllFieldConfigurations) | **GET** /rest/api/2/fieldconfiguration | Get all field configurations |
*IssueFieldConfigurationsApi* | [**getFieldConfigurationItems**](Apis/IssueFieldConfigurationsApi.md#getFieldConfigurationItems) | **GET** /rest/api/2/fieldconfiguration/{id}/fields | Get field configuration items |
*IssueFieldConfigurationsApi* | [**getFieldConfigurationSchemeMappings**](Apis/IssueFieldConfigurationsApi.md#getFieldConfigurationSchemeMappings) | **GET** /rest/api/2/fieldconfigurationscheme/mapping | Get field configuration issue type items |
*IssueFieldConfigurationsApi* | [**getFieldConfigurationSchemeProjectMapping**](Apis/IssueFieldConfigurationsApi.md#getFieldConfigurationSchemeProjectMapping) | **GET** /rest/api/2/fieldconfigurationscheme/project | Get field configuration schemes for projects |
*IssueFieldConfigurationsApi* | [**removeIssueTypesFromGlobalFieldConfigurationScheme**](Apis/IssueFieldConfigurationsApi.md#removeIssueTypesFromGlobalFieldConfigurationScheme) | **POST** /rest/api/2/fieldconfigurationscheme/{id}/mapping/delete | Remove issue types from field configuration scheme |
*IssueFieldConfigurationsApi* | [**setFieldConfigurationSchemeMapping**](Apis/IssueFieldConfigurationsApi.md#setFieldConfigurationSchemeMapping) | **PUT** /rest/api/2/fieldconfigurationscheme/{id}/mapping | Assign issue types to field configurations |
*IssueFieldConfigurationsApi* | [**updateFieldConfiguration**](Apis/IssueFieldConfigurationsApi.md#updateFieldConfiguration) | **PUT** /rest/api/2/fieldconfiguration/{id} | Update field configuration |
*IssueFieldConfigurationsApi* | [**updateFieldConfigurationItems**](Apis/IssueFieldConfigurationsApi.md#updateFieldConfigurationItems) | **PUT** /rest/api/2/fieldconfiguration/{id}/fields | Update field configuration items |
*IssueFieldConfigurationsApi* | [**updateFieldConfigurationScheme**](Apis/IssueFieldConfigurationsApi.md#updateFieldConfigurationScheme) | **PUT** /rest/api/2/fieldconfigurationscheme/{id} | Update field configuration scheme |
| *IssueFieldsApi* | [**createCustomField**](Apis/IssueFieldsApi.md#createCustomField) | **POST** /rest/api/2/field | Create custom field |
*IssueFieldsApi* | [**deleteCustomField**](Apis/IssueFieldsApi.md#deleteCustomField) | **DELETE** /rest/api/2/field/{id} | Delete custom field |
*IssueFieldsApi* | [**getContextsForFieldDeprecated**](Apis/IssueFieldsApi.md#getContextsForFieldDeprecated) | **GET** /rest/api/2/field/{fieldId}/contexts | Get contexts for a field |
*IssueFieldsApi* | [**getFields**](Apis/IssueFieldsApi.md#getFields) | **GET** /rest/api/2/field | Get fields |
*IssueFieldsApi* | [**getFieldsPaginated**](Apis/IssueFieldsApi.md#getFieldsPaginated) | **GET** /rest/api/2/field/search | Get fields paginated |
*IssueFieldsApi* | [**getTrashedFieldsPaginated**](Apis/IssueFieldsApi.md#getTrashedFieldsPaginated) | **GET** /rest/api/2/field/search/trashed | Get fields in trash paginated |
*IssueFieldsApi* | [**restoreCustomField**](Apis/IssueFieldsApi.md#restoreCustomField) | **POST** /rest/api/2/field/{id}/restore | Restore custom field from trash |
*IssueFieldsApi* | [**trashCustomField**](Apis/IssueFieldsApi.md#trashCustomField) | **POST** /rest/api/2/field/{id}/trash | Move custom field to trash |
*IssueFieldsApi* | [**updateCustomField**](Apis/IssueFieldsApi.md#updateCustomField) | **PUT** /rest/api/2/field/{fieldId} | Update custom field |
| *IssueLinkTypesApi* | [**createIssueLinkType**](Apis/IssueLinkTypesApi.md#createIssueLinkType) | **POST** /rest/api/2/issueLinkType | Create issue link type |
*IssueLinkTypesApi* | [**deleteIssueLinkType**](Apis/IssueLinkTypesApi.md#deleteIssueLinkType) | **DELETE** /rest/api/2/issueLinkType/{issueLinkTypeId} | Delete issue link type |
*IssueLinkTypesApi* | [**getIssueLinkType**](Apis/IssueLinkTypesApi.md#getIssueLinkType) | **GET** /rest/api/2/issueLinkType/{issueLinkTypeId} | Get issue link type |
*IssueLinkTypesApi* | [**getIssueLinkTypes**](Apis/IssueLinkTypesApi.md#getIssueLinkTypes) | **GET** /rest/api/2/issueLinkType | Get issue link types |
*IssueLinkTypesApi* | [**updateIssueLinkType**](Apis/IssueLinkTypesApi.md#updateIssueLinkType) | **PUT** /rest/api/2/issueLinkType/{issueLinkTypeId} | Update issue link type |
| *IssueLinksApi* | [**deleteIssueLink**](Apis/IssueLinksApi.md#deleteIssueLink) | **DELETE** /rest/api/2/issueLink/{linkId} | Delete issue link |
*IssueLinksApi* | [**getIssueLink**](Apis/IssueLinksApi.md#getIssueLink) | **GET** /rest/api/2/issueLink/{linkId} | Get issue link |
*IssueLinksApi* | [**linkIssues**](Apis/IssueLinksApi.md#linkIssues) | **POST** /rest/api/2/issueLink | Create issue link |
| *IssueNavigatorSettingsApi* | [**getIssueNavigatorDefaultColumns**](Apis/IssueNavigatorSettingsApi.md#getIssueNavigatorDefaultColumns) | **GET** /rest/api/2/settings/columns | Get issue navigator default columns |
*IssueNavigatorSettingsApi* | [**setIssueNavigatorDefaultColumns**](Apis/IssueNavigatorSettingsApi.md#setIssueNavigatorDefaultColumns) | **PUT** /rest/api/2/settings/columns | Set issue navigator default columns |
| *IssueNotificationSchemesApi* | [**addNotifications**](Apis/IssueNotificationSchemesApi.md#addNotifications) | **PUT** /rest/api/2/notificationscheme/{id}/notification | Add notifications to notification scheme |
*IssueNotificationSchemesApi* | [**createNotificationScheme**](Apis/IssueNotificationSchemesApi.md#createNotificationScheme) | **POST** /rest/api/2/notificationscheme | Create notification scheme |
*IssueNotificationSchemesApi* | [**deleteNotificationScheme**](Apis/IssueNotificationSchemesApi.md#deleteNotificationScheme) | **DELETE** /rest/api/2/notificationscheme/{notificationSchemeId} | Delete notification scheme |
*IssueNotificationSchemesApi* | [**getNotificationScheme**](Apis/IssueNotificationSchemesApi.md#getNotificationScheme) | **GET** /rest/api/2/notificationscheme/{id} | Get notification scheme |
*IssueNotificationSchemesApi* | [**getNotificationSchemeToProjectMappings**](Apis/IssueNotificationSchemesApi.md#getNotificationSchemeToProjectMappings) | **GET** /rest/api/2/notificationscheme/project | Get projects using notification schemes paginated |
*IssueNotificationSchemesApi* | [**getNotificationSchemes**](Apis/IssueNotificationSchemesApi.md#getNotificationSchemes) | **GET** /rest/api/2/notificationscheme | Get notification schemes paginated |
*IssueNotificationSchemesApi* | [**removeNotificationFromNotificationScheme**](Apis/IssueNotificationSchemesApi.md#removeNotificationFromNotificationScheme) | **DELETE** /rest/api/2/notificationscheme/{notificationSchemeId}/notification/{notificationId} | Remove notification from notification scheme |
*IssueNotificationSchemesApi* | [**updateNotificationScheme**](Apis/IssueNotificationSchemesApi.md#updateNotificationScheme) | **PUT** /rest/api/2/notificationscheme/{id} | Update notification scheme |
| *IssuePrioritiesApi* | [**createPriority**](Apis/IssuePrioritiesApi.md#createPriority) | **POST** /rest/api/2/priority | Create priority |
*IssuePrioritiesApi* | [**deletePriority**](Apis/IssuePrioritiesApi.md#deletePriority) | **DELETE** /rest/api/2/priority/{id} | Delete priority |
*IssuePrioritiesApi* | [**getPriorities**](Apis/IssuePrioritiesApi.md#getPriorities) | **GET** /rest/api/2/priority | Get priorities |
*IssuePrioritiesApi* | [**getPriority**](Apis/IssuePrioritiesApi.md#getPriority) | **GET** /rest/api/2/priority/{id} | Get priority |
*IssuePrioritiesApi* | [**movePriorities**](Apis/IssuePrioritiesApi.md#movePriorities) | **PUT** /rest/api/2/priority/move | Move priorities |
*IssuePrioritiesApi* | [**searchPriorities**](Apis/IssuePrioritiesApi.md#searchPriorities) | **GET** /rest/api/2/priority/search | Search priorities |
*IssuePrioritiesApi* | [**setDefaultPriority**](Apis/IssuePrioritiesApi.md#setDefaultPriority) | **PUT** /rest/api/2/priority/default | Set default priority |
*IssuePrioritiesApi* | [**updatePriority**](Apis/IssuePrioritiesApi.md#updatePriority) | **PUT** /rest/api/2/priority/{id} | Update priority |
| *IssuePropertiesApi* | [**bulkDeleteIssueProperty**](Apis/IssuePropertiesApi.md#bulkDeleteIssueProperty) | **DELETE** /rest/api/2/issue/properties/{propertyKey} | Bulk delete issue property |
*IssuePropertiesApi* | [**bulkSetIssuePropertiesByIssue**](Apis/IssuePropertiesApi.md#bulkSetIssuePropertiesByIssue) | **POST** /rest/api/2/issue/properties/multi | Bulk set issue properties by issue |
*IssuePropertiesApi* | [**bulkSetIssueProperty**](Apis/IssuePropertiesApi.md#bulkSetIssueProperty) | **PUT** /rest/api/2/issue/properties/{propertyKey} | Bulk set issue property |
*IssuePropertiesApi* | [**bulkSetIssuesPropertiesList**](Apis/IssuePropertiesApi.md#bulkSetIssuesPropertiesList) | **POST** /rest/api/2/issue/properties | Bulk set issues properties by list |
*IssuePropertiesApi* | [**deleteIssueProperty**](Apis/IssuePropertiesApi.md#deleteIssueProperty) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/properties/{propertyKey} | Delete issue property |
*IssuePropertiesApi* | [**getIssueProperty**](Apis/IssuePropertiesApi.md#getIssueProperty) | **GET** /rest/api/2/issue/{issueIdOrKey}/properties/{propertyKey} | Get issue property |
*IssuePropertiesApi* | [**getIssuePropertyKeys**](Apis/IssuePropertiesApi.md#getIssuePropertyKeys) | **GET** /rest/api/2/issue/{issueIdOrKey}/properties | Get issue property keys |
*IssuePropertiesApi* | [**setIssueProperty**](Apis/IssuePropertiesApi.md#setIssueProperty) | **PUT** /rest/api/2/issue/{issueIdOrKey}/properties/{propertyKey} | Set issue property |
| *IssueRedactionApi* | [**getRedactionStatus**](Apis/IssueRedactionApi.md#getRedactionStatus) | **GET** /rest/api/2/redact/status/{jobId} | Get redaction status |
*IssueRedactionApi* | [**redact**](Apis/IssueRedactionApi.md#redact) | **POST** /rest/api/2/redact | Redact |
| *IssueRemoteLinksApi* | [**createOrUpdateRemoteIssueLink**](Apis/IssueRemoteLinksApi.md#createOrUpdateRemoteIssueLink) | **POST** /rest/api/2/issue/{issueIdOrKey}/remotelink | Create or update remote issue link |
*IssueRemoteLinksApi* | [**deleteRemoteIssueLinkByGlobalId**](Apis/IssueRemoteLinksApi.md#deleteRemoteIssueLinkByGlobalId) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/remotelink | Delete remote issue link by global ID |
*IssueRemoteLinksApi* | [**deleteRemoteIssueLinkById**](Apis/IssueRemoteLinksApi.md#deleteRemoteIssueLinkById) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/remotelink/{linkId} | Delete remote issue link by ID |
*IssueRemoteLinksApi* | [**getRemoteIssueLinkById**](Apis/IssueRemoteLinksApi.md#getRemoteIssueLinkById) | **GET** /rest/api/2/issue/{issueIdOrKey}/remotelink/{linkId} | Get remote issue link by ID |
*IssueRemoteLinksApi* | [**getRemoteIssueLinks**](Apis/IssueRemoteLinksApi.md#getRemoteIssueLinks) | **GET** /rest/api/2/issue/{issueIdOrKey}/remotelink | Get remote issue links |
*IssueRemoteLinksApi* | [**updateRemoteIssueLink**](Apis/IssueRemoteLinksApi.md#updateRemoteIssueLink) | **PUT** /rest/api/2/issue/{issueIdOrKey}/remotelink/{linkId} | Update remote issue link by ID |
| *IssueResolutionsApi* | [**createResolution**](Apis/IssueResolutionsApi.md#createResolution) | **POST** /rest/api/2/resolution | Create resolution |
*IssueResolutionsApi* | [**deleteResolution**](Apis/IssueResolutionsApi.md#deleteResolution) | **DELETE** /rest/api/2/resolution/{id} | Delete resolution |
*IssueResolutionsApi* | [**getResolution**](Apis/IssueResolutionsApi.md#getResolution) | **GET** /rest/api/2/resolution/{id} | Get resolution |
*IssueResolutionsApi* | [**getResolutions**](Apis/IssueResolutionsApi.md#getResolutions) | **GET** /rest/api/2/resolution | Get resolutions |
*IssueResolutionsApi* | [**moveResolutions**](Apis/IssueResolutionsApi.md#moveResolutions) | **PUT** /rest/api/2/resolution/move | Move resolutions |
*IssueResolutionsApi* | [**searchResolutions**](Apis/IssueResolutionsApi.md#searchResolutions) | **GET** /rest/api/2/resolution/search | Search resolutions |
*IssueResolutionsApi* | [**setDefaultResolution**](Apis/IssueResolutionsApi.md#setDefaultResolution) | **PUT** /rest/api/2/resolution/default | Set default resolution |
*IssueResolutionsApi* | [**updateResolution**](Apis/IssueResolutionsApi.md#updateResolution) | **PUT** /rest/api/2/resolution/{id} | Update resolution |
| *IssueSearchApi* | [**countIssues**](Apis/IssueSearchApi.md#countIssues) | **POST** /rest/api/2/search/approximate-count | Count issues using JQL |
*IssueSearchApi* | [**getIssuePickerResource**](Apis/IssueSearchApi.md#getIssuePickerResource) | **GET** /rest/api/2/issue/picker | Get issue picker suggestions |
*IssueSearchApi* | [**matchIssues**](Apis/IssueSearchApi.md#matchIssues) | **POST** /rest/api/2/jql/match | Check issues against JQL |
*IssueSearchApi* | [**searchAndReconsileIssuesUsingJql**](Apis/IssueSearchApi.md#searchAndReconsileIssuesUsingJql) | **GET** /rest/api/2/search/jql | Search for issues using JQL enhanced search (GET) |
*IssueSearchApi* | [**searchAndReconsileIssuesUsingJqlPost**](Apis/IssueSearchApi.md#searchAndReconsileIssuesUsingJqlPost) | **POST** /rest/api/2/search/jql | Search for issues using JQL enhanced search (POST) |
*IssueSearchApi* | [**searchForIssuesUsingJql**](Apis/IssueSearchApi.md#searchForIssuesUsingJql) | **GET** /rest/api/2/search | Currently being removed. Search for issues using JQL (GET) |
*IssueSearchApi* | [**searchForIssuesUsingJqlPost**](Apis/IssueSearchApi.md#searchForIssuesUsingJqlPost) | **POST** /rest/api/2/search | Currently being removed. Search for issues using JQL (POST) |
| *IssueSecurityLevelApi* | [**getIssueSecurityLevel**](Apis/IssueSecurityLevelApi.md#getIssueSecurityLevel) | **GET** /rest/api/2/securitylevel/{id} | Get issue security level |
*IssueSecurityLevelApi* | [**getIssueSecurityLevelMembers**](Apis/IssueSecurityLevelApi.md#getIssueSecurityLevelMembers) | **GET** /rest/api/2/issuesecurityschemes/{issueSecuritySchemeId}/members | Get issue security level members by issue security scheme |
| *IssueSecuritySchemesApi* | [**addSecurityLevel**](Apis/IssueSecuritySchemesApi.md#addSecurityLevel) | **PUT** /rest/api/2/issuesecurityschemes/{schemeId}/level | Add issue security levels |
*IssueSecuritySchemesApi* | [**addSecurityLevelMembers**](Apis/IssueSecuritySchemesApi.md#addSecurityLevelMembers) | **PUT** /rest/api/2/issuesecurityschemes/{schemeId}/level/{levelId}/member | Add issue security level members |
*IssueSecuritySchemesApi* | [**associateSchemesToProjects**](Apis/IssueSecuritySchemesApi.md#associateSchemesToProjects) | **PUT** /rest/api/2/issuesecurityschemes/project | Associate security scheme to project |
*IssueSecuritySchemesApi* | [**createIssueSecurityScheme**](Apis/IssueSecuritySchemesApi.md#createIssueSecurityScheme) | **POST** /rest/api/2/issuesecurityschemes | Create issue security scheme |
*IssueSecuritySchemesApi* | [**deleteSecurityScheme**](Apis/IssueSecuritySchemesApi.md#deleteSecurityScheme) | **DELETE** /rest/api/2/issuesecurityschemes/{schemeId} | Delete issue security scheme |
*IssueSecuritySchemesApi* | [**getIssueSecurityScheme**](Apis/IssueSecuritySchemesApi.md#getIssueSecurityScheme) | **GET** /rest/api/2/issuesecurityschemes/{id} | Get issue security scheme |
*IssueSecuritySchemesApi* | [**getIssueSecuritySchemes**](Apis/IssueSecuritySchemesApi.md#getIssueSecuritySchemes) | **GET** /rest/api/2/issuesecurityschemes | Get issue security schemes |
*IssueSecuritySchemesApi* | [**getSecurityLevelMembers**](Apis/IssueSecuritySchemesApi.md#getSecurityLevelMembers) | **GET** /rest/api/2/issuesecurityschemes/level/member | Get issue security level members |
*IssueSecuritySchemesApi* | [**getSecurityLevels**](Apis/IssueSecuritySchemesApi.md#getSecurityLevels) | **GET** /rest/api/2/issuesecurityschemes/level | Get issue security levels |
*IssueSecuritySchemesApi* | [**removeLevel**](Apis/IssueSecuritySchemesApi.md#removeLevel) | **DELETE** /rest/api/2/issuesecurityschemes/{schemeId}/level/{levelId} | Remove issue security level |
*IssueSecuritySchemesApi* | [**removeMemberFromSecurityLevel**](Apis/IssueSecuritySchemesApi.md#removeMemberFromSecurityLevel) | **DELETE** /rest/api/2/issuesecurityschemes/{schemeId}/level/{levelId}/member/{memberId} | Remove member from issue security level |
*IssueSecuritySchemesApi* | [**searchProjectsUsingSecuritySchemes**](Apis/IssueSecuritySchemesApi.md#searchProjectsUsingSecuritySchemes) | **GET** /rest/api/2/issuesecurityschemes/project | Get projects using issue security schemes |
*IssueSecuritySchemesApi* | [**searchSecuritySchemes**](Apis/IssueSecuritySchemesApi.md#searchSecuritySchemes) | **GET** /rest/api/2/issuesecurityschemes/search | Search issue security schemes |
*IssueSecuritySchemesApi* | [**setDefaultLevels**](Apis/IssueSecuritySchemesApi.md#setDefaultLevels) | **PUT** /rest/api/2/issuesecurityschemes/level/default | Set default issue security levels |
*IssueSecuritySchemesApi* | [**updateIssueSecurityScheme**](Apis/IssueSecuritySchemesApi.md#updateIssueSecurityScheme) | **PUT** /rest/api/2/issuesecurityschemes/{id} | Update issue security scheme |
*IssueSecuritySchemesApi* | [**updateSecurityLevel**](Apis/IssueSecuritySchemesApi.md#updateSecurityLevel) | **PUT** /rest/api/2/issuesecurityschemes/{schemeId}/level/{levelId} | Update issue security level |
| *IssueTypePropertiesApi* | [**deleteIssueTypeProperty**](Apis/IssueTypePropertiesApi.md#deleteIssueTypeProperty) | **DELETE** /rest/api/2/issuetype/{issueTypeId}/properties/{propertyKey} | Delete issue type property |
*IssueTypePropertiesApi* | [**getIssueTypeProperty**](Apis/IssueTypePropertiesApi.md#getIssueTypeProperty) | **GET** /rest/api/2/issuetype/{issueTypeId}/properties/{propertyKey} | Get issue type property |
*IssueTypePropertiesApi* | [**getIssueTypePropertyKeys**](Apis/IssueTypePropertiesApi.md#getIssueTypePropertyKeys) | **GET** /rest/api/2/issuetype/{issueTypeId}/properties | Get issue type property keys |
*IssueTypePropertiesApi* | [**setIssueTypeProperty**](Apis/IssueTypePropertiesApi.md#setIssueTypeProperty) | **PUT** /rest/api/2/issuetype/{issueTypeId}/properties/{propertyKey} | Set issue type property |
| *IssueTypeSchemesApi* | [**addIssueTypesToIssueTypeScheme**](Apis/IssueTypeSchemesApi.md#addIssueTypesToIssueTypeScheme) | **PUT** /rest/api/2/issuetypescheme/{issueTypeSchemeId}/issuetype | Add issue types to issue type scheme |
*IssueTypeSchemesApi* | [**assignIssueTypeSchemeToProject**](Apis/IssueTypeSchemesApi.md#assignIssueTypeSchemeToProject) | **PUT** /rest/api/2/issuetypescheme/project | Assign issue type scheme to project |
*IssueTypeSchemesApi* | [**createIssueTypeScheme**](Apis/IssueTypeSchemesApi.md#createIssueTypeScheme) | **POST** /rest/api/2/issuetypescheme | Create issue type scheme |
*IssueTypeSchemesApi* | [**deleteIssueTypeScheme**](Apis/IssueTypeSchemesApi.md#deleteIssueTypeScheme) | **DELETE** /rest/api/2/issuetypescheme/{issueTypeSchemeId} | Delete issue type scheme |
*IssueTypeSchemesApi* | [**getAllIssueTypeSchemes**](Apis/IssueTypeSchemesApi.md#getAllIssueTypeSchemes) | **GET** /rest/api/2/issuetypescheme | Get all issue type schemes |
*IssueTypeSchemesApi* | [**getIssueTypeSchemeForProjects**](Apis/IssueTypeSchemesApi.md#getIssueTypeSchemeForProjects) | **GET** /rest/api/2/issuetypescheme/project | Get issue type schemes for projects |
*IssueTypeSchemesApi* | [**getIssueTypeSchemesMapping**](Apis/IssueTypeSchemesApi.md#getIssueTypeSchemesMapping) | **GET** /rest/api/2/issuetypescheme/mapping | Get issue type scheme items |
*IssueTypeSchemesApi* | [**removeIssueTypeFromIssueTypeScheme**](Apis/IssueTypeSchemesApi.md#removeIssueTypeFromIssueTypeScheme) | **DELETE** /rest/api/2/issuetypescheme/{issueTypeSchemeId}/issuetype/{issueTypeId} | Remove issue type from issue type scheme |
*IssueTypeSchemesApi* | [**reorderIssueTypesInIssueTypeScheme**](Apis/IssueTypeSchemesApi.md#reorderIssueTypesInIssueTypeScheme) | **PUT** /rest/api/2/issuetypescheme/{issueTypeSchemeId}/issuetype/move | Change order of issue types |
*IssueTypeSchemesApi* | [**updateIssueTypeScheme**](Apis/IssueTypeSchemesApi.md#updateIssueTypeScheme) | **PUT** /rest/api/2/issuetypescheme/{issueTypeSchemeId} | Update issue type scheme |
| *IssueTypeScreenSchemesApi* | [**appendMappingsForIssueTypeScreenScheme**](Apis/IssueTypeScreenSchemesApi.md#appendMappingsForIssueTypeScreenScheme) | **PUT** /rest/api/2/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping | Append mappings to issue type screen scheme |
*IssueTypeScreenSchemesApi* | [**assignIssueTypeScreenSchemeToProject**](Apis/IssueTypeScreenSchemesApi.md#assignIssueTypeScreenSchemeToProject) | **PUT** /rest/api/2/issuetypescreenscheme/project | Assign issue type screen scheme to project |
*IssueTypeScreenSchemesApi* | [**createIssueTypeScreenScheme**](Apis/IssueTypeScreenSchemesApi.md#createIssueTypeScreenScheme) | **POST** /rest/api/2/issuetypescreenscheme | Create issue type screen scheme |
*IssueTypeScreenSchemesApi* | [**deleteIssueTypeScreenScheme**](Apis/IssueTypeScreenSchemesApi.md#deleteIssueTypeScreenScheme) | **DELETE** /rest/api/2/issuetypescreenscheme/{issueTypeScreenSchemeId} | Delete issue type screen scheme |
*IssueTypeScreenSchemesApi* | [**getIssueTypeScreenSchemeMappings**](Apis/IssueTypeScreenSchemesApi.md#getIssueTypeScreenSchemeMappings) | **GET** /rest/api/2/issuetypescreenscheme/mapping | Get issue type screen scheme items |
*IssueTypeScreenSchemesApi* | [**getIssueTypeScreenSchemeProjectAssociations**](Apis/IssueTypeScreenSchemesApi.md#getIssueTypeScreenSchemeProjectAssociations) | **GET** /rest/api/2/issuetypescreenscheme/project | Get issue type screen schemes for projects |
*IssueTypeScreenSchemesApi* | [**getIssueTypeScreenSchemes**](Apis/IssueTypeScreenSchemesApi.md#getIssueTypeScreenSchemes) | **GET** /rest/api/2/issuetypescreenscheme | Get issue type screen schemes |
*IssueTypeScreenSchemesApi* | [**getProjectsForIssueTypeScreenScheme**](Apis/IssueTypeScreenSchemesApi.md#getProjectsForIssueTypeScreenScheme) | **GET** /rest/api/2/issuetypescreenscheme/{issueTypeScreenSchemeId}/project | Get issue type screen scheme projects |
*IssueTypeScreenSchemesApi* | [**removeMappingsFromIssueTypeScreenScheme**](Apis/IssueTypeScreenSchemesApi.md#removeMappingsFromIssueTypeScreenScheme) | **POST** /rest/api/2/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping/remove | Remove mappings from issue type screen scheme |
*IssueTypeScreenSchemesApi* | [**updateDefaultScreenScheme**](Apis/IssueTypeScreenSchemesApi.md#updateDefaultScreenScheme) | **PUT** /rest/api/2/issuetypescreenscheme/{issueTypeScreenSchemeId}/mapping/default | Update issue type screen scheme default screen scheme |
*IssueTypeScreenSchemesApi* | [**updateIssueTypeScreenScheme**](Apis/IssueTypeScreenSchemesApi.md#updateIssueTypeScreenScheme) | **PUT** /rest/api/2/issuetypescreenscheme/{issueTypeScreenSchemeId} | Update issue type screen scheme |
| *IssueTypesApi* | [**createIssueType**](Apis/IssueTypesApi.md#createIssueType) | **POST** /rest/api/2/issuetype | Create issue type |
*IssueTypesApi* | [**createIssueTypeAvatar**](Apis/IssueTypesApi.md#createIssueTypeAvatar) | **POST** /rest/api/2/issuetype/{id}/avatar2 | Load issue type avatar |
*IssueTypesApi* | [**deleteIssueType**](Apis/IssueTypesApi.md#deleteIssueType) | **DELETE** /rest/api/2/issuetype/{id} | Delete issue type |
*IssueTypesApi* | [**getAlternativeIssueTypes**](Apis/IssueTypesApi.md#getAlternativeIssueTypes) | **GET** /rest/api/2/issuetype/{id}/alternatives | Get alternative issue types |
*IssueTypesApi* | [**getIssueAllTypes**](Apis/IssueTypesApi.md#getIssueAllTypes) | **GET** /rest/api/2/issuetype | Get all issue types for user |
*IssueTypesApi* | [**getIssueType**](Apis/IssueTypesApi.md#getIssueType) | **GET** /rest/api/2/issuetype/{id} | Get issue type |
*IssueTypesApi* | [**getIssueTypesForProject**](Apis/IssueTypesApi.md#getIssueTypesForProject) | **GET** /rest/api/2/issuetype/project | Get issue types for project |
*IssueTypesApi* | [**updateIssueType**](Apis/IssueTypesApi.md#updateIssueType) | **PUT** /rest/api/2/issuetype/{id} | Update issue type |
| *IssueVotesApi* | [**addVote**](Apis/IssueVotesApi.md#addVote) | **POST** /rest/api/2/issue/{issueIdOrKey}/votes | Add vote |
*IssueVotesApi* | [**getVotes**](Apis/IssueVotesApi.md#getVotes) | **GET** /rest/api/2/issue/{issueIdOrKey}/votes | Get votes |
*IssueVotesApi* | [**removeVote**](Apis/IssueVotesApi.md#removeVote) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/votes | Delete vote |
| *IssueWatchersApi* | [**addWatcher**](Apis/IssueWatchersApi.md#addWatcher) | **POST** /rest/api/2/issue/{issueIdOrKey}/watchers | Add watcher |
*IssueWatchersApi* | [**getIsWatchingIssueBulk**](Apis/IssueWatchersApi.md#getIsWatchingIssueBulk) | **POST** /rest/api/2/issue/watching | Get is watching issue bulk |
*IssueWatchersApi* | [**getIssueWatchers**](Apis/IssueWatchersApi.md#getIssueWatchers) | **GET** /rest/api/2/issue/{issueIdOrKey}/watchers | Get issue watchers |
*IssueWatchersApi* | [**removeWatcher**](Apis/IssueWatchersApi.md#removeWatcher) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/watchers | Delete watcher |
| *IssueWorklogPropertiesApi* | [**deleteWorklogProperty**](Apis/IssueWorklogPropertiesApi.md#deleteWorklogProperty) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/worklog/{worklogId}/properties/{propertyKey} | Delete worklog property |
*IssueWorklogPropertiesApi* | [**getWorklogProperty**](Apis/IssueWorklogPropertiesApi.md#getWorklogProperty) | **GET** /rest/api/2/issue/{issueIdOrKey}/worklog/{worklogId}/properties/{propertyKey} | Get worklog property |
*IssueWorklogPropertiesApi* | [**getWorklogPropertyKeys**](Apis/IssueWorklogPropertiesApi.md#getWorklogPropertyKeys) | **GET** /rest/api/2/issue/{issueIdOrKey}/worklog/{worklogId}/properties | Get worklog property keys |
*IssueWorklogPropertiesApi* | [**setWorklogProperty**](Apis/IssueWorklogPropertiesApi.md#setWorklogProperty) | **PUT** /rest/api/2/issue/{issueIdOrKey}/worklog/{worklogId}/properties/{propertyKey} | Set worklog property |
| *IssueWorklogsApi* | [**addWorklog**](Apis/IssueWorklogsApi.md#addWorklog) | **POST** /rest/api/2/issue/{issueIdOrKey}/worklog | Add worklog |
*IssueWorklogsApi* | [**bulkDeleteWorklogs**](Apis/IssueWorklogsApi.md#bulkDeleteWorklogs) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/worklog | Bulk delete worklogs |
*IssueWorklogsApi* | [**bulkMoveWorklogs**](Apis/IssueWorklogsApi.md#bulkMoveWorklogs) | **POST** /rest/api/2/issue/{issueIdOrKey}/worklog/move | Bulk move worklogs |
*IssueWorklogsApi* | [**deleteWorklog**](Apis/IssueWorklogsApi.md#deleteWorklog) | **DELETE** /rest/api/2/issue/{issueIdOrKey}/worklog/{id} | Delete worklog |
*IssueWorklogsApi* | [**getIdsOfWorklogsDeletedSince**](Apis/IssueWorklogsApi.md#getIdsOfWorklogsDeletedSince) | **GET** /rest/api/2/worklog/deleted | Get IDs of deleted worklogs |
*IssueWorklogsApi* | [**getIdsOfWorklogsModifiedSince**](Apis/IssueWorklogsApi.md#getIdsOfWorklogsModifiedSince) | **GET** /rest/api/2/worklog/updated | Get IDs of updated worklogs |
*IssueWorklogsApi* | [**getIssueWorklog**](Apis/IssueWorklogsApi.md#getIssueWorklog) | **GET** /rest/api/2/issue/{issueIdOrKey}/worklog | Get issue worklogs |
*IssueWorklogsApi* | [**getWorklog**](Apis/IssueWorklogsApi.md#getWorklog) | **GET** /rest/api/2/issue/{issueIdOrKey}/worklog/{id} | Get worklog |
*IssueWorklogsApi* | [**getWorklogsForIds**](Apis/IssueWorklogsApi.md#getWorklogsForIds) | **POST** /rest/api/2/worklog/list | Get worklogs |
*IssueWorklogsApi* | [**updateWorklog**](Apis/IssueWorklogsApi.md#updateWorklog) | **PUT** /rest/api/2/issue/{issueIdOrKey}/worklog/{id} | Update worklog |
| *IssuesApi* | [**archiveIssues**](Apis/IssuesApi.md#archiveIssues) | **PUT** /rest/api/2/issue/archive | Archive issue(s) by issue ID/key |
*IssuesApi* | [**archiveIssuesAsync**](Apis/IssuesApi.md#archiveIssuesAsync) | **POST** /rest/api/2/issue/archive | Archive issue(s) by JQL |
*IssuesApi* | [**assignIssue**](Apis/IssuesApi.md#assignIssue) | **PUT** /rest/api/2/issue/{issueIdOrKey}/assignee | Assign issue |
*IssuesApi* | [**bulkFetchIssues**](Apis/IssuesApi.md#bulkFetchIssues) | **POST** /rest/api/2/issue/bulkfetch | Bulk fetch issues |
*IssuesApi* | [**createIssue**](Apis/IssuesApi.md#createIssue) | **POST** /rest/api/2/issue | Create issue |
*IssuesApi* | [**createIssues**](Apis/IssuesApi.md#createIssues) | **POST** /rest/api/2/issue/bulk | Bulk create issue |
*IssuesApi* | [**deleteIssue**](Apis/IssuesApi.md#deleteIssue) | **DELETE** /rest/api/2/issue/{issueIdOrKey} | Delete issue |
*IssuesApi* | [**doTransition**](Apis/IssuesApi.md#doTransition) | **POST** /rest/api/2/issue/{issueIdOrKey}/transitions | Transition issue |
*IssuesApi* | [**editIssue**](Apis/IssuesApi.md#editIssue) | **PUT** /rest/api/2/issue/{issueIdOrKey} | Edit issue |
*IssuesApi* | [**exportArchivedIssues**](Apis/IssuesApi.md#exportArchivedIssues) | **PUT** /rest/api/2/issues/archive/export | Export archived issue(s) |
*IssuesApi* | [**getBulkChangelogs**](Apis/IssuesApi.md#getBulkChangelogs) | **POST** /rest/api/2/changelog/bulkfetch | Bulk fetch changelogs |
*IssuesApi* | [**getChangeLogs**](Apis/IssuesApi.md#getChangeLogs) | **GET** /rest/api/2/issue/{issueIdOrKey}/changelog | Get changelogs |
*IssuesApi* | [**getChangeLogsByIds**](Apis/IssuesApi.md#getChangeLogsByIds) | **POST** /rest/api/2/issue/{issueIdOrKey}/changelog/list | Get changelogs by IDs |
*IssuesApi* | [**getCreateIssueMeta**](Apis/IssuesApi.md#getCreateIssueMeta) | **GET** /rest/api/2/issue/createmeta | Get create issue metadata |
*IssuesApi* | [**getCreateIssueMetaIssueTypeId**](Apis/IssuesApi.md#getCreateIssueMetaIssueTypeId) | **GET** /rest/api/2/issue/createmeta/{projectIdOrKey}/issuetypes/{issueTypeId} | Get create field metadata for a project and issue type id |
*IssuesApi* | [**getCreateIssueMetaIssueTypes**](Apis/IssuesApi.md#getCreateIssueMetaIssueTypes) | **GET** /rest/api/2/issue/createmeta/{projectIdOrKey}/issuetypes | Get create metadata issue types for a project |
*IssuesApi* | [**getEditIssueMeta**](Apis/IssuesApi.md#getEditIssueMeta) | **GET** /rest/api/2/issue/{issueIdOrKey}/editmeta | Get edit issue metadata |
*IssuesApi* | [**getEvents**](Apis/IssuesApi.md#getEvents) | **GET** /rest/api/2/events | Get events |
*IssuesApi* | [**getIssue**](Apis/IssuesApi.md#getIssue) | **GET** /rest/api/2/issue/{issueIdOrKey} | Get issue |
*IssuesApi* | [**getIssueLimitReport**](Apis/IssuesApi.md#getIssueLimitReport) | **GET** /rest/api/2/issue/limit/report | Get issue limit report |
*IssuesApi* | [**getTransitions**](Apis/IssuesApi.md#getTransitions) | **GET** /rest/api/2/issue/{issueIdOrKey}/transitions | Get transitions |
*IssuesApi* | [**notify**](Apis/IssuesApi.md#notify) | **POST** /rest/api/2/issue/{issueIdOrKey}/notify | Send notification for issue |
*IssuesApi* | [**unarchiveIssues**](Apis/IssuesApi.md#unarchiveIssues) | **PUT** /rest/api/2/issue/unarchive | Unarchive issue(s) by issue keys/ID |
| *JQLApi* | [**getAutoComplete**](Apis/JQLApi.md#getAutoComplete) | **GET** /rest/api/2/jql/autocompletedata | Get field reference data (GET) |
*JQLApi* | [**getAutoCompletePost**](Apis/JQLApi.md#getAutoCompletePost) | **POST** /rest/api/2/jql/autocompletedata | Get field reference data (POST) |
*JQLApi* | [**getFieldAutoCompleteForQueryString**](Apis/JQLApi.md#getFieldAutoCompleteForQueryString) | **GET** /rest/api/2/jql/autocompletedata/suggestions | Get field auto complete suggestions |
*JQLApi* | [**migrateQueries**](Apis/JQLApi.md#migrateQueries) | **POST** /rest/api/2/jql/pdcleaner | Convert user identifiers to account IDs in JQL queries |
*JQLApi* | [**parseJqlQueries**](Apis/JQLApi.md#parseJqlQueries) | **POST** /rest/api/2/jql/parse | Parse JQL query |
*JQLApi* | [**sanitiseJqlQueries**](Apis/JQLApi.md#sanitiseJqlQueries) | **POST** /rest/api/2/jql/sanitize | Sanitize JQL queries |
| *JQLFunctionsAppsApi* | [**getPrecomputations**](Apis/JQLFunctionsAppsApi.md#getPrecomputations) | **GET** /rest/api/2/jql/function/computation | Get precomputations (apps) |
*JQLFunctionsAppsApi* | [**getPrecomputationsByID**](Apis/JQLFunctionsAppsApi.md#getPrecomputationsByID) | **POST** /rest/api/2/jql/function/computation/search | Get precomputations by ID (apps) |
*JQLFunctionsAppsApi* | [**updatePrecomputations**](Apis/JQLFunctionsAppsApi.md#updatePrecomputations) | **POST** /rest/api/2/jql/function/computation | Update precomputations (apps) |
| *JiraExpressionsApi* | [**analyseExpression**](Apis/JiraExpressionsApi.md#analyseExpression) | **POST** /rest/api/2/expression/analyse | Analyse Jira expression |
*JiraExpressionsApi* | [**evaluateJSISJiraExpression**](Apis/JiraExpressionsApi.md#evaluateJSISJiraExpression) | **POST** /rest/api/2/expression/evaluate | Evaluate Jira expression using enhanced search API |
*JiraExpressionsApi* | [**evaluateJiraExpression**](Apis/JiraExpressionsApi.md#evaluateJiraExpression) | **POST** /rest/api/2/expression/eval | Currently being removed. Evaluate Jira expression |
| *JiraSettingsApi* | [**getAdvancedSettings**](Apis/JiraSettingsApi.md#getAdvancedSettings) | **GET** /rest/api/2/application-properties/advanced-settings | Get advanced settings |
*JiraSettingsApi* | [**getApplicationProperty**](Apis/JiraSettingsApi.md#getApplicationProperty) | **GET** /rest/api/2/application-properties | Get application property |
*JiraSettingsApi* | [**getConfiguration**](Apis/JiraSettingsApi.md#getConfiguration) | **GET** /rest/api/2/configuration | Get global settings |
*JiraSettingsApi* | [**setApplicationProperty**](Apis/JiraSettingsApi.md#setApplicationProperty) | **PUT** /rest/api/2/application-properties/{id} | Set application property |
| *LabelsApi* | [**getAllLabels**](Apis/LabelsApi.md#getAllLabels) | **GET** /rest/api/2/label | Get all labels |
| *LicenseMetricsApi* | [**getApproximateApplicationLicenseCount**](Apis/LicenseMetricsApi.md#getApproximateApplicationLicenseCount) | **GET** /rest/api/2/license/approximateLicenseCount/product/{applicationKey} | Get approximate application license count |
*LicenseMetricsApi* | [**getApproximateLicenseCount**](Apis/LicenseMetricsApi.md#getApproximateLicenseCount) | **GET** /rest/api/2/license/approximateLicenseCount | Get approximate license count |
*LicenseMetricsApi* | [**getLicense**](Apis/LicenseMetricsApi.md#getLicense) | **GET** /rest/api/2/instance/license | Get license |
| *MyselfApi* | [**getCurrentUser**](Apis/MyselfApi.md#getCurrentUser) | **GET** /rest/api/2/myself | Get current user |
*MyselfApi* | [**getLocale**](Apis/MyselfApi.md#getLocale) | **GET** /rest/api/2/mypreferences/locale | Get locale |
*MyselfApi* | [**getPreference**](Apis/MyselfApi.md#getPreference) | **GET** /rest/api/2/mypreferences | Get preference |
*MyselfApi* | [**removePreference**](Apis/MyselfApi.md#removePreference) | **DELETE** /rest/api/2/mypreferences | Delete preference |
*MyselfApi* | [**setLocale**](Apis/MyselfApi.md#setLocale) | **PUT** /rest/api/2/mypreferences/locale | Set locale |
*MyselfApi* | [**setPreference**](Apis/MyselfApi.md#setPreference) | **PUT** /rest/api/2/mypreferences | Set preference |
| *PermissionSchemesApi* | [**createPermissionGrant**](Apis/PermissionSchemesApi.md#createPermissionGrant) | **POST** /rest/api/2/permissionscheme/{schemeId}/permission | Create permission grant |
*PermissionSchemesApi* | [**createPermissionScheme**](Apis/PermissionSchemesApi.md#createPermissionScheme) | **POST** /rest/api/2/permissionscheme | Create permission scheme |
*PermissionSchemesApi* | [**deletePermissionScheme**](Apis/PermissionSchemesApi.md#deletePermissionScheme) | **DELETE** /rest/api/2/permissionscheme/{schemeId} | Delete permission scheme |
*PermissionSchemesApi* | [**deletePermissionSchemeEntity**](Apis/PermissionSchemesApi.md#deletePermissionSchemeEntity) | **DELETE** /rest/api/2/permissionscheme/{schemeId}/permission/{permissionId} | Delete permission scheme grant |
*PermissionSchemesApi* | [**getAllPermissionSchemes**](Apis/PermissionSchemesApi.md#getAllPermissionSchemes) | **GET** /rest/api/2/permissionscheme | Get all permission schemes |
*PermissionSchemesApi* | [**getPermissionScheme**](Apis/PermissionSchemesApi.md#getPermissionScheme) | **GET** /rest/api/2/permissionscheme/{schemeId} | Get permission scheme |
*PermissionSchemesApi* | [**getPermissionSchemeGrant**](Apis/PermissionSchemesApi.md#getPermissionSchemeGrant) | **GET** /rest/api/2/permissionscheme/{schemeId}/permission/{permissionId} | Get permission scheme grant |
*PermissionSchemesApi* | [**getPermissionSchemeGrants**](Apis/PermissionSchemesApi.md#getPermissionSchemeGrants) | **GET** /rest/api/2/permissionscheme/{schemeId}/permission | Get permission scheme grants |
*PermissionSchemesApi* | [**updatePermissionScheme**](Apis/PermissionSchemesApi.md#updatePermissionScheme) | **PUT** /rest/api/2/permissionscheme/{schemeId} | Update permission scheme |
| *PermissionsApi* | [**getAllPermissions**](Apis/PermissionsApi.md#getAllPermissions) | **GET** /rest/api/2/permissions | Get all permissions |
*PermissionsApi* | [**getBulkPermissions**](Apis/PermissionsApi.md#getBulkPermissions) | **POST** /rest/api/2/permissions/check | Get bulk permissions |
*PermissionsApi* | [**getMyPermissions**](Apis/PermissionsApi.md#getMyPermissions) | **GET** /rest/api/2/mypermissions | Get my permissions |
*PermissionsApi* | [**getPermittedProjects**](Apis/PermissionsApi.md#getPermittedProjects) | **POST** /rest/api/2/permissions/project | Get permitted projects |
| *PlansApi* | [**archivePlan**](Apis/PlansApi.md#archivePlan) | **PUT** /rest/api/2/plans/plan/{planId}/archive | Archive plan |
*PlansApi* | [**createPlan**](Apis/PlansApi.md#createPlan) | **POST** /rest/api/2/plans/plan | Create plan |
*PlansApi* | [**duplicatePlan**](Apis/PlansApi.md#duplicatePlan) | **POST** /rest/api/2/plans/plan/{planId}/duplicate | Duplicate plan |
*PlansApi* | [**getPlan**](Apis/PlansApi.md#getPlan) | **GET** /rest/api/2/plans/plan/{planId} | Get plan |
*PlansApi* | [**getPlans**](Apis/PlansApi.md#getPlans) | **GET** /rest/api/2/plans/plan | Get plans paginated |
*PlansApi* | [**trashPlan**](Apis/PlansApi.md#trashPlan) | **PUT** /rest/api/2/plans/plan/{planId}/trash | Trash plan |
*PlansApi* | [**updatePlan**](Apis/PlansApi.md#updatePlan) | **PUT** /rest/api/2/plans/plan/{planId} | Update plan |
| *PrioritySchemesApi* | [**createPriorityScheme**](Apis/PrioritySchemesApi.md#createPriorityScheme) | **POST** /rest/api/2/priorityscheme | Create priority scheme |
*PrioritySchemesApi* | [**deletePriorityScheme**](Apis/PrioritySchemesApi.md#deletePriorityScheme) | **DELETE** /rest/api/2/priorityscheme/{schemeId} | Delete priority scheme |
*PrioritySchemesApi* | [**getAvailablePrioritiesByPriorityScheme**](Apis/PrioritySchemesApi.md#getAvailablePrioritiesByPriorityScheme) | **GET** /rest/api/2/priorityscheme/priorities/available | Get available priorities by priority scheme |
*PrioritySchemesApi* | [**getPrioritiesByPriorityScheme**](Apis/PrioritySchemesApi.md#getPrioritiesByPriorityScheme) | **GET** /rest/api/2/priorityscheme/{schemeId}/priorities | Get priorities by priority scheme |
*PrioritySchemesApi* | [**getPrioritySchemes**](Apis/PrioritySchemesApi.md#getPrioritySchemes) | **GET** /rest/api/2/priorityscheme | Get priority schemes |
*PrioritySchemesApi* | [**getProjectsByPriorityScheme**](Apis/PrioritySchemesApi.md#getProjectsByPriorityScheme) | **GET** /rest/api/2/priorityscheme/{schemeId}/projects | Get projects by priority scheme |
*PrioritySchemesApi* | [**suggestedPrioritiesForMappings**](Apis/PrioritySchemesApi.md#suggestedPrioritiesForMappings) | **POST** /rest/api/2/priorityscheme/mappings | Suggested priorities for mappings |
*PrioritySchemesApi* | [**updatePriorityScheme**](Apis/PrioritySchemesApi.md#updatePriorityScheme) | **PUT** /rest/api/2/priorityscheme/{schemeId} | Update priority scheme |
| *ProjectAvatarsApi* | [**createProjectAvatar**](Apis/ProjectAvatarsApi.md#createProjectAvatar) | **POST** /rest/api/2/project/{projectIdOrKey}/avatar2 | Load project avatar |
*ProjectAvatarsApi* | [**deleteProjectAvatar**](Apis/ProjectAvatarsApi.md#deleteProjectAvatar) | **DELETE** /rest/api/2/project/{projectIdOrKey}/avatar/{id} | Delete project avatar |
*ProjectAvatarsApi* | [**getAllProjectAvatars**](Apis/ProjectAvatarsApi.md#getAllProjectAvatars) | **GET** /rest/api/2/project/{projectIdOrKey}/avatars | Get all project avatars |
*ProjectAvatarsApi* | [**updateProjectAvatar**](Apis/ProjectAvatarsApi.md#updateProjectAvatar) | **PUT** /rest/api/2/project/{projectIdOrKey}/avatar | Set project avatar |
| *ProjectCategoriesApi* | [**createProjectCategory**](Apis/ProjectCategoriesApi.md#createProjectCategory) | **POST** /rest/api/2/projectCategory | Create project category |
*ProjectCategoriesApi* | [**getAllProjectCategories**](Apis/ProjectCategoriesApi.md#getAllProjectCategories) | **GET** /rest/api/2/projectCategory | Get all project categories |
*ProjectCategoriesApi* | [**getProjectCategoryById**](Apis/ProjectCategoriesApi.md#getProjectCategoryById) | **GET** /rest/api/2/projectCategory/{id} | Get project category by ID |
*ProjectCategoriesApi* | [**removeProjectCategory**](Apis/ProjectCategoriesApi.md#removeProjectCategory) | **DELETE** /rest/api/2/projectCategory/{id} | Delete project category |
*ProjectCategoriesApi* | [**updateProjectCategory**](Apis/ProjectCategoriesApi.md#updateProjectCategory) | **PUT** /rest/api/2/projectCategory/{id} | Update project category |
| *ProjectClassificationLevelsApi* | [**getDefaultProjectClassification**](Apis/ProjectClassificationLevelsApi.md#getDefaultProjectClassification) | **GET** /rest/api/2/project/{projectIdOrKey}/classification-level/default | Get the default data classification level of a project |
*ProjectClassificationLevelsApi* | [**removeDefaultProjectClassification**](Apis/ProjectClassificationLevelsApi.md#removeDefaultProjectClassification) | **DELETE** /rest/api/2/project/{projectIdOrKey}/classification-level/default | Remove the default data classification level from a project |
*ProjectClassificationLevelsApi* | [**updateDefaultProjectClassification**](Apis/ProjectClassificationLevelsApi.md#updateDefaultProjectClassification) | **PUT** /rest/api/2/project/{projectIdOrKey}/classification-level/default | Update the default data classification level of a project |
| *ProjectComponentsApi* | [**createComponent**](Apis/ProjectComponentsApi.md#createComponent) | **POST** /rest/api/2/component | Create component |
*ProjectComponentsApi* | [**deleteComponent**](Apis/ProjectComponentsApi.md#deleteComponent) | **DELETE** /rest/api/2/component/{id} | Delete component |
*ProjectComponentsApi* | [**findComponentsForProjects**](Apis/ProjectComponentsApi.md#findComponentsForProjects) | **GET** /rest/api/2/component | Find components for projects |
*ProjectComponentsApi* | [**getComponent**](Apis/ProjectComponentsApi.md#getComponent) | **GET** /rest/api/2/component/{id} | Get component |
*ProjectComponentsApi* | [**getComponentRelatedIssues**](Apis/ProjectComponentsApi.md#getComponentRelatedIssues) | **GET** /rest/api/2/component/{id}/relatedIssueCounts | Get component issues count |
*ProjectComponentsApi* | [**getProjectComponents**](Apis/ProjectComponentsApi.md#getProjectComponents) | **GET** /rest/api/2/project/{projectIdOrKey}/components | Get project components |
*ProjectComponentsApi* | [**getProjectComponentsPaginated**](Apis/ProjectComponentsApi.md#getProjectComponentsPaginated) | **GET** /rest/api/2/project/{projectIdOrKey}/component | Get project components paginated |
*ProjectComponentsApi* | [**updateComponent**](Apis/ProjectComponentsApi.md#updateComponent) | **PUT** /rest/api/2/component/{id} | Update component |
| *ProjectEmailApi* | [**getProjectEmail**](Apis/ProjectEmailApi.md#getProjectEmail) | **GET** /rest/api/2/project/{projectId}/email | Get project's sender email |
*ProjectEmailApi* | [**updateProjectEmail**](Apis/ProjectEmailApi.md#updateProjectEmail) | **PUT** /rest/api/2/project/{projectId}/email | Set project's sender email |
| *ProjectFeaturesApi* | [**getFeaturesForProject**](Apis/ProjectFeaturesApi.md#getFeaturesForProject) | **GET** /rest/api/2/project/{projectIdOrKey}/features | Get project features |
*ProjectFeaturesApi* | [**toggleFeatureForProject**](Apis/ProjectFeaturesApi.md#toggleFeatureForProject) | **PUT** /rest/api/2/project/{projectIdOrKey}/features/{featureKey} | Set project feature state |
| *ProjectKeyAndNameValidationApi* | [**getValidProjectKey**](Apis/ProjectKeyAndNameValidationApi.md#getValidProjectKey) | **GET** /rest/api/2/projectvalidate/validProjectKey | Get valid project key |
*ProjectKeyAndNameValidationApi* | [**getValidProjectName**](Apis/ProjectKeyAndNameValidationApi.md#getValidProjectName) | **GET** /rest/api/2/projectvalidate/validProjectName | Get valid project name |
*ProjectKeyAndNameValidationApi* | [**validateProjectKey**](Apis/ProjectKeyAndNameValidationApi.md#validateProjectKey) | **GET** /rest/api/2/projectvalidate/key | Validate project key |
| *ProjectPermissionSchemesApi* | [**assignPermissionScheme**](Apis/ProjectPermissionSchemesApi.md#assignPermissionScheme) | **PUT** /rest/api/2/project/{projectKeyOrId}/permissionscheme | Assign permission scheme |
*ProjectPermissionSchemesApi* | [**getAssignedPermissionScheme**](Apis/ProjectPermissionSchemesApi.md#getAssignedPermissionScheme) | **GET** /rest/api/2/project/{projectKeyOrId}/permissionscheme | Get assigned permission scheme |
*ProjectPermissionSchemesApi* | [**getProjectIssueSecurityScheme**](Apis/ProjectPermissionSchemesApi.md#getProjectIssueSecurityScheme) | **GET** /rest/api/2/project/{projectKeyOrId}/issuesecuritylevelscheme | Get project issue security scheme |
*ProjectPermissionSchemesApi* | [**getSecurityLevelsForProject**](Apis/ProjectPermissionSchemesApi.md#getSecurityLevelsForProject) | **GET** /rest/api/2/project/{projectKeyOrId}/securitylevel | Get project issue security levels |
| *ProjectPropertiesApi* | [**deleteProjectProperty**](Apis/ProjectPropertiesApi.md#deleteProjectProperty) | **DELETE** /rest/api/2/project/{projectIdOrKey}/properties/{propertyKey} | Delete project property |
*ProjectPropertiesApi* | [**getProjectProperty**](Apis/ProjectPropertiesApi.md#getProjectProperty) | **GET** /rest/api/2/project/{projectIdOrKey}/properties/{propertyKey} | Get project property |
*ProjectPropertiesApi* | [**getProjectPropertyKeys**](Apis/ProjectPropertiesApi.md#getProjectPropertyKeys) | **GET** /rest/api/2/project/{projectIdOrKey}/properties | Get project property keys |
*ProjectPropertiesApi* | [**setProjectProperty**](Apis/ProjectPropertiesApi.md#setProjectProperty) | **PUT** /rest/api/2/project/{projectIdOrKey}/properties/{propertyKey} | Set project property |
| *ProjectRoleActorsApi* | [**addActorUsers**](Apis/ProjectRoleActorsApi.md#addActorUsers) | **POST** /rest/api/2/project/{projectIdOrKey}/role/{id} | Add actors to project role |
*ProjectRoleActorsApi* | [**addProjectRoleActorsToRole**](Apis/ProjectRoleActorsApi.md#addProjectRoleActorsToRole) | **POST** /rest/api/2/role/{id}/actors | Add default actors to project role |
*ProjectRoleActorsApi* | [**deleteActor**](Apis/ProjectRoleActorsApi.md#deleteActor) | **DELETE** /rest/api/2/project/{projectIdOrKey}/role/{id} | Delete actors from project role |
*ProjectRoleActorsApi* | [**deleteProjectRoleActorsFromRole**](Apis/ProjectRoleActorsApi.md#deleteProjectRoleActorsFromRole) | **DELETE** /rest/api/2/role/{id}/actors | Delete default actors from project role |
*ProjectRoleActorsApi* | [**getProjectRoleActorsForRole**](Apis/ProjectRoleActorsApi.md#getProjectRoleActorsForRole) | **GET** /rest/api/2/role/{id}/actors | Get default actors for project role |
*ProjectRoleActorsApi* | [**setActors**](Apis/ProjectRoleActorsApi.md#setActors) | **PUT** /rest/api/2/project/{projectIdOrKey}/role/{id} | Set actors for project role |
| *ProjectRolesApi* | [**createProjectRole**](Apis/ProjectRolesApi.md#createProjectRole) | **POST** /rest/api/2/role | Create project role |
*ProjectRolesApi* | [**deleteProjectRole**](Apis/ProjectRolesApi.md#deleteProjectRole) | **DELETE** /rest/api/2/role/{id} | Delete project role |
*ProjectRolesApi* | [**fullyUpdateProjectRole**](Apis/ProjectRolesApi.md#fullyUpdateProjectRole) | **PUT** /rest/api/2/role/{id} | Fully update project role |
*ProjectRolesApi* | [**getAllProjectRoles**](Apis/ProjectRolesApi.md#getAllProjectRoles) | **GET** /rest/api/2/role | Get all project roles |
*ProjectRolesApi* | [**getProjectRole**](Apis/ProjectRolesApi.md#getProjectRole) | **GET** /rest/api/2/project/{projectIdOrKey}/role/{id} | Get project role for project |
*ProjectRolesApi* | [**getProjectRoleById**](Apis/ProjectRolesApi.md#getProjectRoleById) | **GET** /rest/api/2/role/{id} | Get project role by ID |
*ProjectRolesApi* | [**getProjectRoleDetails**](Apis/ProjectRolesApi.md#getProjectRoleDetails) | **GET** /rest/api/2/project/{projectIdOrKey}/roledetails | Get project role details |
*ProjectRolesApi* | [**getProjectRoles**](Apis/ProjectRolesApi.md#getProjectRoles) | **GET** /rest/api/2/project/{projectIdOrKey}/role | Get project roles for project |
*ProjectRolesApi* | [**partialUpdateProjectRole**](Apis/ProjectRolesApi.md#partialUpdateProjectRole) | **POST** /rest/api/2/role/{id} | Partial update project role |
| *ProjectTemplatesApi* | [**createProjectWithCustomTemplate**](Apis/ProjectTemplatesApi.md#createProjectWithCustomTemplate) | **POST** /rest/api/2/project-template | Create custom project |
*ProjectTemplatesApi* | [**editTemplate**](Apis/ProjectTemplatesApi.md#editTemplate) | **PUT** /rest/api/2/project-template/edit-template | Edit a custom project template |
*ProjectTemplatesApi* | [**liveTemplate**](Apis/ProjectTemplatesApi.md#liveTemplate) | **GET** /rest/api/2/project-template/live-template | Gets a custom project template |
*ProjectTemplatesApi* | [**removeTemplate**](Apis/ProjectTemplatesApi.md#removeTemplate) | **DELETE** /rest/api/2/project-template/remove-template | Deletes a custom project template |
*ProjectTemplatesApi* | [**saveTemplate**](Apis/ProjectTemplatesApi.md#saveTemplate) | **POST** /rest/api/2/project-template/save-template | Save a custom project template |
| *ProjectTypesApi* | [**getAccessibleProjectTypeByKey**](Apis/ProjectTypesApi.md#getAccessibleProjectTypeByKey) | **GET** /rest/api/2/project/type/{projectTypeKey}/accessible | Get accessible project type by key |
*ProjectTypesApi* | [**getAllAccessibleProjectTypes**](Apis/ProjectTypesApi.md#getAllAccessibleProjectTypes) | **GET** /rest/api/2/project/type/accessible | Get licensed project types |
*ProjectTypesApi* | [**getAllProjectTypes**](Apis/ProjectTypesApi.md#getAllProjectTypes) | **GET** /rest/api/2/project/type | Get all project types |
*ProjectTypesApi* | [**getProjectTypeByKey**](Apis/ProjectTypesApi.md#getProjectTypeByKey) | **GET** /rest/api/2/project/type/{projectTypeKey} | Get project type by key |
| *ProjectVersionsApi* | [**createRelatedWork**](Apis/ProjectVersionsApi.md#createRelatedWork) | **POST** /rest/api/2/version/{id}/relatedwork | Create related work |
*ProjectVersionsApi* | [**createVersion**](Apis/ProjectVersionsApi.md#createVersion) | **POST** /rest/api/2/version | Create version |
*ProjectVersionsApi* | [**deleteAndReplaceVersion**](Apis/ProjectVersionsApi.md#deleteAndReplaceVersion) | **POST** /rest/api/2/version/{id}/removeAndSwap | Delete and replace version |
*ProjectVersionsApi* | [**deleteRelatedWork**](Apis/ProjectVersionsApi.md#deleteRelatedWork) | **DELETE** /rest/api/2/version/{versionId}/relatedwork/{relatedWorkId} | Delete related work |
*ProjectVersionsApi* | [**deleteVersion**](Apis/ProjectVersionsApi.md#deleteVersion) | **DELETE** /rest/api/2/version/{id} | Delete version |
*ProjectVersionsApi* | [**getProjectVersions**](Apis/ProjectVersionsApi.md#getProjectVersions) | **GET** /rest/api/2/project/{projectIdOrKey}/versions | Get project versions |
*ProjectVersionsApi* | [**getProjectVersionsPaginated**](Apis/ProjectVersionsApi.md#getProjectVersionsPaginated) | **GET** /rest/api/2/project/{projectIdOrKey}/version | Get project versions paginated |
*ProjectVersionsApi* | [**getRelatedWork**](Apis/ProjectVersionsApi.md#getRelatedWork) | **GET** /rest/api/2/version/{id}/relatedwork | Get related work |
*ProjectVersionsApi* | [**getVersion**](Apis/ProjectVersionsApi.md#getVersion) | **GET** /rest/api/2/version/{id} | Get version |
*ProjectVersionsApi* | [**getVersionRelatedIssues**](Apis/ProjectVersionsApi.md#getVersionRelatedIssues) | **GET** /rest/api/2/version/{id}/relatedIssueCounts | Get version's related issues count |
*ProjectVersionsApi* | [**getVersionUnresolvedIssues**](Apis/ProjectVersionsApi.md#getVersionUnresolvedIssues) | **GET** /rest/api/2/version/{id}/unresolvedIssueCount | Get version's unresolved issues count |
*ProjectVersionsApi* | [**mergeVersions**](Apis/ProjectVersionsApi.md#mergeVersions) | **PUT** /rest/api/2/version/{id}/mergeto/{moveIssuesTo} | Merge versions |
*ProjectVersionsApi* | [**moveVersion**](Apis/ProjectVersionsApi.md#moveVersion) | **POST** /rest/api/2/version/{id}/move | Move version |
*ProjectVersionsApi* | [**updateRelatedWork**](Apis/ProjectVersionsApi.md#updateRelatedWork) | **PUT** /rest/api/2/version/{id}/relatedwork | Update related work |
*ProjectVersionsApi* | [**updateVersion**](Apis/ProjectVersionsApi.md#updateVersion) | **PUT** /rest/api/2/version/{id} | Update version |
| *ProjectsApi* | [**archiveProject**](Apis/ProjectsApi.md#archiveProject) | **POST** /rest/api/2/project/{projectIdOrKey}/archive | Archive project |
*ProjectsApi* | [**createProject**](Apis/ProjectsApi.md#createProject) | **POST** /rest/api/2/project | Create project |
*ProjectsApi* | [**deleteProject**](Apis/ProjectsApi.md#deleteProject) | **DELETE** /rest/api/2/project/{projectIdOrKey} | Delete project |
*ProjectsApi* | [**deleteProjectAsynchronously**](Apis/ProjectsApi.md#deleteProjectAsynchronously) | **POST** /rest/api/2/project/{projectIdOrKey}/delete | Delete project asynchronously |
*ProjectsApi* | [**getAllProjects**](Apis/ProjectsApi.md#getAllProjects) | **GET** /rest/api/2/project | Get all projects |
*ProjectsApi* | [**getAllStatuses**](Apis/ProjectsApi.md#getAllStatuses) | **GET** /rest/api/2/project/{projectIdOrKey}/statuses | Get all statuses for project |
*ProjectsApi* | [**getHierarchy**](Apis/ProjectsApi.md#getHierarchy) | **GET** /rest/api/2/project/{projectId}/hierarchy | Get project issue type hierarchy |
*ProjectsApi* | [**getNotificationSchemeForProject**](Apis/ProjectsApi.md#getNotificationSchemeForProject) | **GET** /rest/api/2/project/{projectKeyOrId}/notificationscheme | Get project notification scheme |
*ProjectsApi* | [**getProject**](Apis/ProjectsApi.md#getProject) | **GET** /rest/api/2/project/{projectIdOrKey} | Get project |
*ProjectsApi* | [**getRecent**](Apis/ProjectsApi.md#getRecent) | **GET** /rest/api/2/project/recent | Get recent projects |
*ProjectsApi* | [**restore**](Apis/ProjectsApi.md#restore) | **POST** /rest/api/2/project/{projectIdOrKey}/restore | Restore deleted or archived project |
*ProjectsApi* | [**searchProjects**](Apis/ProjectsApi.md#searchProjects) | **GET** /rest/api/2/project/search | Get projects paginated |
*ProjectsApi* | [**updateProject**](Apis/ProjectsApi.md#updateProject) | **PUT** /rest/api/2/project/{projectIdOrKey} | Update project |
| *ScreenSchemesApi* | [**createScreenScheme**](Apis/ScreenSchemesApi.md#createScreenScheme) | **POST** /rest/api/2/screenscheme | Create screen scheme |
*ScreenSchemesApi* | [**deleteScreenScheme**](Apis/ScreenSchemesApi.md#deleteScreenScheme) | **DELETE** /rest/api/2/screenscheme/{screenSchemeId} | Delete screen scheme |
*ScreenSchemesApi* | [**getScreenSchemes**](Apis/ScreenSchemesApi.md#getScreenSchemes) | **GET** /rest/api/2/screenscheme | Get screen schemes |
*ScreenSchemesApi* | [**updateScreenScheme**](Apis/ScreenSchemesApi.md#updateScreenScheme) | **PUT** /rest/api/2/screenscheme/{screenSchemeId} | Update screen scheme |
| *ScreenTabFieldsApi* | [**addScreenTabField**](Apis/ScreenTabFieldsApi.md#addScreenTabField) | **POST** /rest/api/2/screens/{screenId}/tabs/{tabId}/fields | Add screen tab field |
*ScreenTabFieldsApi* | [**getAllScreenTabFields**](Apis/ScreenTabFieldsApi.md#getAllScreenTabFields) | **GET** /rest/api/2/screens/{screenId}/tabs/{tabId}/fields | Get all screen tab fields |
*ScreenTabFieldsApi* | [**moveScreenTabField**](Apis/ScreenTabFieldsApi.md#moveScreenTabField) | **POST** /rest/api/2/screens/{screenId}/tabs/{tabId}/fields/{id}/move | Move screen tab field |
*ScreenTabFieldsApi* | [**removeScreenTabField**](Apis/ScreenTabFieldsApi.md#removeScreenTabField) | **DELETE** /rest/api/2/screens/{screenId}/tabs/{tabId}/fields/{id} | Remove screen tab field |
| *ScreenTabsApi* | [**addScreenTab**](Apis/ScreenTabsApi.md#addScreenTab) | **POST** /rest/api/2/screens/{screenId}/tabs | Create screen tab |
*ScreenTabsApi* | [**deleteScreenTab**](Apis/ScreenTabsApi.md#deleteScreenTab) | **DELETE** /rest/api/2/screens/{screenId}/tabs/{tabId} | Delete screen tab |
*ScreenTabsApi* | [**getAllScreenTabs**](Apis/ScreenTabsApi.md#getAllScreenTabs) | **GET** /rest/api/2/screens/{screenId}/tabs | Get all screen tabs |
*ScreenTabsApi* | [**getBulkScreenTabs**](Apis/ScreenTabsApi.md#getBulkScreenTabs) | **GET** /rest/api/2/screens/tabs | Get bulk screen tabs |
*ScreenTabsApi* | [**moveScreenTab**](Apis/ScreenTabsApi.md#moveScreenTab) | **POST** /rest/api/2/screens/{screenId}/tabs/{tabId}/move/{pos} | Move screen tab |
*ScreenTabsApi* | [**renameScreenTab**](Apis/ScreenTabsApi.md#renameScreenTab) | **PUT** /rest/api/2/screens/{screenId}/tabs/{tabId} | Update screen tab |
| *ScreensApi* | [**addFieldToDefaultScreen**](Apis/ScreensApi.md#addFieldToDefaultScreen) | **POST** /rest/api/2/screens/addToDefault/{fieldId} | Add field to default screen |
*ScreensApi* | [**createScreen**](Apis/ScreensApi.md#createScreen) | **POST** /rest/api/2/screens | Create screen |
*ScreensApi* | [**deleteScreen**](Apis/ScreensApi.md#deleteScreen) | **DELETE** /rest/api/2/screens/{screenId} | Delete screen |
*ScreensApi* | [**getAvailableScreenFields**](Apis/ScreensApi.md#getAvailableScreenFields) | **GET** /rest/api/2/screens/{screenId}/availableFields | Get available screen fields |
*ScreensApi* | [**getScreens**](Apis/ScreensApi.md#getScreens) | **GET** /rest/api/2/screens | Get screens |
*ScreensApi* | [**getScreensForField**](Apis/ScreensApi.md#getScreensForField) | **GET** /rest/api/2/field/{fieldId}/screens | Get screens for a field |
*ScreensApi* | [**updateScreen**](Apis/ScreensApi.md#updateScreen) | **PUT** /rest/api/2/screens/{screenId} | Update screen |
| *ServerInfoApi* | [**getServerInfo**](Apis/ServerInfoApi.md#getServerInfo) | **GET** /rest/api/2/serverInfo | Get Jira instance info |
| *ServiceRegistryApi* | [**serviceRegistryResource.servicesGet**](Apis/ServiceRegistryApi.md#serviceRegistryResource.servicesGet) | **GET** /rest/atlassian-connect/1/service-registry | Retrieve the attributes of service registries |
| *StatusApi* | [**createStatuses**](Apis/StatusApi.md#createStatuses) | **POST** /rest/api/2/statuses | Bulk create statuses |
*StatusApi* | [**deleteStatusesById**](Apis/StatusApi.md#deleteStatusesById) | **DELETE** /rest/api/2/statuses | Bulk delete Statuses |
*StatusApi* | [**getProjectIssueTypeUsagesForStatus**](Apis/StatusApi.md#getProjectIssueTypeUsagesForStatus) | **GET** /rest/api/2/statuses/{statusId}/project/{projectId}/issueTypeUsages | Get issue type usages by status and project |
*StatusApi* | [**getProjectUsagesForStatus**](Apis/StatusApi.md#getProjectUsagesForStatus) | **GET** /rest/api/2/statuses/{statusId}/projectUsages | Get project usages by status |
*StatusApi* | [**getStatusesById**](Apis/StatusApi.md#getStatusesById) | **GET** /rest/api/2/statuses | Bulk get statuses |
*StatusApi* | [**getStatusesByName**](Apis/StatusApi.md#getStatusesByName) | **GET** /rest/api/2/statuses/byNames | Bulk get statuses by name |
*StatusApi* | [**getWorkflowUsagesForStatus**](Apis/StatusApi.md#getWorkflowUsagesForStatus) | **GET** /rest/api/2/statuses/{statusId}/workflowUsages | Get workflow usages by status |
*StatusApi* | [**search**](Apis/StatusApi.md#search) | **GET** /rest/api/2/statuses/search | Search statuses paginated |
*StatusApi* | [**updateStatuses**](Apis/StatusApi.md#updateStatuses) | **PUT** /rest/api/2/statuses | Bulk update statuses |
| *TasksApi* | [**cancelTask**](Apis/TasksApi.md#cancelTask) | **POST** /rest/api/2/task/{taskId}/cancel | Cancel task |
*TasksApi* | [**getTask**](Apis/TasksApi.md#getTask) | **GET** /rest/api/2/task/{taskId} | Get task |
| *TeamsInPlanApi* | [**addAtlassianTeam**](Apis/TeamsInPlanApi.md#addAtlassianTeam) | **POST** /rest/api/2/plans/plan/{planId}/team/atlassian | Add Atlassian team to plan |
*TeamsInPlanApi* | [**createPlanOnlyTeam**](Apis/TeamsInPlanApi.md#createPlanOnlyTeam) | **POST** /rest/api/2/plans/plan/{planId}/team/planonly | Create plan-only team |
*TeamsInPlanApi* | [**deletePlanOnlyTeam**](Apis/TeamsInPlanApi.md#deletePlanOnlyTeam) | **DELETE** /rest/api/2/plans/plan/{planId}/team/planonly/{planOnlyTeamId} | Delete plan-only team |
*TeamsInPlanApi* | [**getAtlassianTeam**](Apis/TeamsInPlanApi.md#getAtlassianTeam) | **GET** /rest/api/2/plans/plan/{planId}/team/atlassian/{atlassianTeamId} | Get Atlassian team in plan |
*TeamsInPlanApi* | [**getPlanOnlyTeam**](Apis/TeamsInPlanApi.md#getPlanOnlyTeam) | **GET** /rest/api/2/plans/plan/{planId}/team/planonly/{planOnlyTeamId} | Get plan-only team |
*TeamsInPlanApi* | [**getTeams**](Apis/TeamsInPlanApi.md#getTeams) | **GET** /rest/api/2/plans/plan/{planId}/team | Get teams in plan paginated |
*TeamsInPlanApi* | [**removeAtlassianTeam**](Apis/TeamsInPlanApi.md#removeAtlassianTeam) | **DELETE** /rest/api/2/plans/plan/{planId}/team/atlassian/{atlassianTeamId} | Remove Atlassian team from plan |
*TeamsInPlanApi* | [**updateAtlassianTeam**](Apis/TeamsInPlanApi.md#updateAtlassianTeam) | **PUT** /rest/api/2/plans/plan/{planId}/team/atlassian/{atlassianTeamId} | Update Atlassian team in plan |
*TeamsInPlanApi* | [**updatePlanOnlyTeam**](Apis/TeamsInPlanApi.md#updatePlanOnlyTeam) | **PUT** /rest/api/2/plans/plan/{planId}/team/planonly/{planOnlyTeamId} | Update plan-only team |
| *TimeTrackingApi* | [**getAvailableTimeTrackingImplementations**](Apis/TimeTrackingApi.md#getAvailableTimeTrackingImplementations) | **GET** /rest/api/2/configuration/timetracking/list | Get all time tracking providers |
*TimeTrackingApi* | [**getSelectedTimeTrackingImplementation**](Apis/TimeTrackingApi.md#getSelectedTimeTrackingImplementation) | **GET** /rest/api/2/configuration/timetracking | Get selected time tracking provider |
*TimeTrackingApi* | [**getSharedTimeTrackingConfiguration**](Apis/TimeTrackingApi.md#getSharedTimeTrackingConfiguration) | **GET** /rest/api/2/configuration/timetracking/options | Get time tracking settings |
*TimeTrackingApi* | [**selectTimeTrackingImplementation**](Apis/TimeTrackingApi.md#selectTimeTrackingImplementation) | **PUT** /rest/api/2/configuration/timetracking | Select time tracking provider |
*TimeTrackingApi* | [**setSharedTimeTrackingConfiguration**](Apis/TimeTrackingApi.md#setSharedTimeTrackingConfiguration) | **PUT** /rest/api/2/configuration/timetracking/options | Set time tracking settings |
| *UIModificationsAppsApi* | [**createUiModification**](Apis/UIModificationsAppsApi.md#createUiModification) | **POST** /rest/api/2/uiModifications | Create UI modification |
*UIModificationsAppsApi* | [**deleteUiModification**](Apis/UIModificationsAppsApi.md#deleteUiModification) | **DELETE** /rest/api/2/uiModifications/{uiModificationId} | Delete UI modification |
*UIModificationsAppsApi* | [**getUiModifications**](Apis/UIModificationsAppsApi.md#getUiModifications) | **GET** /rest/api/2/uiModifications | Get UI modifications |
*UIModificationsAppsApi* | [**updateUiModification**](Apis/UIModificationsAppsApi.md#updateUiModification) | **PUT** /rest/api/2/uiModifications/{uiModificationId} | Update UI modification |
| *UserPropertiesApi* | [**deleteUserProperty**](Apis/UserPropertiesApi.md#deleteUserProperty) | **DELETE** /rest/api/2/user/properties/{propertyKey} | Delete user property |
*UserPropertiesApi* | [**getUserProperty**](Apis/UserPropertiesApi.md#getUserProperty) | **GET** /rest/api/2/user/properties/{propertyKey} | Get user property |
*UserPropertiesApi* | [**getUserPropertyKeys**](Apis/UserPropertiesApi.md#getUserPropertyKeys) | **GET** /rest/api/2/user/properties | Get user property keys |
*UserPropertiesApi* | [**setUserProperty**](Apis/UserPropertiesApi.md#setUserProperty) | **PUT** /rest/api/2/user/properties/{propertyKey} | Set user property |
| *UserSearchApi* | [**findAssignableUsers**](Apis/UserSearchApi.md#findAssignableUsers) | **GET** /rest/api/2/user/assignable/search | Find users assignable to issues |
*UserSearchApi* | [**findBulkAssignableUsers**](Apis/UserSearchApi.md#findBulkAssignableUsers) | **GET** /rest/api/2/user/assignable/multiProjectSearch | Find users assignable to projects |
*UserSearchApi* | [**findUserKeysByQuery**](Apis/UserSearchApi.md#findUserKeysByQuery) | **GET** /rest/api/2/user/search/query/key | Find user keys by query |
*UserSearchApi* | [**findUsers**](Apis/UserSearchApi.md#findUsers) | **GET** /rest/api/2/user/search | Find users |
*UserSearchApi* | [**findUsersByQuery**](Apis/UserSearchApi.md#findUsersByQuery) | **GET** /rest/api/2/user/search/query | Find users by query |
*UserSearchApi* | [**findUsersForPicker**](Apis/UserSearchApi.md#findUsersForPicker) | **GET** /rest/api/2/user/picker | Find users for picker |
*UserSearchApi* | [**findUsersWithAllPermissions**](Apis/UserSearchApi.md#findUsersWithAllPermissions) | **GET** /rest/api/2/user/permission/search | Find users with permissions |
*UserSearchApi* | [**findUsersWithBrowsePermission**](Apis/UserSearchApi.md#findUsersWithBrowsePermission) | **GET** /rest/api/2/user/viewissue/search | Find users with browse permission |
| *UsersApi* | [**bulkGetUsers**](Apis/UsersApi.md#bulkGetUsers) | **GET** /rest/api/2/user/bulk | Bulk get users |
*UsersApi* | [**bulkGetUsersMigration**](Apis/UsersApi.md#bulkGetUsersMigration) | **GET** /rest/api/2/user/bulk/migration | Get account IDs for users |
*UsersApi* | [**createUser**](Apis/UsersApi.md#createUser) | **POST** /rest/api/2/user | Create user |
*UsersApi* | [**getAllUsers**](Apis/UsersApi.md#getAllUsers) | **GET** /rest/api/2/users/search | Get all users |
*UsersApi* | [**getAllUsersDefault**](Apis/UsersApi.md#getAllUsersDefault) | **GET** /rest/api/2/users | Get all users default |
*UsersApi* | [**getUser**](Apis/UsersApi.md#getUser) | **GET** /rest/api/2/user | Get user |
*UsersApi* | [**getUserDefaultColumns**](Apis/UsersApi.md#getUserDefaultColumns) | **GET** /rest/api/2/user/columns | Get user default columns |
*UsersApi* | [**getUserEmail**](Apis/UsersApi.md#getUserEmail) | **GET** /rest/api/2/user/email | Get user email |
*UsersApi* | [**getUserEmailBulk**](Apis/UsersApi.md#getUserEmailBulk) | **GET** /rest/api/2/user/email/bulk | Get user email bulk |
*UsersApi* | [**getUserGroups**](Apis/UsersApi.md#getUserGroups) | **GET** /rest/api/2/user/groups | Get user groups |
*UsersApi* | [**removeUser**](Apis/UsersApi.md#removeUser) | **DELETE** /rest/api/2/user | Delete user |
*UsersApi* | [**resetUserColumns**](Apis/UsersApi.md#resetUserColumns) | **DELETE** /rest/api/2/user/columns | Reset user default columns |
*UsersApi* | [**setUserColumns**](Apis/UsersApi.md#setUserColumns) | **PUT** /rest/api/2/user/columns | Set user default columns |
| *WebhooksApi* | [**deleteWebhookById**](Apis/WebhooksApi.md#deleteWebhookById) | **DELETE** /rest/api/2/webhook | Delete webhooks by ID |
*WebhooksApi* | [**getDynamicWebhooksForApp**](Apis/WebhooksApi.md#getDynamicWebhooksForApp) | **GET** /rest/api/2/webhook | Get dynamic webhooks for app |
*WebhooksApi* | [**getFailedWebhooks**](Apis/WebhooksApi.md#getFailedWebhooks) | **GET** /rest/api/2/webhook/failed | Get failed webhooks |
*WebhooksApi* | [**refreshWebhooks**](Apis/WebhooksApi.md#refreshWebhooks) | **PUT** /rest/api/2/webhook/refresh | Extend webhook life |
*WebhooksApi* | [**registerDynamicWebhooks**](Apis/WebhooksApi.md#registerDynamicWebhooks) | **POST** /rest/api/2/webhook | Register dynamic webhooks |
| *WorkflowSchemeDraftsApi* | [**createWorkflowSchemeDraftFromParent**](Apis/WorkflowSchemeDraftsApi.md#createWorkflowSchemeDraftFromParent) | **POST** /rest/api/2/workflowscheme/{id}/createdraft | Create draft workflow scheme |
*WorkflowSchemeDraftsApi* | [**deleteDraftDefaultWorkflow**](Apis/WorkflowSchemeDraftsApi.md#deleteDraftDefaultWorkflow) | **DELETE** /rest/api/2/workflowscheme/{id}/draft/default | Delete draft default workflow |
*WorkflowSchemeDraftsApi* | [**deleteDraftWorkflowMapping**](Apis/WorkflowSchemeDraftsApi.md#deleteDraftWorkflowMapping) | **DELETE** /rest/api/2/workflowscheme/{id}/draft/workflow | Delete issue types for workflow in draft workflow scheme |
*WorkflowSchemeDraftsApi* | [**deleteWorkflowSchemeDraft**](Apis/WorkflowSchemeDraftsApi.md#deleteWorkflowSchemeDraft) | **DELETE** /rest/api/2/workflowscheme/{id}/draft | Delete draft workflow scheme |
*WorkflowSchemeDraftsApi* | [**deleteWorkflowSchemeDraftIssueType**](Apis/WorkflowSchemeDraftsApi.md#deleteWorkflowSchemeDraftIssueType) | **DELETE** /rest/api/2/workflowscheme/{id}/draft/issuetype/{issueType} | Delete workflow for issue type in draft workflow scheme |
*WorkflowSchemeDraftsApi* | [**getDraftDefaultWorkflow**](Apis/WorkflowSchemeDraftsApi.md#getDraftDefaultWorkflow) | **GET** /rest/api/2/workflowscheme/{id}/draft/default | Get draft default workflow |
*WorkflowSchemeDraftsApi* | [**getDraftWorkflow**](Apis/WorkflowSchemeDraftsApi.md#getDraftWorkflow) | **GET** /rest/api/2/workflowscheme/{id}/draft/workflow | Get issue types for workflows in draft workflow scheme |
*WorkflowSchemeDraftsApi* | [**getWorkflowSchemeDraft**](Apis/WorkflowSchemeDraftsApi.md#getWorkflowSchemeDraft) | **GET** /rest/api/2/workflowscheme/{id}/draft | Get draft workflow scheme |
*WorkflowSchemeDraftsApi* | [**getWorkflowSchemeDraftIssueType**](Apis/WorkflowSchemeDraftsApi.md#getWorkflowSchemeDraftIssueType) | **GET** /rest/api/2/workflowscheme/{id}/draft/issuetype/{issueType} | Get workflow for issue type in draft workflow scheme |
*WorkflowSchemeDraftsApi* | [**publishDraftWorkflowScheme**](Apis/WorkflowSchemeDraftsApi.md#publishDraftWorkflowScheme) | **POST** /rest/api/2/workflowscheme/{id}/draft/publish | Publish draft workflow scheme |
*WorkflowSchemeDraftsApi* | [**setWorkflowSchemeDraftIssueType**](Apis/WorkflowSchemeDraftsApi.md#setWorkflowSchemeDraftIssueType) | **PUT** /rest/api/2/workflowscheme/{id}/draft/issuetype/{issueType} | Set workflow for issue type in draft workflow scheme |
*WorkflowSchemeDraftsApi* | [**updateDraftDefaultWorkflow**](Apis/WorkflowSchemeDraftsApi.md#updateDraftDefaultWorkflow) | **PUT** /rest/api/2/workflowscheme/{id}/draft/default | Update draft default workflow |
*WorkflowSchemeDraftsApi* | [**updateDraftWorkflowMapping**](Apis/WorkflowSchemeDraftsApi.md#updateDraftWorkflowMapping) | **PUT** /rest/api/2/workflowscheme/{id}/draft/workflow | Set issue types for workflow in workflow scheme |
*WorkflowSchemeDraftsApi* | [**updateWorkflowSchemeDraft**](Apis/WorkflowSchemeDraftsApi.md#updateWorkflowSchemeDraft) | **PUT** /rest/api/2/workflowscheme/{id}/draft | Update draft workflow scheme |
| *WorkflowSchemeProjectAssociationsApi* | [**assignSchemeToProject**](Apis/WorkflowSchemeProjectAssociationsApi.md#assignSchemeToProject) | **PUT** /rest/api/2/workflowscheme/project | Assign workflow scheme to project |
*WorkflowSchemeProjectAssociationsApi* | [**getWorkflowSchemeProjectAssociations**](Apis/WorkflowSchemeProjectAssociationsApi.md#getWorkflowSchemeProjectAssociations) | **GET** /rest/api/2/workflowscheme/project | Get workflow scheme project associations |
| *WorkflowSchemesApi* | [**createWorkflowScheme**](Apis/WorkflowSchemesApi.md#createWorkflowScheme) | **POST** /rest/api/2/workflowscheme | Create workflow scheme |
*WorkflowSchemesApi* | [**deleteDefaultWorkflow**](Apis/WorkflowSchemesApi.md#deleteDefaultWorkflow) | **DELETE** /rest/api/2/workflowscheme/{id}/default | Delete default workflow |
*WorkflowSchemesApi* | [**deleteWorkflowMapping**](Apis/WorkflowSchemesApi.md#deleteWorkflowMapping) | **DELETE** /rest/api/2/workflowscheme/{id}/workflow | Delete issue types for workflow in workflow scheme |
*WorkflowSchemesApi* | [**deleteWorkflowScheme**](Apis/WorkflowSchemesApi.md#deleteWorkflowScheme) | **DELETE** /rest/api/2/workflowscheme/{id} | Delete workflow scheme |
*WorkflowSchemesApi* | [**deleteWorkflowSchemeIssueType**](Apis/WorkflowSchemesApi.md#deleteWorkflowSchemeIssueType) | **DELETE** /rest/api/2/workflowscheme/{id}/issuetype/{issueType} | Delete workflow for issue type in workflow scheme |
*WorkflowSchemesApi* | [**getAllWorkflowSchemes**](Apis/WorkflowSchemesApi.md#getAllWorkflowSchemes) | **GET** /rest/api/2/workflowscheme | Get all workflow schemes |
*WorkflowSchemesApi* | [**getDefaultWorkflow**](Apis/WorkflowSchemesApi.md#getDefaultWorkflow) | **GET** /rest/api/2/workflowscheme/{id}/default | Get default workflow |
*WorkflowSchemesApi* | [**getProjectUsagesForWorkflowScheme**](Apis/WorkflowSchemesApi.md#getProjectUsagesForWorkflowScheme) | **GET** /rest/api/2/workflowscheme/{workflowSchemeId}/projectUsages | Get projects which are using a given workflow scheme |
*WorkflowSchemesApi* | [**getRequiredWorkflowSchemeMappings**](Apis/WorkflowSchemesApi.md#getRequiredWorkflowSchemeMappings) | **POST** /rest/api/2/workflowscheme/update/mappings | Get required status mappings for workflow scheme update |
*WorkflowSchemesApi* | [**getWorkflow**](Apis/WorkflowSchemesApi.md#getWorkflow) | **GET** /rest/api/2/workflowscheme/{id}/workflow | Get issue types for workflows in workflow scheme |
*WorkflowSchemesApi* | [**getWorkflowScheme**](Apis/WorkflowSchemesApi.md#getWorkflowScheme) | **GET** /rest/api/2/workflowscheme/{id} | Get workflow scheme |
*WorkflowSchemesApi* | [**getWorkflowSchemeIssueType**](Apis/WorkflowSchemesApi.md#getWorkflowSchemeIssueType) | **GET** /rest/api/2/workflowscheme/{id}/issuetype/{issueType} | Get workflow for issue type in workflow scheme |
*WorkflowSchemesApi* | [**readWorkflowSchemes**](Apis/WorkflowSchemesApi.md#readWorkflowSchemes) | **POST** /rest/api/2/workflowscheme/read | Bulk get workflow schemes |
*WorkflowSchemesApi* | [**setWorkflowSchemeIssueType**](Apis/WorkflowSchemesApi.md#setWorkflowSchemeIssueType) | **PUT** /rest/api/2/workflowscheme/{id}/issuetype/{issueType} | Set workflow for issue type in workflow scheme |
*WorkflowSchemesApi* | [**updateDefaultWorkflow**](Apis/WorkflowSchemesApi.md#updateDefaultWorkflow) | **PUT** /rest/api/2/workflowscheme/{id}/default | Update default workflow |
*WorkflowSchemesApi* | [**updateSchemes**](Apis/WorkflowSchemesApi.md#updateSchemes) | **POST** /rest/api/2/workflowscheme/update | Update workflow scheme |
*WorkflowSchemesApi* | [**updateWorkflowMapping**](Apis/WorkflowSchemesApi.md#updateWorkflowMapping) | **PUT** /rest/api/2/workflowscheme/{id}/workflow | Set issue types for workflow in workflow scheme |
*WorkflowSchemesApi* | [**updateWorkflowScheme**](Apis/WorkflowSchemesApi.md#updateWorkflowScheme) | **PUT** /rest/api/2/workflowscheme/{id} | Classic update workflow scheme |
| *WorkflowStatusCategoriesApi* | [**getStatusCategories**](Apis/WorkflowStatusCategoriesApi.md#getStatusCategories) | **GET** /rest/api/2/statuscategory | Get all status categories |
*WorkflowStatusCategoriesApi* | [**getStatusCategory**](Apis/WorkflowStatusCategoriesApi.md#getStatusCategory) | **GET** /rest/api/2/statuscategory/{idOrKey} | Get status category |
| *WorkflowStatusesApi* | [**getStatus**](Apis/WorkflowStatusesApi.md#getStatus) | **GET** /rest/api/2/status/{idOrName} | Get status |
*WorkflowStatusesApi* | [**getStatuses**](Apis/WorkflowStatusesApi.md#getStatuses) | **GET** /rest/api/2/status | Get all statuses |
| *WorkflowTransitionPropertiesApi* | [**createWorkflowTransitionProperty**](Apis/WorkflowTransitionPropertiesApi.md#createWorkflowTransitionProperty) | **POST** /rest/api/2/workflow/transitions/{transitionId}/properties | Create workflow transition property |
*WorkflowTransitionPropertiesApi* | [**deleteWorkflowTransitionProperty**](Apis/WorkflowTransitionPropertiesApi.md#deleteWorkflowTransitionProperty) | **DELETE** /rest/api/2/workflow/transitions/{transitionId}/properties | Delete workflow transition property |
*WorkflowTransitionPropertiesApi* | [**getWorkflowTransitionProperties**](Apis/WorkflowTransitionPropertiesApi.md#getWorkflowTransitionProperties) | **GET** /rest/api/2/workflow/transitions/{transitionId}/properties | Get workflow transition properties |
*WorkflowTransitionPropertiesApi* | [**updateWorkflowTransitionProperty**](Apis/WorkflowTransitionPropertiesApi.md#updateWorkflowTransitionProperty) | **PUT** /rest/api/2/workflow/transitions/{transitionId}/properties | Update workflow transition property |
| *WorkflowTransitionRulesApi* | [**deleteWorkflowTransitionRuleConfigurations**](Apis/WorkflowTransitionRulesApi.md#deleteWorkflowTransitionRuleConfigurations) | **PUT** /rest/api/2/workflow/rule/config/delete | Delete workflow transition rule configurations |
*WorkflowTransitionRulesApi* | [**getWorkflowTransitionRuleConfigurations**](Apis/WorkflowTransitionRulesApi.md#getWorkflowTransitionRuleConfigurations) | **GET** /rest/api/2/workflow/rule/config | Get workflow transition rule configurations |
*WorkflowTransitionRulesApi* | [**updateWorkflowTransitionRuleConfigurations**](Apis/WorkflowTransitionRulesApi.md#updateWorkflowTransitionRuleConfigurations) | **PUT** /rest/api/2/workflow/rule/config | Update workflow transition rule configurations |
| *WorkflowsApi* | [**createWorkflow**](Apis/WorkflowsApi.md#createWorkflow) | **POST** /rest/api/2/workflow | Create workflow |
*WorkflowsApi* | [**createWorkflows**](Apis/WorkflowsApi.md#createWorkflows) | **POST** /rest/api/2/workflows/create | Bulk create workflows |
*WorkflowsApi* | [**deleteInactiveWorkflow**](Apis/WorkflowsApi.md#deleteInactiveWorkflow) | **DELETE** /rest/api/2/workflow/{entityId} | Delete inactive workflow |
*WorkflowsApi* | [**getAllWorkflows**](Apis/WorkflowsApi.md#getAllWorkflows) | **GET** /rest/api/2/workflow | Get all workflows |
*WorkflowsApi* | [**getDefaultEditor**](Apis/WorkflowsApi.md#getDefaultEditor) | **GET** /rest/api/2/workflows/defaultEditor | Get the user's default workflow editor |
*WorkflowsApi* | [**getProjectUsagesForWorkflow**](Apis/WorkflowsApi.md#getProjectUsagesForWorkflow) | **GET** /rest/api/2/workflow/{workflowId}/projectUsages | Get projects using a given workflow |
*WorkflowsApi* | [**getWorkflowProjectIssueTypeUsages**](Apis/WorkflowsApi.md#getWorkflowProjectIssueTypeUsages) | **GET** /rest/api/2/workflow/{workflowId}/project/{projectId}/issueTypeUsages | Get issue types in a project that are using a given workflow |
*WorkflowsApi* | [**getWorkflowSchemeUsagesForWorkflow**](Apis/WorkflowsApi.md#getWorkflowSchemeUsagesForWorkflow) | **GET** /rest/api/2/workflow/{workflowId}/workflowSchemes | Get workflow schemes which are using a given workflow |
*WorkflowsApi* | [**getWorkflowsPaginated**](Apis/WorkflowsApi.md#getWorkflowsPaginated) | **GET** /rest/api/2/workflow/search | Get workflows paginated |
*WorkflowsApi* | [**readWorkflowPreviews**](Apis/WorkflowsApi.md#readWorkflowPreviews) | **POST** /rest/api/2/workflows/preview | Preview workflow |
*WorkflowsApi* | [**readWorkflows**](Apis/WorkflowsApi.md#readWorkflows) | **POST** /rest/api/2/workflows | Bulk get workflows |
*WorkflowsApi* | [**searchWorkflows**](Apis/WorkflowsApi.md#searchWorkflows) | **GET** /rest/api/2/workflows/search | Search workflows |
*WorkflowsApi* | [**updateWorkflows**](Apis/WorkflowsApi.md#updateWorkflows) | **POST** /rest/api/2/workflows/update | Bulk update workflows |
*WorkflowsApi* | [**validateCreateWorkflows**](Apis/WorkflowsApi.md#validateCreateWorkflows) | **POST** /rest/api/2/workflows/create/validation | Validate create workflows |
*WorkflowsApi* | [**validateUpdateWorkflows**](Apis/WorkflowsApi.md#validateUpdateWorkflows) | **POST** /rest/api/2/workflows/update/validation | Validate update workflows |
*WorkflowsApi* | [**workflowCapabilities**](Apis/WorkflowsApi.md#workflowCapabilities) | **GET** /rest/api/2/workflows/capabilities | Get available workflow capabilities |


<a name="documentation-for-models"></a>
## Documentation for Models

 - [ActorInputBean](./Models/ActorInputBean.md)
 - [ActorsMap](./Models/ActorsMap.md)
 - [AddAtlassianTeamRequest](./Models/AddAtlassianTeamRequest.md)
 - [AddFieldBean](./Models/AddFieldBean.md)
 - [AddGroupBean](./Models/AddGroupBean.md)
 - [AddNotificationsDetails](./Models/AddNotificationsDetails.md)
 - [AddSecuritySchemeLevelsRequestBean](./Models/AddSecuritySchemeLevelsRequestBean.md)
 - [AnnouncementBannerConfiguration](./Models/AnnouncementBannerConfiguration.md)
 - [AnnouncementBannerConfigurationUpdate](./Models/AnnouncementBannerConfigurationUpdate.md)
 - [AppWorkflowTransitionRule](./Models/AppWorkflowTransitionRule.md)
 - [Application](./Models/Application.md)
 - [ApplicationProperty](./Models/ApplicationProperty.md)
 - [ApplicationRole](./Models/ApplicationRole.md)
 - [ApprovalConfiguration](./Models/ApprovalConfiguration.md)
 - [ApprovalConfigurationPreview](./Models/ApprovalConfigurationPreview.md)
 - [ArchiveIssueAsyncRequest](./Models/ArchiveIssueAsyncRequest.md)
 - [ArchivedIssuesFilterRequest](./Models/ArchivedIssuesFilterRequest.md)
 - [AssociateFieldConfigurationsWithIssueTypesRequest](./Models/AssociateFieldConfigurationsWithIssueTypesRequest.md)
 - [AssociateSecuritySchemeWithProjectDetails](./Models/AssociateSecuritySchemeWithProjectDetails.md)
 - [AssociatedItemBean](./Models/AssociatedItemBean.md)
 - [AssociationContextObject](./Models/AssociationContextObject.md)
 - [Attachment](./Models/Attachment.md)
 - [AttachmentArchive](./Models/AttachmentArchive.md)
 - [AttachmentArchiveEntry](./Models/AttachmentArchiveEntry.md)
 - [AttachmentArchiveImpl](./Models/AttachmentArchiveImpl.md)
 - [AttachmentArchiveItemReadable](./Models/AttachmentArchiveItemReadable.md)
 - [AttachmentArchiveMetadataReadable](./Models/AttachmentArchiveMetadataReadable.md)
 - [AttachmentMetadata](./Models/AttachmentMetadata.md)
 - [AttachmentSettings](./Models/AttachmentSettings.md)
 - [AuditRecordBean](./Models/AuditRecordBean.md)
 - [AuditRecords](./Models/AuditRecords.md)
 - [AutoCompleteSuggestion](./Models/AutoCompleteSuggestion.md)
 - [AutoCompleteSuggestions](./Models/AutoCompleteSuggestions.md)
 - [AvailableDashboardGadget](./Models/AvailableDashboardGadget.md)
 - [AvailableDashboardGadgetsResponse](./Models/AvailableDashboardGadgetsResponse.md)
 - [AvailableWorkflowConnectRule](./Models/AvailableWorkflowConnectRule.md)
 - [AvailableWorkflowForgeRule](./Models/AvailableWorkflowForgeRule.md)
 - [AvailableWorkflowSystemRule](./Models/AvailableWorkflowSystemRule.md)
 - [AvailableWorkflowTriggerTypes](./Models/AvailableWorkflowTriggerTypes.md)
 - [AvailableWorkflowTriggers](./Models/AvailableWorkflowTriggers.md)
 - [Avatar](./Models/Avatar.md)
 - [AvatarUrlsBean](./Models/AvatarUrlsBean.md)
 - [Avatars](./Models/Avatars.md)
 - [BoardColumnPayload](./Models/BoardColumnPayload.md)
 - [BoardFeaturePayload](./Models/BoardFeaturePayload.md)
 - [BoardPayload](./Models/BoardPayload.md)
 - [BoardsPayload](./Models/BoardsPayload.md)
 - [BulkChangeOwnerDetails](./Models/BulkChangeOwnerDetails.md)
 - [BulkChangelogRequestBean](./Models/BulkChangelogRequestBean.md)
 - [BulkChangelogResponseBean](./Models/BulkChangelogResponseBean.md)
 - [BulkContextualConfiguration](./Models/BulkContextualConfiguration.md)
 - [BulkCustomFieldOptionCreateRequest](./Models/BulkCustomFieldOptionCreateRequest.md)
 - [BulkCustomFieldOptionUpdateRequest](./Models/BulkCustomFieldOptionUpdateRequest.md)
 - [BulkEditActionError](./Models/BulkEditActionError.md)
 - [BulkEditShareableEntityRequest](./Models/BulkEditShareableEntityRequest.md)
 - [BulkEditShareableEntityResponse](./Models/BulkEditShareableEntityResponse.md)
 - [BulkFetchIssueRequestBean](./Models/BulkFetchIssueRequestBean.md)
 - [BulkIssueIsWatching](./Models/BulkIssueIsWatching.md)
 - [BulkIssuePropertyUpdateRequest](./Models/BulkIssuePropertyUpdateRequest.md)
 - [BulkIssueResults](./Models/BulkIssueResults.md)
 - [BulkOperationErrorResult](./Models/BulkOperationErrorResult.md)
 - [BulkPermissionGrants](./Models/BulkPermissionGrants.md)
 - [BulkPermissionsRequestBean](./Models/BulkPermissionsRequestBean.md)
 - [BulkProjectPermissionGrants](./Models/BulkProjectPermissionGrants.md)
 - [BulkProjectPermissions](./Models/BulkProjectPermissions.md)
 - [BulkRedactionRequest](./Models/BulkRedactionRequest.md)
 - [BulkRedactionResponse](./Models/BulkRedactionResponse.md)
 - [BulkWorklogKeyRequestBean](./Models/BulkWorklogKeyRequestBean.md)
 - [BulkWorklogKeyResponseBean](./Models/BulkWorklogKeyResponseBean.md)
 - [CardLayout](./Models/CardLayout.md)
 - [CardLayoutField](./Models/CardLayoutField.md)
 - [ChangeDetails](./Models/ChangeDetails.md)
 - [ChangeFilterOwner](./Models/ChangeFilterOwner.md)
 - [ChangedValueBean](./Models/ChangedValueBean.md)
 - [ChangedWorklog](./Models/ChangedWorklog.md)
 - [ChangedWorklogs](./Models/ChangedWorklogs.md)
 - [Changelog](./Models/Changelog.md)
 - [ColumnItem](./Models/ColumnItem.md)
 - [ColumnRequestBody](./Models/ColumnRequestBody.md)
 - [Comment](./Models/Comment.md)
 - [ComponentIssuesCount](./Models/ComponentIssuesCount.md)
 - [ComponentJsonBean](./Models/ComponentJsonBean.md)
 - [ComponentWithIssueCount](./Models/ComponentWithIssueCount.md)
 - [CompoundClause](./Models/CompoundClause.md)
 - [ConditionGroupConfiguration](./Models/ConditionGroupConfiguration.md)
 - [ConditionGroupPayload](./Models/ConditionGroupPayload.md)
 - [ConditionGroupUpdate](./Models/ConditionGroupUpdate.md)
 - [Configuration](./Models/Configuration.md)
 - [ConfigurationsListParameters](./Models/ConfigurationsListParameters.md)
 - [ConnectCustomFieldValue](./Models/ConnectCustomFieldValue.md)
 - [ConnectCustomFieldValues](./Models/ConnectCustomFieldValues.md)
 - [ConnectModules](./Models/ConnectModules.md)
 - [ConnectWorkflowTransitionRule](./Models/ConnectWorkflowTransitionRule.md)
 - [ContainerForProjectFeatures](./Models/ContainerForProjectFeatures.md)
 - [ContainerForRegisteredWebhooks](./Models/ContainerForRegisteredWebhooks.md)
 - [ContainerForWebhookIDs](./Models/ContainerForWebhookIDs.md)
 - [ContainerOfWorkflowSchemeAssociations](./Models/ContainerOfWorkflowSchemeAssociations.md)
 - [ContentItem](./Models/ContentItem.md)
 - [Context](./Models/Context.md)
 - [ContextForProjectAndIssueType](./Models/ContextForProjectAndIssueType.md)
 - [ContextualConfiguration](./Models/ContextualConfiguration.md)
 - [ConvertedJQLQueries](./Models/ConvertedJQLQueries.md)
 - [CreateCrossProjectReleaseRequest](./Models/CreateCrossProjectReleaseRequest.md)
 - [CreateCustomFieldContext](./Models/CreateCustomFieldContext.md)
 - [CreateCustomFieldRequest](./Models/CreateCustomFieldRequest.md)
 - [CreateDateFieldRequest](./Models/CreateDateFieldRequest.md)
 - [CreateExclusionRulesRequest](./Models/CreateExclusionRulesRequest.md)
 - [CreateIssueSecuritySchemeDetails](./Models/CreateIssueSecuritySchemeDetails.md)
 - [CreateIssueSourceRequest](./Models/CreateIssueSourceRequest.md)
 - [CreateNotificationSchemeDetails](./Models/CreateNotificationSchemeDetails.md)
 - [CreatePermissionHolderRequest](./Models/CreatePermissionHolderRequest.md)
 - [CreatePermissionRequest](./Models/CreatePermissionRequest.md)
 - [CreatePlanOnlyTeamRequest](./Models/CreatePlanOnlyTeamRequest.md)
 - [CreatePlanRequest](./Models/CreatePlanRequest.md)
 - [CreatePriorityDetails](./Models/CreatePriorityDetails.md)
 - [CreatePrioritySchemeDetails](./Models/CreatePrioritySchemeDetails.md)
 - [CreateProjectDetails](./Models/CreateProjectDetails.md)
 - [CreateResolutionDetails](./Models/CreateResolutionDetails.md)
 - [CreateSchedulingRequest](./Models/CreateSchedulingRequest.md)
 - [CreateUiModificationDetails](./Models/CreateUiModificationDetails.md)
 - [CreateUpdateRoleRequestBean](./Models/CreateUpdateRoleRequestBean.md)
 - [CreateWorkflowCondition](./Models/CreateWorkflowCondition.md)
 - [CreateWorkflowDetails](./Models/CreateWorkflowDetails.md)
 - [CreateWorkflowStatusDetails](./Models/CreateWorkflowStatusDetails.md)
 - [CreateWorkflowTransitionDetails](./Models/CreateWorkflowTransitionDetails.md)
 - [CreateWorkflowTransitionRule](./Models/CreateWorkflowTransitionRule.md)
 - [CreateWorkflowTransitionRulesDetails](./Models/CreateWorkflowTransitionRulesDetails.md)
 - [CreateWorkflowTransitionScreenDetails](./Models/CreateWorkflowTransitionScreenDetails.md)
 - [CreatedIssue](./Models/CreatedIssue.md)
 - [CreatedIssues](./Models/CreatedIssues.md)
 - [CustomContextVariable](./Models/CustomContextVariable.md)
 - [CustomFieldConfigurations](./Models/CustomFieldConfigurations.md)
 - [CustomFieldContext](./Models/CustomFieldContext.md)
 - [CustomFieldContextDefaultValue](./Models/CustomFieldContextDefaultValue.md)
 - [CustomFieldContextDefaultValueCascadingOption](./Models/CustomFieldContextDefaultValueCascadingOption.md)
 - [CustomFieldContextDefaultValueDate](./Models/CustomFieldContextDefaultValueDate.md)
 - [CustomFieldContextDefaultValueDateTime](./Models/CustomFieldContextDefaultValueDateTime.md)
 - [CustomFieldContextDefaultValueFloat](./Models/CustomFieldContextDefaultValueFloat.md)
 - [CustomFieldContextDefaultValueForgeDateTimeField](./Models/CustomFieldContextDefaultValueForgeDateTimeField.md)
 - [CustomFieldContextDefaultValueForgeGroupField](./Models/CustomFieldContextDefaultValueForgeGroupField.md)
 - [CustomFieldContextDefaultValueForgeMultiGroupField](./Models/CustomFieldContextDefaultValueForgeMultiGroupField.md)
 - [CustomFieldContextDefaultValueForgeMultiStringField](./Models/CustomFieldContextDefaultValueForgeMultiStringField.md)
 - [CustomFieldContextDefaultValueForgeMultiUserField](./Models/CustomFieldContextDefaultValueForgeMultiUserField.md)
 - [CustomFieldContextDefaultValueForgeNumberField](./Models/CustomFieldContextDefaultValueForgeNumberField.md)
 - [CustomFieldContextDefaultValueForgeObjectField](./Models/CustomFieldContextDefaultValueForgeObjectField.md)
 - [CustomFieldContextDefaultValueForgeStringField](./Models/CustomFieldContextDefaultValueForgeStringField.md)
 - [CustomFieldContextDefaultValueForgeUserField](./Models/CustomFieldContextDefaultValueForgeUserField.md)
 - [CustomFieldContextDefaultValueLabels](./Models/CustomFieldContextDefaultValueLabels.md)
 - [CustomFieldContextDefaultValueMultiUserPicker](./Models/CustomFieldContextDefaultValueMultiUserPicker.md)
 - [CustomFieldContextDefaultValueMultipleGroupPicker](./Models/CustomFieldContextDefaultValueMultipleGroupPicker.md)
 - [CustomFieldContextDefaultValueMultipleOption](./Models/CustomFieldContextDefaultValueMultipleOption.md)
 - [CustomFieldContextDefaultValueMultipleVersionPicker](./Models/CustomFieldContextDefaultValueMultipleVersionPicker.md)
 - [CustomFieldContextDefaultValueProject](./Models/CustomFieldContextDefaultValueProject.md)
 - [CustomFieldContextDefaultValueReadOnly](./Models/CustomFieldContextDefaultValueReadOnly.md)
 - [CustomFieldContextDefaultValueSingleGroupPicker](./Models/CustomFieldContextDefaultValueSingleGroupPicker.md)
 - [CustomFieldContextDefaultValueSingleOption](./Models/CustomFieldContextDefaultValueSingleOption.md)
 - [CustomFieldContextDefaultValueSingleVersionPicker](./Models/CustomFieldContextDefaultValueSingleVersionPicker.md)
 - [CustomFieldContextDefaultValueTextArea](./Models/CustomFieldContextDefaultValueTextArea.md)
 - [CustomFieldContextDefaultValueTextField](./Models/CustomFieldContextDefaultValueTextField.md)
 - [CustomFieldContextDefaultValueURL](./Models/CustomFieldContextDefaultValueURL.md)
 - [CustomFieldContextDefaultValueUpdate](./Models/CustomFieldContextDefaultValueUpdate.md)
 - [CustomFieldContextOption](./Models/CustomFieldContextOption.md)
 - [CustomFieldContextProjectMapping](./Models/CustomFieldContextProjectMapping.md)
 - [CustomFieldContextSingleUserPickerDefaults](./Models/CustomFieldContextSingleUserPickerDefaults.md)
 - [CustomFieldContextUpdateDetails](./Models/CustomFieldContextUpdateDetails.md)
 - [CustomFieldCreatedContextOptionsList](./Models/CustomFieldCreatedContextOptionsList.md)
 - [CustomFieldDefinitionJsonBean](./Models/CustomFieldDefinitionJsonBean.md)
 - [CustomFieldOption](./Models/CustomFieldOption.md)
 - [CustomFieldOptionCreate](./Models/CustomFieldOptionCreate.md)
 - [CustomFieldOptionUpdate](./Models/CustomFieldOptionUpdate.md)
 - [CustomFieldPayload](./Models/CustomFieldPayload.md)
 - [CustomFieldReplacement](./Models/CustomFieldReplacement.md)
 - [CustomFieldUpdatedContextOptionsList](./Models/CustomFieldUpdatedContextOptionsList.md)
 - [CustomFieldValueUpdate](./Models/CustomFieldValueUpdate.md)
 - [CustomFieldValueUpdateDetails](./Models/CustomFieldValueUpdateDetails.md)
 - [CustomTemplateOptions](./Models/CustomTemplateOptions.md)
 - [CustomTemplateRequestDTO](./Models/CustomTemplateRequestDTO.md)
 - [CustomTemplatesProjectDetails](./Models/CustomTemplatesProjectDetails.md)
 - [Dashboard](./Models/Dashboard.md)
 - [DashboardDetails](./Models/DashboardDetails.md)
 - [DashboardGadget](./Models/DashboardGadget.md)
 - [DashboardGadgetPosition](./Models/DashboardGadgetPosition.md)
 - [DashboardGadgetResponse](./Models/DashboardGadgetResponse.md)
 - [DashboardGadgetSettings](./Models/DashboardGadgetSettings.md)
 - [DashboardGadgetUpdateRequest](./Models/DashboardGadgetUpdateRequest.md)
 - [DataClassificationLevelsBean](./Models/DataClassificationLevelsBean.md)
 - [DataClassificationTagBean](./Models/DataClassificationTagBean.md)
 - [DateRangeFilterRequest](./Models/DateRangeFilterRequest.md)
 - [DefaultLevelValue](./Models/DefaultLevelValue.md)
 - [DefaultShareScope](./Models/DefaultShareScope.md)
 - [DefaultWorkflow](./Models/DefaultWorkflow.md)
 - [DefaultWorkflowEditorResponse](./Models/DefaultWorkflowEditorResponse.md)
 - [DeleteAndReplaceVersionBean](./Models/DeleteAndReplaceVersionBean.md)
 - [DeprecatedWorkflow](./Models/DeprecatedWorkflow.md)
 - [DetailedErrorCollection](./Models/DetailedErrorCollection.md)
 - [DocumentVersion](./Models/DocumentVersion.md)
 - [DuplicatePlanRequest](./Models/DuplicatePlanRequest.md)
 - [EditTemplateRequest](./Models/EditTemplateRequest.md)
 - [EntityProperty](./Models/EntityProperty.md)
 - [EntityPropertyDetails](./Models/EntityPropertyDetails.md)
 - [Error](./Models/Error.md)
 - [ErrorCollection](./Models/ErrorCollection.md)
 - [ErrorMessage](./Models/ErrorMessage.md)
 - [Errors](./Models/Errors.md)
 - [EventNotification](./Models/EventNotification.md)
 - [ExpandPrioritySchemeBean](./Models/ExpandPrioritySchemeBean.md)
 - [ExpandPrioritySchemePage](./Models/ExpandPrioritySchemePage.md)
 - [ExportArchivedIssuesTaskProgressResponse](./Models/ExportArchivedIssuesTaskProgressResponse.md)
 - [FailedWebhook](./Models/FailedWebhook.md)
 - [FailedWebhooks](./Models/FailedWebhooks.md)
 - [Field](./Models/Field.md)
 - [FieldAssociationsRequest](./Models/FieldAssociationsRequest.md)
 - [FieldCapabilityPayload](./Models/FieldCapabilityPayload.md)
 - [FieldChangedClause](./Models/FieldChangedClause.md)
 - [FieldConfiguration](./Models/FieldConfiguration.md)
 - [FieldConfigurationDetails](./Models/FieldConfigurationDetails.md)
 - [FieldConfigurationIssueTypeItem](./Models/FieldConfigurationIssueTypeItem.md)
 - [FieldConfigurationItem](./Models/FieldConfigurationItem.md)
 - [FieldConfigurationItemsDetails](./Models/FieldConfigurationItemsDetails.md)
 - [FieldConfigurationScheme](./Models/FieldConfigurationScheme.md)
 - [FieldConfigurationSchemeProjectAssociation](./Models/FieldConfigurationSchemeProjectAssociation.md)
 - [FieldConfigurationSchemeProjects](./Models/FieldConfigurationSchemeProjects.md)
 - [FieldConfigurationToIssueTypeMapping](./Models/FieldConfigurationToIssueTypeMapping.md)
 - [FieldCreateMetadata](./Models/FieldCreateMetadata.md)
 - [FieldDetails](./Models/FieldDetails.md)
 - [FieldIdIdentifier](./Models/FieldIdIdentifier.md)
 - [FieldIdentifierObject](./Models/FieldIdentifierObject.md)
 - [FieldLastUsed](./Models/FieldLastUsed.md)
 - [FieldLayoutConfiguration](./Models/FieldLayoutConfiguration.md)
 - [FieldLayoutPayload](./Models/FieldLayoutPayload.md)
 - [FieldLayoutSchemePayload](./Models/FieldLayoutSchemePayload.md)
 - [FieldMetadata](./Models/FieldMetadata.md)
 - [FieldReferenceData](./Models/FieldReferenceData.md)
 - [FieldUpdateOperation](./Models/FieldUpdateOperation.md)
 - [FieldValueClause](./Models/FieldValueClause.md)
 - [FieldWasClause](./Models/FieldWasClause.md)
 - [Fields](./Models/Fields.md)
 - [Filter](./Models/Filter.md)
 - [FilterDetails](./Models/FilterDetails.md)
 - [FilterSubscription](./Models/FilterSubscription.md)
 - [FilterSubscriptionsList](./Models/FilterSubscriptionsList.md)
 - [FoundGroup](./Models/FoundGroup.md)
 - [FoundGroups](./Models/FoundGroups.md)
 - [FoundUsers](./Models/FoundUsers.md)
 - [FoundUsersAndGroups](./Models/FoundUsersAndGroups.md)
 - [FromLayoutPayload](./Models/FromLayoutPayload.md)
 - [FunctionOperand](./Models/FunctionOperand.md)
 - [FunctionReferenceData](./Models/FunctionReferenceData.md)
 - [GetAtlassianTeamResponse](./Models/GetAtlassianTeamResponse.md)
 - [GetCrossProjectReleaseResponse](./Models/GetCrossProjectReleaseResponse.md)
 - [GetCustomFieldResponse](./Models/GetCustomFieldResponse.md)
 - [GetDateFieldResponse](./Models/GetDateFieldResponse.md)
 - [GetExclusionRulesResponse](./Models/GetExclusionRulesResponse.md)
 - [GetIssueSourceResponse](./Models/GetIssueSourceResponse.md)
 - [GetPermissionHolderResponse](./Models/GetPermissionHolderResponse.md)
 - [GetPermissionResponse](./Models/GetPermissionResponse.md)
 - [GetPlanOnlyTeamResponse](./Models/GetPlanOnlyTeamResponse.md)
 - [GetPlanResponse](./Models/GetPlanResponse.md)
 - [GetPlanResponseForPage](./Models/GetPlanResponseForPage.md)
 - [GetSchedulingResponse](./Models/GetSchedulingResponse.md)
 - [GetTeamResponseForPage](./Models/GetTeamResponseForPage.md)
 - [GlobalScopeBean](./Models/GlobalScopeBean.md)
 - [Group](./Models/Group.md)
 - [GroupDetails](./Models/GroupDetails.md)
 - [GroupLabel](./Models/GroupLabel.md)
 - [GroupName](./Models/GroupName.md)
 - [HealthCheckResult](./Models/HealthCheckResult.md)
 - [Hierarchy](./Models/Hierarchy.md)
 - [HistoryMetadata](./Models/HistoryMetadata.md)
 - [HistoryMetadataParticipant](./Models/HistoryMetadataParticipant.md)
 - [Icon](./Models/Icon.md)
 - [IconBean](./Models/IconBean.md)
 - [IdBean](./Models/IdBean.md)
 - [IdOrKeyBean](./Models/IdOrKeyBean.md)
 - [IncludedFields](./Models/IncludedFields.md)
 - [InputStreamSource](./Models/InputStreamSource.md)
 - [IssueArchivalSyncRequest](./Models/IssueArchivalSyncRequest.md)
 - [IssueArchivalSyncResponse](./Models/IssueArchivalSyncResponse.md)
 - [IssueBean](./Models/IssueBean.md)
 - [IssueChangeLog](./Models/IssueChangeLog.md)
 - [IssueChangelogIds](./Models/IssueChangelogIds.md)
 - [IssueCommentListRequestBean](./Models/IssueCommentListRequestBean.md)
 - [IssueContextVariable](./Models/IssueContextVariable.md)
 - [IssueCreateMetadata](./Models/IssueCreateMetadata.md)
 - [IssueEntityProperties](./Models/IssueEntityProperties.md)
 - [IssueEntityPropertiesForMultiUpdate](./Models/IssueEntityPropertiesForMultiUpdate.md)
 - [IssueError](./Models/IssueError.md)
 - [IssueEvent](./Models/IssueEvent.md)
 - [IssueFieldOption](./Models/IssueFieldOption.md)
 - [IssueFieldOptionConfiguration](./Models/IssueFieldOptionConfiguration.md)
 - [IssueFieldOptionCreateBean](./Models/IssueFieldOptionCreateBean.md)
 - [IssueFieldOptionScopeBean](./Models/IssueFieldOptionScopeBean.md)
 - [IssueFilterForBulkPropertyDelete](./Models/IssueFilterForBulkPropertyDelete.md)
 - [IssueFilterForBulkPropertySet](./Models/IssueFilterForBulkPropertySet.md)
 - [IssueLayoutItemPayload](./Models/IssueLayoutItemPayload.md)
 - [IssueLayoutPayload](./Models/IssueLayoutPayload.md)
 - [IssueLimitReportResponseBean](./Models/IssueLimitReportResponseBean.md)
 - [IssueLink](./Models/IssueLink.md)
 - [IssueLinkType](./Models/IssueLinkType.md)
 - [IssueLinkTypes](./Models/IssueLinkTypes.md)
 - [IssueList](./Models/IssueList.md)
 - [IssueMatches](./Models/IssueMatches.md)
 - [IssueMatchesForJQL](./Models/IssueMatchesForJQL.md)
 - [IssuePickerSuggestions](./Models/IssuePickerSuggestions.md)
 - [IssuePickerSuggestionsIssueType](./Models/IssuePickerSuggestionsIssueType.md)
 - [IssueSecurityLevelMember](./Models/IssueSecurityLevelMember.md)
 - [IssueSecuritySchemeToProjectMapping](./Models/IssueSecuritySchemeToProjectMapping.md)
 - [IssueTransition](./Models/IssueTransition.md)
 - [IssueTypeCreateBean](./Models/IssueTypeCreateBean.md)
 - [IssueTypeDetails](./Models/IssueTypeDetails.md)
 - [IssueTypeHierarchyPayload](./Models/IssueTypeHierarchyPayload.md)
 - [IssueTypeIds](./Models/IssueTypeIds.md)
 - [IssueTypeIdsToRemove](./Models/IssueTypeIdsToRemove.md)
 - [IssueTypeInfo](./Models/IssueTypeInfo.md)
 - [IssueTypeIssueCreateMetadata](./Models/IssueTypeIssueCreateMetadata.md)
 - [IssueTypePayload](./Models/IssueTypePayload.md)
 - [IssueTypeProjectCreatePayload](./Models/IssueTypeProjectCreatePayload.md)
 - [IssueTypeScheme](./Models/IssueTypeScheme.md)
 - [IssueTypeSchemeDetails](./Models/IssueTypeSchemeDetails.md)
 - [IssueTypeSchemeID](./Models/IssueTypeSchemeID.md)
 - [IssueTypeSchemeMapping](./Models/IssueTypeSchemeMapping.md)
 - [IssueTypeSchemePayload](./Models/IssueTypeSchemePayload.md)
 - [IssueTypeSchemeProjectAssociation](./Models/IssueTypeSchemeProjectAssociation.md)
 - [IssueTypeSchemeProjects](./Models/IssueTypeSchemeProjects.md)
 - [IssueTypeSchemeUpdateDetails](./Models/IssueTypeSchemeUpdateDetails.md)
 - [IssueTypeScreenScheme](./Models/IssueTypeScreenScheme.md)
 - [IssueTypeScreenSchemeDetails](./Models/IssueTypeScreenSchemeDetails.md)
 - [IssueTypeScreenSchemeId](./Models/IssueTypeScreenSchemeId.md)
 - [IssueTypeScreenSchemeItem](./Models/IssueTypeScreenSchemeItem.md)
 - [IssueTypeScreenSchemeMapping](./Models/IssueTypeScreenSchemeMapping.md)
 - [IssueTypeScreenSchemeMappingDetails](./Models/IssueTypeScreenSchemeMappingDetails.md)
 - [IssueTypeScreenSchemePayload](./Models/IssueTypeScreenSchemePayload.md)
 - [IssueTypeScreenSchemeProjectAssociation](./Models/IssueTypeScreenSchemeProjectAssociation.md)
 - [IssueTypeScreenSchemeUpdateDetails](./Models/IssueTypeScreenSchemeUpdateDetails.md)
 - [IssueTypeScreenSchemesProjects](./Models/IssueTypeScreenSchemesProjects.md)
 - [IssueTypeToContextMapping](./Models/IssueTypeToContextMapping.md)
 - [IssueTypeUpdateBean](./Models/IssueTypeUpdateBean.md)
 - [IssueTypeWithStatus](./Models/IssueTypeWithStatus.md)
 - [IssueTypeWorkflowMapping](./Models/IssueTypeWorkflowMapping.md)
 - [IssueTypesWorkflowMapping](./Models/IssueTypesWorkflowMapping.md)
 - [IssueUpdateDetails](./Models/IssueUpdateDetails.md)
 - [IssueUpdateMetadata](./Models/IssueUpdateMetadata.md)
 - [IssuesAndJQLQueries](./Models/IssuesAndJQLQueries.md)
 - [IssuesJqlMetaDataBean](./Models/IssuesJqlMetaDataBean.md)
 - [IssuesMetaBean](./Models/IssuesMetaBean.md)
 - [IssuesUpdateBean](./Models/IssuesUpdateBean.md)
 - [JExpEvaluateIssuesJqlMetaDataBean](./Models/JExpEvaluateIssuesJqlMetaDataBean.md)
 - [JExpEvaluateIssuesMetaBean](./Models/JExpEvaluateIssuesMetaBean.md)
 - [JExpEvaluateJiraExpressionResultBean](./Models/JExpEvaluateJiraExpressionResultBean.md)
 - [JExpEvaluateMetaDataBean](./Models/JExpEvaluateMetaDataBean.md)
 - [JQLCountRequestBean](./Models/JQLCountRequestBean.md)
 - [JQLCountResultsBean](./Models/JQLCountResultsBean.md)
 - [JQLPersonalDataMigrationRequest](./Models/JQLPersonalDataMigrationRequest.md)
 - [JQLQueryWithUnknownUsers](./Models/JQLQueryWithUnknownUsers.md)
 - [JQLReferenceData](./Models/JQLReferenceData.md)
 - [JexpEvaluateCtxIssues](./Models/JexpEvaluateCtxIssues.md)
 - [JexpEvaluateCtxJqlIssues](./Models/JexpEvaluateCtxJqlIssues.md)
 - [JexpIssues](./Models/JexpIssues.md)
 - [JexpJqlIssues](./Models/JexpJqlIssues.md)
 - [JiraExpressionAnalysis](./Models/JiraExpressionAnalysis.md)
 - [JiraExpressionComplexity](./Models/JiraExpressionComplexity.md)
 - [JiraExpressionEvalContextBean](./Models/JiraExpressionEvalContextBean.md)
 - [JiraExpressionEvalRequestBean](./Models/JiraExpressionEvalRequestBean.md)
 - [JiraExpressionEvaluateContextBean](./Models/JiraExpressionEvaluateContextBean.md)
 - [JiraExpressionEvaluateRequestBean](./Models/JiraExpressionEvaluateRequestBean.md)
 - [JiraExpressionEvaluationMetaDataBean](./Models/JiraExpressionEvaluationMetaDataBean.md)
 - [JiraExpressionForAnalysis](./Models/JiraExpressionForAnalysis.md)
 - [JiraExpressionResult](./Models/JiraExpressionResult.md)
 - [JiraExpressionValidationError](./Models/JiraExpressionValidationError.md)
 - [JiraExpressionsAnalysis](./Models/JiraExpressionsAnalysis.md)
 - [JiraExpressionsComplexityBean](./Models/JiraExpressionsComplexityBean.md)
 - [JiraExpressionsComplexityValueBean](./Models/JiraExpressionsComplexityValueBean.md)
 - [JiraStatus](./Models/JiraStatus.md)
 - [JiraWorkflow](./Models/JiraWorkflow.md)
 - [JiraWorkflowPreviewStatus](./Models/JiraWorkflowPreviewStatus.md)
 - [JiraWorkflowStatus](./Models/JiraWorkflowStatus.md)
 - [JqlFunctionPrecomputationBean](./Models/JqlFunctionPrecomputationBean.md)
 - [JqlFunctionPrecomputationGetByIdRequest](./Models/JqlFunctionPrecomputationGetByIdRequest.md)
 - [JqlFunctionPrecomputationGetByIdResponse](./Models/JqlFunctionPrecomputationGetByIdResponse.md)
 - [JqlFunctionPrecomputationUpdateBean](./Models/JqlFunctionPrecomputationUpdateBean.md)
 - [JqlFunctionPrecomputationUpdateErrorResponse](./Models/JqlFunctionPrecomputationUpdateErrorResponse.md)
 - [JqlFunctionPrecomputationUpdateRequestBean](./Models/JqlFunctionPrecomputationUpdateRequestBean.md)
 - [JqlFunctionPrecomputationUpdateResponse](./Models/JqlFunctionPrecomputationUpdateResponse.md)
 - [JqlQueriesToParse](./Models/JqlQueriesToParse.md)
 - [JqlQueriesToSanitize](./Models/JqlQueriesToSanitize.md)
 - [JqlQuery](./Models/JqlQuery.md)
 - [JqlQueryClause](./Models/JqlQueryClause.md)
 - [JqlQueryClauseOperand](./Models/JqlQueryClauseOperand.md)
 - [JqlQueryClauseTimePredicate](./Models/JqlQueryClauseTimePredicate.md)
 - [JqlQueryField](./Models/JqlQueryField.md)
 - [JqlQueryFieldEntityProperty](./Models/JqlQueryFieldEntityProperty.md)
 - [JqlQueryOrderByClause](./Models/JqlQueryOrderByClause.md)
 - [JqlQueryOrderByClauseElement](./Models/JqlQueryOrderByClauseElement.md)
 - [JqlQueryToSanitize](./Models/JqlQueryToSanitize.md)
 - [JqlQueryUnitaryOperand](./Models/JqlQueryUnitaryOperand.md)
 - [JsonContextVariable](./Models/JsonContextVariable.md)
 - [JsonNode](./Models/JsonNode.md)
 - [JsonTypeBean](./Models/JsonTypeBean.md)
 - [KeywordOperand](./Models/KeywordOperand.md)
 - [License](./Models/License.md)
 - [LicenseMetric](./Models/LicenseMetric.md)
 - [LicensedApplication](./Models/LicensedApplication.md)
 - [LinkGroup](./Models/LinkGroup.md)
 - [LinkIssueRequestJsonBean](./Models/LinkIssueRequestJsonBean.md)
 - [LinkedIssue](./Models/LinkedIssue.md)
 - [ListOperand](./Models/ListOperand.md)
 - [Locale](./Models/Locale.md)
 - [MappingsByIssueTypeOverride](./Models/MappingsByIssueTypeOverride.md)
 - [MappingsByWorkflow](./Models/MappingsByWorkflow.md)
 - [MoveFieldBean](./Models/MoveFieldBean.md)
 - [MultiIssueEntityProperties](./Models/MultiIssueEntityProperties.md)
 - [MultipleCustomFieldValuesUpdate](./Models/MultipleCustomFieldValuesUpdate.md)
 - [MultipleCustomFieldValuesUpdateDetails](./Models/MultipleCustomFieldValuesUpdateDetails.md)
 - [NestedResponse](./Models/NestedResponse.md)
 - [NewUserDetails](./Models/NewUserDetails.md)
 - [NonWorkingDay](./Models/NonWorkingDay.md)
 - [Notification](./Models/Notification.md)
 - [NotificationEvent](./Models/NotificationEvent.md)
 - [NotificationRecipients](./Models/NotificationRecipients.md)
 - [NotificationRecipientsRestrictions](./Models/NotificationRecipientsRestrictions.md)
 - [NotificationScheme](./Models/NotificationScheme.md)
 - [NotificationSchemeAndProjectMappingJsonBean](./Models/NotificationSchemeAndProjectMappingJsonBean.md)
 - [NotificationSchemeEvent](./Models/NotificationSchemeEvent.md)
 - [NotificationSchemeEventDetails](./Models/NotificationSchemeEventDetails.md)
 - [NotificationSchemeEventIDPayload](./Models/NotificationSchemeEventIDPayload.md)
 - [NotificationSchemeEventPayload](./Models/NotificationSchemeEventPayload.md)
 - [NotificationSchemeEventTypeId](./Models/NotificationSchemeEventTypeId.md)
 - [NotificationSchemeId](./Models/NotificationSchemeId.md)
 - [NotificationSchemeNotificationDetails](./Models/NotificationSchemeNotificationDetails.md)
 - [NotificationSchemeNotificationDetailsPayload](./Models/NotificationSchemeNotificationDetailsPayload.md)
 - [NotificationSchemePayload](./Models/NotificationSchemePayload.md)
 - [OldToNewSecurityLevelMappingsBean](./Models/OldToNewSecurityLevelMappingsBean.md)
 - [OperationMessage](./Models/OperationMessage.md)
 - [Operations](./Models/Operations.md)
 - [OrderOfCustomFieldOptions](./Models/OrderOfCustomFieldOptions.md)
 - [OrderOfIssueTypes](./Models/OrderOfIssueTypes.md)
 - [PageBean2ComponentJsonBean](./Models/PageBean2ComponentJsonBean.md)
 - [PageBean2JqlFunctionPrecomputationBean](./Models/PageBean2JqlFunctionPrecomputationBean.md)
 - [PageBeanBulkContextualConfiguration](./Models/PageBeanBulkContextualConfiguration.md)
 - [PageBeanChangelog](./Models/PageBeanChangelog.md)
 - [PageBeanComment](./Models/PageBeanComment.md)
 - [PageBeanComponentWithIssueCount](./Models/PageBeanComponentWithIssueCount.md)
 - [PageBeanContext](./Models/PageBeanContext.md)
 - [PageBeanContextForProjectAndIssueType](./Models/PageBeanContextForProjectAndIssueType.md)
 - [PageBeanContextualConfiguration](./Models/PageBeanContextualConfiguration.md)
 - [PageBeanCustomFieldContext](./Models/PageBeanCustomFieldContext.md)
 - [PageBeanCustomFieldContextDefaultValue](./Models/PageBeanCustomFieldContextDefaultValue.md)
 - [PageBeanCustomFieldContextOption](./Models/PageBeanCustomFieldContextOption.md)
 - [PageBeanCustomFieldContextProjectMapping](./Models/PageBeanCustomFieldContextProjectMapping.md)
 - [PageBeanDashboard](./Models/PageBeanDashboard.md)
 - [PageBeanField](./Models/PageBeanField.md)
 - [PageBeanFieldConfigurationDetails](./Models/PageBeanFieldConfigurationDetails.md)
 - [PageBeanFieldConfigurationIssueTypeItem](./Models/PageBeanFieldConfigurationIssueTypeItem.md)
 - [PageBeanFieldConfigurationItem](./Models/PageBeanFieldConfigurationItem.md)
 - [PageBeanFieldConfigurationScheme](./Models/PageBeanFieldConfigurationScheme.md)
 - [PageBeanFieldConfigurationSchemeProjects](./Models/PageBeanFieldConfigurationSchemeProjects.md)
 - [PageBeanFilterDetails](./Models/PageBeanFilterDetails.md)
 - [PageBeanGroupDetails](./Models/PageBeanGroupDetails.md)
 - [PageBeanIssueFieldOption](./Models/PageBeanIssueFieldOption.md)
 - [PageBeanIssueSecurityLevelMember](./Models/PageBeanIssueSecurityLevelMember.md)
 - [PageBeanIssueSecuritySchemeToProjectMapping](./Models/PageBeanIssueSecuritySchemeToProjectMapping.md)
 - [PageBeanIssueTypeScheme](./Models/PageBeanIssueTypeScheme.md)
 - [PageBeanIssueTypeSchemeMapping](./Models/PageBeanIssueTypeSchemeMapping.md)
 - [PageBeanIssueTypeSchemeProjects](./Models/PageBeanIssueTypeSchemeProjects.md)
 - [PageBeanIssueTypeScreenScheme](./Models/PageBeanIssueTypeScreenScheme.md)
 - [PageBeanIssueTypeScreenSchemeItem](./Models/PageBeanIssueTypeScreenSchemeItem.md)
 - [PageBeanIssueTypeScreenSchemesProjects](./Models/PageBeanIssueTypeScreenSchemesProjects.md)
 - [PageBeanIssueTypeToContextMapping](./Models/PageBeanIssueTypeToContextMapping.md)
 - [PageBeanNotificationScheme](./Models/PageBeanNotificationScheme.md)
 - [PageBeanNotificationSchemeAndProjectMappingJsonBean](./Models/PageBeanNotificationSchemeAndProjectMappingJsonBean.md)
 - [PageBeanPriority](./Models/PageBeanPriority.md)
 - [PageBeanPrioritySchemeWithPaginatedPrioritiesAndProjects](./Models/PageBeanPrioritySchemeWithPaginatedPrioritiesAndProjects.md)
 - [PageBeanPriorityWithSequence](./Models/PageBeanPriorityWithSequence.md)
 - [PageBeanProject](./Models/PageBeanProject.md)
 - [PageBeanProjectDetails](./Models/PageBeanProjectDetails.md)
 - [PageBeanResolutionJsonBean](./Models/PageBeanResolutionJsonBean.md)
 - [PageBeanScreen](./Models/PageBeanScreen.md)
 - [PageBeanScreenScheme](./Models/PageBeanScreenScheme.md)
 - [PageBeanScreenWithTab](./Models/PageBeanScreenWithTab.md)
 - [PageBeanSecurityLevel](./Models/PageBeanSecurityLevel.md)
 - [PageBeanSecurityLevelMember](./Models/PageBeanSecurityLevelMember.md)
 - [PageBeanSecuritySchemeWithProjects](./Models/PageBeanSecuritySchemeWithProjects.md)
 - [PageBeanString](./Models/PageBeanString.md)
 - [PageBeanUiModificationDetails](./Models/PageBeanUiModificationDetails.md)
 - [PageBeanUser](./Models/PageBeanUser.md)
 - [PageBeanUserDetails](./Models/PageBeanUserDetails.md)
 - [PageBeanUserKey](./Models/PageBeanUserKey.md)
 - [PageBeanVersion](./Models/PageBeanVersion.md)
 - [PageBeanWebhook](./Models/PageBeanWebhook.md)
 - [PageBeanWorkflow](./Models/PageBeanWorkflow.md)
 - [PageBeanWorkflowScheme](./Models/PageBeanWorkflowScheme.md)
 - [PageBeanWorkflowTransitionRules](./Models/PageBeanWorkflowTransitionRules.md)
 - [PageOfChangelogs](./Models/PageOfChangelogs.md)
 - [PageOfComments](./Models/PageOfComments.md)
 - [PageOfCreateMetaIssueTypeWithField](./Models/PageOfCreateMetaIssueTypeWithField.md)
 - [PageOfCreateMetaIssueTypes](./Models/PageOfCreateMetaIssueTypes.md)
 - [PageOfDashboards](./Models/PageOfDashboards.md)
 - [PageOfStatuses](./Models/PageOfStatuses.md)
 - [PageOfWorklogs](./Models/PageOfWorklogs.md)
 - [PageWithCursorGetPlanResponseForPage](./Models/PageWithCursorGetPlanResponseForPage.md)
 - [PageWithCursorGetTeamResponseForPage](./Models/PageWithCursorGetTeamResponseForPage.md)
 - [PagedListUserDetailsApplicationUser](./Models/PagedListUserDetailsApplicationUser.md)
 - [PaginatedResponseComment](./Models/PaginatedResponseComment.md)
 - [PaginatedResponseFieldCreateMetadata](./Models/PaginatedResponseFieldCreateMetadata.md)
 - [PaginatedResponseIssueTypeIssueCreateMetadata](./Models/PaginatedResponseIssueTypeIssueCreateMetadata.md)
 - [ParsedJqlQueries](./Models/ParsedJqlQueries.md)
 - [ParsedJqlQuery](./Models/ParsedJqlQuery.md)
 - [PermissionDetails](./Models/PermissionDetails.md)
 - [PermissionGrant](./Models/PermissionGrant.md)
 - [PermissionGrantDTO](./Models/PermissionGrantDTO.md)
 - [PermissionGrants](./Models/PermissionGrants.md)
 - [PermissionHolder](./Models/PermissionHolder.md)
 - [PermissionPayloadDTO](./Models/PermissionPayloadDTO.md)
 - [PermissionScheme](./Models/PermissionScheme.md)
 - [PermissionSchemes](./Models/PermissionSchemes.md)
 - [Permissions](./Models/Permissions.md)
 - [PermissionsKeysBean](./Models/PermissionsKeysBean.md)
 - [PermittedProjects](./Models/PermittedProjects.md)
 - [PreviewConditionGroupConfiguration](./Models/PreviewConditionGroupConfiguration.md)
 - [PreviewRuleConfiguration](./Models/PreviewRuleConfiguration.md)
 - [PreviewTrigger](./Models/PreviewTrigger.md)
 - [Priority](./Models/Priority.md)
 - [PriorityId](./Models/PriorityId.md)
 - [PriorityMapping](./Models/PriorityMapping.md)
 - [PrioritySchemeChangesWithoutMappings](./Models/PrioritySchemeChangesWithoutMappings.md)
 - [PrioritySchemeId](./Models/PrioritySchemeId.md)
 - [PrioritySchemeWithPaginatedPrioritiesAndProjects](./Models/PrioritySchemeWithPaginatedPrioritiesAndProjects.md)
 - [PriorityWithSequence](./Models/PriorityWithSequence.md)
 - [Project](./Models/Project.md)
 - [ProjectAndIssueTypePair](./Models/ProjectAndIssueTypePair.md)
 - [ProjectArchetype](./Models/ProjectArchetype.md)
 - [ProjectAvatars](./Models/ProjectAvatars.md)
 - [ProjectCategory](./Models/ProjectCategory.md)
 - [ProjectComponent](./Models/ProjectComponent.md)
 - [ProjectCreateResourceIdentifier](./Models/ProjectCreateResourceIdentifier.md)
 - [ProjectCustomTemplateCreateRequestDTO](./Models/ProjectCustomTemplateCreateRequestDTO.md)
 - [ProjectDataPolicies](./Models/ProjectDataPolicies.md)
 - [ProjectDataPolicy](./Models/ProjectDataPolicy.md)
 - [ProjectDetails](./Models/ProjectDetails.md)
 - [ProjectEmailAddress](./Models/ProjectEmailAddress.md)
 - [ProjectFeature](./Models/ProjectFeature.md)
 - [ProjectFeatureState](./Models/ProjectFeatureState.md)
 - [ProjectId](./Models/ProjectId.md)
 - [ProjectIdAssociationContext](./Models/ProjectIdAssociationContext.md)
 - [ProjectIdentifierBean](./Models/ProjectIdentifierBean.md)
 - [ProjectIdentifiers](./Models/ProjectIdentifiers.md)
 - [ProjectIds](./Models/ProjectIds.md)
 - [ProjectInsight](./Models/ProjectInsight.md)
 - [ProjectIssueCreateMetadata](./Models/ProjectIssueCreateMetadata.md)
 - [ProjectIssueSecurityLevels](./Models/ProjectIssueSecurityLevels.md)
 - [ProjectIssueTypeHierarchy](./Models/ProjectIssueTypeHierarchy.md)
 - [ProjectIssueTypeMapping](./Models/ProjectIssueTypeMapping.md)
 - [ProjectIssueTypeMappings](./Models/ProjectIssueTypeMappings.md)
 - [ProjectIssueTypeQueryContext](./Models/ProjectIssueTypeQueryContext.md)
 - [ProjectIssueTypesHierarchyLevel](./Models/ProjectIssueTypesHierarchyLevel.md)
 - [ProjectLandingPageInfo](./Models/ProjectLandingPageInfo.md)
 - [ProjectPayload](./Models/ProjectPayload.md)
 - [ProjectPermissions](./Models/ProjectPermissions.md)
 - [ProjectRole](./Models/ProjectRole.md)
 - [ProjectRoleActorsUpdateBean](./Models/ProjectRoleActorsUpdateBean.md)
 - [ProjectRoleDetails](./Models/ProjectRoleDetails.md)
 - [ProjectRoleGroup](./Models/ProjectRoleGroup.md)
 - [ProjectRoleUser](./Models/ProjectRoleUser.md)
 - [ProjectScopeBean](./Models/ProjectScopeBean.md)
 - [ProjectTemplateKey](./Models/ProjectTemplateKey.md)
 - [ProjectTemplateModel](./Models/ProjectTemplateModel.md)
 - [ProjectType](./Models/ProjectType.md)
 - [ProjectUsage](./Models/ProjectUsage.md)
 - [ProjectUsagePage](./Models/ProjectUsagePage.md)
 - [ProjectWithDataPolicy](./Models/ProjectWithDataPolicy.md)
 - [PropertyKey](./Models/PropertyKey.md)
 - [PropertyKeys](./Models/PropertyKeys.md)
 - [PublishDraftWorkflowScheme](./Models/PublishDraftWorkflowScheme.md)
 - [PublishedWorkflowId](./Models/PublishedWorkflowId.md)
 - [QuickFilterPayload](./Models/QuickFilterPayload.md)
 - [RedactionJobStatusResponse](./Models/RedactionJobStatusResponse.md)
 - [RedactionPosition](./Models/RedactionPosition.md)
 - [RegisteredWebhook](./Models/RegisteredWebhook.md)
 - [RemoteIssueLink](./Models/RemoteIssueLink.md)
 - [RemoteIssueLinkIdentifies](./Models/RemoteIssueLinkIdentifies.md)
 - [RemoteIssueLinkRequest](./Models/RemoteIssueLinkRequest.md)
 - [RemoteObject](./Models/RemoteObject.md)
 - [RemoveOptionFromIssuesResult](./Models/RemoveOptionFromIssuesResult.md)
 - [ReorderIssuePriorities](./Models/ReorderIssuePriorities.md)
 - [ReorderIssueResolutionsRequest](./Models/ReorderIssueResolutionsRequest.md)
 - [RequiredMappingByIssueType](./Models/RequiredMappingByIssueType.md)
 - [RequiredMappingByWorkflows](./Models/RequiredMappingByWorkflows.md)
 - [Resolution](./Models/Resolution.md)
 - [ResolutionId](./Models/ResolutionId.md)
 - [ResolutionJsonBean](./Models/ResolutionJsonBean.md)
 - [Resource](./Models/Resource.md)
 - [RestrictedPermission](./Models/RestrictedPermission.md)
 - [RichText](./Models/RichText.md)
 - [RoleActor](./Models/RoleActor.md)
 - [RolePayload](./Models/RolePayload.md)
 - [RolesCapabilityPayload](./Models/RolesCapabilityPayload.md)
 - [RuleConfiguration](./Models/RuleConfiguration.md)
 - [RulePayload](./Models/RulePayload.md)
 - [SanitizedJqlQueries](./Models/SanitizedJqlQueries.md)
 - [SanitizedJqlQuery](./Models/SanitizedJqlQuery.md)
 - [SaveProjectTemplateRequest](./Models/SaveProjectTemplateRequest.md)
 - [SaveTemplateRequest](./Models/SaveTemplateRequest.md)
 - [SaveTemplateResponse](./Models/SaveTemplateResponse.md)
 - [Scope](./Models/Scope.md)
 - [ScopePayload](./Models/ScopePayload.md)
 - [Screen](./Models/Screen.md)
 - [ScreenDetails](./Models/ScreenDetails.md)
 - [ScreenPayload](./Models/ScreenPayload.md)
 - [ScreenScheme](./Models/ScreenScheme.md)
 - [ScreenSchemeDetails](./Models/ScreenSchemeDetails.md)
 - [ScreenSchemeId](./Models/ScreenSchemeId.md)
 - [ScreenSchemePayload](./Models/ScreenSchemePayload.md)
 - [ScreenTypes](./Models/ScreenTypes.md)
 - [ScreenWithTab](./Models/ScreenWithTab.md)
 - [ScreenableField](./Models/ScreenableField.md)
 - [ScreenableTab](./Models/ScreenableTab.md)
 - [SearchAndReconcileRequestBean](./Models/SearchAndReconcileRequestBean.md)
 - [SearchAndReconcileResults](./Models/SearchAndReconcileResults.md)
 - [SearchAutoCompleteFilter](./Models/SearchAutoCompleteFilter.md)
 - [SearchRequestBean](./Models/SearchRequestBean.md)
 - [SearchResults](./Models/SearchResults.md)
 - [SecurityLevel](./Models/SecurityLevel.md)
 - [SecurityLevelMember](./Models/SecurityLevelMember.md)
 - [SecurityLevelMemberPayload](./Models/SecurityLevelMemberPayload.md)
 - [SecurityLevelPayload](./Models/SecurityLevelPayload.md)
 - [SecurityScheme](./Models/SecurityScheme.md)
 - [SecuritySchemeId](./Models/SecuritySchemeId.md)
 - [SecuritySchemeLevelBean](./Models/SecuritySchemeLevelBean.md)
 - [SecuritySchemeLevelMemberBean](./Models/SecuritySchemeLevelMemberBean.md)
 - [SecuritySchemeMembersRequest](./Models/SecuritySchemeMembersRequest.md)
 - [SecuritySchemePayload](./Models/SecuritySchemePayload.md)
 - [SecuritySchemeWithProjects](./Models/SecuritySchemeWithProjects.md)
 - [SecuritySchemes](./Models/SecuritySchemes.md)
 - [ServerInformation](./Models/ServerInformation.md)
 - [ServiceManagementNavigationInfo](./Models/ServiceManagementNavigationInfo.md)
 - [ServiceRegistry](./Models/ServiceRegistry.md)
 - [ServiceRegistryTier](./Models/ServiceRegistryTier.md)
 - [SetDefaultLevelsRequest](./Models/SetDefaultLevelsRequest.md)
 - [SetDefaultPriorityRequest](./Models/SetDefaultPriorityRequest.md)
 - [SetDefaultResolutionRequest](./Models/SetDefaultResolutionRequest.md)
 - [SharePermission](./Models/SharePermission.md)
 - [SharePermissionInputBean](./Models/SharePermissionInputBean.md)
 - [SimpleApplicationPropertyBean](./Models/SimpleApplicationPropertyBean.md)
 - [SimpleErrorCollection](./Models/SimpleErrorCollection.md)
 - [SimpleLink](./Models/SimpleLink.md)
 - [SimpleListWrapperApplicationRole](./Models/SimpleListWrapperApplicationRole.md)
 - [SimpleListWrapperGroupName](./Models/SimpleListWrapperGroupName.md)
 - [SimplifiedHierarchyLevel](./Models/SimplifiedHierarchyLevel.md)
 - [SingleRedactionRequest](./Models/SingleRedactionRequest.md)
 - [SingleRedactionResponse](./Models/SingleRedactionResponse.md)
 - [SoftwareNavigationInfo](./Models/SoftwareNavigationInfo.md)
 - [Status](./Models/Status.md)
 - [StatusCategory](./Models/StatusCategory.md)
 - [StatusCreate](./Models/StatusCreate.md)
 - [StatusCreateRequest](./Models/StatusCreateRequest.md)
 - [StatusDetails](./Models/StatusDetails.md)
 - [StatusLayoutUpdate](./Models/StatusLayoutUpdate.md)
 - [StatusMapping](./Models/StatusMapping.md)
 - [StatusMappingDTO](./Models/StatusMappingDTO.md)
 - [StatusMetadata](./Models/StatusMetadata.md)
 - [StatusMigration](./Models/StatusMigration.md)
 - [StatusPayload](./Models/StatusPayload.md)
 - [StatusProjectIssueTypeUsage](./Models/StatusProjectIssueTypeUsage.md)
 - [StatusProjectIssueTypeUsageDTO](./Models/StatusProjectIssueTypeUsageDTO.md)
 - [StatusProjectIssueTypeUsagePage](./Models/StatusProjectIssueTypeUsagePage.md)
 - [StatusProjectUsage](./Models/StatusProjectUsage.md)
 - [StatusProjectUsageDTO](./Models/StatusProjectUsageDTO.md)
 - [StatusProjectUsagePage](./Models/StatusProjectUsagePage.md)
 - [StatusScope](./Models/StatusScope.md)
 - [StatusUpdate](./Models/StatusUpdate.md)
 - [StatusUpdateRequest](./Models/StatusUpdateRequest.md)
 - [StatusWorkflowUsageDTO](./Models/StatusWorkflowUsageDTO.md)
 - [StatusWorkflowUsagePage](./Models/StatusWorkflowUsagePage.md)
 - [StatusWorkflowUsageWorkflow](./Models/StatusWorkflowUsageWorkflow.md)
 - [StatusesPerWorkflow](./Models/StatusesPerWorkflow.md)
 - [SuggestedIssue](./Models/SuggestedIssue.md)
 - [SuggestedMappingsForPrioritiesRequestBean](./Models/SuggestedMappingsForPrioritiesRequestBean.md)
 - [SuggestedMappingsForProjectsRequestBean](./Models/SuggestedMappingsForProjectsRequestBean.md)
 - [SuggestedMappingsRequestBean](./Models/SuggestedMappingsRequestBean.md)
 - [SwimlanePayload](./Models/SwimlanePayload.md)
 - [SwimlanesPayload](./Models/SwimlanesPayload.md)
 - [SystemAvatars](./Models/SystemAvatars.md)
 - [TabPayload](./Models/TabPayload.md)
 - [TaskProgressBeanJsonNode](./Models/TaskProgressBeanJsonNode.md)
 - [TaskProgressBeanObject](./Models/TaskProgressBeanObject.md)
 - [TaskProgressBeanRemoveOptionFromIssuesResult](./Models/TaskProgressBeanRemoveOptionFromIssuesResult.md)
 - [TimeTrackingConfiguration](./Models/TimeTrackingConfiguration.md)
 - [TimeTrackingDetails](./Models/TimeTrackingDetails.md)
 - [TimeTrackingProvider](./Models/TimeTrackingProvider.md)
 - [ToLayoutPayload](./Models/ToLayoutPayload.md)
 - [Transition](./Models/Transition.md)
 - [TransitionLink](./Models/TransitionLink.md)
 - [TransitionPayload](./Models/TransitionPayload.md)
 - [TransitionPreview](./Models/TransitionPreview.md)
 - [TransitionScreenDetails](./Models/TransitionScreenDetails.md)
 - [TransitionUpdateDTO](./Models/TransitionUpdateDTO.md)
 - [Transitions](./Models/Transitions.md)
 - [UiModificationContextDetails](./Models/UiModificationContextDetails.md)
 - [UiModificationDetails](./Models/UiModificationDetails.md)
 - [UiModificationIdentifiers](./Models/UiModificationIdentifiers.md)
 - [UnrestrictedUserEmail](./Models/UnrestrictedUserEmail.md)
 - [UpdateCustomFieldDetails](./Models/UpdateCustomFieldDetails.md)
 - [UpdateDefaultProjectClassificationBean](./Models/UpdateDefaultProjectClassificationBean.md)
 - [UpdateDefaultScreenScheme](./Models/UpdateDefaultScreenScheme.md)
 - [UpdateFieldConfigurationSchemeDetails](./Models/UpdateFieldConfigurationSchemeDetails.md)
 - [UpdateIssueSecurityLevelDetails](./Models/UpdateIssueSecurityLevelDetails.md)
 - [UpdateIssueSecuritySchemeRequestBean](./Models/UpdateIssueSecuritySchemeRequestBean.md)
 - [UpdateNotificationSchemeDetails](./Models/UpdateNotificationSchemeDetails.md)
 - [UpdatePrioritiesInSchemeRequestBean](./Models/UpdatePrioritiesInSchemeRequestBean.md)
 - [UpdatePriorityDetails](./Models/UpdatePriorityDetails.md)
 - [UpdatePrioritySchemeRequestBean](./Models/UpdatePrioritySchemeRequestBean.md)
 - [UpdatePrioritySchemeResponseBean](./Models/UpdatePrioritySchemeResponseBean.md)
 - [UpdateProjectDetails](./Models/UpdateProjectDetails.md)
 - [UpdateProjectsInSchemeRequestBean](./Models/UpdateProjectsInSchemeRequestBean.md)
 - [UpdateResolutionDetails](./Models/UpdateResolutionDetails.md)
 - [UpdateScreenDetails](./Models/UpdateScreenDetails.md)
 - [UpdateScreenSchemeDetails](./Models/UpdateScreenSchemeDetails.md)
 - [UpdateScreenTypes](./Models/UpdateScreenTypes.md)
 - [UpdateUiModificationDetails](./Models/UpdateUiModificationDetails.md)
 - [UpdateUserToGroupBean](./Models/UpdateUserToGroupBean.md)
 - [UpdatedProjectCategory](./Models/UpdatedProjectCategory.md)
 - [User](./Models/User.md)
 - [UserBean](./Models/UserBean.md)
 - [UserBeanAvatarUrls](./Models/UserBeanAvatarUrls.md)
 - [UserColumnRequestBody](./Models/UserColumnRequestBody.md)
 - [UserContextVariable](./Models/UserContextVariable.md)
 - [UserDetails](./Models/UserDetails.md)
 - [UserFilter](./Models/UserFilter.md)
 - [UserKey](./Models/UserKey.md)
 - [UserList](./Models/UserList.md)
 - [UserMigrationBean](./Models/UserMigrationBean.md)
 - [UserPermission](./Models/UserPermission.md)
 - [UserPickerUser](./Models/UserPickerUser.md)
 - [ValidationOptionsForCreate](./Models/ValidationOptionsForCreate.md)
 - [ValidationOptionsForUpdate](./Models/ValidationOptionsForUpdate.md)
 - [ValueOperand](./Models/ValueOperand.md)
 - [Version](./Models/Version.md)
 - [VersionApprover](./Models/VersionApprover.md)
 - [VersionIssueCounts](./Models/VersionIssueCounts.md)
 - [VersionIssuesStatus](./Models/VersionIssuesStatus.md)
 - [VersionMoveBean](./Models/VersionMoveBean.md)
 - [VersionRelatedWork](./Models/VersionRelatedWork.md)
 - [VersionUnresolvedIssuesCount](./Models/VersionUnresolvedIssuesCount.md)
 - [VersionUsageInCustomField](./Models/VersionUsageInCustomField.md)
 - [Visibility](./Models/Visibility.md)
 - [Votes](./Models/Votes.md)
 - [WarningCollection](./Models/WarningCollection.md)
 - [Watchers](./Models/Watchers.md)
 - [Webhook](./Models/Webhook.md)
 - [WebhookDetails](./Models/WebhookDetails.md)
 - [WebhookRegistrationDetails](./Models/WebhookRegistrationDetails.md)
 - [WebhooksExpirationDate](./Models/WebhooksExpirationDate.md)
 - [WorkManagementNavigationInfo](./Models/WorkManagementNavigationInfo.md)
 - [Workflow](./Models/Workflow.md)
 - [WorkflowAssociationStatusMapping](./Models/WorkflowAssociationStatusMapping.md)
 - [WorkflowCapabilities](./Models/WorkflowCapabilities.md)
 - [WorkflowCapabilityPayload](./Models/WorkflowCapabilityPayload.md)
 - [WorkflowCompoundCondition](./Models/WorkflowCompoundCondition.md)
 - [WorkflowCondition](./Models/WorkflowCondition.md)
 - [WorkflowCreate](./Models/WorkflowCreate.md)
 - [WorkflowCreateRequest](./Models/WorkflowCreateRequest.md)
 - [WorkflowCreateResponse](./Models/WorkflowCreateResponse.md)
 - [WorkflowCreateValidateRequest](./Models/WorkflowCreateValidateRequest.md)
 - [WorkflowDocumentVersionBean](./Models/WorkflowDocumentVersionBean.md)
 - [WorkflowElementReference](./Models/WorkflowElementReference.md)
 - [WorkflowIDs](./Models/WorkflowIDs.md)
 - [WorkflowId](./Models/WorkflowId.md)
 - [WorkflowLayout](./Models/WorkflowLayout.md)
 - [WorkflowMetadataAndIssueTypeRestModel](./Models/WorkflowMetadataAndIssueTypeRestModel.md)
 - [WorkflowMetadataRestModel](./Models/WorkflowMetadataRestModel.md)
 - [WorkflowOperations](./Models/WorkflowOperations.md)
 - [WorkflowPayload](./Models/WorkflowPayload.md)
 - [WorkflowPreview](./Models/WorkflowPreview.md)
 - [WorkflowPreviewLayout](./Models/WorkflowPreviewLayout.md)
 - [WorkflowPreviewRequest](./Models/WorkflowPreviewRequest.md)
 - [WorkflowPreviewResponse](./Models/WorkflowPreviewResponse.md)
 - [WorkflowPreviewScope](./Models/WorkflowPreviewScope.md)
 - [WorkflowPreviewStatus](./Models/WorkflowPreviewStatus.md)
 - [WorkflowProjectIdScope](./Models/WorkflowProjectIdScope.md)
 - [WorkflowProjectIssueTypeUsage](./Models/WorkflowProjectIssueTypeUsage.md)
 - [WorkflowProjectIssueTypeUsageDTO](./Models/WorkflowProjectIssueTypeUsageDTO.md)
 - [WorkflowProjectIssueTypeUsagePage](./Models/WorkflowProjectIssueTypeUsagePage.md)
 - [WorkflowProjectUsageDTO](./Models/WorkflowProjectUsageDTO.md)
 - [WorkflowReadRequest](./Models/WorkflowReadRequest.md)
 - [WorkflowReadResponse](./Models/WorkflowReadResponse.md)
 - [WorkflowReferenceStatus](./Models/WorkflowReferenceStatus.md)
 - [WorkflowRuleConfiguration](./Models/WorkflowRuleConfiguration.md)
 - [WorkflowRules](./Models/WorkflowRules.md)
 - [WorkflowRulesSearch](./Models/WorkflowRulesSearch.md)
 - [WorkflowRulesSearchDetails](./Models/WorkflowRulesSearchDetails.md)
 - [WorkflowScheme](./Models/WorkflowScheme.md)
 - [WorkflowSchemeAssociation](./Models/WorkflowSchemeAssociation.md)
 - [WorkflowSchemeAssociations](./Models/WorkflowSchemeAssociations.md)
 - [WorkflowSchemeIdName](./Models/WorkflowSchemeIdName.md)
 - [WorkflowSchemePayload](./Models/WorkflowSchemePayload.md)
 - [WorkflowSchemeProjectAssociation](./Models/WorkflowSchemeProjectAssociation.md)
 - [WorkflowSchemeProjectUsageDTO](./Models/WorkflowSchemeProjectUsageDTO.md)
 - [WorkflowSchemeReadRequest](./Models/WorkflowSchemeReadRequest.md)
 - [WorkflowSchemeReadResponse](./Models/WorkflowSchemeReadResponse.md)
 - [WorkflowSchemeUpdateRequest](./Models/WorkflowSchemeUpdateRequest.md)
 - [WorkflowSchemeUpdateRequiredMappingsRequest](./Models/WorkflowSchemeUpdateRequiredMappingsRequest.md)
 - [WorkflowSchemeUpdateRequiredMappingsResponse](./Models/WorkflowSchemeUpdateRequiredMappingsResponse.md)
 - [WorkflowSchemeUsage](./Models/WorkflowSchemeUsage.md)
 - [WorkflowSchemeUsageDTO](./Models/WorkflowSchemeUsageDTO.md)
 - [WorkflowSchemeUsagePage](./Models/WorkflowSchemeUsagePage.md)
 - [WorkflowScope](./Models/WorkflowScope.md)
 - [WorkflowSearchResponse](./Models/WorkflowSearchResponse.md)
 - [WorkflowSimpleCondition](./Models/WorkflowSimpleCondition.md)
 - [WorkflowStatus](./Models/WorkflowStatus.md)
 - [WorkflowStatusLayout](./Models/WorkflowStatusLayout.md)
 - [WorkflowStatusLayoutPayload](./Models/WorkflowStatusLayoutPayload.md)
 - [WorkflowStatusPayload](./Models/WorkflowStatusPayload.md)
 - [WorkflowStatusUpdate](./Models/WorkflowStatusUpdate.md)
 - [WorkflowTransition](./Models/WorkflowTransition.md)
 - [WorkflowTransitionLinks](./Models/WorkflowTransitionLinks.md)
 - [WorkflowTransitionProperty](./Models/WorkflowTransitionProperty.md)
 - [WorkflowTransitionRule](./Models/WorkflowTransitionRule.md)
 - [WorkflowTransitionRules](./Models/WorkflowTransitionRules.md)
 - [WorkflowTransitionRulesDetails](./Models/WorkflowTransitionRulesDetails.md)
 - [WorkflowTransitionRulesUpdate](./Models/WorkflowTransitionRulesUpdate.md)
 - [WorkflowTransitionRulesUpdateErrorDetails](./Models/WorkflowTransitionRulesUpdateErrorDetails.md)
 - [WorkflowTransitionRulesUpdateErrors](./Models/WorkflowTransitionRulesUpdateErrors.md)
 - [WorkflowTransitions](./Models/WorkflowTransitions.md)
 - [WorkflowTrigger](./Models/WorkflowTrigger.md)
 - [WorkflowUpdate](./Models/WorkflowUpdate.md)
 - [WorkflowUpdateRequest](./Models/WorkflowUpdateRequest.md)
 - [WorkflowUpdateResponse](./Models/WorkflowUpdateResponse.md)
 - [WorkflowUpdateValidateRequestBean](./Models/WorkflowUpdateValidateRequestBean.md)
 - [WorkflowValidationError](./Models/WorkflowValidationError.md)
 - [WorkflowValidationErrorList](./Models/WorkflowValidationErrorList.md)
 - [WorkflowsWithTransitionRulesDetails](./Models/WorkflowsWithTransitionRulesDetails.md)
 - [WorkingDaysConfig](./Models/WorkingDaysConfig.md)
 - [Worklog](./Models/Worklog.md)
 - [WorklogCompositeKey](./Models/WorklogCompositeKey.md)
 - [WorklogIdsRequestBean](./Models/WorklogIdsRequestBean.md)
 - [WorklogKeyResult](./Models/WorklogKeyResult.md)
 - [WorklogsMoveRequestBean](./Models/WorklogsMoveRequestBean.md)
 - [WorkspaceDataPolicy](./Models/WorkspaceDataPolicy.md)
 - [getForgeAppPropertyKeys_200_response](./Models/getForgeAppPropertyKeys_200_response.md)
 - [getForgeAppPropertyKeys_200_response_keys_inner](./Models/getForgeAppPropertyKeys_200_response_keys_inner.md)
 - [getForgeAppProperty_200_response](./Models/getForgeAppProperty_200_response.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="OAuth2"></a>
### OAuth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://auth.atlassian.com/authorize
- **Scopes**:
  - delete:async-task:jira: Delete asynchronous task.
  - delete:attachment:jira: Delete issue attachments.
  - delete:avatar:jira: Delete system and custom avatars.
  - delete:comment.property:jira: Delete issue comment properties.
  - delete:comment:jira: Delete issue comments.
  - delete:dashboard.property:jira: Delete dashboard properties.
  - delete:dashboard:jira: Delete dashboards.
  - delete:field-configuration-scheme:jira: Delete field configuration schemes.
  - delete:field-configuration:jira: Delete field configurations.
  - delete:field.option:jira: Delete field options.
  - delete:field:jira: Delete fields.
  - delete:filter.column:jira: Delete filter columns.
  - delete:filter:jira: Delete filters.
  - delete:group:jira: Delete user groups.
  - delete:issue-link-type:jira: Delete issue link types.
  - delete:issue-link:jira: Delete issue links.
  - delete:issue-type-scheme:jira: Delete issue type schemes.
  - delete:issue-type-screen-scheme:jira: Delete issue type screen schemes.
  - delete:issue-type.property:jira: Delete issue type properties.
  - delete:issue-type:jira: Delete issue types.
  - delete:issue-worklog.property:jira: Delete issue worklog properties.
  - delete:issue-worklog:jira: Delete issue worklogs.
  - delete:issue.property:jira: Delete issue properties.
  - delete:issue.remote-link:jira: Delete issue remote links.
  - delete:issue:jira: Delete issues.
  - delete:permission-scheme:jira: Delete permission schemes.
  - delete:permission:jira: Delete permissions.
  - delete:project-category:jira: Delete project categories.
  - delete:project-role:jira: Delete project roles.
  - delete:project-version:jira: Delete project versions.
  - delete:project.avatar:jira: Delete project avatars.
  - delete:project.component:jira: Delete project components.
  - delete:project.property:jira: Delete project properties.
  - delete:project:jira: Delete projects and their details, such as issue types, project lead, and avatars.
  - delete:screen-scheme:jira: Delete screen schemes.
  - delete:screen-tab:jira: Delete screen tabs.
  - delete:screen:jira: Delete screens.
  - delete:screenable-field:jira: Delete screenable fields.
  - delete:user-configuration:jira: Delete user configurations.
  - delete:user.property:jira: Delete user properties.
  - delete:webhook:jira: Delete webhooks.
  - delete:workflow-scheme:jira: Delete workflow schemes.
  - delete:workflow.property:jira: Delete workflow properties.
  - delete:workflow:jira: Delete workflows.
  - manage:jira-configuration: Configure Jira settings that require the Jira administrators permission, for example, create projects and custom fields, view workflows, manage issue link types.
  - manage:jira-project: Create and edit project settings and create new project-level objects, for example, versions, components.
  - manage:jira-webhook: Manage Jira webhooks. Enables an OAuth app to register and unregister dynamic webhooks in Jira. It also provides for fetching of registered webhooks.
  - read:app-data:jira: Read app data.
  - read:application-role:jira: View application roles.
  - read:attachment:jira: View issue attachments.
  - read:audit-log:jira: View audit logs.
  - read:avatar:jira: View system and custom avatars.
  - read:comment.property:jira: View issue comment properties.
  - read:comment:jira: View issue comments.
  - read:custom-field-contextual-configuration:jira: Read custom field contextual configurations.
  - read:dashboard.property:jira: View dashboard properties.
  - read:dashboard:jira: View dashboards.
  - read:email-address:jira: View email addresses of all users regardless of the user&#39;s profile visibility settings.
  - read:field-configuration-scheme:jira: View field configuration schemes.
  - read:field-configuration:jira: Read field configurations.
  - read:field.default-value:jira: View field default values.
  - read:field.option:jira: View field options.
  - read:field.options:jira: Read field options.
  - read:field:jira: View fields.
  - read:filter.column:jira: View filter columns.
  - read:filter.default-share-scope:jira: View filter default share scopes.
  - read:filter:jira: View filters.
  - read:group:jira: View user groups.
  - read:instance-configuration:jira: View instance configurations.
  - read:issue-details:jira: View issue details.
  - read:issue-event:jira: Read issue events.
  - read:issue-field-values:jira: View issue field valueses.
  - read:issue-link-type:jira: View issue link types.
  - read:issue-link:jira: View issue links.
  - read:issue-meta:jira: View issue meta.
  - read:issue-security-level:jira: View issue security levels.
  - read:issue-security-scheme:jira: View issue security schemes.
  - read:issue-status:jira: View issue statuses.
  - read:issue-type-hierarchy:jira: Read issue type hierarchies.
  - read:issue-type-scheme:jira: View issue type schemes.
  - read:issue-type-screen-scheme:jira: View issue type screen schemes.
  - read:issue-type.property:jira: View issue type properties.
  - read:issue-type:jira: View issue types.
  - read:issue-worklog.property:jira: View issue worklog properties.
  - read:issue-worklog:jira: View issue worklogs.
  - read:issue.changelog:jira: View issue changelogs.
  - read:issue.property:jira: View issue properties.
  - read:issue.remote-link:jira: View issue remote links.
  - read:issue.time-tracking:jira: View issue time trackings.
  - read:issue.transition:jira: View issue transitions.
  - read:issue.vote:jira: View issue votes.
  - read:issue.votes:jira: View issue voteses.
  - read:issue.watcher:jira: View issue watchers.
  - read:issue:jira: View issues.
  - read:jira-expressions:jira: View jira expressions.
  - read:jira-user: View user information in Jira that you have access to, including usernames, email addresses, and avatars.
  - read:jira-work: Read project and issue data. Search for issues and objects associated with issues (such as attachments and worklogs).
  - read:jql:jira: View JQL.
  - read:label:jira: View labels.
  - read:license:jira: View licenses.
  - read:notification-scheme:jira: View notification schemes.
  - read:permission-scheme:jira: View permission schemes.
  - read:permission:jira: View permissions.
  - read:priority:jira: View priorities.
  - read:project-category:jira: View project categories.
  - read:project-role:jira: View project roles.
  - read:project-type:jira: View project types.
  - read:project-version:jira: View project versions.
  - read:project.avatar:jira: Read project avatars.
  - read:project.component:jira: View project components.
  - read:project.email:jira: View project emails.
  - read:project.feature:jira: Read project features.
  - read:project.property:jira: View project properties.
  - read:project:jira: View projects.
  - read:resolution:jira: View resolutions.
  - read:role:jira: View roles.
  - read:screen-field:jira: View screen fields.
  - read:screen-scheme:jira: View screen schemes.
  - read:screen-tab:jira: View screen tabs.
  - read:screen:jira: View screens.
  - read:screenable-field:jira: View screenable fields.
  - read:status:jira: View statuses.
  - read:user-configuration:jira: View user configurations.
  - read:user.columns:jira: View user columnses.
  - read:user.property:jira: View user properties.
  - read:user:jira: View users.
  - read:webhook:jira: View webhooks.
  - read:workflow-scheme:jira: View workflow schemes.
  - read:workflow.property:jira: View workflow properties.
  - read:workflow:jira: View workflows.
  - send:notification:jira: Send notifications.
  - validate:jql:jira: Validate JQL.
  - write:app-data:jira: Write app data.
  - write:attachment:jira: Create and update issue attachments.
  - write:avatar:jira: Create and update system and custom avatars.
  - write:comment.property:jira: Create and update issue comment properties.
  - write:comment:jira: Create and update issue comments.
  - write:custom-field-contextual-configuration:jira: Save custom field contextual configurations.
  - write:dashboard.property:jira: Create and update dashboard properties.
  - write:dashboard:jira: Create and update dashboards.
  - write:field-configuration-scheme:jira: Create and update field configuration schemes.
  - write:field-configuration:jira: Save field configurations.
  - write:field.default-value:jira: Create and update field default values.
  - write:field.option:jira: Create and update field options.
  - write:field:jira: Create and update fields.
  - write:filter.column:jira: Create and update filter columns.
  - write:filter.default-share-scope:jira: Create and update filter default share scopes.
  - write:filter:jira: Create and update filters.
  - write:group:jira: Create and update user groups.
  - write:instance-configuration:jira: Create and update instance configurations.
  - write:issue-link-type:jira: Create and update issue link types.
  - write:issue-link:jira: Create and update issue links.
  - write:issue-type-scheme:jira: Create and update issue type schemes.
  - write:issue-type-screen-scheme:jira: Create and update issue type screen schemes.
  - write:issue-type.property:jira: Create and update issue type properties.
  - write:issue-type:jira: Create and update issue types.
  - write:issue-worklog.property:jira: Create and update issue worklog properties.
  - write:issue-worklog:jira: Create and update issue worklogs.
  - write:issue.property:jira: Create and update issue properties.
  - write:issue.remote-link:jira: Create and update issue remote links.
  - write:issue.time-tracking:jira: Create and update issue time trackings.
  - write:issue.vote:jira: Create and update issue votes.
  - write:issue.watcher:jira: Create and update issue watchers.
  - write:issue:jira: Create and update issues.
  - write:jira-work: Create and edit issues in Jira, post comments, create worklogs, and delete issues.
  - write:permission-scheme:jira: Create and update permission schemes.
  - write:permission:jira: Create and update permissions.
  - write:project-category:jira: Create and update project categories.
  - write:project-role:jira: Create and update project roles.
  - write:project-version:jira: Create and update project versions.
  - write:project.avatar:jira: Create and update project avatars.
  - write:project.component:jira: Create and update project components.
  - write:project.email:jira: Create and update project emails.
  - write:project.feature:jira: Save project features.
  - write:project.property:jira: Create and update project properties.
  - write:project:jira: Create and update projects.
  - write:screen-scheme:jira: Create and update screen schemes.
  - write:screen-tab:jira: Create and update screen tabs.
  - write:screen:jira: Create and update screens.
  - write:screenable-field:jira: Create and update screenable fields.
  - write:user-configuration:jira: Create and update user configurations.
  - write:user.property:jira: Create and update user properties.
  - write:webhook:jira: Create and update webhooks.
  - write:workflow-scheme:jira: Create and update workflow schemes.
  - write:workflow.property:jira: Create and update workflow properties.
  - write:workflow:jira: Create and update workflows.

<a name="basicAuth"></a>
### basicAuth

- **Type**: HTTP basic authentication

