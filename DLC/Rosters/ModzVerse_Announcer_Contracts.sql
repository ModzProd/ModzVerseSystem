-- ============================================================
-- ModzVerse — Announcer Contracts
-- 
-- PWS requires promotions.announcerN to reference a finalised,
-- non-expired contractID belonging to the same promotion.
-- (See Announcers.cleanAnnouncers() in PWS source.)
-- 
-- This file:
--   1. Inserts 24 announcer contracts (push='Announcer', finalised=1)
--   2. UPDATEs promotions.announcerN to use those contractIDs
--      (replacing the wrong workerID references set by the older
--       Tags_Stables_Announcers.sql file)
-- ============================================================

-- ============================================================
-- ANNOUNCER CONTRACTS (24 contracts, one per announcer worker)
-- ============================================================

-- Chicago Show (promotionID=1)
INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1001, 2041, 'Big Bill Bannister', 1, NULL, 'Written', 'Announcer',
  '2026-12-31', 'BigBillBannister.png', 1, 9500, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1002, 2042, 'Crimson Cory Chapman', 1, NULL, 'Written', 'Announcer',
  '2026-12-31', 'CrimsonCoryChapman.png', 1, 8000, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1003, 2043, 'Daisy Delacroix', 1, NULL, 'Written', 'Announcer',
  '2026-12-31', 'DaisyDelacroix.png', 1, 7000, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1004, 2044, 'Old School Oscar Oswald', 1, NULL, 'Written', 'Announcer',
  '2026-12-31', 'OldSchoolOscarOswald.png', 1, 8500, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

-- Lucha Bellas (promotionID=2)
INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1005, 3041, 'Carlos ''La Voz'' Contreras', 2, NULL, 'Written', 'Announcer',
  '2026-12-31', 'CarlosLaVozContreras.png', 1, 9000, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1006, 3042, 'Lupita ''La Analyst'' Luna', 2, NULL, 'Written', 'Announcer',
  '2026-12-31', 'LupitaLaAnalystLuna.png', 1, 7500, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1007, 3043, 'Patricia ''Pasión'' Peña', 2, NULL, 'Written', 'Announcer',
  '2026-12-31', 'PatriciaPasionPena.png', 1, 6800, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1008, 3044, 'Don Esteban ''El Sabio'' Serrano', 2, NULL, 'Written', 'Announcer',
  '2026-12-31', 'DonEstebanElSabioSerrano.png', 1, 8000, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

-- Lucha MEX (promotionID=3)
INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1009, 4041, 'Ricardo ''El Relator'' Ramírez', 3, NULL, 'Written', 'Announcer',
  '2026-12-31', 'RicardoElRelatorRamirez.png', 1, 8800, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1010, 4042, 'Jorge ''El Comentarista'' Jiménez', 3, NULL, 'Written', 'Announcer',
  '2026-12-31', 'JorgeElComentaristaJimenez.png', 1, 7800, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1011, 4043, 'Carmen ''La Reportera'' Cruz', 3, NULL, 'Written', 'Announcer',
  '2026-12-31', 'CarmenLaReporteraCruz.png', 1, 7200, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1012, 4044, 'Don Francisco ''El Maestro'' Fuentes', 3, NULL, 'Written', 'Announcer',
  '2026-12-31', 'DonFranciscoElMaestroFuentes.png', 1, 8200, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

-- RAIBARAZU (promotionID=4)
INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1013, 1041, 'Kenjiro Katsuragi', 4, NULL, 'Written', 'Announcer',
  '2026-12-31', 'KenjiroKatsuragi.png', 1, 10500, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1014, 1042, 'Hiroaki Matsuda', 4, NULL, 'Written', 'Announcer',
  '2026-12-31', 'HiroakiMatsuda.png', 1, 8800, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1015, 1043, 'Ryoko Shirakawa', 4, NULL, 'Written', 'Announcer',
  '2026-12-31', 'RyokoShirakawa.png', 1, 9800, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1016, 1044, 'Goro Tanba', 4, NULL, 'Written', 'Announcer',
  '2026-12-31', 'GoroTanba.png', 1, 9500, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

-- Osaka Joshi (promotionID=5)
INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1017, 5041, 'Yuki ''The Mic'' Yamada', 5, NULL, 'Written', 'Announcer',
  '2026-12-31', 'YukiTheMicYamada.png', 1, 9200, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1018, 5042, 'Sachiko ''Sensei'' Sato', 5, NULL, 'Written', 'Announcer',
  '2026-12-31', 'SachikoSenseiSato.png', 1, 7800, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1019, 5043, 'Akemi ''Action'' Abe', 5, NULL, 'Written', 'Announcer',
  '2026-12-31', 'AkemiActionAbe.png', 1, 7000, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1020, 5044, 'Tomoko ''Memory'' Tanaka', 5, NULL, 'Written', 'Announcer',
  '2026-12-31', 'TomokoMemoryTanaka.png', 1, 8000, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

-- Valkyrie Project (promotionID=6)
INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1021, 6041, 'Erika ''The Echo'' Enokida', 6, NULL, 'Written', 'Announcer',
  '2026-12-31', 'ErikaTheEchoEnokida.png', 1, 8500, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1022, 6042, 'Masumi ''The Maven'' Morimoto', 6, NULL, 'Written', 'Announcer',
  '2026-12-31', 'MasumiTheMavenMorimoto.png', 1, 7500, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1023, 6043, 'Natsuko ''Norse'' Nagai', 6, NULL, 'Written', 'Announcer',
  '2026-12-31', 'NatsukoNorseNagai.png', 1, 6800, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

INSERT INTO contracts (
  contractID, workerID, contractName, promotionID, gimmick, contractType, role,
  expiryDate, contractPicture, exclusive, wagePerMonth, wagePerAppearance,
  push, finalised, suspended, brand, hasMask, contractStarted, contractStartDate,
  expired, morale, ironCladContract, merchPercentPerAppearance,
  maxAppearancesPerYear, isTourContract, onTimeOff, timeOffEndDate
) VALUES (
  1024, 6044, 'Hiroshi ''The Sage'' Honda', 6, NULL, 'Written', 'Announcer',
  '2026-12-31', 'HiroshiTheSageHonda.png', 1, 7800, 0,
  'Announcer', 1, 0, NULL, 0, 1, '2025-01-01',
  0, 75, 0, 0,
  12, 0, 0, ''
);

-- ============================================================
-- UPDATE PROMOTION ANNOUNCER SLOTS (use contractIDs, not workerIDs)
-- ============================================================

-- Chicago Show (promotionID=1)
UPDATE promotions SET announcer1=1001, announcer2=1002, announcer3=1003, announcer4=1004 WHERE promotionID=1;

-- Lucha Bellas (promotionID=2)
UPDATE promotions SET announcer1=1005, announcer2=1006, announcer3=1007, announcer4=1008 WHERE promotionID=2;

-- Lucha MEX (promotionID=3)
UPDATE promotions SET announcer1=1009, announcer2=1010, announcer3=1011, announcer4=1012 WHERE promotionID=3;

-- RAIBARAZU (promotionID=4)
UPDATE promotions SET announcer1=1013, announcer2=1014, announcer3=1015, announcer4=1016 WHERE promotionID=4;

-- Osaka Joshi (promotionID=5)
UPDATE promotions SET announcer1=1017, announcer2=1018, announcer3=1019, announcer4=1020 WHERE promotionID=5;

-- Valkyrie Project (promotionID=6)
UPDATE promotions SET announcer1=1021, announcer2=1022, announcer3=1023, announcer4=1024 WHERE promotionID=6;

-- ============================================================
-- SUMMARY
-- ============================================================
--
-- Inserted 24 announcer contracts (IDs 1001–1024)
-- Updated 6 promotion announcer slots to reference contractIDs
--
-- Contract → Worker → Promotion mapping:
--   Chicago Show
--     contract 1001 = worker 2041 = Big Bill Bannister
--     contract 1002 = worker 2042 = Crimson Cory Chapman
--     contract 1003 = worker 2043 = Daisy Delacroix
--     contract 1004 = worker 2044 = Old School Oscar Oswald
--   Lucha Bellas
--     contract 1005 = worker 3041 = Carlos 'La Voz' Contreras
--     contract 1006 = worker 3042 = Lupita 'La Analyst' Luna
--     contract 1007 = worker 3043 = Patricia 'Pasión' Peña
--     contract 1008 = worker 3044 = Don Esteban 'El Sabio' Serrano
--   Lucha MEX
--     contract 1009 = worker 4041 = Ricardo 'El Relator' Ramírez
--     contract 1010 = worker 4042 = Jorge 'El Comentarista' Jiménez
--     contract 1011 = worker 4043 = Carmen 'La Reportera' Cruz
--     contract 1012 = worker 4044 = Don Francisco 'El Maestro' Fuentes
--   RAIBARAZU
--     contract 1013 = worker 1041 = Kenjiro Katsuragi
--     contract 1014 = worker 1042 = Hiroaki Matsuda
--     contract 1015 = worker 1043 = Ryoko Shirakawa
--     contract 1016 = worker 1044 = Goro Tanba
--   Osaka Joshi
--     contract 1017 = worker 5041 = Yuki 'The Mic' Yamada
--     contract 1018 = worker 5042 = Sachiko 'Sensei' Sato
--     contract 1019 = worker 5043 = Akemi 'Action' Abe
--     contract 1020 = worker 5044 = Tomoko 'Memory' Tanaka
--   Valkyrie Project
--     contract 1021 = worker 6041 = Erika 'The Echo' Enokida
--     contract 1022 = worker 6042 = Masumi 'The Maven' Morimoto
--     contract 1023 = worker 6043 = Natsuko 'Norse' Nagai
--     contract 1024 = worker 6044 = Hiroshi 'The Sage' Honda
