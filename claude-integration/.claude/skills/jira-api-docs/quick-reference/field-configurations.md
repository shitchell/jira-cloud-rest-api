# Field Configurations Quick Reference

Field Configurations define field behavior (required, hidden, description, renderer) per issue type. Field Configuration Schemes map field configurations to issue types.

## Hierarchy

```
Field Configuration Scheme
  └── Field Configuration (per issue type)
        └── Field Configuration Items (settings per field)
              - isRequired
              - isHidden
              - description
              - renderer
```

## Available Scripts

| Task | Script | Usage |
|------|--------|-------|
| Clone field configurations for a project | [`clone-jira-project.sh`](../scripts/clone-jira-project.sh) | Copies field configs and scheme as part of full project clone |

## Key APIs

### Field Configurations

```bash
# List field configurations (with search)
jira get "/rest/api/3/fieldconfiguration?queryString=MyConfig"

# Get field configuration by ID
jira get "/rest/api/3/fieldconfiguration?id=10001"

# Create field configuration
jira post /rest/api/3/fieldconfiguration -d '{
  "name": "My Field Configuration",
  "description": "Description"
}'

# Get field configuration items (field settings)
jira get "/rest/api/3/fieldconfiguration/{id}/fields?maxResults=500"

# Update field configuration items
jira put "/rest/api/3/fieldconfiguration/{id}/fields" -d '{
  "fieldConfigurationItems": [
    {
      "id": "summary",
      "isRequired": true,
      "isHidden": false,
      "description": "Brief summary of the issue"
    },
    {
      "id": "customfield_10001",
      "isRequired": false,
      "isHidden": true
    }
  ]
}'
```

### Field Configuration Schemes

```bash
# List field configuration schemes
jira get "/rest/api/3/fieldconfigurationscheme"

# Get scheme for a project
jira get "/rest/api/3/fieldconfigurationscheme/project?projectId={projectId}"

# Get scheme mappings (issue type -> field config)
jira get "/rest/api/3/fieldconfigurationscheme/mapping?fieldConfigurationSchemeId={id}"

# Create field configuration scheme
jira post /rest/api/3/fieldconfigurationscheme -d '{
  "name": "My Field Config Scheme",
  "description": "Description"
}'

# Set scheme mappings
jira put "/rest/api/3/fieldconfigurationscheme/{id}/mapping" -d '{
  "mappings": [
    {"issueTypeId": "default", "fieldConfigurationId": "10001"},
    {"issueTypeId": "10002", "fieldConfigurationId": "10003"}
  ]
}'
```

## Copying Field Configurations

To copy a field configuration with all its settings:

```bash
# 1. Create new field configuration
NEW_FC=$(jira post /rest/api/3/fieldconfiguration -d '{"name": "Copy of Config"}')
NEW_FC_ID=$(echo "$NEW_FC" | jq -r '.id')

# 2. Get source field configuration items
SOURCE_ITEMS=$(jira get "/rest/api/3/fieldconfiguration/{sourceId}/fields?maxResults=500")

# 3. Build update payload
PAYLOAD=$(echo "$SOURCE_ITEMS" | jq '{
  fieldConfigurationItems: [.values[] | {
    id: .id,
    isHidden: .isHidden,
    isRequired: .isRequired,
    description: .description,
    renderer: .renderer
  } | with_entries(select(.value != null and .value != ""))]
}')

# 4. Update new field configuration
jira put "/rest/api/3/fieldconfiguration/$NEW_FC_ID/fields" -d "$PAYLOAD"
```

See `clone-jira-project.sh` for complete implementation.

## Field Configuration Item Properties

| Property | Type | Description |
|----------|------|-------------|
| `id` | string | Field ID (e.g., "summary", "customfield_10001") |
| `isRequired` | boolean | Whether the field is required |
| `isHidden` | boolean | Whether the field is hidden |
| `description` | string | Field description/help text |
| `renderer` | string | Renderer type ("text-renderer" or "wiki-renderer") |

## Lessons Learned

- **Default field configuration can't be copied** — The system default field configuration (often ID 10000) cannot be modified or copied; reference it directly
- **Hiding removes other settings** — When you hide a field, Jira deletes its required, description, and renderer settings; unhiding uses defaults
- **Renderer limitations** — You can't update the renderer for fields using `autocomplete-renderer`
- **Pagination** — Field configuration items are paginated; use `maxResults=500` to get all fields in one request

## No script for your task?

1. Query the `jira-docs` MCP server for endpoint details
2. Check existing scripts in `../scripts/` for patterns
3. Write a new script and add it here when done
