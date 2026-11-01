# Events — Annual Event / Tour / Weekly Show Posters

> Drop event posters into `userData/images/<saveImageFolder>/Events/`. PWS resolves both lowercase (`events`) and TitleCase (`Events`) folder names.

## DB field

Each row in the `events` table has one image column:

| Field | Type | Purpose |
|---|---|---|
| `logo` | TEXT | Filename of the event poster PNG |

PWS resolves via `getImage('events', logo)`. When `logo` is `'events.png'` or the file is missing, PWS falls back to:
1. The modder-supplied `noimage.png` in this folder (see `../NoImage/README.md`)
2. The bundled system default at `<appPath>/images/events.png`

Note: Some events in the DB have `logo='logos.png'` instead of `'events.png'` — that's a data inconsistency (event #2 "Battle of Rivals" is one such case). PWS resolves both to the bundled system default since neither file exists in the user's image folder. Either way, these need real art.

## Naming convention

ModzVerse uses a compound naming scheme for events to avoid collisions between promotions that might use the same event name (e.g., multiple promos have an event called "Grand Prix" or "Classic"):

| Rule | Example |
|---|---|
| `ModzVerse_<promoShort>_<eventName>.png` — alphanumeric only (strip whitespace + apostrophes + accents from each component) | `Luchastica` (Lucha Bellas) → `ModzVerse_LuchaBellas_Luchastica.png` |
| | `Battle of Rivals` (RAIBARAZU) → `ModzVerse_RIVALS_BattleofRivals.png` |
| | `The AEGIS LEAGUE Finals` (VP) → `ModzVerse_ValkyrieProject_TheAEGISLEAGUEFinals.png` |

The 1 event that already has real art (`Luchastica` → `ModzVerse_LuchaBellas_Luchastica.png`) confirms this convention.

## Recommended dimensions

| Asset | Recommended size | Aspect | Notes |
|---|---|---|---|
| Event poster | 800×1200 | 2:3 | Vertical poster orientation |

PWS displays event posters in:
- Event cards on the booking calendar (~120×180 px)
- Event detail page (~400×600 px)
- Tour stops list (~80×120 px)

A 2:3 vertical poster at 800×1200 px covers all three. Horizontal 16:9 banners are NOT recommended — PWS's event UI is built around vertical posters.

## Current state in v1.7.0

Verified against `ModzVerse(BETA)_v1.7.0.db`:

| Status | Count |
|---|---|
| **`logo` set to real filename** | 1 / 232 (event #1 Luchastica only) |
| **`logo` on `events.png` or `logos.png` placeholder** | 231 / 232 |
| **PNG files shipped in this pack** | 0 |

All 232 events need BOTH a filename set in the DB AND a matching PNG file created.

### Signature events per promotion (priority list)

The 13 signature events documented in the intranet's Events & Calendar section (priority order for art contribution):

| eventID | Event | Promo | Recurrence | Suggested filename |
|---|---|---|---|---|
| 1 | Luchastica | #2 Lucha Bellas | Annual | `ModzVerse_LuchaBellas_Luchastica.png` (✓ already wired) |
| 2 | Battle of Rivals | #4 RAIBARAZU | Annual (Jan W5) | `ModzVerse_RIVALS_BattleofRivals.png` |
| 3 | Road to Battle of Rivals | #4 RAIBARAZU | Tour | `ModzVerse_RIVALS_RoadtoBattleofRivals.png` |
| 4 | Autumn Blood Moon | #4 RAIBARAZU | Annual | `ModzVerse_RIVALS_AutumnBloodMoon.png` |
| 5 | Road to Autumn Blood Moon | #4 RAIBARAZU | Tour | `ModzVerse_RIVALS_RoadtoAutumnBloodMoon.png` |
| 6 | Fall of Honor | #4 RAIBARAZU | Annual | `ModzVerse_RIVALS_FallofHonor.png` |
| 7 | Road to Fall of Honor | #4 RAIBARAZU | Tour | `ModzVerse_RIVALS_RoadtoFallofHonor.png` |
| 8 | Frozen Combat | #4 RAIBARAZU | Annual | `ModzVerse_RIVALS_FrozenCombat.png` |
| 9 | Road to Frozen Combat | #4 RAIBARAZU | Tour | `ModzVerse_RIVALS_RoadtoFrozenCombat.png` |
| 10 | Valhalla | #6 Valkyrie Project | Annual | `ModzVerse_ValkyrieProject_Valhalla.png` |
| 11 | Twilight of The GODS | #6 Valkyrie Project | Annual | `ModzVerse_ValkyrieProject_TwilightofTheGODS.png` |
| 12 | The AEGIS LEAGUE Finals | #6 Valkyrie Project | Annual (Jan W5) | `ModzVerse_ValkyrieProject_TheAEGISLEAGUEFinals.png` |
| 13 | Luchastica | #2 Lucha Bellas | Annual | (already wired) |

### All events for the 19 current-roster promos (full list, 57 events)

#### Chicago Show (#1) — 3 events
| eventID | Event | Recurrence | Suggested filename |
|---|---|---|---|
| 13 | Chicago Show | Weekly | `ModzVerse_ChicagoShow_ChicagoShow.png` |
| 30 | Windy City Showdown | Annual | `ModzVerse_ChicagoShow_WindyCityShowdown.png` |
| 31 | The Chicago Classic | Annual | `ModzVerse_ChicagoShow_TheChicagoClassic.png` |

#### Lucha Bellas (#2) — 3 events
| eventID | Event | Recurrence | Suggested filename |
|---|---|---|---|
| 1 | Luchastica | Annual | (already wired) |
| 32 | Las Reinas del Ring | Annual | `ModzVerse_LuchaBellas_LasReinasdelRing.png` |
| 33 | Máscaras y Leyendas | Annual | `ModzVerse_LuchaBellas_MscarasyLeyendas.png` (á stripped) |

#### Lucha MEX (#3) — 2 events
| eventID | Event | Recurrence | Suggested filename |
|---|---|---|---|
| 14 | La Noche de los Campeones | Annual | `ModzVerse_MEX_LaNochedelosCampeones.png` |
| 15 | El Clásico Anual | Annual | `ModzVerse_MEX_ElClsicoAnual.png` (á stripped) |

#### RAIBARAZU (#4) — 8 events (3 supershows + 3 Road-to tours + 2 others)
(See signature events table above — all 8 RAIBARAZU events are listed there.)

#### Osaka Joshi (#5) — 2 events
| eventID | Event | Recurrence | Suggested filename |
|---|---|---|---|
| 16 | The Queen's Coronation | Annual | `ModzVerse_OsakaJoshi_TheQueensCoronation.png` |
| 17 | The Rising Star Tournament | Annual | `ModzVerse_OsakaJoshi_TheRisingStarTournament.png` |

#### Valkyrie Project (#6) — 3 events
(See signature events table above — all 3 VP events are listed there.)

#### EWA (#7) — 2 events
| eventID | Event | Recurrence | Suggested filename |
|---|---|---|---|
| 18 | London Bloodbath | Annual | `ModzVerse_EWA_LondonBloodbath.png` |
| 19 | Hardcore Halloween | Annual | `ModzVerse_EWA_HardcoreHalloween.png` |

#### Samba Luta (#8) — 2 events
| eventID | Event | Recurrence | Suggested filename |
|---|---|---|---|
| 20 | Carnaval Combat | Annual | `ModzVerse_SL_CarnavalCombat.png` |
| 21 | The São Paulo Classic | Annual | `ModzVerse_SL_TheSoPauloClassic.png` (ã stripped) |

#### AKW (#9) — 2 events
| eventID | Event | Recurrence | Suggested filename |
|---|---|---|---|
| 22 | The Crown of Kings | Annual | `ModzVerse_AKW_TheCrownofKings.png` |
| 23 | Lagos Rising | Annual | `ModzVerse_AKW_LagosRising.png` |

#### PRW (#10) — 3 events
| eventID | Event | Recurrence | Suggested filename |
|---|---|---|---|
| 24 | The Sunset Slam | Annual | `ModzVerse_PRW_TheSunsetSlam.png` |
| 25 | Aussie Assault | Annual | `ModzVerse_PRW_AussieAssault.png` |
| 26 | PRW Friday Night Fury | Weekly | `ModzVerse_PRW_PRWFridayNightFury.png` |

#### NSS (#11) — 3 events
| eventID | Event | Recurrence | Suggested filename |
|---|---|---|---|
| 27 | Spirit Clash | Annual | `ModzVerse_NSS_SpiritClash.png` |
| 28 | The Nagoya Grand Tournament | Annual | `ModzVerse_NSS_TheNagoyaGrandTournament.png` |
| 29 | NSS Friday Night Strikes | Weekly | `ModzVerse_NSS_NSSFridayNightStrikes.png` |

#### KPW (#12) / LC (#13) / SAWA (#14) / Kiwi Pro (#15) / GWF (#16) / CNW (#17) / LA (#18) / BWL (#19) — 3 events each (24 total)
Each of these 8 promos has the same template: 2 annual events + 1 weekly event. Naming follows the `ModzVerse_<SHORT>_<EventName>.png` rule. Full list at `download/ModzVerse-Wiki/events.html`.

### Future-dated events (175 — one per remaining country, IDs ~58-232)

Each follows the template `<Country> Wrestling Grand Prix` or similar. These can stay on the bundled `events.png` placeholder — focus contribution effort on the 57 events for promos #1-19 above.

## Style guide

Event posters should be:

1. **Vertical poster orientation** — 2:3 aspect, NOT horizontal banner
2. **Event name as the dominant element** — large type, readable at 120×180 px thumbnail size
3. **Promotion color identity as background** — see `../Logos/README.md`
4. **Wrestler silhouette optional** — if including a wrestler, use the promotion's ace (see `promotionAce` column in the DB) or the current champion if a title match is scheduled
5. **Date stamp optional** — for annual events with a fixed week (e.g., "Battle of Rivals — January Week 5"), include the date in small type at the bottom
6. **Tour events use a distinct visual treatment** — for "Road to <supershow>" tour events, use a horizontal stripe overlay or "ROAD TO" prefix in the typography to distinguish from the supershow itself

### Special cases

- **AEGIS LEAGUE Finals (event #12)**: should feature the AEGIS LEAGUE championship belt prominently (matches `../Titles/README.md` art)
- **Battle of Rivals (event #2)**: RAIBARAZU's flagship supershow, held January Week 5 each year — should feature the Doragon (dragon) and Fenikkusu (phoenix) brand symbols
- **Luchastica (event #1)**: Lucha Bellas' flagship — already has a real filename wired, just needs the PNG created

## DB update script

Once PNGs are created, wire them up via SQL. Example for the 12 RAIBARAZU + Valkyrie Project signature events:

```sql
UPDATE events SET logo='ModzVerse_RIVALS_BattleofRivals.png'               WHERE eventID=2;
UPDATE events SET logo='ModzVerse_RIVALS_RoadtoBattleofRivals.png'         WHERE eventID=3;
UPDATE events SET logo='ModzVerse_RIVALS_AutumnBloodMoon.png'              WHERE eventID=4;
UPDATE events SET logo='ModzVerse_RIVALS_RoadtoAutumnBloodMoon.png'        WHERE eventID=5;
UPDATE events SET logo='ModzVerse_RIVALS_FallofHonor.png'                  WHERE eventID=6;
UPDATE events SET logo='ModzVerse_RIVALS_RoadtoFallofHonor.png'            WHERE eventID=7;
UPDATE events SET logo='ModzVerse_RIVALS_FrozenCombat.png'                 WHERE eventID=8;
UPDATE events SET logo='ModzVerse_RIVALS_RoadtoFrozenCombat.png'           WHERE eventID=9;
UPDATE events SET logo='ModzVerse_ValkyrieProject_Valhalla.png'            WHERE eventID=10;
UPDATE events SET logo='ModzVerse_ValkyrieProject_TwilightofTheGODS.png'   WHERE eventID=11;
UPDATE events SET logo='ModzVerse_ValkyrieProject_TheAEGISLEAGUEFinals.png' WHERE eventID=12;
-- (event #1 Luchastica is already wired)
```
