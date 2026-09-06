# Worker Rosters

This folder contains generated worker roster SQL files for the ModzVerse world database.

## Available Rosters

| File | Promotion | Workers | Brands | Status |
|---|---|---|---|---|
| `RAIBARAZU_roster.sql` | RAIBARAZU (#6) | 30 | Doragon (15) + Fenikkusu (15) | ✅ Generated |
| `RAIBARAZU_roster_README.md` | RAIBARAZU | — | — | Roster documentation |

## How to Use

Each `.sql` file contains `INSERT INTO workers` and `INSERT INTO contracts` statements that can be executed against any ModzVerse save database:

```bash
sqlite3 ModzVerse(BETA).db < RAIBARAZU_roster.sql
```

Or open in DB Browser for SQLite → Execute SQL tab → paste the contents.

## Worker ID Ranges

Each promotion's roster uses a reserved ID range to avoid conflicts:

| Promotion | ID Range | Workers |
|---|---|---|
| RAIBARAZU | 1001–1030 | 30 |
| Chicago Show | 2001–2030 | (TBD) |
| Lucha Bellas | 3001–3025 | (TBD) |
| Lucha MEX | 4001–4030 | (TBD) |
| Osaka Joshi | 5001–5025 | (TBD) |
| Valkyrie Project | 6001–6020 | (TBD) |

## Roster Design Principles

- **Skill distribution** follows a pyramid: few main eventers, more midcarders, most at enhancement level
- **Brand split** (where applicable) assigns 60% to the A-brand, 40% to the B-brand
- **Style match**: all workers' `style` field matches their promotion's style
- **Regional popularity** is set to match the promotion's continental popularity profile
- **Personality traits** are assigned with face/heel-appropriate probabilities
- **Contract terms** scale with push tier: Written contracts for top stars, PPA for lower card
