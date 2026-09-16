# ModzVerse v1.3.0 Release Checklist

> **Purpose**: In-game verification of the v1.3.0 save file
> (`ModzVerse(BETA)_v1.2.0.db`) before public release.
> Work through each section in order. Tick the box when a check passes;
> file an issue (template at the bottom) for any failure.
>
> **Estimated time**: 60-90 minutes for full verification.
> **Quick smoke test**: 15 minutes (just sections 1, 2, and the first
> row of each per-promotion table in section 3).

---

## 0. Pre-Load File Checks

Before launching the game, verify the file itself is sound.

- [ ] **0.1** `ModzVerse(BETA)_v1.2.0.db` is in your PWS saves folder
      - Windows: `%APPDATA%/Pro Wrestling Sim/saves/`
      - macOS: `~/Library/Application Support/Pro Wrestling Sim/saves/`
      - Linux: `~/.config/Pro Wrestling Sim/saves/`
- [ ] **0.2** File size is ~11.5 MB (12,093,440 bytes)
- [ ] **0.3** SQLite integrity check passes
      ```bash
      sqlite3 ModzVerse(BETA)_v1.2.0.db "PRAGMA integrity_check;"
      # Expected output: ok
      ```
- [ ] **0.4** Database version is 121
      ```bash
      sqlite3 ModzVerse(BETA)_v1.2.0.db "SELECT databaseVersion FROM gameworld;"
      # Expected output: 121
      ```
- [ ] **0.5** Total workers = 335 (295 wrestlers + 40 announcers)
      ```bash
      sqlite3 ModzVerse(BETA)_v1.2.0.db "SELECT COUNT(*) FROM workers;"
      # Expected output: 335
      ```
- [ ] **0.6** Total contracts = 335 (one per worker)
      ```bash
      sqlite3 ModzVerse(BETA)_v1.2.0.db "SELECT COUNT(*) FROM contracts WHERE finalised=1 AND expired=0;"
      # Expected output: 335
      ```

---

## 1. Game Load

- [ ] **1.1** Save loads from the "Load Game" screen without errors
- [ ] **1.2** No error dialogs or popups during initial load
- [ ] **1.3** Main menu shows the save with the correct promotion count (10)
- [ ] **1.4** Game date shows 2025-01-01 (canon launch date)
- [ ] **1.5** Open the dev console (Ctrl+Shift+I or F12) — no red error messages in the first 30 seconds after load

---

## 2. PWS Auto-Cleanup Survival

These are the checks our PWS-source-code audit was designed to make pass.
If any of these fail, the work in commits `0c24f29` through `17305f4`
was undone somehow.

### 2.1 Announcers (cleanAnnouncers)

Open the Announcers page for **each** of the 10 promotions and verify
all 4 announcer slots are populated (not "No default announcers").

| # | Promotion | a1 | a2 | a3 | a4 | All 4 filled? |
|---|---|---|---|---|---|---|
| 1 | Chicago Show | Big Bill Bannister | Crimson Cory Chapman | Daisy Delacroix | Old School Oscar Oswald | ☐ |
| 2 | Lucha Bellas | Carlos 'La Voz' Contreras | Lupita 'La Analyst' Luna | Patricia 'Pasión' Peña | Don Esteban 'El Sabio' Serrano | ☐ |
| 3 | Lucha MEX | Ricardo 'El Relator' Ramírez | Jorge 'El Comentarista' Jiménez | Carmen 'La Reportera' Cruz | Don Francisco 'El Maestro' Fuentes | ☐ |
| 4 | RAIBARAZU | Kenjiro Katsuragi | Hiroaki Matsuda | Ryoko Shirakawa | Goro Tanba | ☐ |
| 5 | Osaka Joshi | Yuki 'The Mic' Yamada | Sachiko 'Sensei' Sato | Akemi 'Action' Abe | Tomoko 'Memory' Tanaka | ☐ |
| 6 | Valkyrie Project | Erika 'The Echo' Enokida | Masumi 'The Maven' Morimoto | Natsuko 'Norse' Nagai | Hiroshi 'The Sage' Honda | ☐ |
| 7 | European Wrestling Alliance | Stewart 'The Voice' Vance | Diana 'The Dagger' Cross | Patrick 'The Pit' Sullivan | Maggie 'The Mic' MacGregor | ☐ |
| 8 | Samba Luta | Carlos 'A Voz' Cardoso | Beatriz 'A análise' Barros | Rodrigo 'O Relato' Rocha | Tania 'Tradição' Teixeira | ☐ |
| 9 | African Kings Wrestling | Emeka 'The Echo' Eze | Chioma 'The Crown' Okafor | Tunde 'The Truth' Tinubu | Adebayo 'The Bard' Bakare | ☐ |
| 10 | Pacific Rim Wrestling | Brett 'The Boomer' Bennett | Sharon 'The Spark' Sullivan | Liam 'The Legend' Lawson | Zoe 'The Zap' Zhang | ☐ |

### 2.2 Stables (Stables.js auto-cleanup)

Open the Stables page for **each** of the 10 promotions. Verify:
- All stables for that promotion appear
- Each stable has the expected member count (3-4)
- Each stable shows **exactly 1 leader** (look for the leader badge / crown icon)

| # | Promotion | Stables | All show a leader? | Members visible? |
|---|---|---|---|---|
| 1 | Chicago Show | The Viceroy Syndicate, The Chicago Heart, Sydney's Fortune, Working Class Heroes | ☐ | ☐ |
| 2 | Lucha Bellas | El Consejo Escarlata, Las Técnicas Puras, Las Estrellas del Alba, El Culto Azteca | ☐ | ☐ |
| 3 | Lucha MEX | La Oscuridad, La Tradición, Los Relampagos, Los Cuchillos Oscuros | ☐ | ☐ |
| 4 | RAIBARAZU | The Iron Court, The Phoenix Academy, The Fenikkusu Vanguard, The Monster Pack, The Glacier Guard, Dragonheart Academy | ☐ | ☐ |
| 5 | Osaka Joshi | The Royal Court, The Future, The Storm Guard, The Divine Court | ☐ | ☐ |
| 6 | Valkyrie Project | The Wild Hunt, Valhalla's Chosen, Odin's Pack, The Trickster Court | ☐ | ☐ |
| 7 | European Wrestling Alliance | The Trench Court, London Underground | ☐ | ☐ |
| 8 | Samba Luta | Carnaval Royalty, São Paulo Syndicate | ☐ | ☐ |
| 9 | African Kings Wrestling | The Royal Court, The Crown Princes | ☐ | ☐ |
| 10 | Pacific Rim Wrestling | The Pacific Cartel, The Beach Brawlers | ☐ | ☐ |

**Expected leaders** (verify the correct worker is marked as leader):

| Stable | Expected Leader |
|---|---|
| The Viceroy Syndicate | Mistress Malice |
| The Chicago Heart | Bronco Billiston |
| El Consejo Escarlata | La Sombra Cruel |
| Las Técnicas Puras | Estrella Solitaria |
| La Oscuridad | La Pantera Negra |
| La Tradición | Caballero Blanco |
| The Royal Court (Osaka Joshi) | Rina Kurosawa |
| The Future | Aoi Misaki |
| The Wild Hunt | Mjolnir Mitsuki |
| Valhalla's Chosen | Hikari Tonegawa |
| The Iron Court | The Honma Cobra |
| The Phoenix Academy | Zen Takahashi |
| The Fenikkusu Vanguard | Storm Nishimura |
| The Monster Pack | Savage Fujita |
| The Trench Court | Jack Ripper |
| London Underground | (first-listed member of stable 502) |
| Carnaval Royalty | Rafael Silva |
| São Paulo Syndicate | (first-listed member of stable 504) |
| The Royal Court (AKW) | Kwame Adebayo |
| The Crown Princes | (first-listed member of stable 506) |
| The Pacific Cartel | Jake Morrison |
| The Beach Brawlers | (first-listed member of stable 508) |
| + 12 expansion stables (401-412) | see SQL file comments |

### 2.3 Storylines (cleanupStorylines)

Open the Storylines page for **each** promotion. Verify:
- All expected storylines appear (not auto-deactivated)
- Each storyline shows at least 2 participants
- `active` flag is on (not greyed out / ended)

| # | Promotion | Storylines | All active? | All have 2+ participants? |
|---|---|---|---|---|
| 1 | Chicago Show | Money vs Heart, Viceroy Syndicate vs Chicago Heart, Women's Division, The Showman's Descent | ☐ | ☐ |
| 2 | Lucha Bellas | Mask vs Mask, El Consejo vs Las Tecnicas, The Beast Unleashed | ☐ | ☐ |
| 3 | Lucha MEX | Honor vs Darkness, La Oscuridad vs La Tradicion, The Mask Collection | ☐ | ☐ |
| 4 | RAIBARAZU | The Ace vs Iron Fist, Phoenix vs Dragon, The Call-Up Quest, Monster Pack Rampage, The Dream Tag Tournament | ☐ | ☐ |
| 5 | Osaka Joshi | Ace vs Queen, The Royal Court vs The Future, The Monster's Path | ☐ | ☐ |
| 6 | Valkyrie Project | The AEGIS LEAGUE Tournament, Valhalla's Chosen vs The Wild Hunt, The Shieldmaiden's Trial | ☐ | ☐ |
| 7 | European Wrestling Alliance | Hardcore Crown, The British Bruiser | ☐ | ☐ |
| 8 | Samba Luta | Carnaval vs Tradition, The Silva Brothers Feud | ☐ | ☐ |
| 9 | African Kings Wrestling | The Crown Tournament, Lagos Rising | ☐ | ☐ |
| 10 | Pacific Rim Wrestling | Pacific Rim War, The Sunset Slam Main Event | ☐ | ☐ |

---

## 3. Per-Promotion Roster Verification

For each promotion, open the roster page and verify the count matches
expectations.

| # | Promotion | Expected Wrestlers | Expected Announcers | Total Workers | Verified? |
|---|---|---|---|---|---|
| 1 | Chicago Show | 35 | 4 | 39 | ☐ |
| 2 | Lucha Bellas | 30 | 4 | 34 | ☐ |
| 3 | Lucha MEX | 35 | 4 | 39 | ☐ |
| 4 | RAIBARAZU | 40 | 4 | 44 | ☐ |
| 5 | Osaka Joshi | 30 | 4 | 34 | ☐ |
| 6 | Valkyrie Project | 25 | 4 | 29 | ☐ |
| 7 | European Wrestling Alliance | 25 | 4 | 29 | ☐ |
| 8 | Samba Luta | 25 | 4 | 29 | ☐ |
| 9 | African Kings Wrestling | 25 | 4 | 29 | ☐ |
| 10 | Pacific Rim Wrestling | 25 | 4 | 29 | ☐ |
| | **TOTAL** | **295** | **40** | **335** | ☐ |

### 3.1 Aces spot-check

Verify the top worker (Main Event push) for each promotion is the
expected "ace" — this catches any roster-shuffling bugs.

| # | Promotion | Expected Ace | Verified? |
|---|---|---|---|
| 1 | Chicago Show | Max Thunderford | ☐ |
| 2 | Lucha Bellas | La Reina Escarlata | ☐ |
| 3 | Lucha MEX | El Toro Bravo | ☐ |
| 4 | RAIBARAZU | Ryūga the Apex | ☐ |
| 5 | Osaka Joshi | Haruka Honjou | ☐ |
| 6 | Valkyrie Project | Freya Asagiri | ☐ |
| 7 | European Wrestling Alliance | Jack Ripper | ☐ |
| 8 | Samba Luta | Rafael Silva | ☐ |
| 9 | African Kings Wrestling | Kwame Adebayo | ☐ |
| 10 | Pacific Rim Wrestling | Jake Morrison | ☐ |

### 3.2 Announcer bio geography spot-check

Open the bio page for one announcer from each non-US promotion and
verify the "Born in" / "Based in" fields show the correct country
(this validates the fix in commit `17305f4`).

| # | Announcer | Expected Country | Expected Region | Verified? |
|---|---|---|---|---|
| 2 | Carlos 'La Voz' Contreras (Lucha Bellas) | Mexico | México | ☐ |
| 3 | Ricardo 'El Relator' Ramírez (Lucha MEX) | Mexico | México | ☐ |
| 5 | Yuki 'The Mic' Yamada (Osaka Joshi) | Japan | Osaka | ☐ |
| 6 | Erika 'The Echo' Enokida (Valkyrie Project) | Japan | Saga | ☐ |
| 7 | Stewart 'The Voice' Vance (EWA) | United Kingdom | England | ☐ |
| 8 | Carlos 'A Voz' Cardoso (Samba Luta) | Brazil | São Paulo | ☐ |
| 9 | Emeka 'The Echo' Eze (AKW) | Nigeria | Lagos | ☐ |
| 10 | Brett 'The Boomer' Bennett (PRW) | Australia | New South Wales | ☐ |

---

## 4. Tag Teams Verification

Open the Tag Teams page for each promotion and verify the count matches.

| # | Promotion | Expected Tag Teams | Verified? |
|---|---|---|---|
| 1 | Chicago Show | 5 (Windy City Wrecking Crew, The Boardroom, Diamond & Ravencroft, The Entertainers, Hellfire & Rampage) | ☐ |
| 2 | Lucha Bellas | 4 (Las Mariposas Estelares, El Trono Escarlata, Las Gatas Salvajes, Las Águilas Reales) | ☐ |
| 3 | Lucha MEX | 5 (Los Caballeros del Ring, La Pantera y El Diablo, Los Macheteros, Sombra y Verdugo, Piedra y Roca) | ☐ |
| 4 | RAIBARAZU | 8 (Apex Phoenix, Iron Fist Cobra, Riverstone Striker, Thunder Shadow, Ueno Nakajima, Storm Iron, Young Lions, Monster Squad) | ☐ |
| 5 | Osaka Joshi | 5 (Aoi & Hinata, Queen's Guard, Momo & Natsuki, Endo & Aida, The Storm Sisters) | ☐ |
| 6 | Valkyrie Project | 4 (The Crimson Phoenix, The Dragon Riders, Kiba & Kiba, The Savage Blades) | ☐ |
| 7 | European Wrestling Alliance | 3 (The London Bruisers, Trench & Grave, The Hex Pack) | ☐ |
| 8 | Samba Luta | 3 (Os Irmãos Silva, Carnaval Combat, Samba Slam Squad) | ☐ |
| 9 | African Kings Wrestling | 3 (The Crown Princes, The Lagos Lions, The Royal Guard) | ☐ |
| 10 | Pacific Rim Wrestling | 3 (The Outback Outlaws, Pacific Power, The Sydney Slammers) | ☐ |
| | **TOTAL** | **61** | ☐ |

For each tag team, verify:
- Both members are present (not "???" or blank)
- Both members belong to the same promotion (catches tag-team/promo mismatch bugs)

---

## 5. Intranet Verification

Open the intranet in a browser (file:// or via GitHub Pages) and
verify the worker browse feature works.

- [ ] **5.1** Open `rosters.html` (or click "Rosters" in the nav)
- [ ] **5.2** Scroll to the "Browse All Workers" section
- [ ] **5.3** Header reads "Browse All Workers (295 wrestlers · ★ v1.2.0)"
- [ ] **5.4** Filter row shows 11 buttons:
      - All (295)
      - RAIBARAZU (40), Chicago Show (35), Lucha Bellas (30), Lucha MEX (35),
        Osaka Joshi (30), Valkyrie Project (25)
      - ★ EWA (25), ★ Samba Luta (25), ★ AKW (25), ★ PRW (25)
- [ ] **5.5** Click "All (295)" — grid populates with 295 worker cards
- [ ] **5.6** Click "RAIBARAZU (40)" — grid filters to 40 workers
- [ ] **5.7** Click "★ EWA (25)" — grid filters to 25 workers
- [ ] **5.8** Click any worker card — detail overlay opens with stats
- [ ] **5.9** Close overlay (click X or press Esc)
- [ ] **5.10** Open browser dev console — no JavaScript errors

### 5.11 Spot-check the browse data

Click 3-4 worker cards at random and verify the displayed stats
match what's in the save DB. Example SQL to compare against:

```bash
sqlite3 ModzVerse(BETA)_v1.2.0.db \
  "SELECT name, wrestlingSkill, entertainment, starPower, intimidation FROM workers WHERE workerID IN (1001, 2001, 7001, 7301);"
```

| Worker ID | Name | Wrestling | Entertainment | Star Power | Intimidation | Verified? |
|---|---|---|---|---|---|---|
| 1001 | Ryūga the Apex | 95 | 60 | 92 | 85 | ☐ |
| 2001 | Max Thunderford | (check DB) | | | | ☐ |
| 7001 | Jack Ripper | (check DB) | | | | ☐ |
| 7301 | Jake Morrison | (check DB) | | | | ☐ |

---

## 6. Cross-Promotion Spot Checks

These are the "if I click around randomly does anything weird happen"
checks.

- [ ] **6.1** Open the World Map / Promotion List view — all 10 promotions appear
- [ ] **6.2** Promotion popularity bars match expected:
      - Chicago Show: N.America 40
      - Lucha Bellas: N.America 35
      - Lucha MEX: N.America 40
      - RAIBARAZU: Asia 60
      - Osaka Joshi: Asia 30
      - Valkyrie Project: Asia 12
      - EWA: Europe 50
      - Samba Luta: S.America 50
      - AKW: Africa 50
      - PRW: Oceania 50
- [ ] **6.3** Promotion money values match expected:
      - Chicago Show: $50,000
      - Lucha Bellas: $0
      - Lucha MEX: $0
      - RAIBARAZU: $0
      - Osaka Joshi: $2,983
      - Valkyrie Project: $0
      - EWA: $75,000
      - Samba Luta: $100,000
      - AKW: $60,000
      - PRW: $120,000
- [ ] **6.4** Founding dates match expected:
      - Chicago Show: 1950-01-01
      - Lucha Bellas: 1980-01-01
      - Lucha MEX: 1980-01-01
      - RAIBARAZU: 1950-06-06
      - Osaka Joshi: 2003-01-01
      - Valkyrie Project: 1980-01-01
      - EWA: 2002-04-15
      - Samba Luta: 2008-09-07
      - AKW: 2010-11-20
      - PRW: 2005-03-01
- [ ] **6.5** AEGIS LEAGUE championship is vacant (no current champion)
- [ ] **6.6** The 13 signature events are scheduled correctly
- [ ] **6.7** Advance the calendar 1 day (next day button) — no errors

---

## 7. Intranet Page Verification

For each HTML page, verify it loads without errors and shows the
v1.2.0 version string.

- [ ] **7.1** `portal.html` — Portal Dashboard loads, KPIs show 335 workers / 335 contracts / 10 promotions
- [ ] **7.2** `news.html` — Top entry is "v1.2.0 · Continental Vacuum filled"
- [ ] **7.3** `beta-status.html` — Roadmap shows v1.2.0 line under "Complete (Canonical)"
- [ ] **7.4** `promotions.html` — 10 promotion profile articles (scroll to bottom: EWA, SL, AKW, PRW sections exist)
- [ ] **7.5** `rosters.html` — Hero stats show "10 Promotions Populated / 335 Workers / 335 Contracts / 40 Announcers / 61 Tag Teams / 34 Stables"
- [ ] **7.6** `storylines.html` — Hero shows "29 storylines · 58 storylineworkers", Total Entries = 139
- [ ] **7.7** `github.html` — Hero stat reads "v1.2.0 (continental vacuum filled)"
- [ ] **7.8** Footer of every page reads "v1.2.0 · CONTINENTAL VACUUM FILLED · Canon date: January 1, 2025"
- [ ] **7.9** Sidebar of every page shows 10 promotion links (6 original + 4 starred new ones)
- [ ] **7.10** All sidebar links resolve (no 404s)

---

## 8. Save & Quit

- [ ] **8.1** Save the game (in-game save, not just close) — verify save completes
- [ ] **8.2** Quit to main menu — no errors during save
- [ ] **8.3** Reload the saved game — verify save still loads cleanly
- [ ] **8.4** After reload, re-check section 2.1 (announcers) for one promotion — verify slots are still populated (this catches any cleanup logic that fires on subsequent loads)

---

## Bug Report Template

If you find an issue, copy this template into a new GitHub issue:

```markdown
## [SEV-?] Brief description

**Severity**: SEV-1 (blocks release) / SEV-2 (visible bug) / SEV-3 (cosmetic)
**Section**: Which checklist section (e.g., "2.1 Announcers / Promotion 7 EWA")
**Repro steps**:
1. ...
2. ...
3. ...

**Expected**: ...
**Actual**: ...

**Save file**: ModzVerse(BETA)_v1.2.0.db (commit: <git SHA>)
**In-game version**: Pro Wrestling Sim v0.X.X
**Screenshot**: (attach if visual)

**SQL verification** (run against the save DB):
\`\`\`bash
sqlite3 ModzVerse(BETA)_v1.2.0.db "<query>"
\`\`\`
(Output: ...)
```

---

## Sign-Off

When all sections pass, fill in:

- **Tester**: ______________________
- **Date**: ______________________
- **PWS version**: ______________________
- **Save file SHA**: `git rev-parse HEAD` = ______________________
- **Total checks passed**: ___ / ___
- **Issues found**: ___ (list issue numbers if any)
- **Release recommendation**: ☐ Approve for v1.2.0 release / ☐ Hold for fixes

---

## Appendix: Quick SQL Verification Queries

If something looks off in-game, run these against the save DB to
get the authoritative answer:

```bash
# Total workers per promotion
sqlite3 ModzVerse(BETA)_v1.2.0.db "
SELECT p.promotionID, p.fullName, COUNT(DISTINCT c.workerID) as workers
FROM contracts c
JOIN promotions p ON c.promotionID = p.promotionID
WHERE c.finalised=1 AND c.expired=0
GROUP BY c.promotionID
ORDER BY c.promotionID;
"

# Announcer slots per promotion
sqlite3 ModzVerse(BETA)_v1.2.0.db "
SELECT p.promotionID, p.fullName,
  (SELECT contractName FROM contracts WHERE contractID=p.announcer1) AS a1,
  (SELECT contractName FROM contracts WHERE contractID=p.announcer2) AS a2,
  (SELECT contractName FROM contracts WHERE contractID=p.announcer3) AS a3,
  (SELECT contractName FROM contracts WHERE contractID=p.announcer4) AS a4
FROM promotions p ORDER BY p.promotionID;
"

# Stable leaders
sqlite3 ModzVerse(BETA)_v1.2.0.db "
SELECT s.stableID, s.stableName, s.promotionID,
       w.name AS leader_name
FROM stables s
JOIN stableworkers sw ON s.stableID = sw.stableID AND sw.isLeader = 1
JOIN contracts c ON sw.contractID = c.contractID
JOIN workers w ON c.workerID = w.workerID
ORDER BY s.stableID;
"

# Storyline participants
sqlite3 ModzVerse(BETA)_v1.2.0.db "
SELECT s.storylineID, s.storylineName, s.promotionID,
       GROUP_CONCAT(w.name, ' + ') AS participants
FROM storylines s
JOIN storylineworkers sw ON s.storylineID = sw.storylineID
JOIN contracts c ON sw.contractID = c.contractID
JOIN workers w ON c.workerID = w.workerID
GROUP BY s.storylineID
ORDER BY s.storylineID;
"

# Simulate PWS Announcers.cleanAnnouncers() — should return 0 rows
sqlite3 ModzVerse(BETA)_v1.2.0.db "
SELECT p.promotionID, p.fullName,
       CASE WHEN p.announcer1 IS NULL OR p.announcer1='' OR p.announcer1 NOT IN (
         SELECT contractID FROM contracts WHERE promotionID=p.promotionID AND expired=0
       ) THEN 'NULL' ELSE 'OK' END AS a1_status,
       CASE WHEN p.announcer2 IS NULL OR p.announcer2='' OR p.announcer2 NOT IN (
         SELECT contractID FROM contracts WHERE promotionID=p.promotionID AND expired=0
       ) THEN 'NULL' ELSE 'OK' END AS a2_status,
       CASE WHEN p.announcer3 IS NULL OR p.announcer3='' OR p.announcer3 NOT IN (
         SELECT contractID FROM contracts WHERE promotionID=p.promotionID AND expired=0
       ) THEN 'NULL' ELSE 'OK' END AS a3_status,
       CASE WHEN p.announcer4 IS NULL OR p.announcer4='' OR p.announcer4 NOT IN (
         SELECT contractID FROM contracts WHERE promotionID=p.promotionID AND expired=0
       ) THEN 'NULL' ELSE 'OK' END AS a4_status
FROM promotions p
ORDER BY p.promotionID;
"
# Expected: every cell should read 'OK' (40 OKs across 10 promos × 4 slots)
```
