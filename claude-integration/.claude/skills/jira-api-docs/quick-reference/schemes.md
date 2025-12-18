# Schemes Quick Reference

Jira uses various schemes to configure project behavior. This covers permission schemes, notification schemes, issue security schemes, and issue type schemes.

## Available Scripts

| Task | Script | Usage |
|------|--------|-------|
| Clone all schemes for a project | [`clone-jira-project.sh`](../scripts/clone-jira-project.sh) | Copies all schemes as part of full project clone |

## Permission Schemes

Control who can do what in a project.

```bash
# List permission schemes
jira get "/rest/api/3/permissionscheme"

# Get scheme with permissions
jira get "/rest/api/3/permissionscheme/{id}?expand=permissions"

# Get scheme for a project
jira get "/rest/api/3/project/{projectKey}/permissionscheme"

# Create permission scheme (empty)
jira post /rest/api/3/permissionscheme -d '{
  "name": "My Permission Scheme",
  "description": "Description"
}'

# Add permission grant
jira post "/rest/api/3/permissionscheme/{id}/permission" -d '{
  "permission": "BROWSE_PROJECTS",
  "holder": {
    "type": "group",
    "parameter": "jira-users"
  }
}'

# Assign scheme to project
jira put "/rest/api/3/project/{projectKey}/permissionscheme" -d '{
  "id": 10001
}'
```

### Permission Holder Types

| Type | Parameter | Description |
|------|-----------|-------------|
| `group` | Group name | Jira group |
| `projectRole` | Role ID | Project role |
| `user` | Account ID | Specific user |
| `applicationRole` | Role key | Application access |
| `anyone` | (none) | Anonymous/public |
| `projectLead` | (none) | Project lead |
| `assignee` | (none) | Issue assignee |
| `reporter` | (none) | Issue reporter |

## Notification Schemes

Define who gets notified for various events.

```bash
# List notification schemes
jira get "/rest/api/3/notificationscheme"

# Get scheme with events
jira get "/rest/api/3/notificationscheme/{id}?expand=all"

# Get scheme for a project
jira get "/rest/api/3/project/{projectKey}/notificationscheme"

# Create notification scheme
jira post /rest/api/3/notificationscheme -d '{
  "name": "My Notification Scheme",
  "description": "Description",
  "notificationSchemeEvents": [
    {
      "event": {"id": "1"},
      "notifications": [
        {"notificationType": "CurrentAssignee"},
        {"notificationType": "Reporter"}
      ]
    }
  ]
}'
```

### Common Event IDs

| ID | Event |
|----|-------|
| 1 | Issue Created |
| 2 | Issue Updated |
| 3 | Issue Assigned |
| 4 | Issue Resolved |
| 5 | Issue Closed |
| 6 | Issue Commented |
| 7 | Issue Comment Edited |

## Issue Security Schemes

Control visibility of issues by security level.

```bash
# List issue security schemes
jira get "/rest/api/3/issuesecurityschemes"

# Get scheme details
jira get "/rest/api/3/issuesecurityschemes/{id}"

# Get scheme for a project
jira get "/rest/api/3/issuesecurityschemes/project?projectId={projectId}"

# Create issue security scheme
jira post /rest/api/3/issuesecurityschemes -d '{
  "name": "My Security Scheme",
  "description": "Description",
  "levels": [
    {"name": "Internal", "description": "Visible to team only"},
    {"name": "Confidential", "description": "Restricted access"}
  ]
}'
```

## Issue Type Schemes

Define which issue types are available in a project.

```bash
# List issue type schemes
jira get "/rest/api/3/issuetypescheme"

# Get scheme for a project
jira get "/rest/api/3/issuetypescheme/project?projectId={projectId}"

# Get scheme mappings (issue types in scheme)
jira get "/rest/api/3/issuetypescheme/mapping?issueTypeSchemeId={id}"

# Create issue type scheme
jira post /rest/api/3/issuetypescheme -d '{
  "name": "My Issue Type Scheme",
  "description": "Description",
  "issueTypeIds": ["10001", "10002", "10003"],
  "defaultIssueTypeId": "10001"
}'
```

## Lessons Learned

- **Permission bulk creation fails** — Adding all permissions at once fails if ANY permission is invalid; add them individually
- **Discovery permissions fail without product** — Permissions for Jira Discovery fail if that product isn't installed
- **Notification scheme events** — Event IDs are fixed; query an existing scheme to see available events
- **Issue security levels** — Levels are created with the scheme; members are added separately
- **Issue type schemes share types** — Issue types themselves are global; schemes just select which ones a project uses

## No script for your task?

1. Query the `jira-docs` MCP server for endpoint details
2. Check existing scripts in `../scripts/` for patterns
3. Write a new script and add it here when done
