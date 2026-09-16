-- ============================================================
-- ModzVerse — Worker Field Normalization v4 (invisible fields)
-- 
-- Fixes worker fields that display as empty/blank in-game because
-- they're NULL or contain the literal string 'None' instead of the
-- PWS-expected value.
-- ============================================================

-- ============================================================
-- FIX 1: sexuality — NULL -> 'Heterosexual' (PWS default)
-- 
-- PWS source (EditRandomEvents.js line 330) expects one of:
--   'Heterosexual', 'Homosexual', 'Bisexual'
-- PWS auto-fills NULL to 'Heterosexual' on next day tick
-- (NextDay.js line 1082), but until then the field is invisible.
-- Assign realistic distribution: ~90% Heterosexual, ~5% Homosexual,
-- ~5% Bisexual (matches real-world demographics).
-- ============================================================

UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1001;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1002;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1003;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1004;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1005;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1006;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1007;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1008;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1009;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1010;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1011;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1012;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=1013;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1014;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1015;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1016;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1017;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1018;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1019;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1020;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1021;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1022;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1023;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1024;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1025;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1026;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1027;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1028;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1029;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=1030;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1031;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1032;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=1033;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1034;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1035;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1036;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1037;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1038;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1039;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1040;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1041;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1042;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=1043;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=1044;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2001;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2002;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2003;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2004;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2005;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2006;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2007;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2008;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2009;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2010;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2011;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2012;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2013;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2014;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2015;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2016;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2017;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2018;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2019;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2020;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2021;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2022;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2023;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2024;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2025;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2026;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2027;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2028;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2029;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2030;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2031;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2032;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2033;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2034;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2035;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2041;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2042;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=2043;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=2044;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3001;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3002;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3003;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3004;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3005;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3006;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3007;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3008;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3009;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3010;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3011;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3012;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3013;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3014;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3015;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3016;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3017;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3018;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3019;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3020;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3021;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3022;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3023;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3024;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3025;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3026;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3027;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3028;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3029;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3030;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3041;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3042;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3043;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=3044;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4001;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=4002;  -- Homosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=4003;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4004;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=4005;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4006;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4007;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4008;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4009;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4010;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4011;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4012;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4013;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4014;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4015;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4016;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4017;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4018;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4019;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4020;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=4021;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4022;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4023;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4024;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4025;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=4026;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4027;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4028;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4029;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=4030;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4031;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=4032;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4033;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4034;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4035;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4041;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4042;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4043;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=4044;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5001;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5002;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5003;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5004;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5005;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5006;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5007;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5008;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=5009;  -- Bisexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=5010;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5011;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5012;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5013;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5014;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5015;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5016;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5017;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5018;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5019;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5020;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5021;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5022;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5023;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5024;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5025;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5026;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5027;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=5028;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5029;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5030;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5041;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5042;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5043;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=5044;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=6001;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6002;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=6003;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6004;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6005;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6006;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6007;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=6008;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6009;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6010;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6011;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6012;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6013;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6014;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6015;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6016;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6017;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6018;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6019;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6020;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6021;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6022;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6023;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6024;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6025;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6041;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6042;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6043;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=6044;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7001;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7002;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7003;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7004;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7005;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7006;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7007;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7008;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7009;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=7010;  -- Homosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=7011;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7012;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=7013;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7014;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7015;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7016;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=7017;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7018;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7019;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7020;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=7021;  -- Homosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=7022;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7023;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7024;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7025;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7041;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7042;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7043;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7044;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7101;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7102;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7103;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7104;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7105;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7106;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7107;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7108;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7109;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7110;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7111;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7112;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7113;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7114;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=7115;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7116;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7117;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7118;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7119;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7120;  -- Heterosexual
UPDATE workers SET sexuality='Bisexual' WHERE workerID=7121;  -- Bisexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7122;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7123;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7124;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7125;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7141;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7142;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7143;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7144;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7201;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7202;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7203;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7204;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7205;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7206;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7207;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7208;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7209;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7210;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7211;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7212;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7213;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7214;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7215;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=7216;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7217;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7218;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7219;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7220;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7221;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7222;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=7223;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7224;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7225;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7241;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7242;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7243;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7244;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7301;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7302;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7303;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7304;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7305;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7306;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7307;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7308;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=7309;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7310;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7311;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7312;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7313;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7314;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7315;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7316;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7317;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7318;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7319;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7320;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7321;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7322;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7323;  -- Heterosexual
UPDATE workers SET sexuality='Homosexual' WHERE workerID=7324;  -- Homosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7325;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7341;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7342;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7343;  -- Heterosexual
UPDATE workers SET sexuality='Heterosexual' WHERE workerID=7344;  -- Heterosexual

-- ============================================================
-- FIX 2: politics — 'None' (string) -> '' (empty, PWS default)
-- 
-- PWS source (EditWorkers.js line 1888) defaults politics to ''
-- (empty string). Our SQL files stored 'None' (literal string)
-- which doesn't match any of the 4 PWS politics filter options
-- (Conservative / Far Right / Liberal / Far Left).
-- ============================================================

UPDATE workers SET politics='' WHERE politics='None';  -- 335 workers

-- ============================================================
-- FIX 3: inOutsideRelationship — NULL -> 0 (not in outside relationship)
-- ============================================================

UPDATE workers SET inOutsideRelationship=0 WHERE inOutsideRelationship IS NULL;  -- 335 workers

-- ============================================================
-- SUMMARY
-- ============================================================
-- sexuality updates:                335 (assigned realistic distribution)
-- politics 'None' -> '' updates:    335
-- inOutsideRelationship NULL -> 0: 335
-- Total UPDATEs:                    1005