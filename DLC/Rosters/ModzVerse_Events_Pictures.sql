-- ============================================================
-- ModzVerse — Events for 4 New Promotions + Worker Pictures (v1.4.0)
-- ============================================================

-- ============================================================
-- EVENTS FOR EWA (promo 7), Samba Luta (promo 8), AKW (promo 9), PRW (promo 10)
-- ============================================================

-- EWA (promo 7, UK/Hardcore) — 2 annual events
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (18, 'London Bloodbath', 7, 'Annual', 3, 4, 'events.png', 1, 120, 'Huge', 'Europe', 119, 2, 1, 0);

INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (19, 'Hardcore Halloween', 7, 'Annual', 10, 5, 'events.png', 1, 100, 'Big', 'Europe', 119, 2, 1, 0);

-- Samba Luta (promo 8, Brazil/Traditional) — 2 annual events
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (20, 'Carnaval Combat', 8, 'Annual', 2, 4, 'events.png', 1, 120, 'Huge', 'South America', 59, 2, 1, 0);

INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (21, 'The São Paulo Classic', 8, 'Annual', 11, 4, 'events.png', 1, 100, 'Big', 'South America', 59, 2, 1, 0);

-- AKW (promo 9, Nigeria/Kings Road) — 2 annual events
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (22, 'The Crown of Kings', 9, 'Annual', 8, 4, 'events.png', 1, 120, 'Huge', 'Africa', 225, 2, 1, 0);

INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (23, 'Lagos Rising', 9, 'Annual', 5, 4, 'events.png', 1, 100, 'Big', 'Africa', 225, 2, 1, 0);

-- PRW (promo 10, Australia/Sports Entertainment) — 2 annual events + 1 weekly
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (24, 'The Sunset Slam', 10, 'Annual', 1, 4, 'events.png', 1, 120, 'Huge', 'Oceania', 173, 2, 1, 0);

INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (25, 'Aussie Assault', 10, 'Annual', 7, 4, 'events.png', 1, 100, 'Big', 'Oceania', 173, 2, 1, 0);

-- PRW weekly show
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, friday, eventLength, importance, preferredContinent, preferredCountry, preferredRegion, tourWinPoints, tourDrawPoints, inactive)
VALUES (26, 'PRW Friday Night Fury', 10, 'Weekly', 1, 1, 'events.png', 1, 60, 'Normal', 'Oceania', 173, 3014, 2, 1, 0);

-- ============================================================
-- WORKER PICTURES — populate workerpictures for all 335 workers
-- ============================================================
-- Each worker gets 1 picture entry pointing to their picture field
-- (the .png filename already stored on workers.picture).
-- triggerDate = canon launch date 2025-01-01

-- We use INSERT SELECT to pull each worker's picture filename
-- and create a workerpictures row for them.
INSERT INTO workerpictures (workerID, triggerDate, picture)
SELECT workerID, '2025-01-01', picture FROM workers WHERE picture IS NOT NULL AND picture != '';
