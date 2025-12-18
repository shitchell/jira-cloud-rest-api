# Filters Quick Reference

## Scripts

| Task | Script | Example |
|------|--------|---------|
| Duplicate filter | `scripts/duplicate-filter.sh` | `duplicate-filter.sh "My Filter" -n "New Name" -j 'new JQL'` |

## API Endpoints

| Operation | Method | Endpoint |
|-----------|--------|----------|
| Search filters | GET | `/filter/search?filterName=<name>` |
| Get filter by ID | GET | `/filter/{id}` |
| Create filter | POST | `/filter` with `{name, jql, description}` |
| Update filter | PUT | `/filter/{id}` |
| Delete filter | DELETE | `/filter/{id}` |

## Lessons Learned

- `filterName` param does **partial** (substring) matching - do client-side exact match if needed
- `isSubstringMatch=false` doesn't seem to enforce exact matching despite docs
- Filter create body: `{name: string, jql: string, description?: string}`
- Share permissions are NOT copied - new filter starts private
