-- ============================================================
-- ModzVerse — Expansion Tag Teams + Stables (for 60 expansion workers)
-- Fully fictional content
-- Generated for v1.1.0
-- ============================================================

-- TAG TEAMS (18 teams across 6 promotions)
-- Schema: tagID, worker1, worker2, tagExperience, defaultName, tagStatus

INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (301, 1031, 1035, 50.0, 'Wind Dragon Duo', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (302, 1034, 1036, 50.0, 'Fang Glacier', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (303, 1037, 1038, 50.0, 'Blade Thunder', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (304, 2026, 2028, 50.0, 'Tornado Mega', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (305, 2027, 2029, 50.0, 'Corporate Crushers', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (306, 2032, 2031, 50.0, 'Sydney Syndicate', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (307, 3021, 3023, 50.0, 'Estrellas del Alba', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (308, 3025, 3022, 50.0, 'Sombra Azteca', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (309, 3028, 3027, 50.0, 'Fuego Bestia', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (310, 4026, 4032, 50.0, 'Hijos del Relampago', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (311, 4027, 4028, 50.0, 'Verdugos Jr.', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (312, 4029, 4035, 50.0, 'Centinela Eterno', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (313, 5021, 5027, 50.0, 'Sky Gale', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (314, 5022, 5023, 50.0, 'Black Thunder', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (315, 5026, 5029, 50.0, 'Autumn Sunflower', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (316, 6016, 6017, 50.0, 'Odin''s Wolves', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (317, 6018, 6021, 50.0, 'Protector Keeper', 1);
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (318, 6025, 6022, 50.0, 'Messenger Siren', 1);

-- STABLES (12 stables across 6 promotions)
-- Schema: stableID, stableName, stableHeat, promotionID, stableImage

INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (401, 'The Glacier Guard', 50, 4, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 401, contractID, 'No' FROM contracts WHERE workerID=1034 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 401, contractID, 'No' FROM contracts WHERE workerID=1038 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 401, contractID, 'No' FROM contracts WHERE workerID=1040 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 401, contractID, 'Yes' FROM contracts WHERE workerID=1036 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (402, 'Dragonheart Academy', 50, 4, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 402, contractID, 'No' FROM contracts WHERE workerID=1031 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 402, contractID, 'No' FROM contracts WHERE workerID=1033 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 402, contractID, 'No' FROM contracts WHERE workerID=1037 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 402, contractID, 'Yes' FROM contracts WHERE workerID=1035 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (403, 'Sydney''s Fortune', 50, 1, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 403, contractID, 'No' FROM contracts WHERE workerID=2027 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 403, contractID, 'No' FROM contracts WHERE workerID=2031 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 403, contractID, 'No' FROM contracts WHERE workerID=2033 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 403, contractID, 'Yes' FROM contracts WHERE workerID=2032 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (404, 'Working Class Heroes', 50, 1, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 404, contractID, 'No' FROM contracts WHERE workerID=2028 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 404, contractID, 'No' FROM contracts WHERE workerID=2030 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 404, contractID, 'No' FROM contracts WHERE workerID=2034 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 404, contractID, 'Yes' FROM contracts WHERE workerID=2026 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (405, 'Las Estrellas del Alba', 50, 2, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 405, contractID, 'No' FROM contracts WHERE workerID=3023 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 405, contractID, 'No' FROM contracts WHERE workerID=3026 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 405, contractID, 'No' FROM contracts WHERE workerID=3028 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 405, contractID, 'Yes' FROM contracts WHERE workerID=3021 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (406, 'El Culto Azteca', 50, 2, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 406, contractID, 'No' FROM contracts WHERE workerID=3022 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 406, contractID, 'No' FROM contracts WHERE workerID=3027 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 406, contractID, 'No' FROM contracts WHERE workerID=3030 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 406, contractID, 'Yes' FROM contracts WHERE workerID=3025 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (407, 'Los Relampagos', 50, 3, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 407, contractID, 'No' FROM contracts WHERE workerID=4032 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 407, contractID, 'No' FROM contracts WHERE workerID=4029 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 407, contractID, 'No' FROM contracts WHERE workerID=4035 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 407, contractID, 'Yes' FROM contracts WHERE workerID=4026 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (408, 'Los Cuchillos Oscuros', 50, 3, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 408, contractID, 'No' FROM contracts WHERE workerID=4027 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 408, contractID, 'No' FROM contracts WHERE workerID=4030 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 408, contractID, 'No' FROM contracts WHERE workerID=4033 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 408, contractID, 'Yes' FROM contracts WHERE workerID=4028 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (409, 'The Storm Guard', 50, 5, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 409, contractID, 'No' FROM contracts WHERE workerID=5021 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 409, contractID, 'No' FROM contracts WHERE workerID=5024 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 409, contractID, 'No' FROM contracts WHERE workerID=5026 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 409, contractID, 'Yes' FROM contracts WHERE workerID=5027 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (410, 'The Divine Court', 50, 5, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 410, contractID, 'No' FROM contracts WHERE workerID=5022 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 410, contractID, 'No' FROM contracts WHERE workerID=5025 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 410, contractID, 'No' FROM contracts WHERE workerID=5030 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 410, contractID, 'Yes' FROM contracts WHERE workerID=5023 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (411, 'Odin''s Pack', 50, 6, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 411, contractID, 'No' FROM contracts WHERE workerID=6017 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 411, contractID, 'No' FROM contracts WHERE workerID=6018 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 411, contractID, 'No' FROM contracts WHERE workerID=6021 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 411, contractID, 'Yes' FROM contracts WHERE workerID=6016 LIMIT 1;
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (412, 'The Trickster Court', 50, 6, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 412, contractID, 'No' FROM contracts WHERE workerID=6023 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 412, contractID, 'No' FROM contracts WHERE workerID=6024 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 412, contractID, 'No' FROM contracts WHERE workerID=6019 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 412, contractID, 'Yes' FROM contracts WHERE workerID=6020 LIMIT 1;

-- SUMMARY
-- Tag Teams: 18 (IDs 301-318)
-- Stables: 12 (IDs 401-412)
-- Stable members: 36 members + 12 leaders
-- Combined with existing: 49 tag teams + 26 stables
