# Venue DLC - Filtered Venue Databases

This folder contains **18 filtered databases** for Pro Wrestling Sim, each containing all 78 tables from the main ModzVerse.db but with only a specific subset of the 12,000 total venues.

## How to Use

Each `.db` file is a complete, self-contained database. To use a filtered venue database, simply replace (or merge) your existing database with the desired `.db` file. All other data (gimmicks, match gimmicks, promotions, titles, workers, networks, etc.) remains intact — only the `venues` table is filtered.

## Database Contents

Every database in this folder includes:
- **78 tables** (complete schema matching ModzVerse.db, databaseVersion=103)
- **15,303 gimmicks** (all gimmicks)
- **1,334 match gimmicks** (all match gimmicks)
- **101 TV networks** (all networks)
- **5,505 titles** (all titles)
- **5,000 promotions** (all promotions)
- **Filtered venues only** (varies per file)

## Venue Categories

### By Continent (6 databases)

| File | Continent | Venues | Countries |
|------|-----------|--------|-----------|
| `ModzVerse_Venues_Africa.db` | Africa | 2,000 | 51 |
| `ModzVerse_Venues_Asia.db` | Asia | 2,000 | 36 |
| `ModzVerse_Venues_Europe.db` | Europe | 2,000 | 47 |
| `ModzVerse_Venues_NorthAmerica.db` | North America | 2,000 | 15 |
| `ModzVerse_Venues_Oceania.db` | Oceania | 2,000 | 11 |
| `ModzVerse_Venues_SouthAmerica.db` | South America | 2,000 | 12 |

### By Preferred Wrestling Style (7 databases)

| File | Style | Venues | Description |
|------|-------|--------|-------------|
| `ModzVerse_Venues_Traditional.db` | Traditional | 6,594 | Venues suited for traditional wrestling (55% of total) |
| `ModzVerse_Venues_SportsEntertainment.db` | Sports Entertainment | 3,568 | Venues with sports entertainment flair (30%) |
| `ModzVerse_Venues_LuchaLibre.db` | Lucha Libre | 546 | Venues ideal for lucha libre (4.5%) |
| `ModzVerse_Venues_PureWrestling.db` | Pure Wrestling | 396 | Venues for technical/pure wrestling (3.3%) |
| `ModzVerse_Venues_Hardcore.db` | Hardcore | 332 | Venues for hardcore wrestling (2.8%) |
| `ModzVerse_Venues_StrongStyle.db` | Strong Style | 307 | Venues for strong style wrestling (2.6%) |
| `ModzVerse_Venues_KingsRoad.db` | Kings Road | 257 | Venues for Kings Road style (2.1%) |

### By Capacity Range (5 databases)

| File | Capacity | Venues | Range |
|------|----------|--------|-------|
| `ModzVerse_Venues_Tiny.db` | Tiny | 966 | Under 2,000 seats |
| `ModzVerse_Venues_Small.db` | Small | 2,310 | 2,000 - 4,999 seats |
| `ModzVerse_Venues_Medium.db` | Medium | 2,969 | 5,000 - 9,999 seats |
| `ModzVerse_Venues_Large.db` | Large | 3,660 | 10,000 - 19,999 seats |
| `ModzVerse_Venues_Arena.db` | Arena | 2,095 | 20,000+ seats |

## Venue Table Schema

| Column | Type | Description |
|--------|------|-------------|
| `venueID` | INTEGER (PK) | Unique venue identifier |
| `description` | TEXT (200) | Venue description |
| `region` | INTEGER | Region reference |
| `country` | INTEGER | Country reference |
| `venueName` | TEXT (100) | Venue name |
| `capacity` | INTEGER | Seating capacity |
| `wrestlingPopularity` | INTEGER | Wrestling popularity (0-100) |
| `preferredStyle` | TEXT (50) | Preferred wrestling style |
| `promotionExclusivity` | INTEGER | Exclusive promotion ID (0 = none) |
| `openDate` | TEXT (10) | Opening date (YYYY-MM-DD) |
| `closeDate` | TEXT (10) | Closing date (empty = still open) |
| `type` | TEXT | Venue type (Arena, Stadium, Gymnasium, etc.) |
| `venueImage` | TEXT | Venue image filename |
| `continent` | TEXT (20) | Continent name |

## Venue Type Distribution (71 types)

The 12,000 venues span 71 distinct venue types, including: Arena, Stadium, Gymnasium, Exhibition Hall, Pavilion, Showground, Coliseum, Square, Park, Megaplex, Complex, Hall, Sports Palace, Entertainment Center, Convention Center, Bowl, Superdome, Civic Center, Auditorium, Center, Dome, Center Stage, Theatre, Garden, Forum, Plaza, Fieldhouse, Sports Complex, Amphitheatre, Municipal Ground, Town Hall, and many more.

## Top Countries by Venue Count

| Country | Continent | Venues |
|---------|-----------|--------|
| Australia | Oceania | 1,150 |
| United States | North America | 1,018 |
| Brazil | South America | 895 |
| India | Asia | 598 |
| China | Asia | 575 |
| Mexico | North America | 540 |
| Papua New Guinea | Oceania | 456 |
| Russia | Europe | 317 |
| Nigeria | Africa | 295 |
| New Zealand | Oceania | 264 |

## Total Summary

- **18 filtered databases** in this folder
- **12,000 total venues** across all DBs (with overlap between categories)
- **3 classification dimensions**: Continent (6), Wrestling Style (7), Capacity (5)
- **71 venue types**, **7 wrestling styles**, **6 continents**, **172 countries**