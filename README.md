# ModzVerse

> A World at War! · The comprehensive custom world database for Pro Wrestling Sim.

A fully offline, multi-page HTML intranet + SQLite database + AI art asset pack for the **ModzVerse** custom world database for [Pro Wrestling Sim](https://store.steampowered.com/app/1157700/Pro_Wrestling_Sim/). All intranet content is embedded — no internet connection, no CDN, no web fonts, no JavaScript libraries. Just open any HTML file in a browser.

---

## 📦 What's in this repo

| Path | Purpose |
|---|---|
| `*.html` (20 files) | Multi-page intranet: portal, overview, promotions, rosters, events, titles, storylines, venues, geography, gimmicks, lore, dlc, news, beta-status, github, sitemap, about, print |
| `styles.css` | Shared stylesheet for all intranet pages |
| `script.js` | Shared JavaScript (search, navigation, lazy-loading) |
| `DLC/Rosters/*.sql` | 20+ SQL DLC files for expanding the save DB |
| `DLC/MatchGimmicks/` | 75 filtered match gimmick databases |
| `DLC/TVNetworks/` | 12 filtered TV network databases |
| `DLC/Venue/` | 18 venue database packs (12,000 venues) |
| `DLC/Gimmicks/` | Gimmick reference (placeholder) |
| `Excel/` | 11 reference spreadsheets + AI image generation prompts |
| `ModzVersePWSGraphixPack/` | AI art asset pack (logos, titles, worker portraits, network logos) |
| `Expansion/` | Placeholder for future expansion content |
| `README.md` | This file |
| `RELEASE_CHECKLIST.md` | In-game verification checklist |

### Excel files (11 spreadsheets, 15,000+ AI prompts)

| File | Rows | Content |
|---|---|---|
| `ModzVerse_All_Workers_AI_Prompts.xlsx` | 2,093 | AI portrait prompts per worker (style, gimmick, mask, etc.) |
| `ModzVerse_Workers_RealNames_and_AlterEgos.xlsx` | 2,093 | Ring Name → Real Name (by birth country) mapping |
| `ModzVerse_All_Titles.xlsx` | 221 | Complete title catalog with prestige, type, brand |
| `ModzVerse_All_Titles_AI_Prompts.xlsx` | 221 | AI belt image prompts per title |
| `ModzVerse_Promotions.xlsx` | 194 | All promotions with roster/title counts |
| `ModzVerse_All_Promotions_AI_Prompts.xlsx` | 194 | AI logo prompts per promotion |
| `ModzVerse_All_Stables_AI_Prompts.xlsx` | 245 | AI stable logo prompts |
| `ModzVerse_All_Networks_AI_Prompts.xlsx` | 199 | AI network logo prompts |
| `ModzVerse_All_Events_AI_Prompts.xlsx` | 232 | AI event poster prompts |
| `ModzVerse_All_Brands_AI_Prompts.xlsx` | 8 | AI brand logo prompts |
| `ModzVerse_All_Venues_AI_Prompts.xlsx` | 12,000 | AI venue image prompts |

---

## 🌍 What's inside the intranet

The intranet documents the ModzVerse pro wrestling world across **20 HTML pages**:

### Portal & System
- **Portal Dashboard** — KPI strip, promotion quick-access cards, news feed, system status board
- **News & Updates** — chronological feed of canon-dated world events and build notes (v0.9.0 → v3.1.0)
- **Site Map & A–Z Index** — 7-category site map + 40+ alphabetical entries
- **About / Print** — system info + built-in print stylesheet

### World Reference
- **World Overview** — power-center breakdown, all-19-promotions quick-reference, style comparison
- **World Lore: "A World at War!"** — 4 documented conflicts (Lucha Civil War, Japanese Division Wars, Chicago Anomaly, Continental Vacuum) with rivalry matrix

### Promotions (19 current + 175 future-dated)
Full infobox, history, style analysis, roster, events, and strategic position for each current-roster promotion:
1. **Chicago Show** — USA · Sports Entertainment · founded 1950
2. **Lucha Bellas** — Mexico · Lucha Libre · women-exclusive · founded 1980
3. **Lucha MEX** — Mexico · Traditional · mixed-gender · founded 1980
4. **RAIBARAZU** — Japan · Pure Wrestling · 2 brands (Doragon + Fenikkusu) · founded 1950
5. **Osaka Joshi** — Japan · Kings Road · women-exclusive · founded 2003
6. **Valkyrie Project** — Japan · Kings Road · founded 1980 · keeper of AEGIS LEAGUE
7. **EWA** — UK · Hardcore · founded 2002
8. **Samba Luta** — Brazil · Traditional · founded 2008
9. **AKW** — Nigeria · Kings Road · founded 2010
10. **PRW** — Australia · Sports Entertainment · founded 2005
11. **NSS** — Japan · Strong Style · founded 2006
12. **KPW** — South Korea · Sports Entertainment · founded 2015
13. **LC** — Colombia · Lucha Libre · founded 2016
14. **SAWA** — South Africa · Traditional · founded 2017
15. **Kiwi Pro** — New Zealand · Hardcore · founded 2018
16. **GWF** — Germany · Pure Wrestling · founded 2019
17. **CNW** — Canada · Sports Entertainment · founded 2020
18. **LA** — Argentina · Lucha Libre · founded 2021
19. **BWL** — India · Traditional · founded 2022

Plus 175 future-dated promotions for ALL 190 countries (debuting 2026-2027).

### Events & Calendar
- **232 events** across all 194 promotions (1 weekly + annual supershows + tours)
- **10 annual tournaments** (World Cup, AEGIS LEAGUE Finals, Battle of Rivals, Luchastica Cup, etc.)

### Titles & Championships
- **221 titles** total (41 per-promo titles + 175 future-dated national titles + 5 unified cross-promo titles)
- **160 title history** reigns (4 reigns per title, deterministic seeding)
- **8 brands** (RAIBARAZU Doragon/Fenikkusu + CS:Prime/Velocity + OJ:Queens/Blossoms + VP:Asgard/Midgard)

### Rosters & Workers
- **2,093 workers** (1,378 wrestlers + 464 personalities + 251 referees)
- Each wrestler has: **ring name** (workers.name) + **real name** (contracts.contractName, matched to birth country)
- **8-12 moves per wrestler** with style-appropriate move libraries (175+ unique moves)
- **2,093/2,093 worker bios** (0 empty)
- **52 worker relationships** (mentor/family/married/rivals) + **388 chemistry pairs**
- **30 alteregos** + **20 future picture changes** (mask removals, gimmick changes)
- **35 Hall of Fame inductees** (top 30 wrestlers + 5 tag teams, 2020-2024)

### Storylines & Booking
- **336 active storylines** (title chases, tournament arcs, cross-promo, stable warfare, etc.)
- **182 storyline histories** documenting past angles
- **20 match stories** + **35 angle templates** + **94 template beats**
- **30 random events** (Lucha Civil War escalations, title scene drama, stable warfare, etc.)
- **25 promotion hiring rules** (gender exclusions, skill minimums, age limits)

### Catalogs & Geography
- **17 canonical gimmicks** with mechanical modifiers
- **190 countries + 3,218 regions** with full wrestling popularity data
- **12,000 venues** across 6 continents with 7 style preferences
- **199 networks** (194 promo-owned + 5 independent) with 194 networkDeals
- **1,334 match gimmicks** imported from venue packs

### Historical Data
- **54 historical events** (218 segments, 436 segment workers)
- **2,368 popularity history rows** (5 tables: popHistoryDate, promotion/worker regional + monthly)
- **60 worker history snapshots** (top 30 wrestlers × 2 prior years)
- **30 year-end awards** (10 award types × 3 years)
- **57 merchandise records**

---

## 📊 Project stats (v3.1.0)

| Metric | Value |
|---|---|
| DB file size | 11.5 MB |
| Total DB rows | 33,000+ |
| Populated DB tables | 59 / 93 |
| Workers | 2,093 (with real names by birth country) |
| Promotions | 194 (100% global coverage, 190 countries) |
| Titles | 221 (including 5 cross-promo unified titles) |
| Tournaments | 10 (145 matches, 232 workers seeded) |
| Storylines | 336 active (672 storylineworkers, 182 histories) |
| Tag teams | 322 |
| Stables | 245 (974 stableworkers) |
| Relationships | 402 worker + 20 promotion |
| Chemistry pairs | 388 |
| Match stories + templates + beats | 20 + 35 + 94 = 149 booking elements |
| Random events | 30 (42 effects, 43 filters) |
| Excel files | 11 (15,000+ AI image generation prompts) |
| SQL DLC files | 20+ |
| GraphixPack assets | 69 AI-generated PNGs (4 logos + 1 belt + 24 network logos + 40 portraits) |
| External dependencies | 0 |
| JavaScript libraries | 0 (vanilla) |
| PRAGMA integrity_check | ok |

---

## 🚀 How to use

### Load the save in Pro Wrestling Sim
1. Download `ModzVerse_v3.1.0.db` from the [latest release](https://github.com/ModzProd/ModzVerseSystem/releases)
2. Copy it to your PWS saves folder:
   - Windows: `%USERPROFILE%\Documents\Pro Wrestling Sim\saves\`
   - macOS: `~/Library/Application Support/Pro Wrestling Sim/saves/`
3. Launch Pro Wrestling Sim
4. In the New Game dialog, select the ModzVerse save
5. Set the **Image Folder** field to `ModzVerse_v3.1.0`
6. (Optional) Clone the `ModzVersePWSGraphixPack/` folder into `userData/images/ModzVerse_v3.1.0/` for AI-generated art assets

### Read the intranet
1. Open any `.html` file in a modern browser (Chrome 90+, Firefox 88+, Safari 14+, Edge 90+)
2. No server, no installation, no internet required

### Apply SQL DLC expansions
```bash
sqlite3 your_save.db < DLC/Rosters/ModzVerse_Titles_v2.sql
sqlite3 your_save.db < DLC/Rosters/ModzVerse_Tournaments.sql
# ... etc (each file is wrapped in BEGIN TRANSACTION; ... COMMIT;)
```

### Use the AI prompt Excel files
1. Open any Excel file in the `Excel/` folder
2. Find the worker/promo/stable you want to generate art for
3. Copy the "AI Image Prompt" column
4. Paste into any AI image generator (Midjourney, DALL-E 3, Stable Diffusion)
5. Save the result with the exact filename from the "Picture Filename" / "Logo Filename" column

---

## 🎮 About ModzVerse

ModzVerse is a custom world database for **Pro Wrestling Sim** — a single-player booking/management simulation game where the player runs a pro wrestling promotion. The world features:

- **2,093 workers** across 194 promotions in 190 countries — each with a ring name (alter ego) and a real name (birth name matching their country of origin)
- **221 championships** (41 per-promo + 175 future-dated national + 5 cross-promo unified titles including the AEGIS LEAGUE world title)
- **10 annual tournaments** with full bracket structures (World Cup, Women's World Cup, Tag Team World Cup, Cruiserweight Grand Prix, etc.)
- **336 active storylines** covering 8 arc types (title chase, personal feud, stable warfare, tournament, mentor vs student, redemption, invasion, mask vs career)
- **322 tag teams** + **245 stables** with designated leaders
- **8 brand splits** (RAIBARAZU Doragon/Fenikkusu + CS:Prime/Velocity + OJ:Queens/Blossoms + VP:Asgard/Midgard)
- **20 promotion relationships** (Lucha Civil War, Japanese Division Wars, Chicago Anomaly, 13 Friendship talent exchanges)
- **402 worker relationships** (mentor/apprentice, family, married, rivals, allies) + **388 chemistry pairs**
- **30 random events** (Lucha Civil War escalations, title scene drama, stable drama, tournament upsets, real-world flavored events)
- **30 alteregos** documenting past gimmicks + **20 future picture changes** (mask removals, gimmick changes)
- **35 Hall of Fame inductees** across 5 years (2020-2024)
- **54 historical events** with 218 segments documenting famous past shows
- **2,368 popularity history rows** showing career arcs and promotion growth trajectories
- **12,000 venues** across 6 continents with 7 style preferences
- **199 networks** (194 promo-owned + 5 independent) with 194 networkDeals
- **1,334 match gimmicks** + **20 match stories** + **35 angle templates** + **94 template beats**
- **35 filter presets** + **19 owner goals** + **25 hiring rules** + **360 picture pool portraits**
- **17 canonical gimmicks** with mechanical modifiers
- **190 countries and 3,218 regions** with full wrestling popularity data
- **194/194 promotions with rosters** (100% global coverage) — all have owner + booker + production values assigned

The world is currently in **v3.1.0** — all 190 countries have at least one promotion entry (19 current with full rosters + 175 future-dated). PRAGMA integrity_check: ok. 33,000+ total DB rows across 59 populated tables. Every PWS system table is now populated.

---

## 🔧 Build history

| Version | Date | Highlights |
|---|---|---|
| v0.9.0 | 2025-01-01 | Initial wikia build — 9 sections, 6 promotion profiles |
| v0.9.1 | 2025-01-01 | Intranet portal, news feed, sitemap, full-text search, print stylesheet |
| v0.9.2–v0.9.3 | 2025-01-01 | 18 venue packs (36,000 venues); "Australia Surprise" finding |
| v0.9.4 | 2025-01-01 | GitHub repo live + GitHub Pages hosted |
| v0.9.5 | 2025-01-01 | 75 MatchGimmicks DLC + 12 TVNetworks DLC + 4 Excel spreadsheets |
| v0.9.6–v0.9.7 | 2025-01-01 | RAIBARAZU roster + all 6 promotion rosters (195 workers) |
| v1.0.0 | 2025-01-01 | Tag teams + stables + announcers for all 6 promotions; Storylines section |
| v1.1.0 | 2025-01-01 | PWS-source audit — fixed announcer contractIDs + isLeader integers + storylineworkers |
| v1.2.0 | 2025-01-01 | Continental Vacuum filled — 4 new promotions (EWA, SL, AKW, PRW) + 116 workers |
| v1.3.0 | 2025-01-01 | Worker data normalization — height/weight/race/build/style labels + bios + movesets |
| v1.4.0 | 2025-01-01 | All 7 styles complete — NSS (Strong Style) + tour dates + training schools + 347 worker pictures |
| v1.5.0 | 2025-01-01 | The Living World — 4 new promos + 9 networks + 12,000 venues + networkDeals |
| v1.6.0 | 2025-01-01 | 4 new promos (Germany/Canada/Argentina/India) + 116 wrestlers |
| v1.7.0 | 2025-01-01 | World Complete — 175 future-dated shell promos for ALL 190 countries + 1,334 matchgimmicks + GraphixPack scaffolded |
| v1.8.0 | 2025-01-02 | Deep Expansion — 40 per-promo titles + 160 titlehistory + 6 tournaments + 6 brand splits + 20 promo relationships + 97 booking elements + lore padding |
| v1.9.0 | 2025-01-03 | Roster Depth — 114 referees/managers/authority + 52 relationships + 38 chemistry + 30 random events + 30 alteregos + 20 futurePics + 160 future-dated workers |
| v2.0.0 | 2025-01-04 | Complete World — 35 HoF inductees + 24 historical events + 25 hiring rules + 15 filter presets + 160 future-dated workers |
| v2.1.0 | 2025-01-05 | World Rosters Phase 1 — 320 workers for promos #60-99 (Slovenia through Egypt) |
| v2.2.0 | 2025-01-06 | **World Rosters Complete** — 760 workers for promos #100-194 — **ALL 194 promos now have rosters (100% global coverage)** |
| v2.3.0 | 2025-01-07 | Move Sets Expansion — all 1,378 wrestlers updated to 8-12 moves each with 7 style libraries (175+ unique moves) |
| v2.4.0 | 2025-01-08 | Worker Bios — 1,400 new descriptions, all 2,093 workers now have bios (0 empty) |
| v2.5.0 | 2025-01-09 | Tag Team Expansion — 59 new tag teams (total 322) + 20 storylines + 40 histories |
| v2.6.0 | 2025-01-10 | Stable + Storyline Depth — 18 new stables (total 245) + 50 storylines (total 321, 8 arc types) + 100 histories |
| v2.7.0 | 2025-01-11 | Cross-Promo Content — 5 unified titles + 4 cross-promo tournaments + 15 cross-promo storylines |
| v2.8.0 | 2025-01-12 | Historical Depth — 2,368 popularity history rows + 30 more historical events (total 54) |
| v2.9.0 | 2025-01-13 | Polish + QoL — 35 filter presets + 19 owner goals + 19 drug policies + 360 picturePool |
| v3.0.0 | 2025-01-14 | **FINAL RELEASE** — 10-version roadmap complete. 25,581 rows across 47 tables. Every PWS system table populated. |
| **v3.1.0** | 2025-01-15 | **8 Priority Expansions** — style assignment (875→0 NULL) + promotion ace (194/194) + regional popularity (4,164 rows) + 175 new titles (total 221) + 350 relationships + 350 chemistry + production values (194/194) + 335 movesets diversified + announcer fix + **real names by birth country** (2,093 workers with country-specific real names) |

---

## ✨ Key features

- **🔒 Fully offline** — 0 external URLs, 0 CDN calls, 0 web fonts, 0 JS libraries
- **🔍 Full-text search** — live DOM scan with highlighted snippets
- **⌨️ Keyboard navigation** — `j`/`↓` next section, `k`/`↑` previous, `/` to focus search
- **🖨️ Print stylesheet** — built-in print/PDF export with section-level page breaks
- **📱 Responsive** — sidebar collapses under 1100px, infoboxes reflow under 640px
- **♿ Accessible** — ARIA labels, focus-visible outlines, `prefers-reduced-motion` respected
- **🎨 Promotion-colored accents** — every promotion gets its own color identity
- **🤖 AI art ready** — 15,000+ pre-tuned AI image generation prompts across 11 Excel files
- **📦 DLC modular** — 20+ SQL DLC files, each wrapped in transactions, apply selectively
- **🌍 100% global coverage** — all 194 promotions in 190 countries have full rosters

---

## 🤝 Contributing

The ModzVerse is a community world — contributions are welcome. The most valuable contributions, in priority order:

1. **AI-generated art** — use the Excel prompt files to generate worker portraits, promo logos, title belts, stable logos, event posters, network logos, and brand logos. Save with the exact filenames specified in the Excel files.
2. **Worker bios** — unique hand-written bios for the 19 current-roster promotions' wrestlers (the future-dated rosters use template bios)
3. **Storylines** — long-term storyline arcs with detailed overview text
4. **Match gimmicks and stories** — match type definitions and play-by-play text beats
5. **Venue data** — real-world venue entries for major cities

Open an issue on the main repo ([`ModzProd/ModzVerseSystem`](https://github.com/ModzProd/ModzVerseSystem)) with your contribution.

---

## ⚠️ Disclaimer

This wiki is a fan reference for the ModzVerse custom world database for Pro Wrestling Sim. All in-universe content is fictional. Pro Wrestling Sim is a trademark of its respective owners. This project is not affiliated with or endorsed by the developers of Pro Wrestling Sim.

---

## 📄 License

No license is included with this repository. By default, this means the code is "all rights reserved" — you may view and fork the repository, but you do not have permission to copy, modify, or distribute the code without explicit permission from the repository owner. If you would like to use any of this content, please open an issue to discuss licensing.
