# Venues — Venue Photos (optional)

> Drop venue photos into `userData/images/<saveImageFolder>/Venues/`. PWS resolves both lowercase (`venues`) and TitleCase (`Venues`) folder names.

## DB field

The `venues` table has one image column:

| Field | Type | Purpose |
|---|---|---|
| `image` | TEXT | Filename of the venue photo |

PWS resolves via `getImage('venues', image)` (see `Game.getVenueImage()` in `Game.js:1154`). When the file is missing, PWS falls back to a bundled default keyed by venue type (`images/<type-lowercased>.png`, e.g., `images/indoor-arena.png`, `images/outdoor-arena.png`, etc.).

## Naming convention

No standard convention — venue `image` field values are typically the venue name with spaces stripped + `.png`.

| Example venue name | Suggested filename |
|---|---|
| `Madison Square Garden` | `MadisonSquareGarden.png` |
| `Tokyo Dome` | `TokyoDome.png` |
| `Arena México` | `ArenaMexico.png` (é → e for ASCII safety) |

## Recommended dimensions

| Asset | Recommended size | Aspect | Notes |
|---|---|---|---|
| Venue photo | 1200×800 | 3:2 | Wide landscape, venue exterior OR interior wide shot |

## Current state in v1.7.0

**This category is intentionally empty** in the ModzVerse Graphix Pack.

The 12,000 venues in the ModzVerse save DB are sourced from the 18 venue database packs (6 regional + 5 capacity-tier + 7 style-specific). Each venue pack ships its own image set if it ships one at all — check the venue pack release notes for art availability.

The `image` field in the `venues` table is NOT populated in the ModzVerse save — every venue falls back to the bundled `<type>.png` default. To populate venue images:

1. Source venue photos (real-world or AI-generated)
2. Save them in this folder following the naming convention above
3. Run `UPDATE venues SET image='<filename>.png' WHERE venueID=<id>;` for each venue you've added art for

This is a low-priority category — venue images are tiny (~60×40 px) in PWS's venue picker UI, and the bundled per-type defaults are visually adequate. Skip this folder unless you have a specific venue you want to highlight (e.g., the host venue for a signature event like Battle of Rivals at Ryōgoku Kokugikan).

## Bundled fallback types

When the `image` field is empty, PWS uses the venue's `type` field to pick a bundled fallback:

| `type` value | Bundled fallback file |
|---|---|
| `Indoor Arena` | `images/indoor-arena.png` |
| `Outdoor Arena` | `images/outdoor-arena.png` |
| `Outdoor Land` | `images/outdoor-land.png` |
| `Sports Hall` | `images/sports-hall.png` |
| `Cruise Ship` | `images/cruise-ship.png` |
| `Beach` | `images/beach.png` |
| `Mall` | `images/mall.png` |

(Source: `Game.js:1141-1148`)

## When to add custom venue art

Only add custom venue art for:

1. **Signature event host venues** — e.g., Ryōgoku Kokugikan for RAIBARAZU's Battle of Rivals, Arena México for Lucha MEX's El Clásico Anual
2. **Promotion home arenas** — e.g., Madison Square Garden for Chicago Show (if you decide MSG is Chicago Show's canon home)
3. **Tour-defining venues** — venues that anchor a tour's identity (e.g., the 12 stops on RAIBARAZU's Road to Battle of Rivals tour)

For the other 11,990+ venues, the bundled per-type defaults are fine.
