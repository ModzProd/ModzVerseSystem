# People — Worker Portrait Art

> Drop worker portraits into `userData/images/<saveImageFolder>/People/`. PWS resolves both lowercase (`people`) and TitleCase (`People`) folder names.

This is the **most important art category** in the pack — every worker card in PWS shows the worker's portrait, so missing art here is the most visible gap to players.

## DB fields

Each row in the `workers` table has one image column, plus a `workerpictures` child table for time-triggered picture changes:

| Field | Table | Purpose |
|---|---|---|
| `picture` | `workers` | The default portrait filename |
| `picture` | `workerpictures` | Optional alternate portraits keyed by `triggerDate` (e.g., gimmick change, age progression, mask removal) |

PWS resolves via `getImage('people', worker.picture)`. When the file is missing, PWS falls back to:
1. The modder-supplied `noimage.png` in this folder (see `../NoImage/README.md`)
2. The bundled system default at `<appPath>/images/people.png`

## Naming convention (verified against all 579 workers)

ModzVerse applies a stricter naming rule than PWS's default. The pattern matches **576 / 579 workers** exactly:

> Take `worker.name`, strip ALL whitespace and apostrophes, keep accented characters, append `.png`.

| Worker name | Expected filename |
|---|---|
| `Max Thunderford` | `MaxThunderford.png` |
| `Ryūga the Apex` | `RyūgatheApex.png` (ū kept) |
| `Águila Azul` | `ÁguilaAzul.png` (Á kept) |
| `Mariposa Pequeña` | `MariposaPequeña.png` (ñ kept) |
| `Corazón de Fuego` | `CorazóndeFuego.png` (ó kept, spaces stripped) |
| `Big Bill Bannister` | `BigBillBannister.png` |
| `Carlos 'La Voz' Contreras` | `CarlosLaVozContreras.png` (apostrophes AND spaces stripped) |

The remaining **3 / 579** workers use ASCII-folded filenames (accents dropped) — all 3 are Lucha Bellas announcers whose data was generated in a separate normalization batch:

| Worker name | Actual filename in DB |
|---|---|
| `Patricia 'Pasión' Peña` | `PatriciaPasionPena.png` (í → i, ñ → n) |
| `Ricardo 'El Relator' Ramírez` | `RicardoElRelatorRamirez.png` (í → i) |
| `Jorge 'El Comentarista' Jiménez` | `JorgeElComentaristaJimenez.png` (é → e) |

**When in doubt, look up the actual `picture` field value** — the DB is the source of truth, not the naming rule. A reference dump is at `download/ModzVerse-Wiki/Excel/ModzVerse_Workers.xlsx` (workerID, name, picture columns).

## Recommended dimensions

| Asset | Recommended size | Aspect | Notes |
|---|---|---|---|
| Worker portrait | 400×600 | 2:3 | Vertical orientation, 3/4 bust framing |

PWS displays worker portraits in:
- Worker cards (~120×180 px) — most common view
- Worker profile pages (~300×450 px) — detail view
- Roster tables (~60×90 px) — compact list view

A 2:3 portrait at 400×600 px covers all three display contexts cleanly. Larger files (600×900+) are fine but waste disk space; smaller files (200×300) look soft on the profile page.

## Style guide

Worker portraits should be:

1. **3/4 bust framing** — head and shoulders, maybe down to mid-chest
2. **Neutral background** — solid color or blurred gym/arena backdrop
3. **Vertical orientation** — aspect 2:3 or 3:4
4. **Front-facing or 3/4 angle** — not side profile
5. **Wrestling attire** — ring gear, not street clothes
6. **Lighting consistent with worker's alignment** — face workers in bright even light, heels in moody chiaroscuro, masked workers with dramatic shadow on the mask

### Masked workers

ModzVerse has many luchadores (Lucha Bellas, Lucha MEX, Lucha Colombia, Lucha Argentina rosters) who wear masks. For masked workers:

- Show the mask prominently — it IS the worker's identity
- Do NOT show the worker's face (would break kayfabe)
- Background should reflect the mask's color scheme
- Masked worker names start with `El` or `La` (e.g., `El Búho`, `Águila Azul`)

### AI generation prompts

Pre-tuned AI prompts for each of the 579 workers are in `download/ModzVerse-Wiki/Excel/ModzVerse_Workers.xlsx`. Each prompt includes:

- Worker name, gender, race, build
- Wrestling style (Sports Entertainment, Lucha Libre, Pure Wrestling, etc.)
- Gimmick / character description
- Attire notes (mask, face paint, ring gear style)
- Suggested framing and lighting

PWS's built-in AI image generator (via `EditWorkers.cycleThroughAll()` in `EditWorkers.js`) calls `http://127.0.0.1:7834/sdapi/v1/txt2img` and saves to `userData/images/<saveImageFolder>/people/` with the same naming convention documented above. You can use the in-game generator OR generate externally with the prompts from the xlsx.

## Current state in v1.7.0

Verified against `ModzVerse(BETA)_v1.7.0.db`:

| Status | Count |
|---|---|
| **`workers.picture` set to a real filename** | 579 / 579 (100%) |
| **`workerpictures` rows (alternate portraits)** | 579 (one row per worker — no time-triggered alternates yet) |
| **PNG files actually shipped in this pack** | 0 (this is the art still to be created) |

The DB is fully pre-wired — drop the matching PNG file into this folder and it will resolve. No DB updates needed.

## Full worker reference

See `download/ModzVerse-Wiki/rosters.html` for the canonical roster pages per promotion (worker name, picture, bio, style, gimmick, moveset). The `download/ModzVerse-Wiki/Excel/ModzVerse_Workers.xlsx` spreadsheet has all 579 workers in a single sortable table with the picture filename column included.

For a quick script to dump every `(workerID, name, picture)` triple:

```bash
python3 -c "import sqlite3; [print(f'{wid:5d}  {pic:40s}  {name}') for wid, name, pic in sqlite3.connect('ModzVerse(BETA)_v1.7.0.db').execute('SELECT workerID, name, picture FROM workers ORDER BY workerID')]"
```
