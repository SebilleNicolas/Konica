--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: arbre_decisions; Type: TABLE DATA; Schema: public; Owner: nicolas
--



--
-- Name: arbre_decisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('arbre_decisions_id_seq', 1, false);


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: nicolas
--



--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('attachments_id_seq', 1, false);


--
-- Data for Name: consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) VALUES (76, 'qz', 'qz', false, '2014-12-24 09:42:05.213319', '2014-12-24 09:44:12.009572', NULL);
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) VALUES (69, 'A33K350', 'TN-321M Toner magenta f. C224/284/364/e', false, '2014-12-05 15:15:39.708136', '2014-12-24 10:15:48.987604', NULL);
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) VALUES (67, 'A33K150', 'TN-321K Toner black  f. C224/284/364/e', true, '2014-12-05 15:15:13.83553', '2014-12-24 10:59:05.451953', NULL);
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) VALUES (78, 'aa', 'zz', true, '2014-12-24 11:27:27.099816', '2014-12-24 11:34:05.438585', NULL);
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) VALUES (80, 'A0XPWY1', 'FLACON RÉCUPERAT.TONER C5/652', true, '2014-12-24 11:45:45.865827', '2014-12-24 11:49:04.287377', NULL);
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) VALUES (81, 'A3VU150', 'TN-711K Toner Black f. C654/754', true, '2014-12-24 11:46:15.608745', '2014-12-24 11:49:20.480602', NULL);
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) VALUES (83, 'A3VU350', 'TN-711M Toner Magenta f. C654/754', true, '2014-12-24 11:47:02.07415', '2014-12-24 11:49:31.026347', NULL);
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) VALUES (84, 'A3VU450', 'TN-711C Toner Cyan f. C654/754', true, '2014-12-24 11:47:31.373663', '2014-12-24 11:49:43.031746', NULL);
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) VALUES (85, 'A3VU250', 'TN-711Y Toner Yellow f. C654/754', true, '2014-12-24 11:47:58.50764', '2014-12-24 11:50:00.452196', NULL);


--
-- Name: consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('consommables_id_seq', 85, true);


--
-- Data for Name: incidents; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (30, 'b001', 'FAX Board Error 1', 'FAX Board Error 1', 'dd', false, '2014-12-17 14:59:11.92333', '2014-12-17 14:59:11.92333');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (31, 'b002', 'FAX Board Error 2', 'FAX Board Error 2', 'azd', false, '2014-12-17 14:59:29.149706', '2014-12-17 14:59:29.149706');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (32, 'b003', 'FAX Board Error 3', 'FAX Board Error 3', 'ef', false, '2014-12-17 14:59:43.065107', '2014-12-17 14:59:43.065107');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (34, 'b052', 'FAX Board mount fail', 'FAX Board mount failure 2', 'FAX Board mount failure 2', false, '2014-12-17 15:00:21.347028', '2014-12-17 15:00:21.347028');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (25, 'zeggg', 'fzfz', 'faz', 'azf', true, '2014-12-17 14:49:11.125232', '2014-12-17 15:12:54.936169');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (26, 'zadff', 'faz', 'azf', 'zaf', true, '2014-12-17 14:49:22.44799', '2014-12-17 15:13:07.407756');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (38, 'd', 'd', 'd', 'd', false, '2014-12-18 14:18:27.350759', '2014-12-18 14:18:27.350759');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (41, 'az', 'azd', 'azd', 'azd', false, '2014-12-18 14:27:35.22928', '2014-12-18 14:27:35.22928');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (39, 'az', 'az', 'azd', 'daz', true, '2014-12-18 14:20:31.236724', '2014-12-18 14:40:01.898326');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (40, 'az', 'az', 'az', 'z', true, '2014-12-18 14:27:18.513537', '2014-12-18 14:40:11.934305');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (33, 'b051', 'FAX Board mount fail', 'FAX Board mount failure 1', 'azef', true, '2014-12-17 15:00:04.501878', '2014-12-18 14:47:45.906978');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (42, 'az', 'azf', 'azfa', 'azf', false, '2014-12-18 15:09:16.179995', '2014-12-18 15:09:16.179995');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (43, 'qzf', 'qzf', 'qzfqfz', 'fqz', false, '2014-12-18 15:11:14.001623', '2014-12-18 15:11:14.001623');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (44, 'adz', 'zfazz', 'z', 'z', true, '2014-12-18 16:34:31.34434', '2014-12-18 16:37:51.636533');


--
-- Name: incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('incidents_id_seq', 44, true);


--
-- Data for Name: printers; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO printers (id, code_printers, description_printers, created_at, updated_at, img) VALUES (4, 'C284E', 'A3 Couleur 28 ppm', '2014-12-05 15:14:44.055472', '2014-12-17 13:45:42.789279', 'c284e.jpg');
INSERT INTO printers (id, code_printers, description_printers, created_at, updated_at, img) VALUES (5, 'Bizhub C364E', 'Multifonction A3 Couleur 36 PPMff', '2014-12-05 15:20:17.559784', '2014-12-18 14:41:57.663765', 'c364e.jpg');
INSERT INTO printers (id, code_printers, description_printers, created_at, updated_at, img) VALUES (35, 'bizhub C654', 'MFP Couleur A3
65 PPM N&b
60 PPM Couleur', '2014-12-24 11:45:06.649622', '2014-12-24 11:45:06.649622', 'bizhub_C654.jpg');
INSERT INTO printers (id, code_printers, description_printers, created_at, updated_at, img) VALUES (30, 'c454e', 'A3 Couleur 45 PPM', '2014-12-16 10:35:49.664767', '2014-12-24 11:50:53.234136', 'bizhub_c454e_df-701_fs-533_pc-410_f_4c_150dpi_0.jpg');
INSERT INTO printers (id, code_printers, description_printers, created_at, updated_at, img) VALUES (31, 'c280', 'MFP A3 Couleur 28PPM', '2014-12-17 14:58:34.960742', '2014-12-24 11:52:39.315167', 'Konica-Minolta-Bizhub-C2804.jpg');


--
-- Data for Name: printers_consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (24, 67, 4, '2014-12-05 15:15:13.862524', '2014-12-05 15:15:13.862524');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (26, 69, 4, '2014-12-05 15:15:39.710349', '2014-12-05 15:15:39.710349');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (58, 76, 5, '2014-12-24 09:42:05.377207', '2014-12-24 09:42:05.377207');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (60, 78, 33, '2014-12-24 11:27:27.104162', '2014-12-24 11:27:27.104162');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (62, 80, 35, '2014-12-24 11:45:45.869', '2014-12-24 11:45:45.869');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (63, 81, 35, '2014-12-24 11:46:15.620221', '2014-12-24 11:46:15.620221');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (65, 83, 35, '2014-12-24 11:47:02.078586', '2014-12-24 11:47:02.078586');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (66, 84, 35, '2014-12-24 11:47:31.376298', '2014-12-24 11:47:31.376298');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (67, 85, 35, '2014-12-24 11:47:58.510368', '2014-12-24 11:47:58.510368');


--
-- Name: printers_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_consommables_id_seq', 67, true);


--
-- Name: printers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_id_seq', 35, true);


--
-- Data for Name: printers_incidents; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (8, 25, 30, '2014-12-17 14:49:11.137049', '2014-12-17 14:49:11.137049');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (9, 26, 30, '2014-12-17 14:49:22.451185', '2014-12-17 14:49:22.451185');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (13, 30, 31, '2014-12-17 14:59:11.92613', '2014-12-17 14:59:11.92613');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (14, 31, 31, '2014-12-17 14:59:29.155801', '2014-12-17 14:59:29.155801');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (15, 32, 31, '2014-12-17 14:59:43.067928', '2014-12-17 14:59:43.067928');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (16, 33, 31, '2014-12-17 15:00:04.504857', '2014-12-17 15:00:04.504857');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (17, 34, 31, '2014-12-17 15:00:21.349726', '2014-12-17 15:00:21.349726');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (21, 38, 5, '2014-12-18 14:18:27.357117', '2014-12-18 14:18:27.357117');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (22, 39, 5, '2014-12-18 14:20:31.24045', '2014-12-18 14:20:31.24045');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (23, 40, 5, '2014-12-18 14:27:18.518833', '2014-12-18 14:27:18.518833');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (24, 41, 5, '2014-12-18 14:27:35.232996', '2014-12-18 14:27:35.232996');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (25, 42, 4, '2014-12-18 15:09:16.183246', '2014-12-18 15:09:16.183246');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (26, 43, 4, '2014-12-18 15:11:14.005173', '2014-12-18 15:11:14.005173');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (27, 44, 30, '2014-12-18 16:34:31.602892', '2014-12-18 16:34:31.602892');


--
-- Name: printers_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_incidents_id_seq', 27, true);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: nicolas
--



--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('questions_id_seq', 1, false);


--
-- Data for Name: releve_compteurs; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO releve_compteurs (id, description_releve_compteurs, valide_releve_compteurs, created_at, updated_at, printer_id) VALUES (1, 'azdazdazdazdazdazdazd', false, '2014-12-04 11:36:33.011159', '2014-12-04 11:36:33.011159', 2);
INSERT INTO releve_compteurs (id, description_releve_compteurs, valide_releve_compteurs, created_at, updated_at, printer_id) VALUES (2, 'ffffffffffffffffffffff', true, '2014-12-04 13:08:11.915286', '2014-12-04 13:08:11.915286', 2);


--
-- Name: releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('releve_compteurs_id_seq', 2, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO schema_migrations (version) VALUES ('20141022181522');
INSERT INTO schema_migrations (version) VALUES ('20141023114306');
INSERT INTO schema_migrations (version) VALUES ('20141106142640');
INSERT INTO schema_migrations (version) VALUES ('20141106142849');
INSERT INTO schema_migrations (version) VALUES ('20141023120533');
INSERT INTO schema_migrations (version) VALUES ('20141023121935');
INSERT INTO schema_migrations (version) VALUES ('20141023122058');
INSERT INTO schema_migrations (version) VALUES ('20141023122224');
INSERT INTO schema_migrations (version) VALUES ('20141023123339');
INSERT INTO schema_migrations (version) VALUES ('20141023123439');
INSERT INTO schema_migrations (version) VALUES ('20141023123802');
INSERT INTO schema_migrations (version) VALUES ('20141023123820');
INSERT INTO schema_migrations (version) VALUES ('20141023124654');
INSERT INTO schema_migrations (version) VALUES ('20141104085224');
INSERT INTO schema_migrations (version) VALUES ('20141104142621');
INSERT INTO schema_migrations (version) VALUES ('20141106090215');
INSERT INTO schema_migrations (version) VALUES ('20141106152900');
INSERT INTO schema_migrations (version) VALUES ('20141107105752');
INSERT INTO schema_migrations (version) VALUES ('20141107080845');
INSERT INTO schema_migrations (version) VALUES ('20141107104506');
INSERT INTO schema_migrations (version) VALUES ('20141201145702');
INSERT INTO schema_migrations (version) VALUES ('20141204101244');
INSERT INTO schema_migrations (version) VALUES ('20141204101245');
INSERT INTO schema_migrations (version) VALUES ('20141210181048');
INSERT INTO schema_migrations (version) VALUES ('20141215122704');
INSERT INTO schema_migrations (version) VALUES ('20141218144754');


--
-- Data for Name: user_visite_arbre_decisions; Type: TABLE DATA; Schema: public; Owner: nicolas
--



--
-- Name: user_visite_arbre_decisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('user_visite_arbre_decisions_id_seq', 1, false);


--
-- Data for Name: user_visite_consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
--



--
-- Name: user_visite_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('user_visite_consommables_id_seq', 1, false);


--
-- Data for Name: user_visite_incidents; Type: TABLE DATA; Schema: public; Owner: nicolas
--



--
-- Name: user_visite_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('user_visite_incidents_id_seq', 1, false);


--
-- Data for Name: user_visite_releve_compteurs; Type: TABLE DATA; Schema: public; Owner: nicolas
--



--
-- Name: user_visite_releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('user_visite_releve_compteurs_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (4, 'nicolas@konica.fr', '$2a$10$cCZNeg03.8I0EgrcRhLQa.GK3z.GsY/q0kXBGaGkhv/1Y0JuboRpu', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '2014-12-01 14:59:51.978557', '2014-12-01 14:59:51.978557', 'nico', 'nico', 'nico', false, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (16, 'aa@aa.fr', '$2a$10$zZH1XPjkqUfsTAU4xBCa3e/DTv9.2/SFzv2h6UDmiXTEjWopZmiWO', NULL, NULL, NULL, 1, '2014-12-18 13:38:34.054075', '2014-12-18 13:38:34.054075', '150.17.157.170', '150.17.157.170', '2014-12-18 13:38:00.941761', '2014-12-18 13:38:34.054843', 'aa', 'aa', 'aa', true, 'HL1');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (6, 'testfalse@f.fr', '$2a$10$582KVLgJxFi/N5O64n849OAak5LZBD.We0.sTcshcIJyP5cByJbFa', NULL, NULL, NULL, 2, '2014-12-16 11:29:54.236261', '2014-12-16 11:29:54.236261', '127.0.0.1', '127.0.0.1', '2014-12-16 11:28:47.206225', '2014-12-16 11:31:53.036689', 'test', 'false', 'tFalse', false, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (19, 'gile@konicaminolta.fr', '$2a$10$7RPmbTE2ybDvlWkkVf4wl.so5BIO9MSlk3WXVGH3ixREJo0G1FWaW', NULL, NULL, NULL, 2, '2014-12-18 14:58:51.505057', '2014-12-18 14:58:51.505057', '127.0.0.1', '127.0.0.1', '2014-12-18 14:57:33.485901', '2014-12-18 14:58:51.506707', 'Gile', 'V', 'GV', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (17, 'karim.seddar@konicaminolta.fr', '$2a$10$I8Y8pm63kMAmzJLReTfCMuNOnJbdmyJayrHeCsyY.H8QqhBN7B/8G', '22c9d5de0949177482422425175ed27097ab01b21b54c4fba1df1c3d8bd9e963', '2014-12-18 13:51:19.276733', '2014-12-18 16:45:41.080894', 4, '2014-12-18 16:45:41.210793', '2014-12-18 16:45:41.210793', '150.17.156.122', '150.17.156.122', '2014-12-18 13:41:10.958338', '2014-12-18 16:45:41.212785', 'SEDDAR', 'Karim', 'FRCRUKSE', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (1, 'n.sebilleadmin@gmail.fr', '$2a$10$m7bXHWDvhMKYjnT/QaIc4.HfmvESD/ubYbCkILeeZ/foPOsECATdS', NULL, NULL, '2014-12-18 09:34:24.809491', 46, '2014-12-24 08:58:26.114916', '2014-12-24 08:58:26.114916', '127.0.0.1', '127.0.0.1', '2014-12-01 14:57:52.626461', '2014-12-24 08:58:26.116713', 'nicoA', 'nicoA', 'nicoA', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (5, 'frederic.chainaud@konicaminolta.fr', '$2a$10$kbgLAVHHgTORx09OtnVIk.TEGQB/6pHh2w6JSztqdmYQRLl3evRyu', NULL, NULL, '2014-12-05 15:12:50.750526', 4, '2014-12-24 11:36:06.483724', '2014-12-24 11:36:06.483724', '150.17.156.126', '150.17.156.126', '2014-12-05 15:12:31.413003', '2014-12-24 11:36:06.484953', 'Frederic', 'Chainaud', 'frederic.chainaud@konicaminolta.fr', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (18, 'test@km.fr', '$2a$10$S8W5Ndg/PRWJga52he1vJ.T3r1w8iHHVB9nocS9NUowMervaY63si', NULL, NULL, NULL, 2, '2014-12-18 14:37:22.013044', '2014-12-18 14:37:22.013044', '127.0.0.1', '127.0.0.1', '2014-12-18 14:33:53.893273', '2014-12-18 14:37:22.014037', 'aa', 'aa', 'aa', true, 'HL1');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (3, 'n.sebillehl2@gmail.fr', '$2a$10$XE0zP8dycj0.wkYqrKKKg.tEXcjTDwPf8C9TwWHH3ec.j85bs5rxe', NULL, NULL, NULL, 9, '2014-12-18 14:40:19.454235', '2014-12-18 14:40:19.454235', '127.0.0.1', '127.0.0.1', '2014-12-01 14:59:19.954959', '2014-12-18 14:40:19.455257', 'nicoHL2', 'nicoHL2', 'nicoHL2', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (7, 'nicolas.sebille@konicaminolta.fr', '$2a$10$Gg4puqappsYAXTneMgxlF.VEPKaEPLZmzRV2iuU8zuJK3z80rNrce', '8b01e5498fc41946168956459000b99debf110711347c8205f014f56a8577bf4', '2014-12-16 16:22:32.104264', NULL, 0, NULL, NULL, NULL, NULL, '2014-12-16 14:29:31.330199', '2014-12-16 16:22:32.105144', 'Nicolas', 'Sebille', 'Nico', false, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (10, '', '', 'SXo-715CVkheoYseUGNv', NULL, NULL, 1, '2014-12-17 13:41:31.304329', '2014-12-17 13:41:31.304329', '127.0.0.1', '127.0.0.1', '2014-12-17 13:41:31.305888', '2014-12-17 13:41:31.305888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (9, 'sebille.nicolas.bts@gmail.com', '$2a$10$74u0ATKVBA9guEjEn1fjzuZcRP1TD7ETJyAUtQ5c1I4Z4V6OWgwZS', 'BZJuiMnCU_zJqHb7rhxx', '2014-12-17 14:17:59.083534', NULL, 7, '2014-12-17 14:18:38.797057', '2014-12-17 14:18:38.797057', '127.0.0.1', '127.0.0.1', '2014-12-16 16:46:47.969707', '2014-12-17 14:18:38.798062', 'nico', 'gmail', 'nicoGmail', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (2, 'n.sebillehl1@gmail.fr', '$2a$10$aMdPkr556olMnaaWT6z8vO7mqfuWlAQteoXqled/wLOWk0cg0JfL6', NULL, NULL, NULL, 4, '2014-12-18 09:22:57.298765', '2014-12-18 09:22:57.298765', '127.0.0.1', '127.0.0.1', '2014-12-01 14:58:49.364077', '2014-12-18 09:22:57.299921', 'nicoHL1', 'nicoHL1', 'nicoHL1', true, 'HL1');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('users_id_seq', 19, true);


--
-- PostgreSQL database dump complete
--

