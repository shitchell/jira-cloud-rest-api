# Screens Quick Reference

Screens define which fields appear when creating, editing, or viewing issues. Screen Schemes map screens to operations (create/edit/view), and Issue Type Screen Schemes map screen schemes to issue types.

## Hierarchy

```
Issue Type Screen Scheme
  └── Screen Scheme (per issue type)
        └── Screens (default, create, edit, view)
              └── Tabs
                    └── Fields
```

## Available Scripts

| Task | Script | Usage |
|------|--------|-------|
| Clone all screens for a project | [`clone-jira-project.sh`](../scripts/clone-jira-project.sh) | Copies screens, screen schemes, and ITSS as part of full project clone |

## Key APIs

### Screens

```bash
# List screens (with search)
jira get "/rest/api/3/screens?queryString=MyScreen"

# Create screen (comes with default "Field Tab")
jira post /rest/api/3/screens -d '{
  "name": "My Screen",
  "description": "Description"
}'

# Get screen tabs
jira get "/rest/api/3/screens/{screenId}/tabs"

# Add tab to screen
jira post "/rest/api/3/screens/{screenId}/tabs" -d '{"name": "Tab Name"}'

# Rename tab
jira put "/rest/api/3/screens/{screenId}/tabs/{tabId}" -d '{"name": "New Name"}'

# Get fields on a tab
jira get "/rest/api/3/screens/{screenId}/tabs/{tabId}/fields"

# Add field to tab
jira post "/rest/api/3/screens/{screenId}/tabs/{tabId}/fields" -d '{"fieldId": "summary"}'
```

### Screen Schemes

```bash
# List screen schemes (with search)
jira get "/rest/api/3/screenscheme?queryString=MyScheme"

# Create screen scheme
jira post /rest/api/3/screenscheme -d '{
  "name": "My Screen Scheme",
  "description": "Description",
  "screens": {
    "default": 10001,
    "create": 10002,
    "edit": 10003,
    "view": 10004
  }
}'

# Note: "default" is required; create/edit/view are optional
```

### Issue Type Screen Schemes

```bash
# Get ITSS for a project
jira get "/rest/api/3/issuetypescreenscheme/project?projectId={projectId}"

# Get ITSS mappings (issue type -> screen scheme)
jira get "/rest/api/3/issuetypescreenscheme/mapping?issueTypeScreenSchemeId={id}"

# Create ITSS
jira post /rest/api/3/issuetypescreenscheme -d '{
  "name": "My ITSS",
  "description": "Description",
  "issueTypeMappings": [
    {"issueTypeId": "default", "screenSchemeId": "10001"},
    {"issueTypeId": "10002", "screenSchemeId": "10003"}
  ]
}'

# Delete ITSS (only if not in use by a project)
jira delete "/rest/api/3/issuetypescreenscheme/{id}"
```

## Copying Screens (Full Isolation)

To copy a screen with all its tabs and fields:

```bash
# 1. Create new screen
NEW_SCREEN=$(jira post /rest/api/3/screens -d '{"name": "Copy of Screen"}')
NEW_SCREEN_ID=$(echo "$NEW_SCREEN" | jq -r '.id')

# 2. Get source screen tabs
TABS=$(jira get "/rest/api/3/screens/{sourceScreenId}/tabs")

# 3. For each tab, get fields and add to new screen
# Note: New screen comes with a default "Field Tab" - rename it or use it

# 4. For each field in source tab, add to new tab
jira post "/rest/api/3/screens/$NEW_SCREEN_ID/tabs/$TAB_ID/fields" \
  -d '{"fieldId": "customfield_10001"}'
```

See `clone-jira-project.sh` for complete implementation.

## Lessons Learned

- **New screens have a default tab** — When creating a screen, it comes with a "Field Tab"; rename it rather than creating a new first tab
- **Screen scheme requires default** — The `default` screen ID is mandatory when creating screen schemes
- **Screens are global** — Screens are shared across projects unless you create copies; editing a shared screen affects all projects using it
- **ITSS deletion fails if in use** — You cannot delete an Issue Type Screen Scheme that's assigned to a project

## No script for your task?

1. Query the `jira-docs` MCP server for endpoint details
2. Check existing scripts in `../scripts/` for patterns
3. Write a new script and add it here when done
