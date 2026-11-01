# Stables — Faction Logo Art

> Drop stable logos into `userData/images/<saveImageFolder>/Stables/`. PWS resolves both lowercase (`stables`) and TitleCase (`Stables`) folder names.

## DB field

Each row in the `stables` table has one image column:

| Field | Type | Purpose |
|---|---|---|
| `stableImage` | TEXT | Filename of the stable logo PNG |

PWS resolves via `getImage('stables', stableImage)`. When `stableImage` is empty (`''`) or the file is missing, PWS falls back to:
1. The modder-supplied `noimage.png` in this folder (see `../NoImage/README.md`)
2. The bundled system default at `<appPath>/images/stables.png`

## Naming convention

| Rule | Example |
|---|---|
| `<stableName>.png` — alphanumeric only (strip whitespace + apostrophes + accents) | `The Iron Court` → `TheIronCourt.png` |
| | `Valhalla's Chosen` → `ValhallasChosen.png` |
| | `São Paulo Syndicate` → `SoPauloSyndicate.png` (ã → strip accent → o) |

## Recommended dimensions

| Asset | Recommended size | Aspect | Notes |
|---|---|---|---|
| Stable logo | 512×512 | 1:1 | Transparent background, glyph centered |

PWS displays stable logos in the stable infobox (~200×200 px) and stable-member cards (~80×80 px). A 1:1 source at 512×512 px covers both.

## Current state in v1.7.0

Verified against `ModzVerse(BETA)_v1.7.0.db`:

| Status | Count |
|---|---|
| **`stableImage` set to real filename** | 0 / 52 (all empty) |
| **PNG files shipped in this pack** | 0 |

All 52 stables need BOTH a filename set in the DB AND a matching PNG file created. The naming convention above gives the suggested filename for each — once you create the PNG, also update the DB.

### All 52 stables (sorted by promotion)

#### Chicago Show (promo #1)
| stableID | Name | Suggested filename |
|---|---|---|
| 301 | The Viceroy Syndicate | `TheViceroySyndicate.png` |
| 302 | The Chicago Heart | `TheChicagoHeart.png` |
| 403 | Sydney's Fortune | `SydneysFortune.png` |
| 404 | Working Class Heroes | `WorkingClassHeroes.png` |

#### Lucha Bellas (promo #2)
| stableID | Name | Suggested filename |
|---|---|---|
| 303 | El Consejo Escarlata | `ElConsejoEscarlata.png` |
| 304 | Las Técnicas Puras | `LasTcnicasPuras.png` (é stripped) |
| 405 | Las Estrellas del Alba | `LasEstrellasdelAlba.png` |
| 406 | El Culto Azteca | `ElCultoAzteca.png` |

#### Lucha MEX (promo #3)
| stableID | Name | Suggested filename |
|---|---|---|
| 305 | La Oscuridad | `LaOscuridad.png` |
| 306 | La Tradición | `LaTradicin.png` (ó stripped) |
| 407 | Los Relampagos | `LosRelampagos.png` |
| 408 | Los Cuchillos Oscuros | `LosCuchillosOscuros.png` |

#### RAIBARAZU (promo #4)
| stableID | Name | Suggested filename |
|---|---|---|
| 201 | The Iron Court | `TheIronCourt.png` |
| 202 | The Phoenix Academy | `ThePhoenixAcademy.png` |
| 203 | The Fenikkusu Vanguard | `TheFenikkusuVanguard.png` |
| 204 | The Monster Pack | `TheMonsterPack.png` |
| 401 | The Glacier Guard | `TheGlacierGuard.png` |
| 402 | Dragonheart Academy | `DragonheartAcademy.png` |

#### Osaka Joshi (promo #5)
| stableID | Name | Suggested filename |
|---|---|---|
| 307 | The Royal Court | `TheRoyalCourt.png` |
| 308 | The Future | `TheFuture.png` |
| 409 | The Storm Guard | `TheStormGuard.png` |
| 410 | The Divine Court | `TheDivineCourt.png` |

#### Valkyrie Project (promo #6)
| stableID | Name | Suggested filename |
|---|---|---|
| 309 | The Wild Hunt | `TheWildHunt.png` |
| 310 | Valhalla's Chosen | `ValhallasChosen.png` |
| 411 | Odin's Pack | `OdinsPack.png` |
| 412 | The Trickster Court | `TheTricksterCourt.png` |

#### EWA / Samba Luta / AKW / PRW / NSS (promos #7-11)
| stableID | Name | Promo | Suggested filename |
|---|---|---|---|
| 501 | The Trench Court | #7 EWA | `TheTrenchCourt.png` |
| 502 | London Underground | #7 EWA | `LondonUnderground.png` |
| 503 | Carnaval Royalty | #8 SL | `CarnavalRoyalty.png` |
| 504 | São Paulo Syndicate | #8 SL | `SoPauloSyndicate.png` |
| 505 | The Royal Court | #9 AKW | `TheRoyalCourt.png` (⚠ name collision with stable #307) |
| 506 | The Crown Princes | #9 AKW | `TheCrownPrinces.png` |
| 507 | The Pacific Cartel | #10 PRW | `ThePacificCartel.png` |
| 508 | The Beach Brawlers | #10 PRW | `TheBeachBrawlers.png` |
| 509 | The Strike Force | #11 NSS | `TheStrikeForce.png` |
| 510 | The New Wave | #11 NSS | `TheNewWave.png` |

#### Promos #12-19 (8 newer promotions × 2 stables each = 16 stables, all use the "Veterans" + "New Blood" template)
| stableID | Name | Promo | Suggested filename |
|---|---|---|---|
| 511 | KPW Veterans | #12 KPW | `KPWVeterans.png` |
| 512 | KPW New Blood | #12 KPW | `KPWNewBlood.png` |
| 513 | LC Veterans | #13 LC | `LCVeterans.png` |
| 514 | LC New Blood | #13 LC | `LCNewBlood.png` |
| 515 | SAWA Veterans | #14 SAWA | `SAWAVeterans.png` |
| 516 | SAWA New Blood | #14 SAWA | `SAWANewBlood.png` |
| 517 | Kiwi Pro Veterans | #15 Kiwi Pro | `KiwiProVeterans.png` |
| 518 | Kiwi Pro New Blood | #15 Kiwi Pro | `KiwiProNewBlood.png` |
| 519 | GWF Veterans | #16 GWF | `GWFVeterans.png` |
| 520 | GWF New Blood | #16 GWF | `GWFNewBlood.png` |
| 521 | CNW Veterans | #17 CNW | `CNWVeterans.png` |
| 522 | CNW New Blood | #17 CNW | `CNWNewBlood.png` |
| 523 | LA Veterans | #18 LA | `LAVeterans.png` |
| 524 | LA New Blood | #18 LA | `LANewBlood.png` |
| 525 | BWL Veterans | #19 BWL | `BWLVeterans.png` |
| 526 | BWL New Blood | #19 BWL | `BWLNewBlood.png` |

### Filename collision warning

Stables **#307 "The Royal Court"** (Osaka Joshi) and **#505 "The Royal Court"** (AKW) share the same name. The suggested filename `TheRoyalCourt.png` collides. Recommended disambiguation:

- Stable #307 → `TheRoyalCourt_OJ.png`
- Stable #505 → `TheRoyalCourt_AKW.png`

(Or use stableID-prefixed names: `Stable307_TheRoyalCourt.png` and `Stable505_TheRoyalCourt.png` — but this is uglier.)

### DB update script

Once all 52 PNGs are in place, run this SQL to wire them into the DB:

```sql
-- See scripts/update_stable_images.sql in the parent repo for the full 52-row UPDATE script.
-- Each row: UPDATE stables SET stableImage='<filename>.png' WHERE stableID=<id>;
```

## Style guide

Stable logos should be:

1. **Glyph-based** — a symbol or monogram, not a logotype
2. **Reflect the stable's gimmick** — e.g., The Iron Court = iron crown, The Phoenix Academy = stylized phoenix, The Wild Hunt = wolf's head, Valhalla's Chosen = Valknut
3. **Color-matched to the parent promotion** — see `../Logos/README.md` for the promotion color identity table
4. **Transparent background** — PNG with alpha channel
