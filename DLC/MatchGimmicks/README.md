# Match Gimmicks - Bancos Filtrados por Tema

Bancos de dados filtrados contendo **apenas** os match gimmicks do tema indicado. Todas as demais tabelas do banco permanecem intactas.

**Total no banco principal:** 1.334 match gimmicks (IDs 1-1334)
**Total de bancos nesta pasta:** 75

---

## Estrutura da Tabela MatchGimmicks

| Coluna | Tipo | Descrição |
|---|---|---|
| `matchgimmickID` | INTEGER PK | Identificador único |
| `name` | TEXT (100) | Nome do match gimmick (Inglês) |
| `description` | TEXT (100) | Descrição (Inglês) |
| `modifiers` | TEXT | Modificadores separados por vírgula |
| `hasLosers` | INTEGER | Sempre 1 |
| `isElimination` | INTEGER | 0 ou 1 |
| `entranceType` | TEXT | "Normal" ou "Time Staggered" |
| `finishes` | TEXT | JSON array com finalizacoes e probabilidades |

### Modificadores Disponíveis (14)

`Big Stars Only`, `Crowd Boost`, `Major Crowd Boost`, `Fatigue`, `Huge Fatigue`, `Favors Brawlers`, `Favors Hardcore`, `Greater Popularity Gain`, `Greatly Increased Injury Risk`, `Increased Injury Risk`, `Hot Storyline Needed`, `Increased Cost`, `Major Spot Expected`, `Match Boost`

### Formato do Campo `finishes` (JSON)

```json
[{"name":"Pinfall","probability":50},{"name":"Submission","probability":30}]
```

---

## Categorias Agregadas (20 bancos)

Estes bancos agrupam match gimmicks de múltiplos temas relacionados. **Atenção:** há sobreposição entre categorias — um mesmo match gimmick pode aparecer em mais de um banco.

| # | Arquivo | Qtd | Faixa de IDs | Tema |
|---|---|---|---|---|
| 1 | `ModzVerse_MatchGimmicks_Deathmatch.db` | 223 | 17-1238 | Deathmatch & Brutalidade |
| 2 | `ModzVerse_MatchGimmicks_GimmickStip.db` | 151 | 1-1184 | Estipulações (Título, Carreira, Contrato) |
| 3 | `ModzVerse_MatchGimmicks_SpecialArena.db` | 137 | 3-1334 | Arenas Especiais & Sobrenatural |
| 4 | `ModzVerse_MatchGimmicks_Cultural.db` | 120 | 9-1136 | Culturas & Tradições |
| 5 | `ModzVerse_MatchGimmicks_SteelStructure.db` | 107 | 6-1094 | Estruturas de Aço & Alturas |
| 6 | `ModzVerse_MatchGimmicks_Inferno.db` | 104 | 4-1190 | Inferno, Fogo & Elementos |
| 7 | `ModzVerse_MatchGimmicks_Vehicle.db` | 91 | 12-1088 | Veículos & Colisões |
| 8 | `ModzVerse_MatchGimmicks_Elimination.db` | 85 | 44-1304 | Eliminação & Battle Royal |
| 9 | `ModzVerse_MatchGimmicks_Survival.db` | 59 | 15-1298 | Sobrevivência & Obstáculos |
| 10 | `ModzVerse_MatchGimmicks_Cage.db` | 47 | 2-1124 | Jaulas & Celas |
| 11 | `ModzVerse_MatchGimmicks_Hardcore.db` | 44 | 27-1154 | Hardcore & Sem Regras |
| 12 | `ModzVerse_MatchGimmicks_Weapon.db` | 38 | 33-1034 | Armas & Objetos |
| 13 | `ModzVerse_MatchGimmicks_Ladders.db` | 32 | 5-1052 | Escadas & Pole Matches |
| 14 | `ModzVerse_MatchGimmicks_Escape.db` | 24 | 23-994 | Fuga & Câmaras |
| 15 | `ModzVerse_MatchGimmicks_Submission.db` | 20 | 21-1280 | Submission & I Quit |
| 16 | `ModzVerse_MatchGimmicks_MultiMan.db` | 12 | 79-961 | Lutas Multi-Man |
| 17 | `ModzVerse_MatchGimmicks_Tables.db` | 12 | 139-986 | Mesas |
| 18 | `ModzVerse_MatchGimmicks_TagTeam.db` | 12 | 263-923 | Tag Team |
| 19 | `ModzVerse_MatchGimmicks_FirstBlood.db` | 9 | 97-1220 | First Blood & Vampiro |
| 20 | `ModzVerse_MatchGimmicks_Strap.db` | 7 | 295-921 | Strap & Corrente |

---

## Temas Específicos (55 bancos, 6 match gimmicks cada)

Novos match gimmicks criados especificamente para cada tema. Cada banco contém exatamente **6 match gimmicks exclusivos** com IDs sequenciais.

### Extremos & Mortais

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 1 | `ModzVerse_MatchGimmicks_CasketBuried.db` | 1005-1010 | Casket Shutdown Match |
| 2 | `ModzVerse_MatchGimmicks_BarbedWire.db` | 1011-1016 | Barbed Wire Massacre |
| 3 | `ModzVerse_MatchGimmicks_ThumbtacksGlass.db` | 1017-1022 | Thumbtack Torture Match |
| 4 | `ModzVerse_MatchGimmicks_Electrified.db` | 1023-1028 | Electrified Cage of Torment |
| 5 | `ModzVerse_MatchGimmicks_PiranhaShark.db` | 1029-1034 | Piranha Pit Match |

### Estruturas & Alturas

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 6 | `ModzVerse_MatchGimmicks_Scaffold.db` | 1035-1040 | Scaffold Showdown |
| 7 | `ModzVerse_MatchGimmicks_LadderSpecials.db` | 1041-1046 | Championship Ladder Ascent |
| 8 | `ModzVerse_MatchGimmicks_PoleMatches.db` | 1047-1052 | Flag on a Pole Brawl |
| 9 | `ModzVerse_MatchGimmicks_RooftopBalcony.db` | 1053-1058 | Rooftop Fall Match |
| 10 | `ModzVerse_MatchGimmicks_ElevatorShaft.db` | 1059-1064 | Elevator Shaft Plunge |

### Veículos

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 11 | `ModzVerse_MatchGimmicks_CarVan.db` | 1065-1070 | Car Crusher Match |
| 12 | `ModzVerse_MatchGimmicks_BusTruck.db` | 1071-1076 | School Bus Demolition |
| 13 | `ModzVerse_MatchGimmicks_Train.db` | 1077-1082 | Train Car Brawl |
| 14 | `ModzVerse_MatchGimmicks_BoatShip.db` | 1083-1088 | Pirate Ship Plunder |
| 15 | `ModzVerse_MatchGimmicks_Construction.db` | 1089-1094 | Bulldozer Brawl |

### Arenas Especiais

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 16 | `ModzVerse_MatchGimmicks_CarnivalCircus.db` | 1095-1100 | Circus of Carnage |
| 17 | `ModzVerse_MatchGimmicks_HauntedHouse.db` | 1101-1106 | Haunted House Horror |
| 18 | `ModzVerse_MatchGimmicks_MazeLabyrinth.db` | 1107-1112 | Labyrinth of Lost Souls |
| 19 | `ModzVerse_MatchGimmicks_DungeonCastle.db` | 1113-1118 | Dungeon of Despair |
| 20 | `ModzVerse_MatchGimmicks_HospitalAsylum.db` | 1119-1124 | Hospital Ward Havoc |

### Culturas & Estilos de Luta

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 21 | `ModzVerse_MatchGimmicks_LuchaLibre.db` | 1125-1130 | Lucha de Apuestas Mask vs Mask |
| 22 | `ModzVerse_MatchGimmicks_JapaneseDM.db` | 1131-1136 | Japanese Deathmatch Rules |
| 23 | `ModzVerse_MatchGimmicks_BritishStrong.db` | 1137-1142 | British Rounds Match |
| 24 | `ModzVerse_MatchGimmicks_MexicanRules.db` | 1143-1148 | Mexican Rules Deathmatch |
| 25 | `ModzVerse_MatchGimmicks_TribalIndigenous.db` | 1149-1154 | Tribal Warfare Match |

### Estipulações

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 26 | `ModzVerse_MatchGimmicks_CareerRetirement.db` | 1155-1160 | Career Threatening Match |
| 27 | `ModzVerse_MatchGimmicks_TitleVsTitle.db` | 1161-1166 | Title Unification Match |
| 28 | `ModzVerse_MatchGimmicks_ContractMoney.db` | 1167-1172 | Contract on a Line Match |
| 29 | `ModzVerse_MatchGimmicks_ServantSlave.db` | 1173-1178 | Loser Becomes Servant Match |
| 30 | `ModzVerse_MatchGimmicks_LoserLeaves.db` | 1179-1184 | Loser Leaves Town Match |

### Elementos & Natureza

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 31 | `ModzVerse_MatchGimmicks_FireInferno2.db` | 1185-1190 | Ring of Fire Match |
| 32 | `ModzVerse_MatchGimmicks_IceFrozen.db` | 1191-1196 | Ice Deathmatch |
| 33 | `ModzVerse_MatchGimmicks_MudSwamp.db` | 1197-1202 | Mud Pit Brawl |
| 34 | `ModzVerse_MatchGimmicks_SandDesert.db` | 1203-1208 | Desert Storm Match |
| 35 | `ModzVerse_MatchGimmicks_WaterSea.db` | 1209-1214 | Water Match |

### Horror & Sobrenatural

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 36 | `ModzVerse_MatchGimmicks_VampireWerewolf.db` | 1215-1220 | Vampire's Lair Bloodbath |
| 37 | `ModzVerse_MatchGimmicks_ZombieApocalypse.db` | 1221-1226 | Zombie Outbreak Match |
| 38 | `ModzVerse_MatchGimmicks_CursedSupernatural.db` | 1227-1232 | Cursed Ring Match |
| 39 | `ModzVerse_MatchGimmicks_CemeteryGraveyard.db` | 1233-1238 | Cemetery Deathmatch |
| 40 | `ModzVerse_MatchGimmicks_WitchOccult.db` | 1239-1244 | Witch's Coven Match |

### Pop Culture & Ficção

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 41 | `ModzVerse_MatchGimmicks_VideoGame.db` | 1245-1250 | Final Boss Match |
| 42 | `ModzVerse_MatchGimmicks_Movie.db` | 1251-1256 | Action Movie Deathmatch |
| 43 | `ModzVerse_MatchGimmicks_GladiatorArena.db` | 1257-1262 | Colosseum Carnage |
| 44 | `ModzVerse_MatchGimmicks_PirateShip.db` | 1263-1268 | Pirate Ship Plunder |
| 45 | `ModzVerse_MatchGimmicks_SpaceStation.db` | 1269-1274 | Space Station Showdown |

### Esportes & Competição

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 46 | `ModzVerse_MatchGimmicks_BoxingMMA.db` | 1275-1280 | Boxing Rules Match |
| 47 | `ModzVerse_MatchGimmicks_MartialArtsTourn.db` | 1281-1286 | Martial Arts Bracket |
| 48 | `ModzVerse_MatchGimmicks_OlympicAthletic.db` | 1287-1292 | Olympic Trials Match |
| 49 | `ModzVerse_MatchGimmicks_ObstacleWipeout.db` | 1293-1298 | Obstacle Course Brawl |
| 50 | `ModzVerse_MatchGimmicks_TimedSprint.db` | 1299-1304 | 5 Minute Sprint Match |

### Inusitados & Bizarros

| # | Arquivo | IDs | Exemplo |
|---|---|---|---|
| 51 | `ModzVerse_MatchGimmicks_FoodKitchen.db` | 1305-1310 | Kitchen Brawl |
| 52 | `ModzVerse_MatchGimmicks_LibraryStudy.db` | 1311-1316 | Library Brawl |
| 53 | `ModzVerse_MatchGimmicks_MallStore.db` | 1317-1322 | Mall Brawl |
| 54 | `ModzVerse_MatchGimmicks_ZooFarm.db` | 1323-1328 | Zoo Deathmatch |
| 55 | `ModzVerse_MatchGimmicks_LockerRoomGym.db` | 1329-1334 | Locker Room Brawl |

---

## Como Usar

1. Escolha um banco filtrado por tema que interesse sua simulação
2. Substitua o banco de dados do seu Pro Wrestling Sim
3. Todas as outras tabelas (gimmicks, títulos, promoções, workers, etc.) permanecem intactas
4. Inicie o jogo e aproveite os match gimmicks do tema escolhido

> **Dica:** Para ter todos os 1.334 match gimmicks disponíveis, use o banco principal `ModzVerse.db`.