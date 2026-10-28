-- ============================================================
-- ModzVerse — Expansion v1.5: 4 New Promotions + 9 Networks + 12 Events
-- ============================================================
--
-- New promotions (IDs 12-15):
--   #12 Korea Pro Wrestling (KPW) — Seoul, South Korea, Sports Entertainment
--   #13 Lucha Colombia (LC) — Bogotá, Colombia, Lucha Libre
--   #14 South African Wrestling Alliance (SAWA) — Johannesburg, South Africa, Traditional
--   #15 Kiwi Pro Wrestling (KPW2) — Auckland, New Zealand, Hardcore
--
-- New networks (IDs 12-20): mix of TV and streaming platforms
-- New events: 3 per new promotion = 12 new events (IDs 34-45)
-- ============================================================

-- ============================================================
-- PROMOTION #12: Korea Pro Wrestling (KPW)
-- ============================================================
INSERT INTO promotions (promotionID, fullName, shortName, basedIn, northAmericaPop, southAmericaPop, oceaniaPop, asiaPop, europePop, africaPop, description, style, logo, founded, risk, owner, booker, prestige, money, womensDivision, status, debutDate, basedInCountry, basedInRegion, entToWresRatio, angleToWresRatio, impact, danger, violence, vocalCrowd, storylinesExpected) VALUES (12, 'Korea Pro Wrestling', 'KPW', 'Asia', 5, 0, 0, 45, 0, 0, 'The beating heart of Korean professional wrestling. KPW brings high-energy Sports Entertainment to Seoul, blending K-pop spectacle with hard-hitting wrestling action.', 'Sports Entertainment', 'KPW.png', '2012-03-01', 50, '', '', 0, 90000, 'Yes', 'Active', '2012-03-01', 'South Korea', 'Seoul', 7, 5, 6, 5, 5, 1, 1);

-- ============================================================
-- PROMOTION #13: Lucha Colombia (LC)
-- ============================================================
INSERT INTO promotions (promotionID, fullName, shortName, basedIn, northAmericaPop, southAmericaPop, oceaniaPop, asiaPop, europePop, africaPop, description, style, logo, founded, risk, owner, booker, prestige, money, womensDivision, status, debutDate, basedInCountry, basedInRegion, entToWresRatio, angleToWresRatio, impact, danger, violence, vocalCrowd, storylinesExpected) VALUES (13, 'Lucha Colombia', 'LC', 'South America', 5, 50, 0, 0, 0, 0, 'Colombian lucha libre at its finest. LC brings the mask traditions of lucha to Bogotá, with a uniquely Colombian flavor — coffee-fueled high-flying action.', 'Lucha Libre', 'LC.png', '2015-06-15', 50, '', '', 0, 55000, 'Yes', 'Active', '2015-06-15', 'Colombia', 'Bogotá', 5, 5, 6, 6, 5, 1, 1);

-- ============================================================
-- PROMOTION #14: South African Wrestling Alliance (SAWA)
-- ============================================================
INSERT INTO promotions (promotionID, fullName, shortName, basedIn, northAmericaPop, southAmericaPop, oceaniaPop, asiaPop, europePop, africaPop, description, style, logo, founded, risk, owner, booker, prestige, money, womensDivision, status, debutDate, basedInCountry, basedInRegion, entToWresRatio, angleToWresRatio, impact, danger, violence, vocalCrowd, storylinesExpected) VALUES (14, 'South African Wrestling Alliance', 'SAWA', 'Africa', 0, 0, 0, 0, 5, 50, 'The pride of African wrestling. SAWA practices Traditional style wrestling in Johannesburg, combining technical wrestling with South African cultural elements.', 'Traditional', 'SAWA.png', '2009-09-09', 50, '', '', 0, 70000, 'Yes', 'Active', '2009-09-09', 'South Africa', 'Gauteng', 5, 5, 5, 5, 5, 1, 1);

-- ============================================================
-- PROMOTION #15: Kiwi Pro Wrestling (KPW2)
-- ============================================================
INSERT INTO promotions (promotionID, fullName, shortName, basedIn, northAmericaPop, southAmericaPop, oceaniaPop, asiaPop, europePop, africaPop, description, style, logo, founded, risk, owner, booker, prestige, money, womensDivision, status, debutDate, basedInCountry, basedInRegion, entToWresRatio, angleToWresRatio, impact, danger, violence, vocalCrowd, storylinesExpected) VALUES (15, 'Kiwi Pro Wrestling', 'Kiwi Pro', 'Oceania', 5, 0, 40, 0, 0, 0, 'New Zealand''s home for hardcore wrestling. Kiwi Pro brings no-DQ brutality to Auckland, with a distinctly antipodean attitude.', 'Hardcore', 'KiwiPro.png', '2013-11-01', 70, '', '', 0, 50000, 'No', 'Active', '2013-11-01', 'New Zealand', 'Auckland', 5, 4, 7, 7, 6, 1, 1);

-- ============================================================
-- NEW NETWORKS (IDs 12-20)
-- ============================================================
-- Mix of TV networks and streaming platforms for variety

INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES (12, 'KPW Seoul Broadcasting', 'TV', 'Subscription', 'Per Show', 3, 0, '2025-01-01', 1, 'networks.png', 12, 40000, 80000, 0.5, 4000, 2);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES (13, 'Colombia Lucha TV', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 13, 25000, 50000, 0.5, 2500, 1);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES (14, 'SAWA Sports Channel', 'TV', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 14, 20000, 40000, 0.5, 2000, 1);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES (15, 'Kiwi Pro Streaming', 'Streaming', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 15, 15000, 30000, 0.5, 1500, 1);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES (16, 'Global Wrestling Network', 'TV', 'Pay Per View', 'PPV Revenue', 5, 1, '2025-01-01', 1, 'networks.png', 0, 100000, 500000, 0.3, 10000, 3);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES (17, 'WrestleStream Plus', 'Streaming', 'Subscription', 'Per Show', 4, 1, '2025-01-01', 1, 'networks.png', 0, 75000, 300000, 0.4, 7500, 3);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES (18, 'Asian Wrestling TV', 'TV', 'Subscription', 'Per Show', 3, 0, '2025-01-01', 1, 'networks.png', 0, 60000, 150000, 0.5, 6000, 2);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES (19, 'Latin Wrestling Network', 'TV', 'Subscription', 'Per Show', 3, 0, '2025-01-01', 1, 'networks.png', 0, 55000, 140000, 0.5, 5500, 2);
INSERT INTO networks (networkID, name, type, model, payment, size, library, openDate, status, logo, ownerPromotion, monthlyFee, subscribers, costPerSubscriber, platformUpkeep, infrastructureTier) VALUES (20, 'Hardcore Underground TV', 'Streaming', 'Subscription', 'Per Show', 2, 0, '2025-01-01', 1, 'networks.png', 0, 30000, 70000, 0.5, 3000, 1);

-- ============================================================
-- NETWORK DEALS for 4 new promotions
-- ============================================================
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES (12, '2025-01-01', '2027-12-31', 'Annual Special', 8000, 1, 15000, 34, 1, 'Seoul Slam', 12, 12, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES (13, '2025-01-01', '2027-12-31', 'Annual Special', 6000, 1, 12000, 37, 1, 'Carnaval de Lucha', 13, 13, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES (14, '2025-01-01', '2027-12-31', 'Annual Special', 6000, 1, 12000, 40, 1, 'The Johannesburg Open', 14, 14, 'Prime Time', 'Sunday', 1, 'events.png');
INSERT INTO networkDeals (dealID, startDate, expirationDate, contentType, costPerShow, incomePerViewer, incomePerShow, eventID, status, showName, promotionID, networkID, timeslot, airday, isLive, eventImage) VALUES (15, '2025-01-01', '2027-12-31', 'Annual Special', 5000, 1, 10000, 43, 1, 'The Kiwi Carnage', 15, 15, 'Prime Time', 'Sunday', 1, 'events.png');

-- ============================================================
-- EVENTS for 4 new promotions (3 each = 12 new events)
-- ============================================================

-- Korea Pro Wrestling (promo 12) — 3 events
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (34, 'Seoul Slam', 12, 'Annual', 9, 4, 'events.png', 1, 120, 'Huge', 'Asia', 157, 2, 1, 0);
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (35, 'K-Pop Wrestling Festival', 12, 'Annual', 5, 3, 'events.png', 1, 100, 'Big', 'Asia', 157, 2, 1, 0);
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, friday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (36, 'KPW Friday Night Fights', 12, 'Weekly', 1, 1, 'events.png', 1, 60, 'Normal', 'Asia', 157, 2, 1, 0);

-- Lucha Colombia (promo 13) — 3 events
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (37, 'Carnaval de Lucha', 13, 'Annual', 2, 4, 'events.png', 1, 120, 'Huge', 'South America', 61, 2, 1, 0);
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (38, 'El Clásico Bogotano', 13, 'Annual', 10, 4, 'events.png', 1, 100, 'Big', 'South America', 61, 2, 1, 0);
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, friday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (39, 'LC Viernes de Lucha', 13, 'Weekly', 1, 1, 'events.png', 1, 60, 'Normal', 'South America', 61, 2, 1, 0);

-- South African Wrestling Alliance (promo 14) — 3 events
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (40, 'The Johannesburg Open', 14, 'Annual', 8, 4, 'events.png', 1, 120, 'Huge', 'Africa', 232, 2, 1, 0);
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (41, 'Cape Town Classic', 14, 'Annual', 3, 4, 'events.png', 1, 100, 'Big', 'Africa', 232, 2, 1, 0);
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, friday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (42, 'SAWA Saturday Slam', 14, 'Weekly', 1, 1, 'events.png', 1, 60, 'Normal', 'Africa', 232, 2, 1, 0);

-- Kiwi Pro Wrestling (promo 15) — 3 events
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (43, 'The Kiwi Carnage', 15, 'Annual', 7, 4, 'events.png', 1, 120, 'Huge', 'Oceania', 179, 2, 1, 0);
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, sunday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (44, 'Auckland Anarchy', 15, 'Annual', 11, 4, 'events.png', 1, 100, 'Big', 'Oceania', 179, 2, 1, 0);
INSERT INTO events (eventID, eventName, promotionID, recurrenceType, recurrenceMonth, recurrenceWeek, logo, friday, eventLength, importance, preferredContinent, preferredCountry, tourWinPoints, tourDrawPoints, inactive)
VALUES (45, 'Kiwi Pro Friday Chaos', 15, 'Weekly', 1, 1, 'events.png', 1, 60, 'Normal', 'Oceania', 179, 2, 1, 0);

-- ============================================================
-- TRAINING SCHOOLS for 4 new promotions
-- ============================================================
INSERT INTO trainingSchools (schoolID, name, ownerPromotion, basedIn, description, type, size, reputation, focusStyle, foundedDate, isOpen, genderLimits)
VALUES (13, 'KPW Dojo', 12, 'South Korea', 'The developmental territory for Korea Pro Wrestling.', 'Training', 3, 60, 'Sports Entertainment', '2013-01-01', 1, 'Mixed');
INSERT INTO trainingSchools (schoolID, name, ownerPromotion, basedIn, description, type, size, reputation, focusStyle, foundedDate, isOpen, genderLimits)
VALUES (14, 'Escuela Lucha Colombia', 13, 'Colombia', 'Colombian lucha libre training school.', 'Training', 2, 50, 'Lucha Libre', '2016-01-01', 1, 'Mixed');
INSERT INTO trainingSchools (schoolID, name, ownerPromotion, basedIn, description, type, size, reputation, focusStyle, foundedDate, isOpen, genderLimits)
VALUES (15, 'SAWA Training Camp', 14, 'South Africa', 'South African Wrestling Alliance developmental camp.', 'Training', 2, 50, 'Traditional', '2010-01-01', 1, 'Mixed');
INSERT INTO trainingSchools (schoolID, name, ownerPromotion, basedIn, description, type, size, reputation, focusStyle, foundedDate, isOpen, genderLimits)
VALUES (16, 'Kiwi Pro Fight School', 15, 'New Zealand', 'Hardcore wrestling training in Auckland.', 'Training', 2, 45, 'Hardcore', '2014-01-01', 1, 'Male');
