# Titles — Championship Belt Art

> Drop title belt images into `userData/images/<saveImageFolder>/Titles/`. PWS resolves both lowercase (`titles`) and TitleCase (`Titles`) folder names.

## DB field

Each row in the `titles` table has one image column:

| Field | Type | Purpose |
|---|---|---|
| `titleImage` | TEXT | Filename of the belt PNG (transparent background preferred) |

PWS resolves the image via `getImage('titles', titleImage)`. When `titleImage` is `'titles.png'`, PWS falls back to the bundled system default at `<appPath>/images/titles.png`.

## Naming convention

| Rule | Example |
|---|---|
| `<TITLENAME>.png` — uppercase, all whitespace stripped, alphanumeric only | `AEGIS LEAGUE` → `AEGISLEAGUE.png` |

If you ship a layered belt (center plate + side plates + strap), use a single composited PNG — PWS does not support layered title art.

## Recommended dimensions

| Asset | Recommended size | Aspect | Notes |
|---|---|---|---|
| Title belt | 800×600 | 4:3 | Transparent background, belt displayed flat at 30°-45° angle |

PWS displays title images in worker-card and event-card contexts, both of which crop to roughly 4:3 aspect ratio. A 4:3 source image with the belt centered and ~10% padding avoids edge cropping.

## Current state in v1.7.0

Verified against `ModzVerse(BETA)_v1.7.0.db`:

| Status | Count | Titles |
|---|---|---|
| **`titleImage` set to real filename** | 0 / 1 | None |
| **`titleImage` on `titles.png` placeholder** | 1 / 1 | The AEGIS LEAGUE championship |

### The AEGIS LEAGUE championship

The only title in the ModzVerse world. Currently held by **no one** (vacant since the world's canon date of January 1, 2025). Defended exclusively at Valkyrie Project's annual **AEGIS LEAGUE Finals** event (event #12, last Saturday of January each year).

| Property | Value |
|---|---|
| `titleID` | 1 |
| `promotionID` | 6 (Valkyrie Project) |
| `name` | AEGIS LEAGUE |
| `prestige` | 100 (the world's most prestigious championship) |
| `type` | World |
| `created` | 2024-01-01 |
| `currentChampion` | NULL (vacant) |
| Suggested filename | `AEGISLEAGUE.png` |

### DB update needed

The title is currently on placeholder. Once `AEGISLEAGUE.png` is dropped into this folder, update the DB:

```sql
UPDATE titles SET titleImage='AEGISLEAGUE.png' WHERE titleID=1;
```

## Style guide

The AEGIS LEAGUE championship is described in the intranet as:

> "The keeper of the AEGIS LEAGUE championship — Valkyrie Project is the steward of the world's most prestigious belt, a Norse-mythology-inspired championship that crosses all 6 promotions and is defended annually at the AEGIS LEAGUE Finals."

Suggested visual cues:

- **Central plate**: a round shield (AEGIS = shield in Greek mythology, but stylized in Valkyrie Project's Norse aesthetic) engraved with a Valknut symbol (three interlocking triangles)
- **Strap**: deep crimson leather with gold tooling (matches Valkyrie Project's color identity)
- **Side plates**: small Mjölnir (Thor's hammer) engravings on each side
- **Materials**: polished silver + gold plating (matches VP's silver + blue + gold palette)

The belt should look like a prestigious world championship, not a regional title — the visual weight of a WWE Universal Championship or a New Japan IWGP World Heavyweight Championship.
