# Logos — Promotion Logo Art

> Drop promotion logos into `userData/images/<saveImageFolder>/Logos/`. PWS resolves both lowercase (`logos`) and TitleCase (`Logos`) folder names.

## DB fields per promotion

Each row in the `promotions` table has three logo-related columns:

| Field | Type | Purpose |
|---|---|---|
| `logo` | TEXT | Simple logo — single PNG, used as fallback when no layered art exists |
| `backgroundImage` | TEXT | Full-bleed background layer (photo, texture, or solid color) |
| `overlayImage` | TEXT | Transparent PNG composited on top of the background layer |

PWS composites the layered look as: `getImage('logos', backgroundImage)` × `getImage('logos', overlayImage)`. When both layers are NULL/empty, PWS falls back to `getImage('logos', logo)`. When `logo` is also `'logos.png'`, PWS falls back to the bundled system default at `<appPath>/images/logos.png`.

## Naming conventions

| Field | Rule | Example |
|---|---|---|
| `logo` (simple) | `<shortName>.png` — strip whitespace, keep alphanumeric | `Chicago Show` → `ChicagoShow.png` |
| `backgroundImage` | `<shortName>-background.png` | `ChicagoShow-background.png` |
| `overlayImage` | `<shortName>-overlay.png` (must have alpha channel) | `ChicagoShow-overlay.png` |

## Recommended dimensions

PWS does NOT enforce pixel dimensions. Community convention:

| Asset | Recommended size | Aspect | Notes |
|---|---|---|---|
| Simple logo | 512×512 | 1:1 | Transparent background, glyph centered |
| Background layer | 1280×720 | 16:9 | Full-bleed; will be cropped to fill |
| Overlay layer | 1280×720 | 16:9 | Transparent PNG, logo glyph centered, ~60% of frame |

## Current state in v1.7.0

Verified against `ModzVerse(BETA)_v1.7.0.db`:

| Status | Count | Promotions |
|---|---|---|
| **`logo` set to real filename** | 190 / 194 | All except #3 Lucha MEX, #4 RAIBARAZU, #5 Osaka Joshi, #6 Valkyrie Project |
| **`logo` still on `logos.png` placeholder** | 4 / 194 | #3, #4, #5, #6 — the 4 main-roster promotions without art yet |
| **`backgroundImage` set** | 0 / 194 | None — no layered logo art shipped |
| **`overlayImage` set** | 0 / 194 | None — no layered logo art shipped |

### Logos that ARE referenced by the DB (need PNG files created)

For the 190 promotions with a real filename, the DB is pre-wired — drop the matching PNG into this folder and it will resolve. Naming is consistent:

- Promos #1, #7-194 use `<SHORT>.png` (e.g., `ChicagoShow.png`, `EWA.png`, `KPW.png`, `GWF.png`, `BWL.png`)
- Promo #2 uses `LuchaBellasCleanBG.png` (the "CleanBG" suffix indicates no background — just the logo glyph)
- Promos #3-6 need filenames chosen (suggested: `LuchaMEX.png`, `RAIBARAZU.png`, `OsakaJoshi.png`, `ValkyrieProject.png`) AND DB updates via:
  ```sql
  UPDATE promotions SET logo='LuchaMEX.png'      WHERE promotionID=3;
  UPDATE promotions SET logo='RAIBARAZU.png'     WHERE promotionID=4;
  UPDATE promotions SET logo='OsakaJoshi.png'    WHERE promotionID=5;
  UPDATE promotions SET logo='ValkyrieProject.png' WHERE promotionID=6;
  ```

### Full promotion ID → short name → logo filename reference

See `download/ModzVerse-Wiki/promotions.html` for the canonical promotion infobox with style, founded year, color identity, and strategic position. The 19 current fully-rostered promotions (in priority order for art contribution):

| # | Short | Full name | Style | Color identity | Logo filename |
|---|---|---|---|---|---|
| 1 | Chicago Show | Chicago Show | Sports Entertainment | red | `ChicagoShow.png` |
| 2 | LUCHA Bellas | Lucha Bellas | Lucha Libre (women) | pink | `LuchaBellasCleanBG.png` |
| 3 | MEX | Lucha MEX | Traditional (mixed) | green + gold | **`logos.png` → needs art** |
| 4 | RIVALS | RAIBARAZU | Pure Wrestling (2 brands) | crimson + gold | **`logos.png` → needs art** |
| 5 | Osaka Joshi | Osaka Joshi | Kings Road (women) | pink + teal | **`logos.png` → needs art** |
| 6 | Valkyrie Project | Valkyrie Project | Kings Road | silver + blue + gold | **`logos.png` → needs art** |
| 7 | EWA | European Wrestling Alliance | Hardcore | EU navy | `EWA.png` |
| 8 | SL | Samba Luta | Traditional | green + yellow | `SL.png` |
| 9 | AKW | African Kings Wrestling | Kings Road | gold + black | `AKW.png` |
| 10 | PRW | Pacific Rim Wrestling | Strong Style | ocean blue | `PRW.png` |
| 11 | NSS | Nihon Strong Spirit | Strong Style | red sun | `NSS.png` |
| 12 | KPW | Korea Pro Wrestling | Sports Entertainment | blue + white | `KPW.png` |
| 13 | LC | Lucha Colombia | Lucha Libre | yellow + red | `LC.png` |
| 14 | SAWA | South African Wrestling Alliance | Traditional | springbok green | `SAWA.png` |
| 15 | Kiwi Pro | Kiwi Pro Wrestling | Hardcore | silver fern | `KiwiPro.png` |
| 16 | GWF | German Wrestling Federation | Pure Wrestling | black + red + gold | `GWF.png` |
| 17 | CNW | Canadian National Wrestling | Sports Entertainment | maple red | `CNW.png` |
| 18 | LA | Lucha Argentina | Lucha Libre | sky blue + white | `LA.png` |
| 19 | BWL | Bharat Wrestling League | Traditional | saffron + green | `BWL.png` |

Promos #20-194 are the 175 future-dated shell promotions (one per remaining country). Each uses `<CC>.png` where CC is the 3-letter country code (e.g., `ALB.png` for Albania, `JPN.png` for Japan). See `download/ModzVerse-Wiki/geography.html` for the full country-by-country list.

## Style guide

1. **Color identity** per promotion is documented in the intranet's promotions section. Use the listed primary + accent colors.
2. **Logo glyph**: stylized promotion name or symbol. For Japanese promotions, kanji marks are encouraged alongside romanized names.
3. **Layered look** (when shipping both `backgroundImage` and `overlayImage`): the background should be a wrestling-context photo (arena, crowd, ring) blurred or darkened; the overlay is the crisp logo glyph on top.
4. **Simple `logo`** (when shipping only one file): transparent PNG with just the glyph — PWS will composite onto a default colored background derived from the promotion's color identity.

## When the bundled `logos.png` placeholder is fine

For the 175 future-dated shell promos (IDs 20-194) that have no roster yet, the bundled `logos.png` placeholder is acceptable. Real art for those is low priority — focus contribution effort on the 19 current-roster promos first, especially the 4 still on placeholder (#3, #4, #5, #6).
