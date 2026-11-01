# NoImage — Optional Modder-Supplied Placeholders

> Drop `noimage.png` files here, then copy them into the per-category folders where you want a custom "no image" placeholder to override PWS's bundled system default.

## How PWS resolves missing images

When PWS calls `getImage(type, filename)` and the file doesn't exist in `userData/images/<saveImageFolder>/<type>/`, it falls back in this order (verified in `Game.js:_getFallbackImage()` lines 1083-1096):

1. **`images/<saveFolder>/<type>.png`** at the folder root — a user override for the entire type category
2. **`noimage.png` (or `.jpg` / `.jpeg`)** inside the `<type>` folder — a modder-supplied per-category placeholder
3. **`<appPath>/images/<type>.png`** — the bundled system default

Step 2 is what this folder documents. Ship your own `noimage.png` per category and PWS will use it instead of the bundled default whenever a specific worker/promotion/etc. is missing its art.

## Files to create

Copy `noimage.png` into each category folder where you want a custom placeholder. The file must be named exactly `noimage.png` (or `noimage.jpg` / `noimage.jpeg`):

```
userData/images/<saveImageFolder>/
├── Logos/noimage.png        ← placeholder for promotions missing a logo
├── Titles/noimage.png       ← placeholder for titles missing belt art
├── People/noimage.png       ← placeholder for workers missing a portrait
├── Stables/noimage.png      ← placeholder for stables missing a logo
├── Network/noimage.png      ← placeholder for networks missing a logo
├── Events/noimage.png       ← placeholder for events missing a poster
└── Venues/noimage.png       ← placeholder for venues missing a photo
```

PWS checks the type folder in BOTH lowercase (`logos`) and TitleCase (`Logos`) — so dropping `noimage.png` into the TitleCase folder works (verified in `Game.js:_findNoImage()` lines 1102-1132, the code iterates `[type, typeCap]`).

## Recommended dimensions per category

Match the recommended dimensions for each category (see sibling READMEs). A single `noimage.png` works across all categories if it's a square 512×512 — PWS scales it.

## Style guide for placeholders

The placeholder should be:

1. **Visually distinct from real art** — flat color, no photo, so users immediately know "this is missing art"
2. **Branded with the ModzVerse identity** — use the ModzVerse logo glyph or wordmark
3. **Include a "no image" indicator** — a generic camera-with-slash icon, or the text "ART PENDING"
4. **Color-matched per category** (optional) — different background tint for each type folder so users can tell at a glance which category is missing art

Suggested base color: dark grey (#333) with the ModzVerse logo glyph in white at 60% opacity. Add a small "ART PENDING" label in the bottom-right corner.

## When to ship noimage.png

Ship per-category `noimage.png` files when:

1. **The bundled system default looks bad** for your save's aesthetic (e.g., you're shipping a fully-styled save and the bundled generic placeholder clashes)
2. **You want a unified "art pending" visual** across all categories so contributors know where art is missing
3. **You're shipping a partial Graphix Pack** (e.g., only worker portraits done, but promo/stable/network art still pending) — the noimage.png makes the missing art look intentional rather than broken

If you're shipping a complete Graphix Pack with every art slot filled, you don't need this folder at all.
