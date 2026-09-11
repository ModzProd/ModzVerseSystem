-- ============================================================
-- ModzVerse — Tag Teams + Stables + Announce Teams (5 promotions)
-- Fully fictional characters — no real-world wrestler names
-- Generated for v0.9.8
-- ============================================================

-- ============================================================
-- TAG TEAMS (23 teams across 5 promotions)
-- ============================================================

-- Tag Team #201: The Windy City Wrecking Crew (promotionID=1)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (201, 2003, 50.0, 50.0, 2001, 1);

-- Tag Team #202: The Boardroom (promotionID=1)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (202, 2010, 50.0, 50.0, 2002, 1);

-- Tag Team #203: Diamond & Ravencroft (promotionID=1)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (203, 2004, 2005, 50.0, 'Diamond & Ravencroft', 1);

-- Tag Team #204: The Entertainers (promotionID=1)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (204, 2013, 50.0, 50.0, 2006, 1);

-- Tag Team #205: Hellfire & Rampage (promotionID=1)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (205, 2012, 50.0, 50.0, 2007, 1);

-- Tag Team #206: Las Mariposas Estelares (promotionID=2)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (206, 3004, 50.0, 50.0, 3002, 1);

-- Tag Team #207: El Trono Escarlata (promotionID=2)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (207, 3005, 50.0, 50.0, 3001, 1);

-- Tag Team #208: Las Bestias (promotionID=2)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (208, 3007, 50.0, 50.0, 3003, 1);

-- Tag Team #209: Rayo y Águila (promotionID=2)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (209, 3010, 50.0, 50.0, 3006, 1);

-- Tag Team #210: Los Honorables (promotionID=3)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (210, 4003, 50.0, 50.0, 4001, 1);

-- Tag Team #211: Los Malditos (promotionID=3)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (211, 4004, 50.0, 50.0, 4002, 1);

-- Tag Team #212: Los Rayos (promotionID=3)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (212, 4012, 50.0, 50.0, 4005, 1);

-- Tag Team #213: Los Verdugos (promotionID=3)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (213, 4009, 50.0, 50.0, 4006, 1);

-- Tag Team #214: Las Centinelas (promotionID=3)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (214, 4018, 50.0, 50.0, 4017, 1);

-- Tag Team #215: Ace & Apprentice (promotionID=5)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (215, 5004, 50.0, 50.0, 5001, 1);

-- Tag Team #216: Queen's Guard (promotionID=5)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (216, 'Queen's Guard', 5002, 5007, 5, 1, 'The queen''s enforcers. Miyako Tsujimoto and Reika Shimizu — the regal heel and her cocky lieutenant. A veteran heel duo.');

-- Tag Team #217: The Destroyers (promotionID=5)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (217, 5012, 50.0, 50.0, 5003, 1);

-- Tag Team #218: Sakura Storm (promotionID=5)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (218, 5010, 50.0, 50.0, 5006, 1);

-- Tag Team #219: Sunshine Duo (promotionID=5)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (219, 5011, 50.0, 50.0, 5008, 1);

-- Tag Team #220: The Shieldmaidens (promotionID=6)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (220, 6003, 50.0, 50.0, 6001, 1);

-- Tag Team #221: Hammer & Skull (promotionID=6)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (221, 6004, 50.0, 50.0, 6002, 1);

-- Tag Team #222: Aurora & Kára (promotionID=6)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (222, 6012, 50.0, 50.0, 6005, 1);

-- Tag Team #223: Ragnarök (promotionID=6)
INSERT INTO tagteams (tagID, worker1, worker2, tagExperience, defaultName, tagStatus) VALUES (223, 6009, 50.0, 50.0, 6006, 1);

-- ============================================================
-- STABLES (10 stables across 5 promotions)
-- ============================================================

-- Stable #301: The Viceroy Syndicate (promotionID=1)
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (301, 'The Viceroy Syndicate', 50, 50, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 301, contractID, 'No' FROM contracts WHERE workerID=2010 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 301, contractID, 'No' FROM contracts WHERE workerID=2011 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 301, contractID, 'No' FROM contracts WHERE workerID=2012 LIMIT 1;

-- Stable #302: The Chicago Heart (promotionID=1)
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (302, 'The Chicago Heart', 50, 50, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 302, contractID, 'No' FROM contracts WHERE workerID=2003 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 302, contractID, 'No' FROM contracts WHERE workerID=2005 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 302, contractID, 'No' FROM contracts WHERE workerID=2013 LIMIT 1;

-- Stable #303: El Consejo Escarlata (promotionID=2)
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (303, 'El Consejo Escarlata', 50, 50, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 303, contractID, 'No' FROM contracts WHERE workerID=3005 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 303, contractID, 'No' FROM contracts WHERE workerID=3003 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 303, contractID, 'No' FROM contracts WHERE workerID=3007 LIMIT 1;

-- Stable #304: Las Técnicas Puras (promotionID=2)
((304, 'Las Técnicas Puras', 50, 2, '')
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 304, contractID, 'No' FROM contracts WHERE workerID=3004 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 304, contractID, 'No' FROM contracts WHERE workerID=3006 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 304, contractID, 'No' FROM contracts WHERE workerID=3010 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 304, contractID, 'No' FROM contracts WHERE workerID=3008 LIMIT 1;

-- Stable #305: La Oscuridad (promotionID=3)
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (305, 'La Oscuridad', 50, 50, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 305, contractID, 'No' FROM contracts WHERE workerID=4004 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 305, contractID, 'No' FROM contracts WHERE workerID=4006 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 305, contractID, 'No' FROM contracts WHERE workerID=4010 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 305, contractID, 'No' FROM contracts WHERE workerID=4009 LIMIT 1;

-- Stable #306: La Tradición (promotionID=3)
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (306, 'La Tradición', 50, 50, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 306, contractID, 'No' FROM contracts WHERE workerID=4003 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 306, contractID, 'No' FROM contracts WHERE workerID=4005 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 306, contractID, 'No' FROM contracts WHERE workerID=4008 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 306, contractID, 'No' FROM contracts WHERE workerID=4012 LIMIT 1;

-- Stable #307: The Royal Court (promotionID=5)
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (307, 'The Royal Court', 50, 50, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 307, contractID, 'No' FROM contracts WHERE workerID=5003 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 307, contractID, 'No' FROM contracts WHERE workerID=5007 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 307, contractID, 'No' FROM contracts WHERE workerID=5012 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 307, contractID, 'No' FROM contracts WHERE workerID=5009 LIMIT 1;

-- Stable #308: The Future (promotionID=5)
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (308, 'The Future', 50, 50, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 308, contractID, 'No' FROM contracts WHERE workerID=5004 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 308, contractID, 'No' FROM contracts WHERE workerID=5006 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 308, contractID, 'No' FROM contracts WHERE workerID=5008 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 308, contractID, 'No' FROM contracts WHERE workerID=5010 LIMIT 1;

-- Stable #309: The Wild Hunt (promotionID=6)
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (309, 'The Wild Hunt', 50, 50, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 309, contractID, 'No' FROM contracts WHERE workerID=6004 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 309, contractID, 'No' FROM contracts WHERE workerID=6006 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 309, contractID, 'No' FROM contracts WHERE workerID=6009 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 309, contractID, 'No' FROM contracts WHERE workerID=6010 LIMIT 1;

-- Stable #310: Valhalla's Chosen (promotionID=6)
INSERT INTO stables (stableID, stableName, stableHeat, promotionID, stableImage) VALUES (310, 'Valhalla's Chosen', 6, 6001, 'A face stable led by Freya Asagiri. Valhalla''s Chosen is a faction of warriors who fight with honor and embody the spirit of the Norse Valkyries. Members include Hikari Tonegawa (the technician), 50, 50, '');
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 310, contractID, 'No' FROM contracts WHERE workerID=6003 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 310, contractID, 'No' FROM contracts WHERE workerID=6005 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 310, contractID, 'No' FROM contracts WHERE workerID=6007 LIMIT 1;
INSERT INTO stableworkers (stableID, contractID, isLeader) SELECT 310, contractID, 'No' FROM contracts WHERE workerID=6008 LIMIT 1;

-- ============================================================
-- ANNOUNCE TEAMS (20 announcers across 5 promotions)
-- ============================================================

-- Announcer #2041: Big Bill Bannister (The Boom)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (2041, 'Big Bill Bannister', 'BigBillBannister.png', 'Active', '1973-01-01', 'The legendary play-by-play voice of Chicago Show. Known for his booming baritone and catchphrase ''AND THE CROWD GOES WILD!''. Has called every Chicago Show since 1998.', 'None', 0, 75, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 75, 0, 'Male', '1998-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #2042: Crimson Cory Chapman (The Analyst)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (2042, 'Crimson Cory Chapman', 'CrimsonCoryChapman.png', 'Active', '1987-01-01', 'A former indie wrestler turned color commentator. Known for his sharp analysis and willingness to call out bad booking decisions on air.', 'None', 0, 60, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 60, 0, 'Male', '2012-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #2043: Daisy Delacroix (The Spark)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (2043, 'Daisy Delacroix', 'DaisyDelacroix.png', 'Active', '1995-01-01', 'An energetic sideline reporter who''s not afraid to get in a heel''s face. Known for her fiery post-match interviews.', 'None', 0, 50, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 50, 0, 'Male', '2020-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #2044: Old School Oscar Oswald (The Legend)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (2044, 'Old School Oscar Oswald', 'OldSchoolOscarOswald.png', 'Active', '1965-01-01', 'A veteran announcer who''s been with Chicago Show since 1985. Provides historical context and remembers every match from the promotion''s 75-year history.', 'None', 0, 65, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 65, 0, 'Male', '1990-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #3041: Carlos 'La Voz' Contreras (La Voz)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (3041, 'Carlos 'La Voz' Contreras', 'Carlos'LaVoz'Contreras.png', 'Active', '1980-01-01', 'The voice of Lucha Bellas. A passionate play-by-play announcer who treats every match like a sacred event. Known for his emotional calls during mask matches.', 'None', 0, 70, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 70, 0, 'Male', '2005-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #3042: Lupita 'La Analyst' Luna (La Analyst)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (3042, 'Lupita 'La Analyst' Luna', 'Lupita'LaAnalyst'Luna.png', 'Active', '1989-01-01', 'A former luchadora turned color commentator. Known for her technical analysis of aerial moves and mask traditions.', 'None', 0, 55, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 55, 0, 'Male', '2014-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #3043: Patricia 'Pasión' Peña (Pasión)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (3043, 'Patricia 'Pasión' Peña', 'Patricia'Pasión'Peña.png', 'Active', '1997-01-01', 'A passionate sideline reporter who brings energy to every interview. Known for her dramatic reactions to heel betrayals.', 'None', 0, 48, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 48, 0, 'Male', '2022-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #3044: Don Esteban 'El Sabio' Serrano (El Sabio)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (3044, 'Don Esteban 'El Sabio' Serrano', 'DonEsteban'ElSabio'Serrano.png', 'Active', '1967-01-01', 'The wise one. A veteran announcer who''s been with Lucha Bellas since its founding in 1980. Provides cultural context and lucha libre history.', 'None', 0, 60, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 60, 0, 'Male', '1992-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #4041: Ricardo 'El Relator' Ramírez (El Relator)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (4041, 'Ricardo 'El Relator' Ramírez', 'Ricardo'ElRelator'Ramírez.png', 'Active', '1977-01-01', 'The narrator of Lucha MEX. A dramatic play-by-play announcer who treats every match like a boxing prizefight. Known for his rapid-fire delivery.', 'None', 0, 68, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 68, 0, 'Male', '2002-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #4042: Jorge 'El Comentarista' Jiménez (El Comentarista)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (4042, 'Jorge 'El Comentarista' Jiménez', 'Jorge'ElComentarista'Jiménez.png', 'Active', '1985-01-01', 'A no-nonsense color commentator who tells it like it is. Known for criticizing lazy wrestling and praising hard work.', 'None', 0, 58, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 58, 0, 'Male', '2010-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #4043: Carmen 'La Reportera' Cruz (La Reportera)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (4043, 'Carmen 'La Reportera' Cruz', 'Carmen'LaReportera'Cruz.png', 'Active', '1993-01-01', 'A fearless sideline reporter who''s been attacked by heels on three separate occasions. Always gets the story.', 'None', 0, 52, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 52, 0, 'Male', '2018-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #4044: Don Francisco 'El Maestro' Fuentes (El Maestro)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (4044, 'Don Francisco 'El Maestro' Fuentes', 'DonFrancisco'ElMaestro'Fuentes.png', 'Active', '1963-01-01', 'The master. A legendary announcer who''s been calling Lucha MEX matches since 1975. His voice is the sound of Mexican wrestling tradition.', 'None', 0, 62, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 62, 0, 'Male', '1988-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #5041: Yuki 'The Mic' Yamada (The Mic)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (5041, 'Yuki 'The Mic' Yamada', 'Yuki'TheMic'Yamada.png', 'Active', '1985-01-01', 'The voice of Osaka Joshi. A passionate play-by-play announcer who became famous for his emotional call of Haruka Honjou''s first title match.', 'None', 0, 72, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 72, 0, 'Male', '2010-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #5042: Sachiko 'Sensei' Sato (Sensei)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (5042, 'Sachiko 'Sensei' Sato', 'Sachiko'Sensei'Sato.png', 'Active', '1980-01-01', 'A former wrestler turned color commentator. Known for her deep technical analysis and mentoring tone. The ''sensei'' of the announce desk.', 'None', 0, 58, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 58, 0, 'Male', '2005-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #5043: Akemi 'Action' Abe (Action)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (5043, 'Akemi 'Action' Abe', 'Akemi'Action'Abe.png', 'Active', '1996-01-01', 'An energetic sideline reporter known for her quick reactions and ability to get candid interviews from even the toughest heels.', 'None', 0, 50, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 50, 0, 'Male', '2021-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #5044: Tomoko 'Memory' Tanaka (Memory)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (5044, 'Tomoko 'Memory' Tanaka', 'Tomoko'Memory'Tanaka.png', 'Active', '1970-01-01', 'The walking encyclopedia of Osaka Joshi. Has been with the promotion since its 2003 founding and remembers every match.', 'None', 0, 60, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 60, 0, 'Male', '1995-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #6041: Erika 'The Echo' Enokida (The Echo)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (6041, 'Erika 'The Echo' Enokida', 'Erika'TheEcho'Enokida.png', 'Active', '1983-01-01', 'The voice of Valkyrie Project. A dramatic play-by-play announcer who incorporates Norse mythology into her calls. Known for ''BY THE GODS, WHAT A MOVE!''', 'None', 0, 65, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 65, 0, 'Male', '2008-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #6042: Masumi 'The Maven' Morimoto (The Maven)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (6042, 'Masumi 'The Maven' Morimoto', 'Masumi'TheMaven'Morimoto.png', 'Active', '1988-01-01', 'A technical color commentator who focuses on the sport-like aspects of Valkyrie Project''s Kings Road style. Respects the realSportsFeel.', 'None', 0, 55, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 55, 0, 'Male', '2013-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #6043: Natsuko 'Norse' Nagai (Norse)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (6043, 'Natsuko 'Norse' Nagai', 'Natsuko'Norse'Nagai.png', 'Active', '1994-01-01', 'A sideline reporter with a degree in Norse mythology. Provides cultural context for the promotion''s mythological themes during interviews.', 'None', 0, 48, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 48, 0, 'Male', '2019-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- Announcer #6044: Hiroshi 'The Sage' Honda (The Sage)
INSERT INTO workers (workerID, name, picture, status, birthDate, description, style, wrestlingSkill, entertainment, sexAppeal, starPower, intimidation, neckCondition, backCondition, headCondition, armsCondition, bodyCondition, legsCondition, stamina, northAmericaPop, southAmericaPop, asiaPop, oceaniaPop, africaPop, europePop, basedIn, birthPlace, psychology, refereeing, commentary, agent, gender, debutDate, height, type, build, drive, safety, injuryType, canDoAngles, weight, race, isMasked, fatigue, isInRehab, isSuspended, suspensionReturnDate, politics, birthPlaceCountry, birthPlaceRegion, basedInRegion, basedInCountry, isShortlisted, potential, defaultEntrance, moveset, isCelebrity, skillLearning, potentialLevel) VALUES (6044, 'Hiroshi 'The Sage' Honda', 'Hiroshi'TheSage'Honda.png', 'Active', '1965-01-01', 'A veteran announcer who''s been with Valkyrie Project since 1985. Has seen every AEGIS LEAGUE champion crowned. The living history of the promotion.', 'None', 0, 58, 30, 50, 40, 100, 100, 100, 100, 100, 100, 100, 0, 0, 0, 0, 0, 0, 'None', 'None', 0, 0, 58, 0, 'Male', '1990-01-01', '175 cm', 'Personality', 'Average', 'Calculating', 100, '', 1, '70 kg', 'Caucasian', 0, 0, 0, 0, '', 'None', 'United States', 'Illinois', 'Illinois', 'United States', 0, 0, '', '', 1, 50, 'Low');

-- ============================================================
-- UPDATE PROMOTION ANNOUNCER SLOTS
-- ============================================================

-- Chicago Show (promotionID=1)
UPDATE promotions SET announcer1=2041, announcer2=2042, announcer3=2043, announcer4=2044 WHERE promotionID=1;

-- Lucha Bellas (promotionID=2)
UPDATE promotions SET announcer1=3041, announcer2=3042, announcer3=3043, announcer4=3044 WHERE promotionID=2;

-- Lucha MEX (promotionID=3)
UPDATE promotions SET announcer1=4041, announcer2=4042, announcer3=4043, announcer4=4044 WHERE promotionID=3;

-- Osaka Joshi (promotionID=5)
UPDATE promotions SET announcer1=5041, announcer2=5042, announcer3=5043, announcer4=5044 WHERE promotionID=5;

-- Valkyrie Project (promotionID=6)
UPDATE promotions SET announcer1=6041, announcer2=6042, announcer3=6043, announcer4=6044 WHERE promotionID=6;

-- ============================================================
-- SUMMARY
-- ============================================================

-- Tag Teams:     23 teams across 5 promotions
--   Chicago Show:      5 teams (IDs 201-205)
--   Lucha Bellas:      4 teams (IDs 206-209)
--   Lucha MEX:         5 teams (IDs 210-214)
--   Osaka Joshi:       5 teams (IDs 215-219)
--   Valkyrie Project:  4 teams (IDs 220-223)
--
-- Stables:       10 stables across 5 promotions
--   Chicago Show:      2 stables (IDs 301-302, 6 members)
--   Lucha Bellas:      2 stables (IDs 303-304, 7 members)
--   Lucha MEX:         2 stables (IDs 305-306, 8 members)
--   Osaka Joshi:       2 stables (IDs 307-308, 8 members)
--   Valkyrie Project:  2 stables (IDs 309-310, 8 members)
--
-- Announcers:    20 announcers across 5 promotions
--   Chicago Show:      4 announcers (IDs 2041-2044)
--   Lucha Bellas:      4 announcers (IDs 3041-3044)
--   Lucha MEX:         4 announcers (IDs 4041-4044)
--   Osaka Joshi:       4 announcers (IDs 5041-5044)
--   Valkyrie Project:  4 announcers (IDs 6041-6044)
--
-- Total: 23 tag teams + 10 stables (37 members) + 20 announcers
