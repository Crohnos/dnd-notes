---
tags: [location, system, hierarchy, documentation]
created: 2025-01-13
---

# Location Hierarchy System

## Hierarchy Levels

### 1. CONTINENT (Highest Level)
- **Tag**: `#location/continent`
- **Parent**: None (or Planet if using multiple worlds)
- **Contains**: Regions
- **File Naming**: `continent-[name].md`

### 2. REGION
- **Tag**: `#location/region`
- **Parent**: Continent
- **Contains**: Cities, Settlements, Dungeons, Landmarks
- **File Naming**: `region-[name].md`

### 3. CITY
- **Tag**: `#location/city`
- **Parent**: Region
- **Contains**: Districts
- **File Naming**: `city-[name].md`

### 4. SETTLEMENT (Towns, Villages, Outposts)
- **Tag**: `#location/settlement`
- **Parent**: Region
- **Contains**: Buildings, Landmarks
- **File Naming**: `settlement-[name].md`

### 5. DISTRICT
- **Tag**: `#location/district`
- **Parent**: City
- **Contains**: Buildings, Streets
- **File Naming**: `district-[name].md`

### 6. BUILDING
- **Tag**: `#location/building`
- **Parent**: District or Settlement
- **Contains**: Rooms, NPCs
- **File Naming**: `building-[name].md`

### 7. DUNGEON
- **Tag**: `#location/dungeon`
- **Parent**: Region
- **Contains**: Levels, Rooms, Encounters
- **File Naming**: `dungeon-[name].md`

### 8. LANDMARK (Natural Features)
- **Tag**: `#location/landmark`
- **Parent**: Region
- **Contains**: Areas, Encounters
- **File Naming**: `landmark-[name].md`

### 9. PLANE (Other Dimensions)
- **Tag**: `#location/plane`
- **Parent**: None (parallel to continents)
- **Contains**: Realms, Domains
- **File Naming**: `plane-[name].md`

## Required Frontmatter Fields

```yaml
---
name: [Location Name]
type: [continent|region|city|settlement|district|building|dungeon|landmark|plane]
parent: [[Parent Location]]
contains: [List of contained location types]
tags: [location/type, other-tags]
created: [date]
modified: [date]
status: [active|ruins|destroyed|hidden]
---
```

## Linking System

### Parent-Child Links
- Every location MUST have `parent: [[Parent Name]]` in frontmatter
- Exception: Continents and Planes (top level)

### Contains Links
- List all direct children in `contains:` section
- Use `[[Double Brackets]]` for all location links

### Cross-References
- **NPCs**: `npcs: [[NPC Name]]`
- **Factions**: `factions: [[Faction Name]]`
- **Plot Threads**: `plots: [[Plot Name]]`
- **Items**: `items: [[Item Name]]`

## Tag Structure

### Primary Location Tags
- `#location/continent`
- `#location/region`
- `#location/city`
- `#location/settlement`
- `#location/district`
- `#location/building`
- `#location/dungeon`
- `#location/landmark`
- `#location/plane`

### Secondary Tags (Combine with Primary)
- `#location/magical`
- `#location/dangerous`
- `#location/hidden`
- `#location/ruins`
- `#location/dimensional-rift`
- `#location/engineered`
- `#location/pre-ascension`
- `#location/post-ascension`

### Status Tags
- `#location/active` - Currently accessible
- `#location/destroyed` - No longer exists
- `#location/sealed` - Exists but inaccessible
- `#location/unstable` - Dimensionally unstable

## Query Examples

### Find All Cities in a Region
```
parent: [[Region Name]] AND #location/city
```

### Find All Buildings in a District
```
parent: [[District Name]] AND #location/building
```

### Find All Dungeons
```
#location/dungeon
```

### Find All Pre-Ascension Ruins
```
#location/pre-ascension AND #location/ruins
```

## File Organization

```
locations/
├── LOCATION-HIERARCHY.md (this file)
├── _templates/
│   └── location-template.md
├── continents/
│   └── continent-[name].md
├── regions/
│   └── region-[name].md
├── cities/
│   └── city-[name].md
├── settlements/
│   └── settlement-[name].md
├── districts/
│   └── district-[name].md
├── buildings/
│   └── building-[name].md
├── dungeons/
│   └── dungeon-[name].md
├── landmarks/
│   └── landmark-[name].md
└── planes/
    └── plane-[name].md
```

## Best Practices

1. **Always use frontmatter** for hierarchy relationships
2. **Use consistent naming** for files and links
3. **Tag completely** - include all relevant tags
4. **Cross-reference** NPCs, items, and plots
5. **Status tracking** - mark destroyed/sealed locations
6. **Use templates** for consistency

## Navigation Helpers

### Breadcrumb Trail
At the top of each location file, include:
```
[[Continent]] > [[Region]] > [[City]] > [[District]] > Current Location
```

### Children List
In the main content, list all contained locations:
```
## Contains
- [[Child Location 1]]
- [[Child Location 2]]
```

### Related Locations
Link to nearby or related locations:
```
## Nearby Locations
- [[Adjacent District]]
- [[Nearby Landmark]]
```