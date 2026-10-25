-- ============================================================
-- ModzVerse — BETA Gap Filler: Events + Training Schools (v1.4.0)
-- ============================================================
-- Closes 2 remaining BETA gaps:
--   1. Lucha MEX (promo 3) — no signature events
--   2. Osaka Joshi (promo 5) — no signature events
--   3. Training schools for 4 new promotions (EWA/SL/AKW/PRW)
-- ============================================================

-- ============================================================
-- NEW SIGNATURE EVENTS
-- ============================================================

-- Lucha MEX (promo 3) — 2 annual events
-- Event #14: La Noche de los Campeones (Night of Champions)
-- A grand annual supershow celebrating Lucha MEX's tradition.
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, tourWinPoints, tourDrawPoints, inactive)
VALUES (14, 'La Noche de los Campeones', 3, 'Annual', 6, 4, 'events.png', 1, 120, 'Huge', 'North America', 2, 1, 0);

-- Event #15: El Clásico Anual (The Annual Classic)
-- Lucha MEX's year-end spectacular — traditional style showcase.
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, tourWinPoints, tourDrawPoints, inactive)
VALUES (15, 'El Clásico Anual', 3, 'Annual', 12, 4, 'events.png', 1, 100, 'Big', 'North America', 2, 1, 0);

-- Osaka Joshi (promo 5) — 2 annual events
-- Event #16: The Queen's Coronation
-- Osaka Joshi's premier event — crowns the year's ace.
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, tourWinPoints, tourDrawPoints, inactive)
VALUES (16, 'The Queen''s Coronation', 5, 'Annual', 4, 3, 'events.png', 1, 120, 'Huge', 'Asia', 2, 1, 0);

-- Event #17: The Rising Star Tournament
-- A tournament-style event showcasing the next generation of joshi wrestlers.
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, tourWinPoints, tourDrawPoints, inactive)
VALUES (17, 'The Rising Star Tournament', 5, 'Annual', 10, 3, 'events.png', 1, 90, 'Big', 'Asia', 2, 1, 0);

-- ============================================================
-- NEW TRAINING SCHOOLS (4 new promotions)
-- ============================================================

-- School #8: EWA Hardcore Academy (promo 7, UK)
INSERT INTO trainingSchools (schoolID, name, ownerPromotion, basedIn, description, type, size, reputation, focusStyle, foundedDate, isOpen, genderLimits)
VALUES (8, 'EWA Hardcore Academy', 7, 'United Kingdom', 'The developmental territory for the European Wrestling Alliance. Trains workers in the brutal Hardcore style — weapon-based matches, deathmatch techniques, and extreme risk-taking.', 'Training', 2, 55, 'Hardcore', '2003-01-01', 1, 'Male');

-- School #9: Escola Samba Luta (promo 8, Brazil)
INSERT INTO trainingSchools (schoolID, name, ownerPromotion, basedIn, description, type, size, reputation, focusStyle, foundedDate, isOpen, genderLimits)
VALUES (9, 'Escola Samba Luta', 8, 'Brazil', 'A Brazilian wrestling school emphasizing Traditional style fundamentals — clean matches, technical psychology, and respect for the art. The school''s motto is "A Luta é Arte."', 'Training', 3, 62, 'Traditional', '2009-01-01', 1, 'Mixed');

-- School #10: The Royal Dojo (promo 9, Nigeria)
INSERT INTO trainingSchools (schoolID, name, ownerPromotion, basedIn, description, type, size, reputation, focusStyle, foundedDate, isOpen, genderLimits)
VALUES (10, 'The Royal Dojo', 9, 'Nigeria', 'The developmental territory for African Kings Wrestling. Combines Yoruba royal court discipline with Japanese Kings Road strong style training. Graduates are known for their fighting spirit and technical precision.', 'Training', 3, 58, 'Kings Road', '2011-01-01', 1, 'Mixed');

-- School #11: Pacific Rim Wrestling Academy (promo 10, Australia)
INSERT INTO trainingSchools (schoolID, name, ownerPromotion, basedIn, description, type, size, reputation, focusStyle, foundedDate, isOpen, genderLimits)
VALUES (11, 'Pacific Rim Wrestling Academy', 10, 'Australia', 'The developmental school for Pacific Rim Wrestling. Trains workers in Sports Entertainment spectacle — mic work, character development, and crowd engagement. Graduates are ready for TV from day one.', 'Training', 4, 65, 'Sports Entertainment', '2006-01-01', 1, 'Mixed');
