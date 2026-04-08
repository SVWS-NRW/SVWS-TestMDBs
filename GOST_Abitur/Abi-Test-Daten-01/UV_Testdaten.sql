--
-- Dumping data for table `UV_Faecher`
--

INSERT IGNORE INTO `UV_Faecher` VALUES
(1,4,NULL,'2017-01-01'),
(2,8,NULL,'2017-01-01'),
(3,16,NULL,'2017-01-01'),
(4,17,NULL,'2017-01-01'),
(5,24,NULL,'2017-01-01'),
(6,26,NULL,'2017-01-01'),
(7,27,NULL,'2017-01-01'),
(8,30,NULL,'2017-01-01'),
(9,37,NULL,'2017-01-01'),
(10,55,NULL,'2017-01-01'),
(11,70,NULL,'2017-01-01'),
(12,71,NULL,'2017-01-01'),
(13,72,NULL,'2017-01-01'),
(14,79,NULL,'2017-01-01'),
(15,81,NULL,'2017-01-01'),
(16,127,NULL,'2017-01-01'),
(17,128,NULL,'2017-01-01'),
(18,129,NULL,'2017-01-01'),
(19,144,NULL,'2017-01-01'),
(20,164,NULL,'2017-01-01'),
(21,165,NULL,'2017-01-01'),
(22,172,NULL,'2017-01-01'),
(23,191,NULL,'2017-01-01'),
(24,192,NULL,'2017-01-01'),
(25,193,NULL,'2017-01-01'),
(26,210,NULL,'2017-01-01'),
(27,212,NULL,'2017-01-01'),
(28,213,NULL,'2017-01-01'),
(29,223,NULL,'2017-01-01'),
(30,224,NULL,'2017-01-01'),
(31,225,NULL,'2017-01-01'),
(32,228,NULL,'2017-01-01'),
(33,233,NULL,'2017-01-01'),
(34,234,NULL,'2017-01-01'),
(35,235,NULL,'2017-01-01'),
(36,236,NULL,'2017-01-01'),
(37,237,NULL,'2017-01-01'),
(38,239,NULL,'2017-01-01'),
(39,240,NULL,'2017-01-01'),
(40,244,NULL,'2017-01-01');

-- =========================================================
-- Raumgruppen
-- =========================================================
INSERT IGNORE INTO UV_Raumgruppen (ID, Bezeichnung, GueltigVon, GueltigBis, Beschreibung) VALUES
                                                                                       (1, 'Computerräume', '2018-01-01', NULL, 'Räume mit fest installierten PCs oder Laptops für Informatik und digitale Bildung'),
                                                                                       (2, 'Physikräume',   '2018-01-01', NULL, 'Fachräume für Physikunterricht mit Experimentiereinrichtungen'),
                                                                                       (3, 'Biologieräume', '2018-01-01', NULL, 'Fachräume für Biologie mit Sammlungen und Arbeitsplätzen'),
                                                                                       (4, 'Chemieräume',   '2018-01-01', NULL, 'Chemiefachräume mit Abzügen und Sicherheitsausstattung'),
                                                                                       (5, 'Musikräume',    '2018-01-01', NULL, 'Räume für Musikunterricht und Proben'),
                                                                                       (6, 'Kunsträume',    '2018-01-01', NULL, 'Räume für Kunstunterricht mit Waschbecken und Stauraum'),
                                                                                       (7, 'Sporthallen',   '2018-01-01', NULL, 'Sporthallen und große Bewegungsräume');


-- =========================================================
-- Räume
-- =========================================================
-- Computerräume
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
                                                                                                      (101, '0.13', '2018-01-01', NULL, 1, 'Kleiner Computerraum mit 24 festen PC-Arbeitsplätzen', 24),

-- Kapazitätsänderung ab 2022
                                                                                                      (102, '1.12', '2018-01-01', '2022-07-31', 1, 'Großer Computerraum mit klassischer PC-Bestuhlung', 28),
                                                                                                      (103, '1.12', '2022-08-01', NULL,        1, 'Umbau auf moderne Arbeitsplätze mit größeren Tischen', 24);


-- Physikräume
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
                                                                                                      (201, '2.25', '2018-01-01', NULL, 2, 'Physikraum mit Demonstrationstisch und Schülerexperimenten', 30),

-- Kapazitätsänderung durch neue Möblierung
                                                                                                      (202, '2.26', '2018-01-01', '2020-12-31', 2, 'Physikübungsraum mit älterer Tischanordnung', 32),
                                                                                                      (203, '2.26', '2021-01-01', NULL,         2, 'Physikübungsraum nach Sicherheitsumbau', 28);


-- Biologieräume
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
                                                                                                      (301, '1.08', '2018-01-01', NULL, 3, 'Biologieraum mit Mikroskopie-Arbeitsplätzen', 26),
                                                                                                      (302, '1.09', '2018-01-01', NULL, 3, 'Biologiesaal mit Sammlungsschränken und Präparaten', 30);


-- Chemieräume
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
                                                                                                      (401, '3.02', '2018-01-01', '2023-06-30', 4, 'Chemieraum mit sechs Abzügen und Schülerarbeitsplätzen', 30),
                                                                                                      (402, '3.02', '2023-07-01', NULL,         4, 'Chemieraum nach Modernisierung mit breiteren Fluchtwegen', 26);


-- Musikräume
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
                                                                                                      (501, '0.05', '2018-01-01', NULL, 5, 'Musikraum mit Klavier und Notenständern', 28),
                                                                                                      (502, '0.06', '2018-01-01', NULL, 5, 'Kleiner Probenraum für Chor- und Ensemblearbeit', 20);


-- Kunsträume
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
                                                                                                      (601, '1.20', '2018-01-01', NULL, 6, 'Kunstraum mit großen Arbeitstischen und Waschbecken', 26),
                                                                                                      (602, '1.21', '2018-01-01', NULL, 6, 'Kunstraum mit Brennofen für Keramikarbeiten', 22);


-- Sporthallen
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
                                                                                                      (701, 'SH1', '2018-01-01', NULL, 7, 'Große Dreifach-Sporthalle für Hallensportarten', 90),
                                                                                                      (702, 'SH2', '2018-01-01', NULL, 7, 'Kleine Sporthalle für Gymnastik und Kursangebote', 35);


-- =========================================================
-- Sonderräume (mit eigener Raumgruppe-Zuordnung)
-- =========================================================

-- Aula (keine eigene Raumgruppe vorgesehen → NULL)
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
    (801, 'AULA', '2018-01-01', NULL, NULL, 'Große Aula für Veranstaltungen, Prüfungen und Versammlungen', 180);

-- Bibliothek / Selbstlernzentrum
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
    (802, 'BIB', '2018-01-01', NULL, NULL, 'Schulbibliothek mit Arbeitsplätzen und Computerecke', 40);

-- Werkraum Technik
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
    (803, '0.22', '2018-01-01', NULL, NULL, 'Werkraum für Technikunterricht mit Werkbänken und Maschinen', 20);

-- Textilraum
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
    (804, '0.23', '2018-01-01', NULL, NULL, 'Textilraum mit Nähmaschinen und Zuschneidetischen', 18);

-- Differenzierungsraum
INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
    (805, '1.03', '2018-01-01', NULL, NULL, 'Kleiner Differenzierungs- und Förderraum', 12);


-- =========================================================
-- Normale Klassenräume (ohne Raumgruppe)
-- =========================================================

INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
-- Erdgeschoss
(901, '0.01', '2018-01-01', NULL, NULL, 'Standard-Klassenraum im Erdgeschoss', 30),
(902, '0.02', '2018-01-01', NULL, NULL, 'Standard-Klassenraum mit interaktivem Whiteboard', 30),
(903, '0.03', '2018-01-01', NULL, NULL, 'Klassenraum mit flexibler Tischanordnung', 28),
(904, '0.04', '2018-01-01', NULL, NULL, 'Klassenraum nahe Lehrerzimmer', 26),

-- 1. Etage
(905, '1.01', '2018-01-01', NULL, NULL, 'Heller Klassenraum mit großen Fenstern', 30),
(906, '1.02', '2018-01-01', '2021-07-31', NULL, 'Klassenraum vor Umgestaltung', 32),
(907, '1.02', '2021-08-01', NULL,         NULL, 'Klassenraum nach Umbau mit Gruppenarbeitszonen', 28),
(908, '1.04', '2018-01-01', NULL, NULL, 'Standard-Klassenraum', 30),
(909, '1.05', '2018-01-01', NULL, NULL, 'Klassenraum mit zusätzlichem Stauraum', 29),

-- 2. Etage
(910, '2.01', '2018-01-01', NULL, NULL, 'Standard-Klassenraum', 30),
(911, '2.02', '2018-01-01', NULL, NULL, 'Klassenraum mit Deckenspiegel für Präsentationen', 28),
(912, '2.03', '2018-01-01', NULL, NULL, 'Klassenraum nahe naturwissenschaftlicher Trakt', 30),
(913, '2.04', '2018-01-01', '2020-12-31', NULL, 'Großer Klassenraum mit alter Bestuhlung', 34),
(914, '2.04', '2021-01-01', NULL,         NULL, 'Klassenraum nach Reduzierung der Tischanzahl', 30),

-- Dachgeschoss
(915, '3.10', '2018-01-01', NULL, NULL, 'Klassenraum im Dachgeschoss mit Dachfenstern', 26),
(916, '3.11', '2018-01-01', NULL, NULL, 'Kleiner Klassenraum für Kurse und AGs', 20),
(917, '3.12', '2018-01-01', NULL, NULL, 'Standard-Klassenraum', 28);


-- =========================================================
-- Weitere Sonderräume ohne Raumgruppe
-- =========================================================

INSERT IGNORE INTO UV_Raeume (ID, Kuerzel, GueltigVon, GueltigBis, Raumgruppe_ID, Beschreibung, Groesse) VALUES
                                                                                                      (950, 'LK',   '2018-01-01', NULL, NULL, 'Lehrkräftezimmer mit Arbeitsplätzen', 25),
                                                                                                      (951, 'SV',   '2018-01-01', NULL, NULL, 'Raum der Schülervertretung', 15),
                                                                                                      (952, 'BZ',   '2018-01-01', NULL, NULL, 'Besprechungszimmer für Konferenzen und Elterngespräche', 16),
                                                                                                      (953, 'SAN',  '2018-01-01', NULL, NULL, 'Sanitätsraum mit Liege und Erste-Hilfe-Ausstattung', 6);
                                                                                                      
                                                                                                      
-- Jahrgang 5
INSERT IGNORE INTO UV_Stundentafeln
(ID, Jahrgang_ID, GueltigVon, GueltigBis, Bezeichnung, Beschreibung) values
(2001, 1, '2018-01-01', null, 'Jg. 5 – E plus',   'G9 Erprobungsstufe, Profil E plus'),
(2002, 1, '2018-01-01', null, 'Jg. 5 – conbrio', 'G9 Erprobungsstufe, Profil conbrio');

-- Jahrgang 6
INSERT IGNORE INTO UV_Stundentafeln
(ID, Jahrgang_ID, GueltigVon, GueltigBis, Bezeichnung, Beschreibung) values
(2003, 2, '2018-01-01', null, 'Jg. 6 – E plus',   'G9 Erprobungsstufe, Profil E plus'),
(2004, 2, '2018-01-01', null, 'Jg. 6 – conbrio', 'G9 Erprobungsstufe, Profil conbrio');

INSERT IGNORE INTO UV_Stundentafeln
(ID, Jahrgang_ID, GueltigVon, GueltigBis, Bezeichnung, Beschreibung) values
(4001, 3, '2018-01-01', null, 'Jg. 7 – G9',  'Sek I G9'),
(4002, 4, '2018-01-01', null, 'Jg. 8 – G9',  'Sek I G9'),
(4003, 5, '2018-01-01', null, 'Jg. 9 – G9',  'Sek I G9'),
(4004,10, '2018-01-01', null, 'Jg. 10 – G9', 'Sek I G9');

INSERT IGNORE INTO UV_Stundentafeln_Faecher values
-- Abschnitt 1
(3001, 2001, 1, 3, 5, 0),   -- Deutsch
(3002, 2001, 1, 14, 4, 0),  -- Mathematik
(3003, 2001, 1, 4, 4, 1),   -- Englisch (E plus)
(3004, 2001, 1, 23, 2, 0),  -- Naturwissenschaften
(3005, 2001, 1, 9, 1, 0),   -- Geschichte
(3006, 2001, 1, 5, 1, 0),   -- Erdkunde
(3007, 2001, 1, 12, 2, 0),  -- Kunst
(3008, 2001, 1, 15, 2, 0),  -- Musik
(3009, 2001, 1, 7, 2, 0),   -- Religion
(3010, 2001, 1, 22, 4, 0),  -- Sport

-- Abschnitt 2
(3011, 2001, 2, 3, 4, 0),
(3012, 2001, 2, 14, 4, 0),
(3013, 2001, 2, 4, 4, 1),
(3014, 2001, 2, 23, 2, 0),
(3015, 2001, 2, 9, 1, 0),
(3016, 2001, 2, 5, 1, 0),
(3017, 2001, 2, 12, 2, 0),
(3018, 2001, 2, 15, 2, 0),
(3019, 2001, 2, 7, 2, 0),
(3020, 2001, 2, 22, 3, 0);


INSERT IGNORE INTO UV_Stundentafeln_Faecher values
(3101, 2002, 1, 3, 4, 0),
(3102, 2002, 1, 14, 5, 0),
(3103, 2002, 1, 4, 4, 0),
(3104, 2002, 1, 23, 2, 0),
(3105, 2002, 1, 9, 1, 0),
(3106, 2002, 1, 5, 1, 0),
(3107, 2002, 1, 12, 2, 0),
(3108, 2002, 1, 15, 2, 0),
(3109, 2002, 1, 7, 2, 0),
(3110, 2002, 1, 22, 4, 0),

(3111, 2002, 2, 3, 4, 0),
(3112, 2002, 2, 14, 5, 0),
(3113, 2002, 2, 4, 4, 0),
(3114, 2002, 2, 23, 2, 0),
(3115, 2002, 2, 9, 1, 0),
(3116, 2002, 2, 5, 1, 0),
(3117, 2002, 2, 12, 1, 0),
(3118, 2002, 2, 15, 1, 0),
(3119, 2002, 2, 7, 2, 0),
(3120, 2002, 2, 22, 3, 0);


INSERT IGNORE INTO UV_Stundentafeln_Faecher values
(3201, 2003, 1, 3, 4, 0),
(3202, 2003, 1, 14, 5, 0),
(3203, 2003, 1, 4, 5, 1),
(3204, 2003, 1, 23, 2, 0),
(3205, 2003, 1, 12, 2, 0),
(3206, 2003, 1, 15, 2, 0),
(3207, 2003, 1, 7, 2, 0),
(3208, 2003, 1, 22, 4, 0),

(3209, 2003, 2, 3, 4, 0),
(3210, 2003, 2, 14, 5, 0),
(3211, 2003, 2, 4, 5, 1),
(3212, 2003, 2, 23, 2, 0),
(3213, 2003, 2, 12, 2, 0),
(3214, 2003, 2, 15, 1, 0),
(3215, 2003, 2, 7, 2, 0),
(3216, 2003, 2, 22, 3, 0);


INSERT IGNORE INTO UV_Stundentafeln_Faecher values
(3301, 2004, 1, 3, 4, 0),
(3302, 2004, 1, 14, 5, 0),
(3303, 2004, 1, 4, 5, 0),
(3304, 2004, 1, 13, 3, 0), -- Latein ODER
-- alternativ: Französisch
-- (3304, 2004, 1, 8, 3, 0),
(3305, 2004, 1, 23, 2, 0),
(3306, 2004, 1, 12, 2, 0),
(3307, 2004, 1, 7, 2, 0),
(3308, 2004, 1, 22, 4, 0),

(3309, 2004, 2, 3, 4, 0),
(3310, 2004, 2, 14, 5, 0),
(3311, 2004, 2, 4, 5, 0),
(3312, 2004, 2, 13, 4, 0),
(3313, 2004, 2, 23, 2, 0),
(3314, 2004, 2, 12, 1, 0),
(3315, 2004, 2, 7, 2, 0),
(3316, 2004, 2, 22, 3, 0);

INSERT IGNORE INTO UV_Stundentafeln_Faecher values -- Jg7
-- Abschnitt 1
(4101,4001,1,3,4,0),   -- Deutsch
(4102,4001,1,14,4,0),  -- Mathematik
(4103,4001,1,4,4,0),   -- Englisch
(4104,4001,1,13,4,0),  -- 2. FS
(4105,4001,1,9,2,0),   -- Geschichte
(4106,4001,1,24,1,0),  -- Biologie
(4107,4001,1,12,1,0),  -- Kunst
(4108,4001,1,15,1,0),  -- Musik
(4109,4001,1,7,2,0),   -- Religion
(4110,4001,1,22,3,0),  -- Sport

-- Abschnitt 2
(4111,4001,2,3,4,0),
(4112,4001,2,14,4,0),
(4113,4001,2,4,4,0),
(4114,4001,2,13,4,0),
(4115,4001,2,9,2,0),
(4116,4001,2,24,1,0),
(4117,4001,2,12,1,0),
(4118,4001,2,15,1,0),
(4119,4001,2,7,2,0),
(4120,4001,2,22,3,0);

INSERT IGNORE INTO UV_Stundentafeln_Faecher values -- Jg8
(4201,4002,1,3,3,0),
(4202,4002,1,14,3,0),
(4203,4002,1,4,3,0),
(4204,4002,1,13,4,0),
(4205,4002,1,9,1,0),
(4206,4002,1,5,1,0),
(4207,4002,1,2,2,0),   -- Chemie
(4208,4002,1,12,2,0),
(4209,4002,1,15,2,0),
(4210,4002,1,7,2,0),
(4211,4002,1,22,3,0),

(4212,4002,2,3,3,0),
(4213,4002,2,14,3,0),
(4214,4002,2,4,3,0),
(4215,4002,2,13,4,0),
(4216,4002,2,9,1,0),
(4217,4002,2,5,1,0),
(4218,4002,2,2,2,0),
(4219,4002,2,12,1,0),
(4220,4002,2,15,1,0),
(4221,4002,2,7,2,0),
(4222,4002,2,22,3,0);

INSERT IGNORE INTO UV_Stundentafeln_Faecher values -- Jg.9
(4301,4003,1,3,3,0),
(4302,4003,1,14,3,0),
(4303,4003,1,4,3,0),
(4304,4003,1,13,4,0),
(4305,4003,1,5,2,0),
(4306,4003,1,17,2,0),  -- Physik
(4307,4003,1,12,1,0),
(4308,4003,1,15,1,0),
(4309,4003,1,7,2,0),
(4310,4003,1,22,3,0),
(4311,4003,1,18,3,0),  -- Wahlpflicht

(4312,4003,2,3,3,0),
(4313,4003,2,14,3,0),
(4314,4003,2,4,3,0),
(4315,4003,2,13,4,0),
(4316,4003,2,5,2,0),
(4317,4003,2,17,2,0),
(4318,4003,2,12,1,0),
(4319,4003,2,15,1,0),
(4320,4003,2,7,2,0),
(4321,4003,2,22,3,0),
(4322,4003,2,18,3,0);

insert IGNORE into UV_Stundentafeln_Faecher values  -- Jg.10
(4401,4004,1,3,3,0),
(4402,4004,1,14,3,0),
(4403,4004,1,4,3,0),
(4404,4004,1,13,3,0),
(4405,4004,1,9,2,0),
(4406,4004,1,5,2,0),
(4407,4004,1,2,2,0),
(4408,4004,1,12,1,0),
(4409,4004,1,15,1,0),
(4410,4004,1,7,2,0),
(4411,4004,1,22,2,0),
(4412,4004,1,18,3,0),

(4413,4004,2,3,3,0),
(4414,4004,2,14,3,0),
(4415,4004,2,4,3,0),
(4416,4004,2,13,3,0),
(4417,4004,2,9,2,0),
(4418,4004,2,5,2,0),
(4419,4004,2,2,2,0),
(4420,4004,2,12,1,0),
(4421,4004,2,15,1,0),
(4422,4004,2,7,2,0),
(4423,4004,2,22,2,0),
(4424,4004,2,18,3,0);

INSERT IGNORE INTO `UV_Zeitraster` VALUES
(1,'2017-01-01',NULL,'Z1');

INSERT IGNORE INTO `UV_ZeitrasterEintraege` VALUES
(1,1,1,1,'08:00:00','08:45:00'),
(2,1,1,2,'08:50:00','09:35:00'),
(3,1,1,3,'09:40:00','10:25:00'),
(4,1,1,4,'10:30:00','11:15:00'),
(5,1,1,5,'11:20:00','12:05:00'),
(6,1,1,6,'12:10:00','12:55:00'),
(7,1,1,7,'13:00:00','13:45:00'),
(8,1,1,8,'13:50:00','14:35:00'),
(9,1,1,9,'14:40:00','15:25:00'),
(10,1,2,1,'08:00:00','08:45:00'),
(11,1,2,2,'08:50:00','09:35:00'),
(12,1,2,3,'09:40:00','10:25:00'),
(13,1,2,4,'10:30:00','11:15:00'),
(14,1,2,5,'11:20:00','12:05:00'),
(15,1,2,6,'12:10:00','12:55:00'),
(16,1,2,7,'13:00:00','13:45:00'),
(17,1,2,8,'13:50:00','14:35:00'),
(18,1,2,9,'14:40:00','15:25:00'),
(19,1,3,1,'08:00:00','08:45:00'),
(20,1,3,2,'08:50:00','09:35:00'),
(21,1,3,3,'09:40:00','10:25:00'),
(22,1,3,4,'10:30:00','11:15:00'),
(23,1,3,5,'11:20:00','12:05:00'),
(24,1,3,6,'12:10:00','12:55:00'),
(25,1,3,7,'13:00:00','13:45:00'),
(26,1,3,8,'13:50:00','14:35:00'),
(27,1,3,9,'14:40:00','15:25:00'),
(28,1,4,1,'08:00:00','08:45:00'),
(29,1,4,2,'08:50:00','09:35:00'),
(30,1,4,3,'09:40:00','10:25:00'),
(31,1,4,4,'10:30:00','11:15:00'),
(32,1,4,5,'11:20:00','12:05:00'),
(33,1,4,6,'12:10:00','12:55:00'),
(34,1,4,7,'13:00:00','13:45:00'),
(35,1,4,8,'13:50:00','14:35:00'),
(36,1,4,9,'14:40:00','15:25:00'),
(37,1,5,1,'08:00:00','08:45:00'),
(38,1,5,2,'08:50:00','09:35:00'),
(39,1,5,3,'09:40:00','10:25:00'),
(40,1,5,4,'10:30:00','11:15:00'),
(41,1,5,5,'11:20:00','12:05:00'),
(42,1,5,6,'12:10:00','12:55:00'),
(43,1,5,7,'13:00:00','13:45:00'),
(44,1,5,8,'13:50:00','14:35:00'),
(45,1,5,9,'14:40:00','15:25:00');