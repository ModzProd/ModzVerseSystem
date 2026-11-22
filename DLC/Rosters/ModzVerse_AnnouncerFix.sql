-- ModzVerse — Announcer Slot Fix
-- Fixes 6 promotions (#1-6) where announcer1-4 pointed to wrestler workerIDs
-- instead of the correct Personality announcer workerIDs.
--
-- Root cause: v1.7.0 DB had announcer1-4 set to sequential wrestler IDs
-- (1001-1024) instead of the announcer-specific IDs (x041-x044 per promo).
-- The correct announcers were created in v1.9.0 (P7) but never wired into
-- the promotions.announcer1-4 fields.

BEGIN TRANSACTION;

-- Promo #1 Chicago Show: wrestlers 1001-1004 → announcers 2041-2044
UPDATE promotions SET announcer1=2041, announcer2=2042, announcer3=2043, announcer4=2044 WHERE promotionID=1;

-- Promo #2 Lucha Bellas: wrestlers 1005-1008 → announcers 3041-3044
UPDATE promotions SET announcer1=3041, announcer2=3042, announcer3=3043, announcer4=3044 WHERE promotionID=2;

-- Promo #3 Lucha MEX: wrestlers 1009-1012 → announcers 4041-4044
UPDATE promotions SET announcer1=4041, announcer2=4042, announcer3=4043, announcer4=4044 WHERE promotionID=3;

-- Promo #4 RAIBARAZU: wrestlers 1013-1016 → announcers 1041-1044
UPDATE promotions SET announcer1=1041, announcer2=1042, announcer3=1043, announcer4=1044 WHERE promotionID=4;

-- Promo #5 Osaka Joshi: wrestlers 1017-1020 → announcers 5041-5044
UPDATE promotions SET announcer1=5041, announcer2=5042, announcer3=5043, announcer4=5044 WHERE promotionID=5;

-- Promo #6 Valkyrie Project: wrestlers 1021-1024 → announcers 6041-6044
UPDATE promotions SET announcer1=6041, announcer2=6042, announcer3=6043, announcer4=6044 WHERE promotionID=6;

COMMIT;
