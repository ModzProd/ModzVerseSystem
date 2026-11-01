# ModzVerse PWS Graphix Pack

> Drop-in image asset pack for the **ModzVerse** custom world database for [Pro Wrestling Sim](https://store.steampowered.com/app/1157700/Pro_Wrestling_Sim/).

This pack ships every image the v1.7.0 save file references — promotion logos, championship title belts, worker portraits, stable logos, network logos, event posters, and venue photos — named exactly the way PWS resolves them at runtime, so all you do is copy the folders into your PWS `images/<saveImageFolder>/` directory and the art just shows up.

---

## 📦 Repository layout

```
ModzVersePWSGraphixPack/
├── Logos/        ← promotion logos (backgroundImage + overlayImage + simple logo)
├── Titles/       ← championship title belt images
├── People/       ← worker portraits (wrestlers + announcers + referees)
├── Stables/      ← stable / faction logos
├── Network/      ← TV network / streaming platform logos
├── Events/       ← annual event / tour / weekly show posters
├── Venues/       ← venue photos (optional — venue packs ship their own)
└── NoImage/      ← optional modder-supplied noimage.png overrides per category
```

Each subfolder has its own `README.md` documenting the exact naming convention, file format, and the list of items in the v1.7.0 save that need art for that category.

---

## 🎯 What's currently placeholder vs. real

Verified against `ModzVerse(BETA)_v1.7.0.db` (v1.7.0 · WORLD COMPLETE · 190/190 countries). The DB stores image **filenames**; whether the actual PNG file exists in this pack is a separate question. Both states are tracked below.

| Category | DB slots | DB field set to real filename | DB field on bundled placeholder | PNG files in this pack |
|---|---|---|---|---|
| **People** (workers) | 579 | 579 (100%) | 0 | 0 — art still to be created |
| **Promotion Logos** (simple `logo`) | 194 | 190 (98%) | 4 (#3 Lucha MEX, #4 RAIBARAZU, #5 Osaka Joshi, #6 Valkyrie Project) | 0 |
| **Promotion Backgrounds** (`backgroundImage`) | 194 | 0 | 194 (all NULL — no layered art shipped) | 0 |
| **Promotion Overlays** (`overlayImage`) | 194 | 0 | 194 (all NULL — no layered art shipped) | 0 |
| **Title Belts** | 1 | 0 | 1 (AEGIS LEAGUE on `titles.png`) | 0 |
| **Stable Logos** | 52 | 0 | 52 (all empty `''`) | 0 |
| **Network Logos** | 199 | 0 | 199 (all on `networks.png`) | 0 |
| **Event Posters** | 232 | 1 (event #1 Luchastica) | 231 | 0 |
| **Venues** | 12,000 | 0 | 12,000 | 0 — venue packs have their own image folders, see `Venues/README.md` |
| **Picture Pool** | 0 | n/a | n/a | n/a — `picturePool` table empty, auto-assign unused |

**Summary**: every DB image slot except 4 promo logos + 1 title + 52 stable logos + 199 network logos + 231 event posters has its filename pre-wired. Drop a matching PNG into the right subfolder and art resolves with zero DB edits. For the slots still on placeholder, you also need to update the DB field — each subfolder README has the exact `UPDATE` SQL.

**Total PNG files to create for a complete pack: ~1,258** (579 worker portraits + 194 promo logos + 194 promo backgrounds + 194 promo overlays + 1 title + 52 stable logos + 199 network logos + 232 event posters + ~12,000 venue photos optional + 7 noimage.png overrides).

**Realistic contribution priority** (high → low):
1. The 4 promo logos still on placeholder (#3 Lucha MEX, #4 RAIBARAZU, #5 Osaka Joshi, #6 Valkyrie Project)
2. The AEGIS LEAGUE title belt
3. The 52 stable logos (4-8 per main-roster promo)
4. The 24 promo-owned + indie network logos (skip the 175 future-dated `<CC> Sports Network` slots)
5. The 57 signature event posters for promos #1-19 (skip the 175 future-dated country events)
6. Worker portraits — 579 slots, AI-generation prompts pre-tuned in `download/ModzVerse-Wiki/Excel/ModzVerse_Workers.xlsx`

---

## 🚀 Install

PWS resolves images from `userData/images/<saveImageFolder>/<type>/<filename>.png`, where:

- `userData` is your PWS user data directory (Steam install default: `%USERPROFILE%\Documents\Pro Wrestling Sim\` on Windows, `~/Library/Application Support/Pro Wrestling Sim/` on macOS)
- `<saveImageFolder>` is the **Image Folder** field set when you load the ModzVerse save (recommended: `ModzVerse(BETA)_v1.7.0`)
- `<type>` is one of `logos`, `titles`, `people`, `stables`, `network`, `events`, `venues` — PWS checks both lowercase and TitleCase (`logos` and `Logos`), so this pack's TitleCase folders work as-is

### Quick install

1. Load the ModzVerse save in PWS. In the **New Game / Load Game** dialog, set **Image Folder** to `ModzVerse(BETA)_v1.7.0`.
2. Copy every subfolder from this pack into `userData/images/ModzVerse(BETA)_v1.7.0/`:
   ```
   userData/images/ModzVerse(BETA)_v1.7.0/
   ├── Logos/
   ├── Titles/
   ├── People/
   ├── Stables/
   ├── Network/
   ├── Events/
   ├── Venues/   ← optional
   └── noimage.png   ← optional, see NoImage/README.md
   ```
3. Reload the save. Art resolves on next page render — no DB edits needed.

### Verifying it worked

PWS caches image existence checks for performance. If art doesn't appear after copying:

1. Make sure the **Image Folder** field matches the folder name under `userData/images/` exactly (case-sensitive on macOS/Linux).
2. Make sure no duplicate image folder exists under Steam Workshop (`<steam>/steamapps/workshop/content/1157700/.../images/`) — PWS checks Workshop first and may shadow your userData copy. See [Steam discussion #595152529321365137](https://steamcommunity.com/app/1157700/discussions/0/595152529321365137/).
3. Confirm filenames match exactly the strings stored in the DB — see each subfolder's README for the canonical naming rule.

---

## 📐 File format

| Property | Value | Source |
|---|---|---|
| **Format** | PNG (24-bit or 32-bit with alpha) | `EditWorkers.js:105` — `${safeBase}.png` |
| **Color space** | sRGB | PWS does no color management |
| **Alpha channel** | Required for `Logos/` (overlay), `Titles/`, `Stables/`, `Network/`, `Events/` | Promotion overlay layer composites over background layer |
| **Max file size** | Soft cap ~500 KB per image (lazy-loaded, but large files slow first render) | PWS uses `loading="lazy"` on all `<img>` tags |
| **Hard pixel dimensions** | None enforced by PWS | PWS scales via CSS — see per-category READMEs for recommended sizes |

PWS does NOT enforce hard pixel dimensions on any image category. The dimensions recommended in each subfolder README are community conventions tuned for the in-game UI layout, not engine requirements.

---

## 🏷️ Naming conventions at a glance

| Category | DB field | Naming rule | Example |
|---|---|---|---|
| **Worker pictures** | `workers.picture` | `worker.name` → strip whitespace + apostrophes, keep accented chars → `.png` | `Carlos 'La Voz' Contreras` → `CarlosLaVozContreras.png` · `Ryūga the Apex` → `RyūgatheApex.png` |
| **Promotion logo (simple)** | `promotions.logo` | `<shortName>.png` (no spaces) | `Chicago Show` → `ChicagoShow.png` |
| **Promotion background layer** | `promotions.backgroundImage` | `<shortName>-background.png` | `ChicagoShow-background.png` |
| **Promotion overlay layer** | `promotions.overlayImage` | `<shortName>-overlay.png` (transparent) | `ChicagoShow-overlay.png` |
| **Title belt** | `titles.titleImage` | `<titleName>.png` (uppercase, no spaces) | `AEGIS LEAGUE` → `AEGISLEAGUE.png` |
| **Stable logo** | `stables.stableImage` | `<stableName>.png` (alphanumeric only) | `The Iron Court` → `TheIronCourt.png` |
| **Network logo** | `networks.logo` | `<networkName>.png` (alphanumeric only) | `Chicago Sports Network` → `ChicagoSportsNetwork.png` |
| **Event poster** | `events.logo` | `ModzVerse_<promoShort>_<eventName>.png` | `ModzVerse_LuchaBellas_Luchastica.png` |

See each subfolder's README for the full list of items to render.

---

## 🎨 Style guide

The ModzVerse world has a strong in-universe aesthetic. When contributing new art:

1. **Promotion color identities** (already used throughout the intranet):
   - Chicago Show — red
   - Lucha Bellas — pink
   - Lucha MEX — green + gold
   - RAIBARAZU — crimson + gold
   - Osaka Joshi — pink + teal
   - Valkyrie Project — silver + blue + gold
2. **Logo layering**: promotion logos composite as `backgroundImage` × `overlayImage`. Background is a full-bleed photo or texture; overlay is a transparent PNG with the logo glyph centered. The simple `logo` field is used as a fallback when no layered art exists.
3. **Worker portraits**: 3/4 bust framing, neutral background, vertical orientation. The PWS worker card crops to roughly 3:4 aspect ratio.
4. **Title belts**: studio product shot on transparent background, belt displayed flat at 30°-45° angle, horizontal orientation.

For AI-generation prompts already tuned for each worker, see `download/ModzVerse_Workers.xlsx` in the parent release.

---

## 🤝 Contributing

The most valuable art contributions, in priority order:

1. **Promotion logos** for promos #3-6 (Lucha MEX, RAIBARAZU, Osaka Joshi, Valkyrie Project) — the 4 main-roster promotions still on placeholder
2. **Title belt** for the AEGIS LEAGUE championship — the only title in the world, currently using `titles.png`
3. **Stable logos** for the 52 stables (see `Stables/README.md` for the full list)
4. **Network logos** for the 19 promo-owned TV networks (networks #1-19) — the 180 indie networks can stay on placeholder
5. **Event posters** for the 13 signature events documented in the intranet (see `Events/README.md`)

Open an issue on the main repo ([`ModzProd/ModzVerseSystem`](https://github.com/ModzProd/ModzVerseSystem)) with a download link to your art — FLAC/PNG/TIFF/PSD all accepted, we'll convert and place.

---

## ⚠️ Disclaimer

All in-universe content (promotion names, worker names, stable names, championship names) is fictional and owned by the ModzVerse project. Pro Wrestling Sim is a trademark of its respective owners. This pack is not affiliated with or endorsed by the developers of Pro Wrestling Sim.

---

## 📄 License

No license is included with this asset pack. By default, the art is "all rights reserved" — you may view and fork the repository, but you do not have permission to copy, modify, or distribute the art without explicit permission from the repository owner. If you would like to use any of this art in your own PWS save, please open an issue to discuss licensing.
