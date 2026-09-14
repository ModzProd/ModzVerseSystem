-- ============================================================
-- ModzVerse — Storyline Workers
-- 
-- PWS source (Storylines.js cleanupStorylines) auto-deactivates
-- any active storyline whose storylineworkers includes a
-- contractID not in vw_contracts_active (i.e. finalised=1,
-- expired=0, contractStarted=1, worker status Active, not
-- suspended/injured/in rehab).
-- 
-- This file attaches 2 participants to each of the 21 storylines
-- defined in ModzVerse_Storylines_Content.sql, using only
-- contractIDs that survive PWS's cleanup check.
-- ============================================================

-- ============================================================
-- STORYLINEWORKERS (42 rows — 2 per storyline)
-- ============================================================

-- Storyline 1: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (1, 1);  -- Ryūga the Apex
INSERT INTO storylineworkers (storylineID, contractID) VALUES (1, 2);  -- Kuroda the Iron Fist

-- Storyline 2: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (2, 2);  -- Kuroda the Iron Fist
INSERT INTO storylineworkers (storylineID, contractID) VALUES (2, 13);  -- Zen Takahashi

-- Storyline 3: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (3, 16);  -- Yuya Ueno
INSERT INTO storylineworkers (storylineID, contractID) VALUES (3, 2);  -- Kuroda the Iron Fist

-- Storyline 4: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (4, 22);  -- Savage Fujita
INSERT INTO storylineworkers (storylineID, contractID) VALUES (4, 19);  -- Storm Nishimura

-- Storyline 5: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (5, 1);  -- Ryūga the Apex
INSERT INTO storylineworkers (storylineID, contractID) VALUES (5, 2);  -- Kuroda the Iron Fist

-- Storyline 6: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (6, 31);  -- Max Thunderford
INSERT INTO storylineworkers (storylineID, contractID) VALUES (6, 32);  -- Vincent Viceroy

-- Storyline 7: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (7, 32);  -- Vincent Viceroy
INSERT INTO storylineworkers (storylineID, contractID) VALUES (7, 33);  -- Bronco Billiston

-- Storyline 8: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (8, 34);  -- Roxy Ravencroft
INSERT INTO storylineworkers (storylineID, contractID) VALUES (8, 35);  -- Diamond Diane

-- Storyline 9: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (9, 36);  -- The Showman Shelton
INSERT INTO storylineworkers (storylineID, contractID) VALUES (9, 43);  -- Flash Freddy

-- Storyline 10: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (10, 56);  -- La Reina Escarlata
INSERT INTO storylineworkers (storylineID, contractID) VALUES (10, 57);  -- Mariposa Dorada

-- Storyline 11: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (11, 60);  -- La Sombra Cruel
INSERT INTO storylineworkers (storylineID, contractID) VALUES (11, 59);  -- Estrella Solitaria

-- Storyline 12: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (12, 58);  -- Valkiria Negra
INSERT INTO storylineworkers (storylineID, contractID) VALUES (12, 57);  -- Mariposa Dorada

-- Storyline 13: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (13, 76);  -- El Toro Bravo
INSERT INTO storylineworkers (storylineID, contractID) VALUES (13, 77);  -- El Diablo Rojo

-- Storyline 14: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (14, 79);  -- La Pantera Negra
INSERT INTO storylineworkers (storylineID, contractID) VALUES (14, 78);  -- Caballero Blanco

-- Storyline 15: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (15, 77);  -- El Diablo Rojo
INSERT INTO storylineworkers (storylineID, contractID) VALUES (15, 76);  -- El Toro Bravo

-- Storyline 16: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (16, 101);  -- Haruka Honjou
INSERT INTO storylineworkers (storylineID, contractID) VALUES (16, 102);  -- Miyako Tsujimoto

-- Storyline 17: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (17, 103);  -- Rina Kurosawa
INSERT INTO storylineworkers (storylineID, contractID) VALUES (17, 104);  -- Aoi Misaki

-- Storyline 18: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (18, 103);  -- Rina Kurosawa
INSERT INTO storylineworkers (storylineID, contractID) VALUES (18, 101);  -- Haruka Honjou

-- Storyline 19: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (19, 121);  -- Freya Asagiri
INSERT INTO storylineworkers (storylineID, contractID) VALUES (19, 122);  -- Skull Valkyrie

-- Storyline 20: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (20, 123);  -- Hikari Tonegawa
INSERT INTO storylineworkers (storylineID, contractID) VALUES (20, 124);  -- Mjolnir Mitsuki

-- Storyline 21: 2 participants
INSERT INTO storylineworkers (storylineID, contractID) VALUES (21, 121);  -- Freya Asagiri
INSERT INTO storylineworkers (storylineID, contractID) VALUES (21, 123);  -- Hikari Tonegawa

-- ============================================================
-- SUMMARY
-- ============================================================
-- Inserted 42 storylineworkers rows across 21 storylines