# Network — TV Network / Streaming Platform Logos

> Drop network logos into `userData/images/<saveImageFolder>/Network/`. PWS resolves both lowercase (`network`) and TitleCase (`Network`) folder names.

**Note**: PWS uses the singular form `network` for this image type (verified in `Game.getImage('network', ...)`). The folder is named `Network` (TitleCase) here for consistency with the rest of the pack, and PWS handles the case-folding automatically.

## DB field

Each row in the `networks` table has one image column:

| Field | Type | Purpose |
|---|---|---|
| `logo` | TEXT | Filename of the network logo PNG |

PWS resolves via `getImage('network', logo)`. When `logo` is `'networks.png'` (note the plural — that's the bundled default filename) or the file is missing, PWS falls back to:
1. The modder-supplied `noimage.png` in this folder (see `../NoImage/README.md`)
2. The bundled system default at `<appPath>/images/network.png`

## Naming convention

| Rule | Example |
|---|---|
| `<networkName>.png` — alphanumeric only (strip whitespace + apostrophes + accents) | `Chicago Sports Network` → `ChicagoSportsNetwork.png` |
| | `RAIBARAZU Network` → `RAIBARAZUNetwork.png` |
| | `WrestleStream Plus` → `WrestleStreamPlus.png` |

## Recommended dimensions

| Asset | Recommended size | Aspect | Notes |
|---|---|---|---|
| Network logo | 512×256 | 2:1 | Transparent background, horizontal layout |

PWS displays network logos in the TV deal cards (~150×75 px) and network detail page (~400×200 px). A horizontal 2:1 layout works better than square here because most real-world network logos are wider than tall.

## Current state in v1.7.0

Verified against `ModzVerse(BETA)_v1.7.0.db`:

| Status | Count |
|---|---|
| **`logo` set to real filename** | 0 / 199 (all on `networks.png` placeholder) |
| **PNG files shipped in this pack** | 0 |

All 199 networks need BOTH a filename set in the DB AND a matching PNG file created.

### Network breakdown

The 199 networks split into 3 categories:

#### 1. Promo-owned TV networks (15 — one per current promo, IDs #1-15)

These are the networks owned by the 15 main-roster promotions. Each has a distinct name — these are the highest priority for art:

| networkID | Name | Owner promo | Suggested filename |
|---|---|---|---|
| 1 | Chicago Sports Network | #1 Chicago Show | `ChicagoSportsNetwork.png` |
| 2 | Bellas TV | #2 Lucha Bellas | `BellasTV.png` |
| 3 | MEX Wrestling Channel | #3 Lucha MEX | `MEXWrestlingChannel.png` |
| 4 | RAIBARAZU Network | #4 RAIBARAZU | `RAIBARAZUNetwork.png` |
| 5 | Joshi Stream | #5 Osaka Joshi | `JoshiStream.png` |
| 6 | Valhalla Broadcasting | #6 Valkyrie Project | `ValhallaBroadcasting.png` |
| 7 | EWA Hardcore TV | #7 EWA | `EWAHardcoreTV.png` |
| 8 | Samba Luta TV | #8 SL | `SambaLutaTV.png` |
| 9 | AKK Royal TV | #9 AKW | `AKKRoyalTV.png` |
| 10 | PRW Sports Network | #10 PRW | `PRWSportsNetwork.png` |
| 11 | NSS Strong TV | #11 NSS | `NSSStrongTV.png` |
| 12 | KPW Seoul Broadcasting | #12 KPW | `KPWSeoulBroadcasting.png` |
| 13 | Colombia Lucha TV | #13 LC | `ColombiaLuchaTV.png` |
| 14 | SAWA Sports Channel | #14 SAWA | `SAWASportsChannel.png` |
| 15 | Kiwi Pro Streaming | #15 Kiwi Pro | `KiwiProStreaming.png` |

#### 2. Promo-owned TV networks (4 — for the 4 newest promos, IDs #16-19)

| networkID | Name | Owner promo | Suggested filename |
|---|---|---|---|
| 21 | GWF TV | #16 GWF | `GWFTV.png` |
| 22 | CNW TV | #17 CNW | `CNWTV.png` |
| 23 | LA TV | #18 LA | `LATV.png` |
| 24 | BWL TV | #19 BWL | `BWLTV.png` |

#### 3. Independent streaming platforms (5 — networks #16-20 in the DB, owned by `ownerPromotion=0`)

These are the cross-promotional indie networks that any promotion can sign a deal with:

| networkID | Name | Type | Subscribers | Suggested filename |
|---|---|---|---|---|
| 16 | Global Wrestling Network | PPV | 500,000 | `GlobalWrestlingNetwork.png` |
| 17 | WrestleStream Plus | Streaming | (variable) | `WrestleStreamPlus.png` |
| 18 | Asian Wrestling TV | Cable | (variable) | `AsianWrestlingTV.png` |
| 19 | Latin Wrestling Network | Cable | (variable) | `LatinWrestlingNetwork.png` |
| 20 | Hardcore Underground TV | Streaming | (variable) | `HardcoreUndergroundTV.png` |

#### 4. Future-dated country networks (175 — one per remaining country, IDs #25-199)

Each follows the template `<CC> Sports Network` where CC is the 3-letter country code. Examples:

| networkID | Name | Owner promo | Suggested filename |
|---|---|---|---|
| 25 | ALB Sports Network | #20 (Albania) | `ALBSportsNetwork.png` |
| 26 | AND Sports Network | #21 (Andorra) | `ANDSportsNetwork.png` |
| 27 | ARM Sports Network | #22 (Armenia) | `ARMSportsNetwork.png` |
| ... | ... | ... | ... |
| 199 | ZIM Sports Network | #194 (Zimbabwe) | `ZIMSportsNetwork.png` |

**These 175 future-dated networks can stay on the bundled `networks.png` placeholder** — they have no real distribution yet (debut dates in 2026-2027). Focus contribution effort on the 24 networks in categories 1-3.

### DB update script

Once you've created the 24 priority PNGs (categories 1-3 above), run this SQL to wire them up:

```sql
UPDATE networks SET logo='ChicagoSportsNetwork.png'      WHERE networkID=1;
UPDATE networks SET logo='BellasTV.png'                  WHERE networkID=2;
UPDATE networks SET logo='MEXWrestlingChannel.png'       WHERE networkID=3;
UPDATE networks SET logo='RAIBARAZUNetwork.png'          WHERE networkID=4;
UPDATE networks SET logo='JoshiStream.png'               WHERE networkID=5;
UPDATE networks SET logo='ValhallaBroadcasting.png'      WHERE networkID=6;
UPDATE networks SET logo='EWAHardcoreTV.png'             WHERE networkID=7;
UPDATE networks SET logo='SambaLutaTV.png'               WHERE networkID=8;
UPDATE networks SET logo='AKKRoyalTV.png'                WHERE networkID=9;
UPDATE networks SET logo='PRWSportsNetwork.png'          WHERE networkID=10;
UPDATE networks SET logo='NSSStrongTV.png'               WHERE networkID=11;
UPDATE networks SET logo='KPWSeoulBroadcasting.png'      WHERE networkID=12;
UPDATE networks SET logo='ColombiaLuchaTV.png'           WHERE networkID=13;
UPDATE networks SET logo='SAWASportsChannel.png'         WHERE networkID=14;
UPDATE networks SET logo='KiwiProStreaming.png'          WHERE networkID=15;
UPDATE networks SET logo='GWFTV.png'                     WHERE networkID=21;
UPDATE networks SET logo='CNWTV.png'                     WHERE networkID=22;
UPDATE networks SET logo='LATV.png'                      WHERE networkID=23;
UPDATE networks SET logo='BWLTV.png'                     WHERE networkID=24;
UPDATE networks SET logo='GlobalWrestlingNetwork.png'    WHERE networkID=16;
UPDATE networks SET logo='WrestleStreamPlus.png'         WHERE networkID=17;
UPDATE networks SET logo='AsianWrestlingTV.png'          WHERE networkID=18;
UPDATE networks SET logo='LatinWrestlingNetwork.png'     WHERE networkID=19;
UPDATE networks SET logo='HardcoreUndergroundTV.png'     WHERE networkID=20;
```

## Style guide

Network logos should look like real-world TV network bugs:

1. **Horizontal layout** — wider than tall (2:1 aspect)
2. **Wordmark or monogram** — the network's name in a distinctive typeface, OR a stylized symbol
3. **Color-matched to owner promotion** for promo-owned networks (see `../Logos/README.md` for the promotion color identity table)
4. **Neutral color** for indie networks (silver, white, or dark grey)
5. **Transparent background** — PNG with alpha channel
6. **No broadcast tower icon** — overused trope; differentiate via typography instead
