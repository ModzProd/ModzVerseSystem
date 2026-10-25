-- ============================================================
-- ModzVerse — Network Deals + Promotion Aces + Extra Events (v1.4.1)
-- ============================================================

-- ============================================================
-- 1. NETWORK DEALS for all 11 promotions
-- ============================================================
-- Each promotion gets a TV deal. Networks table is empty (the DLC
-- networks are separate .db files), so we create inline network entries
-- first, then link them to promotions via networkDeals.

-- Create 11 networks (one per promotion) as streaming platforms
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(1, 'Chicago Sports Network', 'TV', 'Subscription', 'Per Show', 3, 0, '2025-01-01', 1, 'networks.png', 1, 50000, 100000, 0.5, 5000, 2);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(2, 'Bellas TV', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 2, 30000, 50000, 0.5, 3000, 1);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(3, 'MEX Wrestling Channel', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 3, 35000, 60000, 0.5, 3000, 1);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(4, 'RAIBARAZU Network', 'TV', 'Subscription', 'Per Show', 4, 0, '2025-01-01', 1, 'networks.png', 4, 80000, 200000, 0.5, 8000, 3);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(5, 'Joshi Stream', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 5, 40000, 80000, 0.5, 4000, 2);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(6, 'Valhalla Broadcasting', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 6, 25000, 40000, 0.5, 2500, 1);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(7, 'EWA Hardcore TV', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 7, 30000, 60000, 0.5, 3000, 1);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(8, 'Samba Luta TV', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 8, 35000, 70000, 0.5, 3500, 1);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(9, 'AKK Royal TV', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 9, 25000, 45000, 0.5, 2500, 1);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(10, 'PRW Sports Network', 'TV', 'Subscription', 'Per Show', 3, 0, '2025-01-01', 1, 'networks.png', 10, 50000, 120000, 0.5, 5000, 2);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES
(11, 'NSS Strong TV', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 11, 30000, 55000, 0.5, 3000, 1);

-- Create networkDeals linking each promotion to their network
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(1, '2025-01-01', '2027-12-31', 'Weekly Show', 5000, 1, 10000, 13, 1, 'Chicago Show', 1, 1, 'Prime Time', 'Friday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(2, '2025-01-01', '2027-12-31', 'Annual Special', 10000, 1, 20000, 1, 1, 'Luchastica', 2, 2, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(3, '2025-01-01', '2027-12-31', 'Annual Special', 8000, 1, 15000, 14, 1, 'La Noche de los Campeones', 3, 3, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(4, '2025-01-01', '2027-12-31', 'Annual Special', 15000, 1, 30000, 2, 1, 'Battle of Rivals', 4, 4, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(5, '2025-01-01', '2027-12-31', 'Annual Special', 10000, 1, 20000, 16, 1, 'The Queen''s Coronation', 5, 5, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(6, '2025-01-01', '2027-12-31', 'Annual Special', 8000, 1, 15000, 10, 1, 'Valhalla', 6, 6, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(7, '2025-01-01', '2027-12-31', 'Annual Special', 8000, 1, 15000, 18, 1, 'London Bloodbath', 7, 7, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(8, '2025-01-01', '2027-12-31', 'Annual Special', 8000, 1, 15000, 20, 1, 'Carnaval Combat', 8, 8, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(9, '2025-01-01', '2027-12-31', 'Annual Special', 8000, 1, 15000, 22, 1, 'The Crown of Kings', 9, 9, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(10, '2025-01-01', '2027-12-31', 'Annual Special', 10000, 1, 20000, 24, 1, 'The Sunset Slam', 10, 10, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES
(11, '2025-01-01', '2027-12-31', 'Weekly Show', 5000, 1, 10000, 29, 1, 'NSS Friday Night Strikes', 11, 11, 'Prime Time', 'Friday', 1, 'events.png');

-- ============================================================
-- 2. PROMOTION ACE / PRIMARY PROSPECT / SECONDARY PROSPECT
-- ============================================================
-- Based on the top-3 wrestlers per promotion by wrestlingSkill

UPDATE promotions SET promotionAce=2003, primaryProspect=2001, secondaryProspect=2002 WHERE promotionID=1;  -- Chicago: Bronco/Max/Vincent
UPDATE promotions SET promotionAce=3002, primaryProspect=3001, secondaryProspect=3003 WHERE promotionID=2;  -- Lucha Bellas: Mariposa/Reina/Valkiria
UPDATE promotions SET promotionAce=4001, primaryProspect=4003, secondaryProspect=4002 WHERE promotionID=3;  -- Lucha MEX: Toro/Caballero/Diablo
UPDATE promotions SET promotionAce=1001, primaryProspect=1002, secondaryProspect=1004 WHERE promotionID=4;  -- RAIBARAZU: Ryuga/Kuroda/Suzaku
UPDATE promotions SET promotionAce=5001, primaryProspect=5002, secondaryProspect=5003 WHERE promotionID=5;  -- Osaka: Haruka/Miyako/Rina
UPDATE promotions SET promotionAce=6001, primaryProspect=6003, secondaryProspect=6002 WHERE promotionID=6;  -- Valkyrie: Freya/Hikari/Skull
UPDATE promotions SET promotionAce=7017, primaryProspect=7011, secondaryProspect=7021 WHERE promotionID=7;  -- EWA: Damon/Steve/Owen
UPDATE promotions SET promotionAce=7102, primaryProspect=7119, secondaryProspect=7113 WHERE promotionID=8;  -- Samba Luta: Carlos/Henrique/Thiago
UPDATE promotions SET promotionAce=7208, primaryProspect=7213, secondaryProspect=7222 WHERE promotionID=9;  -- AKW: Bola/Dami/Taj
UPDATE promotions SET promotionAce=7325, primaryProspect=7309, secondaryProspect=7321 WHERE promotionID=10; -- PRW: Quinn/Toby/Lachlan
UPDATE promotions SET promotionAce=7401, primaryProspect=7402, secondaryProspect=7404 WHERE promotionID=11; -- NSS: Kenta/Ryuji/Hiroshi

-- ============================================================
-- 3. EXTRA EVENTS for Chicago Show and Lucha Bellas
-- ============================================================

-- Chicago Show (promo 1) — add 2 annual events
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, preferredRegion, tourWinPoints, tourDrawPoints, inactive)
VALUES (30, 'Windy City Showdown', 1, 'Annual', 7, 4, 'events.png', 1, 120, 'Huge', 'North America', 245, 3197, 2, 1, 0);

INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, preferredRegion, tourWinPoints, tourDrawPoints, inactive)
VALUES (31, 'The Chicago Classic', 1, 'Annual', 11, 4, 'events.png', 1, 100, 'Big', 'North America', 245, 3197, 2, 1, 0);

-- Lucha Bellas (promo 2) — add 2 annual events
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (32, 'Las Reinas del Ring', 2, 'Annual', 5, 4, 'events.png', 1, 100, 'Big', 'North America', 55, 2, 1, 0);

INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (33, 'Máscaras y Leyendas', 2, 'Annual', 10, 5, 'events.png', 1, 120, 'Huge', 'North America', 55, 2, 1, 0);
