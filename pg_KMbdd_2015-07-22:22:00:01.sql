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
-- Data for Name: admin_valid_consommables; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: admin_valid_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('admin_valid_consommables_id_seq', 1, false);


--
-- Data for Name: admin_valid_decision_trees; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: admin_valid_decision_trees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('admin_valid_decision_trees_id_seq', 1, false);


--
-- Data for Name: admin_valid_incidents; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: admin_valid_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('admin_valid_incidents_id_seq', 1, false);


--
-- Data for Name: admin_valid_releve_compteurs; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO admin_valid_releve_compteurs (id, date_valid, hour_valid, minute_valid, user_id, releve_compteur_id, created_at, updated_at) VALUES (1, '2015-06-03', '13', '48:40', 1, 5, '2015-06-03 13:48:40.287671', '2015-06-03 13:48:40.287671');


--
-- Name: admin_valid_releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('admin_valid_releve_compteurs_id_seq', 1, true);


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (3, NULL, 'bizhub_c364e_df-701_fs-534_sd-511_pc-210_f_4c_72dpi.jpg', NULL, 2, '2015-01-29 16:18:53.078415', '2015-01-29 16:18:53.078415');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (5, NULL, 'bizhub_c454e_df-701_fs-533_pc-410_f_4c_150dpi_0__1_.jpg', NULL, 3, '2015-01-30 08:52:08.824909', '2015-01-30 08:52:08.824909');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (6, NULL, 'business_hub_c454e_0.pdf', NULL, 3, '2015-01-30 10:40:01.179215', '2015-01-30 10:40:01.179215');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (20, NULL, 'c3110.png', NULL, 8, '2015-02-12 11:17:28.176016', '2015-02-12 11:17:28.176016');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (21, NULL, 'C754.jpg', NULL, 10, '2015-03-09 16:18:53.589375', '2015-03-09 16:18:53.589375');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (22, NULL, 'foliant_bizhub_proc754e_v108r1beusr_1.pdf', NULL, 10, '2015-03-09 16:21:03.208834', '2015-03-09 16:21:03.208834');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (25, NULL, 'bh284e.jpg', NULL, 16, '2015-04-24 16:25:44.846792', '2015-04-24 16:25:44.846792');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (26, NULL, 'c284e.jpg', NULL, 1, '2015-06-04 14:36:21.441544', '2015-06-04 14:36:21.441544');


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('attachments_id_seq', 26, true);


--
-- Data for Name: consommables; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (23, '  A1480Y1', 'Courroie de transfert TF-P05', true, '100000', 1, '2015-02-12 11:51:21.912943', '2015-02-12 11:52:12.523999');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (5, 'A2XN0RD', 'Tambour Noir DR512K C224e/bh224e : 70 000 p. / C284e/C364e/bh284e/bh364e : 120 000 / C454e/bh454e :130 000 / C554e/bh554e : 135 000 pages environ', true, '135000', 1, '2015-01-29 16:22:06.127819', '2015-01-29 16:23:35.622793');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (7, 'A2XN0TD', 'Tambour Cyan, Magenta ou Jaune DR512 C224(e) : 55 000 p. / C284(e) : 75 000 p. / C364(e) : 90 000 p. / C454(e)/C554(e) : 95 000 p.environ Commander 1 unité par couleur', true, '90000', 1, '2015-01-30 08:50:35.326319', '2015-01-30 08:58:11.132167');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (8, 'A4NNWY1', 'Bac de récupération toner usagé (40 000 pages environ) Compatible C224(e)/C284(e)/C364(e)/C454(e)/C554(e)/BH224e/284e/364e/454e/554e', true, '40000', 1, '2015-01-30 08:50:52.459592', '2015-01-30 08:59:10.829288');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (9, 'A33K152', 'Toner Noir TN512K (27 500 pages environ) Compatible C454(e)/C554(e)', true, '027500', 1, '2015-01-30 08:59:45.695831', '2015-01-30 09:01:54.1604');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (10, 'A33K452', 'Toner Cyan TN512C (26 000 pages environ) Compatible C454(e)/C554(e)', true, '26000', 1, '2015-01-30 09:00:17.687331', '2015-01-30 09:03:14.722679');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (11, 'A33K352', 'Toner Magenta TN512M (26 000 pages environ) Compatible C454(e)/C554(e)', true, '26000', 1, '2015-01-30 09:01:18.397154', '2015-01-30 09:03:17.880815');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (12, 'A33K252', 'Toner Jaune TN512Y (26 000 pages environ) Compatible C454(e)/C554(e)', true, '026000', 1, '2015-01-30 09:01:34.955363', '2015-01-30 09:03:20.5612');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (24, '  A1AU0Y1', 'Bac de récupération toner WB-P03', true, '36000', 1, '2015-02-12 11:51:54.586538', '2015-02-12 11:52:19.831576');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (1, 'A33K150', 'Toner Noir TN321K (27 000 pages environ) Compatible C224(e)/C284(e)/C364(e)', true, '27000', 1, '2015-01-29 16:16:37.54983', '2015-02-10 09:39:42.858787');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (17, ' A73303H', 'Unité image noire IUP-23K pour C3110/C3100P', true, '25000', 1, '2015-02-12 11:47:38.352588', '2015-02-12 11:47:49.955162');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (18, 'A7330KH', 'Unité image Cyan IUP-23C pour C3110/C3100P', true, '25000', 1, '2015-02-12 11:48:21.749175', '2015-02-12 11:49:21.692594');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (19, 'A7330EH', 'Unité image Magenta IUP-23M pour C3110/C3100P', true, '25000', 1, '2015-02-12 11:48:48.397602', '2015-02-12 11:49:25.656361');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (20, '  A73308H', '   Unité image Jaune IUP-23Y pour C3110/C3100P ', true, '25000', 1, '2015-02-12 11:49:13.256382', '2015-02-12 11:49:32.676585');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (21, 'A148022', 'Unité de fusion FU-P06', true, '100000', 1, '2015-02-12 11:50:26.1732', '2015-02-12 11:52:02.98447');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (4, 'A33K250', 'Toner Jaune TN321Y (25 000 pages environ) Compatible C224(e)/C284(e)/C364(e)', true, '25000', 1, '2015-01-29 16:17:42.561329', '2015-02-12 15:55:03.776481');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (3, 'A33K350', 'Toner Magenta TN321M (25 000 pages environ) Compatible C224(e)/C284(e)/C364(e)', true, '25000', 2, '2015-01-29 16:17:19.369056', '2015-02-27 10:18:39.84505');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (2, 'A33K450', 'Toner Cyan TN321C (25 000 pages environ) Compatible C224(e)/C284(e)/C364(e)', true, '25000', 2, '2015-01-29 16:16:57.740379', '2015-02-27 11:48:34.230417');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (55, 'TN711K', 'TONER NOIR', true, '47200', 2, '2015-03-09 16:24:50.39929', '2015-03-09 16:30:10.50446');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (56, 'DV711k', 'DEVELOPPEUR NOIR', true, '1200000', 1, '2015-03-09 16:26:08.772561', '2015-03-09 16:30:35.347273');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (57, 'DR711k', 'TAMBOUR NOIR', true, '300000', 1, '2015-03-09 16:26:40.791779', '2015-03-09 16:30:52.16768');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (58, 'TN711C', 'TONER CYAN', true, '31500', 2, '2015-03-09 16:27:16.083486', '2015-04-21 16:25:44.575984');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (59, 'TN711M', 'TONER MAGENTA', true, '31500', 2, '2015-03-09 16:27:50.393308', '2015-04-21 16:25:51.788025');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (60, 'TN711Y', 'TONER YELLOW', true, '31500', 2, '2015-03-09 16:28:17.954516', '2015-04-21 16:31:42.645916');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (61, 'IU711C', 'UNITES IMAGE CYAN', true, '155000', 1, '2015-03-09 16:28:43.07914', '2015-04-21 16:33:49.821546');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (62, 'IU711M', 'UNITES IMAGEMAGENTA', true, '155000', 1, '2015-03-09 16:29:05.882361', '2015-04-21 16:38:22.078647');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (63, 'IU711Y', 'UNITES IMAGE YELLOW', true, '155000', 1, '2015-03-09 16:29:34.763955', '2015-04-21 16:38:29.328234');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (13, 'A0X5155', 'Toner noir TNP-51K pour C3110', true, '5000', 2, '2015-02-12 11:18:53.534222', '2015-04-21 16:48:58.849274');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (14, 'A0X5455', 'Toner Cyan TNP-51C pour C3110', true, '5000', 2, '2015-02-12 11:43:27.610134', '2015-04-21 16:49:13.731842');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (15, 'A0X5355', 'Toner Magenta TNP-51M pour C3110', true, '5000', 2, '2015-02-12 11:45:24.695685', '2015-04-21 16:49:28.527594');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (16, 'A0X5255', '   Toner jaune TNP-51Y pour C3110 ', true, '5000', 2, '2015-02-12 11:46:19.232604', '2015-04-21 16:49:41.106947');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (66, 'A33K050', 'TN-322 Toner black f.bizhub 224/284/364e', true, '28800', 2, '2015-04-24 14:15:40.01269', '2015-04-24 14:16:56.999477');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (67, 'A4NNWY3', 'WASTE TONER BOX WX-103', true, '100000', 2, '2015-04-24 14:16:24.346285', '2015-04-24 14:17:23.854162');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (87, 'A73308H', 'Unité image Jaune IUP-23Y pour C3110/C3100P', true, '25000', 1, '2015-05-05 17:33:21.54914', '2015-05-07 10:16:09.880751');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (22, 'A1480Y2', 'Rouleau de transfert TF-P04', true, '100000', 2, '2015-02-12 11:50:53.245808', '2015-05-21 11:42:35.94944');


--
-- Name: consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('consommables_id_seq', 88, true);


--
-- Data for Name: decision_trees; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (25, NULL, '2015-03-09 10:07:09.056326', '2015-03-09 10:07:09.056326');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (26, NULL, '2015-03-09 10:33:26.88635', '2015-03-09 10:33:26.88635');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (27, 'aaaaad', '2015-03-09 10:34:40.152038', '2015-03-09 10:34:40.152038');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (28, 'ARBRE 1', '2015-03-09 13:41:29.296545', '2015-03-09 13:41:29.296545');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (29, 'dd', '2015-03-09 13:53:51.067404', '2015-03-09 13:53:51.067404');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (30, 'arbre 2', '2015-03-10 08:49:40.293379', '2015-03-10 08:49:40.293379');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (31, 'Problème FTP', '2015-03-10 09:01:05.441245', '2015-03-10 09:01:05.441245');


--
-- Name: decision_trees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('decision_trees_id_seq', 31, true);


--
-- Data for Name: incidents; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (5, 'c0202', 'Problème bourrage papier', '<p><br />
La machine ne fonctionne plus et affiche sur l&#39;&eacute;cran un code erreur.</p>
', '<p><br />
Eteindre et rallumer la machine.</p>
', true, '2015-02-23 09:10:14.946204', '2015-02-23 09:10:37.775667');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (6, 'c0202', 'azd', '<p>Bourrage papier</p>
', '<p>Eteindre et rallumer la machine</p>
', true, '2015-02-24 11:44:59.469413', '2015-02-26 10:52:32.398822');


--
-- Name: incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('incidents_id_seq', 6, true);


--
-- Data for Name: printers; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (1, 'business hub c284e', NULL, '<p><span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">Un nouvel &eacute;cran tactile de 9 pouces couleur totalement tactile offrant une interface encore plus intuitive.</span><br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">Gr&acirc;ce &agrave; son interface totalement personnalisable, votre efficacit&eacute; est accentu&eacute;e car vous acc&eacute;derez directement &agrave; vos fonctions de copie, d&#39;impression, de num&eacute;risation et de t&eacute;l&eacute;copie, en adaptant&nbsp; l&rsquo;&eacute;cran du syst&egrave;me d&rsquo;impression selon vos besoins.</span><br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">Encore plus respectueux de l&rsquo;environnement gr&acirc;ce &agrave; ses nouvelles technologies vertes, ces nouveaux syst&egrave;mes d&rsquo;impression vous permettront de r&eacute;duire votre impact&nbsp; environnemental tout en r&eacute;alisant des &eacute;conomies.</span></p>
', '2015-01-29 16:14:37.399331', '2015-02-09 14:27:08.124943');
INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (2, 'business hub c364e', NULL, '<p><span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">Un nouvel &eacute;cran tactile de 9 pouces couleur totalement tactile offrant une interface encore plus intuitive.</span><br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">Gr&acirc;ce &agrave; son interface totalement personnalisable, votre efficacit&eacute; est accentu&eacute;e car vous acc&eacute;derez directement &agrave; vos fonctions de copie, d&#39;impression, de num&eacute;risation et de t&eacute;l&eacute;copie, en adaptant&nbsp; l&rsquo;&eacute;cran du syst&egrave;me d&rsquo;impression selon vos besoins.</span><br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">Encore plus respectueux de l&rsquo;environnement gr&acirc;ce &agrave; ses nouvelles technologies vertes, ces nouveaux syst&egrave;mes d&rsquo;impression vous permettront de r&eacute;duire votre impact&nbsp; environnemental tout en r&eacute;alisant des &eacute;conomies.</span><br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<span style="margin: 0px; padding: 0px; border: 0px; font-size: 14.0096168518066px; vertical-align: baseline; color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; border: 0px; font-size: 14.0096168518066px; vertical-align: baseline; background: transparent;">T&eacute;l&eacute;chargez&nbsp; la vid&eacute;o de d&eacute;monstration du panel en cliquant sur le lien :</span></span><span style="margin: 0px; padding: 0px; border: 0px; font-size: 14.0096168518066px; vertical-align: baseline; color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: rgb(255, 255, 255);"> <a href="http://www.empreintepositive.fr/zeuspanel/demopanel.mov" style="margin: 0px; padding: 0px; border: 0px; font-size: 14.0096168518066px; vertical-align: baseline; outline: none; color: rgb(165, 40, 145); background: transparent;">http://www.empreintepositive.fr/zeuspanel/demopanel.mov</a></span></p>
', '2015-01-29 16:18:53.075899', '2015-02-09 14:27:42.02927');
INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (3, 'business hub c454e', NULL, '<p><span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">&bull; Son nouvel &eacute;cran tactile de 9 pouces couleur&nbsp; offre une interface conviviale et tout le confort n&eacute;cessaire pour une navigation optimale.</span><br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">&bull; Grace &agrave; son interface totalement personnalisable, votre efficacit&eacute; est accentu&eacute;e car vous acc&eacute;derez directement &agrave; vos fonctions de copie, d&#39;impression, de num&eacute;risation et de t&eacute;l&eacute;copie, en adaptant&nbsp; l&rsquo;&eacute;cran du syst&egrave;me d&rsquo;impression selon vos besoins.</span><br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">&bull; Encore plus respectueux de l&rsquo;environnement gr&acirc;ce &agrave; ses nouvelles technologies vertes, ce nouveau syst&egrave;me d&rsquo;impression vous permettra de r&eacute;duire votre impact&nbsp;environnemental tout en r&eacute;alisant des &eacute;conomies</span><br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<br style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
<span style="margin: 0px; padding: 0px; border: 0px; font-size: 14.0096168518066px; vertical-align: baseline; color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: rgb(255, 255, 255);">Visionnez ou t&eacute;l&eacute;chargez&nbsp; la video de d&eacute;monstration du panel en cliquant sur le lien </span><span style="color: rgb(63, 65, 71); font-family: ''Trebuchet MS'', arial; font-size: 14.0096168518066px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">:</span><a href="http://www.empreintepositive.fr/zeuspanel/demopanel.mov" style="margin: 0px; padding: 0px; border: 0px; font-size: 14.0096168518066px; vertical-align: baseline; outline: none; color: rgb(165, 40, 145); font-family: ''Trebuchet MS'', arial; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 19.4033184051514px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background: rgb(255, 255, 255);">http://www.empreintepositive.fr/zeuspanel/demopanel.mov</a></p>
', '2015-01-30 08:52:08.821013', '2015-02-09 14:27:56.808023');
INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (10, 'business hub C754', NULL, '<p><span style="font-family:comic sans ms,cursive;"><span style="font-size: 10pt;">copie et d&rsquo;impression &eacute;lev&eacute;e&nbsp;: 60 ppm en couleur et 75 ppm en noir &amp; blanc&nbsp;</span></span></p>

<p><span style="font-family:comic sans ms,cursive;">Vitesse de num&eacute;risation de 180 originaux par minute en un passage de la feuille dans le chargeur en recto verso</span></p>

<p><span style="font-family:comic sans ms,cursive;">M&eacute;moire vive de 2 Go et disque dur de 250 Go en standard&nbsp;: de nombreux documents peuvent &ecirc;tre stock&eacute;s directement depuis votre syst&egrave;me multifonction</span></p>

<p><span style="font-family:comic sans ms,cursive;">Toner polym&egrave;re SIMITRI<sup>&reg;</sup> HD garant d&rsquo;une qualit&eacute; d&rsquo;impression exceptionnelle</span></p>

<p><span style="font-family:comic sans ms,cursive;">R&eacute;solution jusqu&rsquo;&agrave; 1200x1200 ppp&nbsp;: grande finesse de reproduction de l&rsquo;image</span></p>
', '2015-03-09 16:18:53.587479', '2015-03-09 16:19:46.497526');
INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (16, 'Business Hub 284e', NULL, '', '2015-04-24 16:25:44.842225', '2015-05-21 11:16:25.181299');
INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (8, 'BH C3110', NULL, '<p><span style="font-family:comic sans ms,cursive;"><span style="font-size:14px;">Multifonction A4 Couleur jusqu&#39;&agrave; 31 pages par minute.<br />
Design et compact, il est con&ccedil;u pour les utilisateurs n&eacute;cessitant de hautes performances ainsi qu&rsquo;un syst&egrave;me d&rsquo;impression de proximit&eacute;.<br />
Le business hub C3110 s&rsquo;int&eacute;grera parfaitement dans tout environnement de travail.&nbsp;</span></span></p>
', '2015-02-12 11:17:28.144782', '2015-05-21 11:17:43.403041');


--
-- Data for Name: printers_consommables; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (61, 55, 10, '2015-03-09 16:24:50.421298', '2015-03-09 16:24:50.421298');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (62, 56, 10, '2015-03-09 16:26:08.775558', '2015-03-09 16:26:08.775558');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (63, 57, 10, '2015-03-09 16:26:40.794332', '2015-03-09 16:26:40.794332');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (64, 58, 10, '2015-03-09 16:27:16.086158', '2015-03-09 16:27:16.086158');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (65, 59, 10, '2015-03-09 16:27:50.39607', '2015-03-09 16:27:50.39607');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (66, 60, 10, '2015-03-09 16:28:17.958181', '2015-03-09 16:28:17.958181');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (67, 61, 10, '2015-03-09 16:28:43.084331', '2015-03-09 16:28:43.084331');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (68, 62, 10, '2015-03-09 16:29:05.885261', '2015-03-09 16:29:05.885261');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (69, 63, 10, '2015-03-09 16:29:34.766571', '2015-03-09 16:29:34.766571');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (1, 1, 1, '2015-01-29 16:16:37.554341', '2015-01-29 16:16:37.554341');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (2, 2, 1, '2015-01-29 16:16:57.744201', '2015-01-29 16:16:57.744201');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (3, 3, 1, '2015-01-29 16:17:19.372026', '2015-01-29 16:17:19.372026');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (4, 4, 1, '2015-01-29 16:17:42.564168', '2015-01-29 16:17:42.564168');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (5, 1, 2, '2015-01-29 16:20:56.396648', '2015-01-29 16:20:56.396648');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (6, 2, 2, '2015-01-29 16:21:26.649577', '2015-01-29 16:21:26.649577');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (7, 3, 2, '2015-01-29 16:21:36.41636', '2015-01-29 16:21:36.41636');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (8, 4, 2, '2015-01-29 16:21:45.085984', '2015-01-29 16:21:45.085984');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (9, 5, 2, '2015-01-29 16:22:06.131398', '2015-01-29 16:22:06.131398');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (11, 7, 2, '2015-01-30 08:50:35.332364', '2015-01-30 08:50:35.332364');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (12, 8, 2, '2015-01-30 08:50:52.463126', '2015-01-30 08:50:52.463126');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (13, 9, 3, '2015-01-30 08:59:45.699298', '2015-01-30 08:59:45.699298');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (14, 10, 3, '2015-01-30 09:00:17.690227', '2015-01-30 09:00:17.690227');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (15, 11, 3, '2015-01-30 09:01:18.40213', '2015-01-30 09:01:18.40213');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (16, 12, 3, '2015-01-30 09:01:34.959497', '2015-01-30 09:01:34.959497');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (17, 13, 8, '2015-02-12 11:18:53.558519', '2015-02-12 11:18:53.558519');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (19, 15, 8, '2015-02-12 11:45:24.69918', '2015-02-12 11:45:24.69918');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (20, 16, 8, '2015-02-12 11:46:19.235534', '2015-02-12 11:46:19.235534');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (21, 17, 8, '2015-02-12 11:47:38.355271', '2015-02-12 11:47:38.355271');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (22, 18, 8, '2015-02-12 11:48:21.755685', '2015-02-12 11:48:21.755685');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (23, 19, 8, '2015-02-12 11:48:48.400711', '2015-02-12 11:48:48.400711');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (24, 20, 8, '2015-02-12 11:49:13.263367', '2015-02-12 11:49:13.263367');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (25, 21, 8, '2015-02-12 11:50:26.177843', '2015-02-12 11:50:26.177843');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (26, 22, 8, '2015-02-12 11:50:53.249568', '2015-02-12 11:50:53.249568');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (27, 23, 8, '2015-02-12 11:51:21.922761', '2015-02-12 11:51:21.922761');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (28, 24, 8, '2015-02-12 11:51:54.589725', '2015-02-12 11:51:54.589725');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (72, 66, 15, '2015-04-24 14:15:40.02029', '2015-04-24 14:15:40.02029');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (73, 67, 15, '2015-04-24 14:16:24.351091', '2015-04-24 14:16:24.351091');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (90, 87, 3, '2015-05-05 17:33:21.56435', '2015-05-05 17:33:21.56435');


--
-- Name: printers_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('printers_consommables_id_seq', 93, true);


--
-- Name: printers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('printers_id_seq', 16, true);


--
-- Data for Name: printers_incidents; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (5, 5, 1, '2015-02-23 09:10:15.096046', '2015-02-23 09:10:15.096046');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (6, 6, 8, '2015-02-24 11:44:59.488523', '2015-02-24 11:44:59.488523');


--
-- Name: printers_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('printers_incidents_id_seq', 6, true);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('questions_id_seq', 11, true);


--
-- Data for Name: releve_compteurs; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO releve_compteurs (id, description_releve_compteurs, valide_releve_compteurs, printer_id, created_at, updated_at) VALUES (5, '<div class="SequenceOfAction">
<p class="Orientation">Le compteur indique le nombre total de pages imprim&eacute;es sur cette machine par fonction ou par couleur. V&eacute;rifiez les informations compteur sur le <strong>Panneau de contr&ocirc;le</strong> de la machine. Au besoin, les informations compteur peuvent &ecirc;tre imprim&eacute;es sous forme de liste.</p>

<p class="Orientation">Le compteur permet aussi de v&eacute;rifier le rapport de travaux couleurs/total des t&acirc;ches d&#39;impression, taux d&#39;&eacute;conomie papier gr&acirc;ce &agrave; l&#39;impression recto-verso ou la fonction combinaison de pages, la variation de la consommation &eacute;lectrique (Info &Eacute;co), et autres valeurs, en fonction des conditions des op&eacute;rations effectu&eacute;es par l&#39;utilisateur. Ces informations vous aideront &agrave; comprendre le statut d&#39;exploitation de cette machine.</p>

<ol>
	<li class="Counter n1">
	<p class="Action">Tapez sur [Compteur].<span class="GraphicContainer"><img alt="" class="Graphic" src="http://manuals.konicaminolta.eu/bizhub-C554e-C454e-C364e-C284e-C224e/FR/contents/img/MA/BIZHUB_C554E-C454E-C364E-C284E-C224E_MEN006400A_01.png" /></span></p>
	</li>
	<li class="Counter n2">
	<p class="Action">V&eacute;rifiez le nombre total de pages imprim&eacute;es depuis la date de d&eacute;but du comptage.</p>

	<ul class="Alternative first last">
		<li>
		<p class="Action">Pour imprimer la liste des compteurs, tapez sur [Impression], s&eacute;lectionnez le papier, et appuyez ensuite sur la touche <strong>D&eacute;part</strong>.</p>
		</li>
	</ul>

	<p class="Result"><span class="GraphicContainer"><img alt="" class="Graphic" src="http://manuals.konicaminolta.eu/bizhub-C554e-C454e-C364e-C284e-C224e/FR/contents/img/MA/ZEUSMLK_MEN002555B.PNG" /></span></p>

	<ul class="Alternative first last">
		<li>
		<p class="Action">Taper sur [Info &Eacute;co] permet de v&eacute;rifier le pourcentage de t&acirc;ches couleur par rapport au total des touches d&#39;impression, et le taux d&#39;&eacute;conomie papier pour l&#39;impression recto-verso ou la fonction combinaison de pages, et la consommation &eacute;lectrique.</p>
		</li>
	</ul>

	<p class="Result"><span class="GraphicContainer"><img alt="" class="Graphic" src="http://manuals.konicaminolta.eu/bizhub-C554e-C454e-C364e-C284e-C224e/FR/contents/img/MA/ZEUSMLK_MEN002557A.PNG" /></span></p>
	</li>
</ol>
</div>
', true, 10, '2015-05-22 12:37:42.58561', '2015-06-03 13:48:40.250352');


--
-- Name: releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('releve_compteurs_id_seq', 5, true);


--
-- Data for Name: replacements; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO replacements (id, name, created_at, updated_at) VALUES (2, 'CLIENT', NULL, NULL);
INSERT INTO replacements (id, name, created_at, updated_at) VALUES (1, 'TECHNICIEN', NULL, NULL);


--
-- Name: replacements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('replacements_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO schema_migrations (version) VALUES ('20141023114306');
INSERT INTO schema_migrations (version) VALUES ('20141023120533');
INSERT INTO schema_migrations (version) VALUES ('20141023122058');
INSERT INTO schema_migrations (version) VALUES ('20141023122224');
INSERT INTO schema_migrations (version) VALUES ('20141023124654');
INSERT INTO schema_migrations (version) VALUES ('20141104085224');
INSERT INTO schema_migrations (version) VALUES ('20141104142621');
INSERT INTO schema_migrations (version) VALUES ('20141106152900');
INSERT INTO schema_migrations (version) VALUES ('20141107104506');
INSERT INTO schema_migrations (version) VALUES ('20141204101244');
INSERT INTO schema_migrations (version) VALUES ('20141215122704');
INSERT INTO schema_migrations (version) VALUES ('20150225083407');
INSERT INTO schema_migrations (version) VALUES ('20141022181522');
INSERT INTO schema_migrations (version) VALUES ('20141204101245');
INSERT INTO schema_migrations (version) VALUES ('20141210181048');
INSERT INTO schema_migrations (version) VALUES ('20141218144754');
INSERT INTO schema_migrations (version) VALUES ('20141106142640');
INSERT INTO schema_migrations (version) VALUES ('20141106142849');
INSERT INTO schema_migrations (version) VALUES ('20141106090215');
INSERT INTO schema_migrations (version) VALUES ('20141023121935');
INSERT INTO schema_migrations (version) VALUES ('20150225080159');
INSERT INTO schema_migrations (version) VALUES ('20141107105752');
INSERT INTO schema_migrations (version) VALUES ('20141107080845');
INSERT INTO schema_migrations (version) VALUES ('20141201145702');
INSERT INTO schema_migrations (version) VALUES ('20150519071746');
INSERT INTO schema_migrations (version) VALUES ('20150519071759');
INSERT INTO schema_migrations (version) VALUES ('20150519071812');
INSERT INTO schema_migrations (version) VALUES ('20150519071900');
INSERT INTO schema_migrations (version) VALUES ('20150519083732');
INSERT INTO schema_migrations (version) VALUES ('20150519083741');
INSERT INTO schema_migrations (version) VALUES ('20150519083750');
INSERT INTO schema_migrations (version) VALUES ('20150519083757');
INSERT INTO schema_migrations (version) VALUES ('20150519085554');
INSERT INTO schema_migrations (version) VALUES ('20150519085603');
INSERT INTO schema_migrations (version) VALUES ('20150519085612');
INSERT INTO schema_migrations (version) VALUES ('20150519085625');
INSERT INTO schema_migrations (version) VALUES ('20150601094649');
INSERT INTO schema_migrations (version) VALUES ('20150601122012');
INSERT INTO schema_migrations (version) VALUES ('20141023123339');
INSERT INTO schema_migrations (version) VALUES ('20141023123439');
INSERT INTO schema_migrations (version) VALUES ('20141023123802');
INSERT INTO schema_migrations (version) VALUES ('20141023123820');


--
-- Data for Name: user_add_consommables; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: user_add_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_add_consommables_id_seq', 1, false);


--
-- Data for Name: user_add_decision_trees; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: user_add_decision_trees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_add_decision_trees_id_seq', 1, false);


--
-- Data for Name: user_add_incidents; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: user_add_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_add_incidents_id_seq', 1, false);


--
-- Data for Name: user_add_releve_compteurs; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO user_add_releve_compteurs (id, date_add, hour_add, minute_add, user_id, releve_compteur_id, created_at, updated_at) VALUES (1, '2015-05-22', '12', '37:42', 31, 5, '2015-05-22 12:37:42.635504', '2015-05-22 12:37:42.635504');


--
-- Name: user_add_releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_add_releve_compteurs_id_seq', 1, true);


--
-- Data for Name: user_connexions; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (1, '2015-06-03', '13', '10:52', 1, '2015-06-03 13:10:52.825756', '2015-06-03 13:10:52.825756');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (2, '2015-06-03', '13', '23:34', 1, '2015-06-03 13:23:34.967501', '2015-06-03 13:23:34.967501');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (3, '2015-06-04', '14', '35:53', 1, '2015-06-04 14:35:54.140055', '2015-06-04 14:35:54.140055');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (4, '2015-06-04', '14', '36:50', 1, '2015-06-04 14:36:50.441999', '2015-06-04 14:36:50.441999');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (5, '2015-06-05', '08', '51:34', 1, '2015-06-05 08:51:34.975088', '2015-06-05 08:51:34.975088');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (6, '2015-06-05', '16', '25:21', 1, '2015-06-05 16:25:21.940177', '2015-06-05 16:25:21.940177');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (7, '2015-06-15', '14', '57:16', 1, '2015-06-15 14:57:17.081247', '2015-06-15 14:57:17.081247');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (8, '2015-06-15', '14', '59:31', 1, '2015-06-15 14:59:31.4228', '2015-06-15 14:59:31.4228');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (9, '2015-06-15', '15', '28:03', 1, '2015-06-15 15:28:03.326704', '2015-06-15 15:28:03.326704');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (10, '2015-06-16', '11', '08:52', 1, '2015-06-16 11:08:52.515662', '2015-06-16 11:08:52.515662');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (11, '2015-06-16', '11', '49:03', 1, '2015-06-16 11:49:03.246894', '2015-06-16 11:49:03.246894');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (12, '2015-06-16', '14', '13:25', 1, '2015-06-16 14:13:25.275358', '2015-06-16 14:13:25.275358');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (13, '2015-06-16', '16', '21:26', 5, '2015-06-16 16:21:26.262102', '2015-06-16 16:21:26.262102');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (14, '2015-06-17', '11', '30:36', 1, '2015-06-17 11:30:36.656483', '2015-06-17 11:30:36.656483');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (15, '2015-06-19', '10', '57:25', 1, '2015-06-19 10:57:25.841138', '2015-06-19 10:57:25.841138');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (16, '2015-06-25', '09', '45:00', 1, '2015-06-25 09:45:01.061448', '2015-06-25 09:45:01.061448');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (17, '2015-07-07', '14', '49:46', 1, '2015-07-07 14:49:46.442376', '2015-07-07 14:49:46.442376');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (18, '2015-07-21', '08', '54:11', 1, '2015-07-21 08:54:12.039745', '2015-07-21 08:54:12.039745');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (19, '2015-07-22', '15', '27:52', 1, '2015-07-22 15:27:53.108377', '2015-07-22 15:27:53.108377');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (20, '2015-07-22', '15', '48:25', 1, '2015-07-22 15:48:25.476451', '2015-07-22 15:48:25.476451');
INSERT INTO user_connexions (id, date_connect, hour_connect, minute_connect, user_id, created_at, updated_at) VALUES (21, '2015-07-22', '15', '58:19', 1, '2015-07-22 15:58:20.030641', '2015-07-22 15:58:20.030641');


--
-- Name: user_connexions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_connexions_id_seq', 21, true);


--
-- Data for Name: user_show_consommables; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO user_show_consommables (id, date_show, hour_show, minute_show, user_id, consommable_id) VALUES (1, '2015-06-03', '13', '21:17', 1, 13);
INSERT INTO user_show_consommables (id, date_show, hour_show, minute_show, user_id, consommable_id) VALUES (2, '2015-06-03', '13', '21:46', 1, 13);
INSERT INTO user_show_consommables (id, date_show, hour_show, minute_show, user_id, consommable_id) VALUES (3, '2015-06-16', '16', '29:03', 5, 21);
INSERT INTO user_show_consommables (id, date_show, hour_show, minute_show, user_id, consommable_id) VALUES (4, '2015-06-16', '16', '29:14', 5, 24);


--
-- Name: user_show_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_show_consommables_id_seq', 4, true);


--
-- Data for Name: user_show_decision_trees; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: user_show_decision_trees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_show_decision_trees_id_seq', 1, false);


--
-- Data for Name: user_show_incidents; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO user_show_incidents (id, date_show, hour_show, minute_show, user_id, incident_id) VALUES (1, '2015-06-03', '13', '21:31', 1, 5);
INSERT INTO user_show_incidents (id, date_show, hour_show, minute_show, user_id, incident_id) VALUES (2, '2015-06-16', '16', '27:59', 5, 5);
INSERT INTO user_show_incidents (id, date_show, hour_show, minute_show, user_id, incident_id) VALUES (3, '2015-06-16', '16', '28:19', 5, 6);
INSERT INTO user_show_incidents (id, date_show, hour_show, minute_show, user_id, incident_id) VALUES (4, '2015-07-21', '08', '54:38', 1, 6);
INSERT INTO user_show_incidents (id, date_show, hour_show, minute_show, user_id, incident_id) VALUES (5, '2015-07-21', '08', '55:30', 1, 6);
INSERT INTO user_show_incidents (id, date_show, hour_show, minute_show, user_id, incident_id) VALUES (6, '2015-07-21', '08', '55:32', 1, 5);


--
-- Name: user_show_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_show_incidents_id_seq', 6, true);


--
-- Data for Name: user_show_printers; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (1, '2015-06-03', '13', '48:40', 1, 10);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (2, '2015-06-04', '14', '36:04', 1, 1);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (3, '2015-06-04', '14', '36:21', 1, 1);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (4, '2015-06-04', '14', '36:59', 1, 1);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (5, '2015-06-04', '14', '37:13', 1, 1);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (6, '2015-06-15', '14', '59:43', 1, 1);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (7, '2015-06-16', '16', '27:20', 5, 2);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (8, '2015-06-16', '16', '27:43', 5, 1);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (9, '2015-06-16', '16', '28:13', 5, 8);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (10, '2015-07-21', '08', '54:29', 1, 8);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (11, '2015-07-21', '08', '54:54', 1, 8);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (12, '2015-07-22', '15', '47:22', 1, 1);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (13, '2015-07-22', '15', '58:27', 1, 1);
INSERT INTO user_show_printers (id, date_show, hour_show, minute_show, user_id, printer_id) VALUES (14, '2015-07-22', '15', '58:47', 1, 8);


--
-- Name: user_show_printers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_show_printers_id_seq', 14, true);


--
-- Data for Name: user_show_releve_compteurs; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO user_show_releve_compteurs (id, date_show, hour_show, minute_show, user_id, releve_compteur_id) VALUES (1, '2015-06-03', '13', '20:30', 1, 5);
INSERT INTO user_show_releve_compteurs (id, date_show, hour_show, minute_show, user_id, releve_compteur_id) VALUES (2, '2015-06-03', '13', '20:49', 1, 5);
INSERT INTO user_show_releve_compteurs (id, date_show, hour_show, minute_show, user_id, releve_compteur_id) VALUES (3, '2015-06-03', '13', '48:33', 1, 5);
INSERT INTO user_show_releve_compteurs (id, date_show, hour_show, minute_show, user_id, releve_compteur_id) VALUES (4, '2015-06-03', '13', '49:31', 1, 5);
INSERT INTO user_show_releve_compteurs (id, date_show, hour_show, minute_show, user_id, releve_compteur_id) VALUES (5, '2015-06-05', '08', '52:33', 1, 5);
INSERT INTO user_show_releve_compteurs (id, date_show, hour_show, minute_show, user_id, releve_compteur_id) VALUES (6, '2015-06-15', '15', '28:46', 1, 5);
INSERT INTO user_show_releve_compteurs (id, date_show, hour_show, minute_show, user_id, releve_compteur_id) VALUES (7, '2015-06-16', '14', '14:35', 1, 5);
INSERT INTO user_show_releve_compteurs (id, date_show, hour_show, minute_show, user_id, releve_compteur_id) VALUES (8, '2015-06-16', '16', '23:51', 5, 5);
INSERT INTO user_show_releve_compteurs (id, date_show, hour_show, minute_show, user_id, releve_compteur_id) VALUES (9, '2015-07-21', '08', '55:44', 1, 5);


--
-- Name: user_show_releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_show_releve_compteurs_id_seq', 9, true);


--
-- Data for Name: user_update_consommables; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO user_update_consommables (id, date_update, hour_update, minute_update, user_id, consommable_id, created_at, updated_at) VALUES (1, '2015-05-21', '11', '47:46', 1, 22, '2015-05-21 11:47:46.660546', '2015-05-21 11:47:46.660546');


--
-- Name: user_update_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_update_consommables_id_seq', 1, true);


--
-- Data for Name: user_update_decision_trees; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: user_update_decision_trees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_update_decision_trees_id_seq', 1, false);


--
-- Data for Name: user_update_incidents; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: user_update_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_update_incidents_id_seq', 1, false);


--
-- Data for Name: user_update_releve_compteurs; Type: TABLE DATA; Schema: public; Owner: hotline
--



--
-- Name: user_update_releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('user_update_releve_compteurs_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: hotline
--

INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (19, 'gile@konicaminolta.fr', '$2a$10$7RPmbTE2ybDvlWkkVf4wl.so5BIO9MSlk3WXVGH3ixREJo0G1FWaW', NULL, NULL, NULL, 2, '2014-12-18 14:58:51.505057', '2014-12-18 14:58:51.505057', '127.0.0.1', '127.0.0.1', '2014-12-18 14:57:33.485901', '2014-12-18 14:58:51.506707', 'Gile', 'V', 'GV', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (17, 'karim.seddar@konicaminolta.fr', '$2a$10$I8Y8pm63kMAmzJLReTfCMuNOnJbdmyJayrHeCsyY.H8QqhBN7B/8G', '22c9d5de0949177482422425175ed27097ab01b21b54c4fba1df1c3d8bd9e963', '2014-12-18 13:51:19.276733', '2014-12-18 16:45:41.080894', 4, '2014-12-18 16:45:41.210793', '2014-12-18 16:45:41.210793', '150.17.156.122', '150.17.156.122', '2014-12-18 13:41:10.958338', '2014-12-18 16:45:41.212785', 'SEDDAR', 'Karim', 'FRCRUKSE', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (10, '', '', 'SXo-715CVkheoYseUGNv', NULL, NULL, 1, '2014-12-17 13:41:31.304329', '2014-12-17 13:41:31.304329', '127.0.0.1', '127.0.0.1', '2014-12-17 13:41:31.305888', '2014-12-17 13:41:31.305888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (2, 'n.sebillehl1@gmail.fr', '$2a$10$aMdPkr556olMnaaWT6z8vO7mqfuWlAQteoXqled/wLOWk0cg0JfL6', NULL, NULL, '2015-01-14 08:54:28.433286', 11, '2015-02-12 10:24:49.834702', '2015-02-12 10:24:49.834702', '127.0.0.1', '127.0.0.1', '2014-12-01 14:58:49.364077', '2015-02-12 10:24:49.836005', 'nicoHL1', 'nicoHL1', 'nicoHL1', true, 'HL1');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (28, 'nicolas.sebille@edu.itescia.fr', '$2a$10$A9Z3UigJj1CL3GLoEgmzr.w72MxwMgq19ayxkkVM1E2eVjLxs237.', 'e443aa751dc47861458ebd10b0143760c9faaed6a36651371c8b217e551dc018', '2015-02-12 15:08:20.635971', NULL, 1, '2015-02-12 11:02:18.255928', '2015-02-12 11:02:18.255928', '150.17.157.170', '150.17.157.170', '2015-02-12 11:01:04.111121', '2015-02-12 15:08:20.637017', 'Sebilles', 'Nicolass', 'NicoSebilles', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (33, 'francis.jamet@konicaminolta.fr', '$2a$10$Di5eobEARkWHcwf65tfChO3JjemJESX60W0meNYWryJ6hz/Pn.vsi', NULL, NULL, NULL, 2, '2015-05-22 15:17:36.916178', '2015-05-22 15:17:36.916178', '150.17.156.71', '150.17.156.71', '2015-05-22 15:16:10.088083', '2015-05-22 15:17:36.917729', 'JAMET', 'Francis', 'FRCRUFJA', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (30, 'henri.redeuilh@konicaminolta.fr', '$2a$10$uHWq1MklomJ23YFLLZPu2OD.ZRP3xpoYvXmfJN56GdPGxKpM4YBUy', NULL, NULL, '2015-05-26 10:10:05.678344', 3, '2015-05-26 10:10:05.69353', '2015-05-26 10:10:05.69353', '150.17.156.23', '150.17.156.61', '2015-05-11 13:05:13.983696', '2015-05-26 10:10:05.695624', 'Redeuilh', 'Henri', 'HRedeuilh', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (3, 'n.sebillehl2@gmail.fr', '$2a$10$XE0zP8dycj0.wkYqrKKKg.tEXcjTDwPf8C9TwWHH3ec.j85bs5rxe', NULL, NULL, NULL, 39, '2015-05-06 14:07:55.573369', '2015-05-06 14:07:55.573369', '150.100.201.8', '150.100.201.8', '2014-12-01 14:59:19.954959', '2015-05-06 14:07:55.575032', 'nicoHL2', 'nicoHL2', 'nicoHL2', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (27, 'pierre.berthaud@konicaminolta.fr', '$2a$10$c5DPc7c750XsdV4DTjKsOuISQrAMT92/Ybh4nPKZJls7kIavQTUF6', 'd63edc971604d7dcff886c187008532a40a142a1f5884eda0406224f2ea3b9f1', '2015-05-27 15:17:01.817335', NULL, 4, '2015-05-27 15:18:25.806327', '2015-05-27 15:18:25.806327', '150.17.156.4', '150.17.156.6', '2015-02-12 10:56:58.942936', '2015-05-27 15:18:25.807908', 'Berthaud', 'Pierre', 'pberthaud', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (31, 'olivier.saunier@konicaminolta.fr', '$2a$10$MZyWI4H7zgRWYR/LmeczBuAa85kALoyN7GbOj00S0z/AxTzdGY/X2', NULL, NULL, NULL, 4, '2015-06-02 13:16:57.653518', '2015-06-02 13:16:57.653518', '150.100.201.8', '150.17.156.4', '2015-05-20 15:15:41.57934', '2015-06-02 13:16:57.655173', 'saunier', 'olivier', 'osa', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (5, 'frederic.chainaud@konicaminolta.fr', '$2a$10$kbgLAVHHgTORx09OtnVIk.TEGQB/6pHh2w6JSztqdmYQRLl3evRyu', NULL, NULL, '2014-12-05 15:12:50.750526', 14, '2015-06-16 16:21:26.233946', '2015-05-21 14:22:35.176982', '150.100.201.47', '150.17.156.84', '2014-12-05 15:12:31.413003', '2015-06-16 16:21:26.235509', 'Frederic', 'Chainaud', 'frederic.chainaud@konicaminolta.fr', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (32, 'silvano.gondissa@konicaminolta.fr', '$2a$10$3rkDbnx03YicF0CUPN.zeeOAEN86Ex1kP1qYygFw31prProth5RM.', NULL, NULL, NULL, 2, '2015-05-22 14:14:01.974761', '2015-05-22 14:14:01.974761', '150.17.156.78', '150.17.156.78', '2015-05-22 14:03:12.850655', '2015-05-22 14:14:01.976454', 'GONDISSA', 'Silvano', 'Silvano', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (9, 'sebille.nicolas.bts@gmail.com', '$2a$10$74u0ATKVBA9guEjEn1fjzuZcRP1TD7ETJyAUtQ5c1I4Z4V6OWgwZS', 'ffefa5a397c9218fca4926fffb67a18d7f5d815d0d57e3d87d2542b20cddcceb', '2014-12-30 16:29:43.353161', NULL, 7, '2014-12-17 14:18:38.797057', '2014-12-17 14:18:38.797057', '127.0.0.1', '127.0.0.1', '2014-12-16 16:46:47.969707', '2015-05-21 14:09:17.664285', 'nico', 'gmail', 'nicoGmail', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (1, 'n.sebilleadmin@gmail.fr', '$2a$10$m7bXHWDvhMKYjnT/QaIc4.HfmvESD/ubYbCkILeeZ/foPOsECATdS', NULL, NULL, NULL, 183, '2015-07-22 15:58:19.969179', '2015-07-22 15:48:25.409934', '150.100.201.44', '150.100.201.44', '2014-12-01 14:57:52.626461', '2015-07-22 15:58:19.97273', 'Sebille', 'Nicolas', 'nicoA', true, 'ADMIN');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hotline
--

SELECT pg_catalog.setval('users_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--

