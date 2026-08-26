# TV Networks DLC - Filtered TV Network Databases

This folder contains **12 filtered databases** for Pro Wrestling Sim, each containing all 78 tables from the main ModzVerse.db but with only a specific subset of the 101 total TV networks.

## How to Use

Each `.db` file is a complete, self-contained database. To use a filtered TV network database, simply replace (or merge) your existing database with the desired `.db` file. All other data (gimmicks, match gimmicks, promotions, titles, workers, venues, etc.) remains intact — only the `networks` and `networkAvailability` tables are filtered.

## Database Contents

Every database in this folder includes:
- **78 tables** (complete schema matching ModzVerse.db, databaseVersion=103)
- **15,303 gimmicks** (all gimmicks)
- **1,334 match gimmicks** (all match gimmicks)
- **12,000 venues** (all venues)
- **5,505 titles** (all titles)
- **5,000 promotions** (all promotions)
- **Filtered networks only** (varies per file)

## Network Categories

### By Continent (6 databases)

| File | Continent | Networks | Availability Entries |
|------|-----------|----------|---------------------|
| `ModzVerse_TVNetworks_Africa.db` | Africa | 10 | 39 |
| `ModzVerse_TVNetworks_Asia.db` | Asia | 24 | 104 |
| `ModzVerse_TVNetworks_Europe.db` | Europe | 21 | 87 |
| `ModzVerse_TVNetworks_NorthAmerica.db` | North America | 18 | 77 |
| `ModzVerse_TVNetworks_Oceania.db` | Oceania | 9 | 31 |
| `ModzVerse_TVNetworks_SouthAmerica.db` | South America | 19 | 74 |

### By Network Size (3 databases)

| File | Size | Networks | Description |
|------|------|----------|-------------|
| `ModzVerse_TVNetworks_SizeSmall.db` | Size 1 | 32 | Small/local networks |
| `ModzVerse_TVNetworks_SizeMedium.db` | Size 2 | 48 | Medium/regional networks |
| `ModzVerse_TVNetworks_SizeLarge.db` | Size 3 | 21 | Large/national networks |

### By Coverage Range (3 databases)

| File | Coverage | Networks | Description |
|------|----------|----------|-------------|
| `ModzVerse_TVNetworks_Local.db` | 1-2 regions | 3 | Single-city/local coverage |
| `ModzVerse_TVNetworks_Regional.db` | 3-5 regions | 92 | Multi-region coverage |
| `ModzVerse_TVNetworks_Wide.db` | 6+ regions | 6 | Continental/wide coverage |

## Complete Network List (101 networks)

### Africa (10 networks)

| ID | Network | Size | Regions |
|----|---------|------|---------|
| 82 | Africa Wrestling Network | 2 | 5 |
| 83 | Nigerian Wrestling TV | 2 | 4 |
| 84 | South Africa Wrestling | 2 | 4 |
| 85 | Egypt Luta TV | 2 | 4 |
| 86 | Kenya Wrestling Network | 1 | 3 |
| 87 | North Africa Sports TV | 2 | 5 |
| 88 | West Africa Wrestling | 1 | 3 |
| 89 | East Africa Fight TV | 1 | 3 |
| 90 | Pan-African Sports Channel | 2 | 5 |
| 91 | Sahara Wrestling TV | 1 | 3 |

### Asia (24 networks)

| ID | Network | Size | Regions |
|----|---------|------|---------|
| 4 | Chiku Television | 1 | 1 |
| 44 | Italia Lotta TV | 2 | 4 |
| 45 | Lucha Libre Espanola | 2 | 4 |
| 46 | Espana Catch TV | 1 | 3 |
| 62 | Japanese Wrestling Network | 3 | 5 |
| 63 | Puroresu TV | 3 | 5 |
| 64 | Tokyo Dome Network | 2 | 4 |
| 65 | Nippon Fight TV | 2 | 4 |
| 66 | Bharat Wrestling TV | 3 | 5 |
| 67 | Indian Sports Network | 3 | 5 |
| 68 | Dangal Wrestling TV | 2 | 4 |
| 69 | Korean Wrestling TV | 2 | 4 |
| 70 | Seoul Fight Network | 2 | 4 |
| 71 | Dragon Fight Network | 3 | 5 |
| 72 | China Wrestling TV | 2 | 4 |
| 73 | ASEAN Wrestling TV | 2 | 5 |
| 74 | Southeast Asia Sports | 2 | 5 |
| 75 | Philippines Wrestling TV | 1 | 3 |
| 76 | Thailand Fight TV | 2 | 4 |
| 77 | Gulf Wrestling TV | 2 | 5 |
| 78 | Middle East Sports | 2 | 5 |
| 79 | Indonesia Laga TV | 2 | 4 |
| 80 | Pan-Asian Wrestling Network | 3 | 7 |
| 81 | Oriental Fight Channel | 2 | 5 |

### Europe (21 networks)

| ID | Network | Size | Regions |
|----|---------|------|---------|
| 37 | British Wrestling Network | 3 | 4 |
| 38 | UK Sports Channel | 3 | 4 |
| 39 | London Wrestling TV | 2 | 4 |
| 40 | Deutsches Ringen TV | 2 | 4 |
| 41 | German Wrestling Network | 2 | 4 |
| 42 | Catch Francais TV | 2 | 4 |
| 43 | France Lutte Channel | 1 | 3 |
| 47 | European Wrestling Alliance | 3 | 7 |
| 48 | Euro Sports Network | 3 | 7 |
| 49 | Nordic Wrestling TV | 2 | 5 |
| 50 | Scandinavian Fight Channel | 2 | 5 |
| 51 | Continental Wrestling TV | 2 | 5 |
| 52 | Iberian Lucha Network | 2 | 5 |
| 53 | Central Europe Sports | 2 | 5 |
| 54 | Balkan Wrestling TV | 1 | 3 |
| 55 | Slavic Power Network | 1 | 3 |
| 56 | Celtic Wrestling TV | 1 | 3 |
| 57 | Mediterranean Lucha TV | 1 | 3 |
| 58 | Benelux Wrestling Network | 1 | 3 |
| 60 | Alpine Wrestling TV | 1 | 3 |
| 61 | Baltic Fight Network | 1 | 3 |

### North America (18 networks)

| ID | Network | Size | Regions |
|----|---------|------|---------|
| 5 | WrestleNet USA | 3 | 5 |
| 6 | USA Sports Channel | 3 | 5 |
| 7 | American Wrestling Network | 3 | 5 |
| 8 | Stars & Stripes TV | 2 | 4 |
| 9 | Prime Time Sports | 2 | 4 |
| 10 | East Coast Wrestling TV | 2 | 4 |
| 11 | Lucha TV Mexico | 3 | 5 |
| 12 | Teledeporte Lucha | 2 | 4 |
| 13 | Mexico Sports Live | 2 | 4 |
| 14 | Great White North TV | 2 | 4 |
| 15 | Maple Leaf Sports | 2 | 4 |
| 16 | Caribbean Wrestling Network | 1 | 3 |
| 17 | North American Wrestling Alliance | 3 | 7 |
| 18 | Pan-American Sports TV | 2 | 5 |
| 19 | NWA Classic TV | 2 | 5 |
| 20 | Indie Wrestling Network | 1 | 3 |
| 59 | Euro Indie Wrestling | 1 | 3 |
| 100 | Oceania Indie Wrestling | 1 | 3 |

### Oceania (9 networks)

| ID | Network | Size | Regions |
|----|---------|------|---------|
| 92 | Australia Wrestling TV | 2 | 4 |
| 93 | Oceania Sports Network | 2 | 5 |
| 94 | New Zealand Wrestling | 1 | 3 |
| 95 | Pacific Wrestling TV | 1 | 3 |
| 96 | Aussie Fight Channel | 2 | 4 |
| 97 | Outback Wrestling Network | 1 | 3 |
| 98 | South Pacific Sports | 1 | 3 |
| 99 | Tasman Wrestling TV | 1 | 3 |
| 101 | Kiwi Fight TV | 1 | 3 |

### South America (19 networks)

| ID | Network | Size | Regions |
|----|---------|------|---------|
| 1 | Canal Nacional | 3 | 1 |
| 2 | Sol Channel | 3 | 7 |
| 3 | Rio Channel | 3 | 1 |
| 21 | Luta TV Brasil | 3 | 5 |
| 22 | Rede Luta Livre | 3 | 5 |
| 23 | Brasil Wrestling Channel | 2 | 4 |
| 24 | TV Luta Nacional | 2 | 4 |
| 25 | BWF Televisao | 1 | 3 |
| 26 | Argentina Lucha TV | 2 | 4 |
| 27 | Buenos Aires Wrestling | 1 | 3 |
| 28 | Chile Lucha Libre TV | 1 | 3 |
| 29 | Colombia Wrestling TV | 1 | 3 |
| 30 | Peru Lucha Network | 1 | 3 |
| 31 | South American Wrestling TV | 3 | 7 |
| 32 | LatAm Sports Channel | 2 | 5 |
| 33 | Cono Sur Wrestling TV | 2 | 5 |
| 34 | Andes Lucha Libre | 1 | 3 |
| 35 | Amazonia Wrestling TV | 1 | 3 |
| 36 | Mercosul Sports | 2 | 5 |

## Networks Table Schema

| Column | Type | Description |
|--------|------|-------------|
| `networkID` | INTEGER (PK) | Unique network identifier (1-101) |
| `name` | TEXT (100) | Network name |
| `type` | TEXT (30) | Always "TV Network" |
| `model` | TEXT | Broadcast model (default: Free) |
| `payment` | TEXT | Payment type: "Pay Per Show" |
| `size` | INTEGER | Network size: 1 (Small), 2 (Medium), 3 (Large) |
| `library` | INTEGER | Library size |
| `openDate` | TEXT (11) | Opening date |
| `status` | INTEGER | Active status (1 = active) |
| `logo` | TEXT | Logo filename |

## NetworkAvailability Table Schema

| Column | Type | Description |
|--------|------|-------------|
| `networkID` | INTEGER (PK, FK) | References networks.networkID |
| `continent` | INTEGER | Continent ID (nullable) |
| `countryID` | INTEGER | Country ID (nullable) |
| `regionID` | INTEGER | Region ID (references regions table) |

Each network has availability entries linking it to specific regions, allowing the game engine to determine where each network is available for TV deals.

## Distribution Summary

- **12 filtered databases** in this folder
- **101 total networks** across all DBs (with overlap between categories)
- **412 total network availability entries** linking networks to regions
- **3 network sizes**: Small/1 (32), Medium/2 (48), Large/3 (21)
- **3 coverage levels**: Local/1-2 regions (3), Regional/3-5 (92), Wide/6+ (6)
- **6 continents**: Africa (10), Asia (24), Europe (21), North America (18), Oceania (9), South America (19)