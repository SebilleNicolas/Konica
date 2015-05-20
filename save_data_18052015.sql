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
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (3, NULL, 'bizhub_c364e_df-701_fs-534_sd-511_pc-210_f_4c_72dpi.jpg', NULL, 2, '2015-01-29 16:18:53.078415', '2015-01-29 16:18:53.078415');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (5, NULL, 'bizhub_c454e_df-701_fs-533_pc-410_f_4c_150dpi_0__1_.jpg', NULL, 3, '2015-01-30 08:52:08.824909', '2015-01-30 08:52:08.824909');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (6, NULL, 'business_hub_c454e_0.pdf', NULL, 3, '2015-01-30 10:40:01.179215', '2015-01-30 10:40:01.179215');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (16, NULL, 'bizhub_284e_DF-624_FS-533_PC-410_4c_300dpi.jpg', NULL, 6, '2015-02-09 14:35:03.205374', '2015-02-09 14:39:38.682896');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (20, NULL, 'c3110.png', NULL, 8, '2015-02-12 11:17:28.176016', '2015-02-12 11:17:28.176016');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (21, NULL, 'C754.jpg', NULL, 10, '2015-03-09 16:18:53.589375', '2015-03-09 16:18:53.589375');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (22, NULL, 'foliant_bizhub_proc754e_v108r1beusr_1.pdf', NULL, 10, '2015-03-09 16:21:03.208834', '2015-03-09 16:21:03.208834');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (1, NULL, 'C284e2.jpg', NULL, 1, '2015-01-29 16:14:37.401759', '2015-05-07 08:54:58.841578');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (13, NULL, 'c284e.jpg', NULL, 1, '2015-02-09 09:35:11.324943', '2015-05-07 09:20:39.967713');
INSERT INTO attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) VALUES (26, NULL, 'R_cup_N_Sebille.pdf', NULL, 1, '2015-05-07 09:35:05.30078', '2015-05-07 09:35:05.30078');


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('attachments_id_seq', 26, true);


--
-- Data for Name: consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (22, 'A1480Y2', 'Rouleau de transfert TF-P04', true, '100000', 1, '2015-02-12 11:50:53.245808', '2015-02-12 11:52:06.833821');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (23, '  A1480Y1', 'Courroie de transfert TF-P05', true, '100000', 1, '2015-02-12 11:51:21.912943', '2015-02-12 11:52:12.523999');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (5, 'A2XN0RD', 'Tambour Noir DR512K C224e/bh224e : 70 000 p. / C284e/C364e/bh284e/bh364e : 120 000 / C454e/bh454e :130 000 / C554e/bh554e : 135 000 pages environ', true, '135000', 1, '2015-01-29 16:22:06.127819', '2015-01-29 16:23:35.622793');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (6, 'A2XN0TD', 'Tambour Cyan, Magenta ou Jaune DR512 C224(e) : 55 000 p. / C284(e) : 75 000 p. / C364(e) : 90 000 p. / C454(e)/C554(e) : 95 000 p.environ Commander 1 unité par couleur', true, '099000', 1, '2015-01-29 16:22:48.170006', '2015-01-30 08:58:08.003256');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (7, 'A2XN0TD', 'Tambour Cyan, Magenta ou Jaune DR512 C224(e) : 55 000 p. / C284(e) : 75 000 p. / C364(e) : 90 000 p. / C454(e)/C554(e) : 95 000 p.environ Commander 1 unité par couleur', true, '90000', 1, '2015-01-30 08:50:35.326319', '2015-01-30 08:58:11.132167');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (8, 'A4NNWY1', 'Bac de récupération toner usagé (40 000 pages environ) Compatible C224(e)/C284(e)/C364(e)/C454(e)/C554(e)/BH224e/284e/364e/454e/554e', true, '40000', 1, '2015-01-30 08:50:52.459592', '2015-01-30 08:59:10.829288');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (9, 'A33K152', 'Toner Noir TN512K (27 500 pages environ) Compatible C454(e)/C554(e)', true, '027500', 1, '2015-01-30 08:59:45.695831', '2015-01-30 09:01:54.1604');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (10, 'A33K452', 'Toner Cyan TN512C (26 000 pages environ) Compatible C454(e)/C554(e)', true, '26000', 1, '2015-01-30 09:00:17.687331', '2015-01-30 09:03:14.722679');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (11, 'A33K352', 'Toner Magenta TN512M (26 000 pages environ) Compatible C454(e)/C554(e)', true, '26000', 1, '2015-01-30 09:01:18.397154', '2015-01-30 09:03:17.880815');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (12, 'A33K252', 'Toner Jaune TN512Y (26 000 pages environ) Compatible C454(e)/C554(e)', true, '026000', 1, '2015-01-30 09:01:34.955363', '2015-01-30 09:03:20.5612');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (24, '  A1AU0Y1', 'Bac de récupération toner WB-P03', true, '36000', 1, '2015-02-12 11:51:54.586538', '2015-02-12 11:52:19.831576');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (1, 'A33K150', 'Toner Noir TN321K (27 000 pages environ) Compatible C224(e)/C284(e)/C364(e)', true, '27000', 1, '2015-01-29 16:16:37.54983', '2015-02-10 09:39:42.858787');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (13, 'A0X5155', 'Toner noir TNP-51K pour C3110', true, '5000', 1, '2015-02-12 11:18:53.534222', '2015-02-12 11:19:36.340632');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (14, 'A0X5455', 'Toner Cyan TNP-51C pour C3110', true, '5000', 1, '2015-02-12 11:43:27.610134', '2015-02-12 11:43:53.116837');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (15, 'A0X5355', 'Toner Magenta TNP-51M pour C3110', true, '5000', 1, '2015-02-12 11:45:24.695685', '2015-02-12 11:45:33.850402');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (16, 'A0X5255', '   Toner jaune TNP-51Y pour C3110 ', true, '5000', 1, '2015-02-12 11:46:19.232604', '2015-02-12 11:46:29.421001');
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
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (58, 'TN711C', 'TONER CYAN', true, '31500', 2, '2015-03-09 16:27:16.083486', '2015-04-24 11:49:46.095546');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (59, 'TN711M', 'TONER MAGENTA', true, '31500', 2, '2015-03-09 16:27:50.393308', '2015-04-24 11:49:49.713849');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (60, 'TN711Y', 'TONER YELLOW', true, '31500', 2, '2015-03-09 16:28:17.954516', '2015-04-24 11:49:53.994825');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (61, 'IU711C', 'UNITES IMAGE CYAN', true, '155000', 1, '2015-03-09 16:28:43.07914', '2015-04-24 11:49:57.324532');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (62, 'IU711M', 'UNITES IMAGEMAGENTA', true, '155000', 1, '2015-03-09 16:29:05.882361', '2015-04-24 11:50:00.64098');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (63, 'IU711Y', 'UNITES IMAGE YELLOW', true, '155000', 1, '2015-03-09 16:29:34.763955', '2015-04-24 11:50:03.813804');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (67, 'A2XN0RD', 'Tambour Noir DR512K C224e/bh224e : 70 000 p. / C284e/C364e/bh284e/bh364e : 120 000 / C454e/bh454e :130 000 / C554e/bh554e : 135 000 pages environ', false, '135000', 1, '2015-05-05 17:35:44.754048', '2015-05-05 17:35:44.754048');
INSERT INTO consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) VALUES (69, 'aaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', false, '2', 2, '2015-05-06 10:23:52.04641', '2015-05-06 11:16:56.184869');


--
-- Name: consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('consommables_id_seq', 70, true);


--
-- Data for Name: decision_trees; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (28, 'ARBRE 1', '2015-03-09 13:41:29.296545', '2015-03-09 13:41:29.296545');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (29, 'dd', '2015-03-09 13:53:51.067404', '2015-03-09 13:53:51.067404');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (30, 'arbre 2', '2015-03-10 08:49:40.293379', '2015-03-10 08:49:40.293379');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (31, 'Problème FTP', '2015-03-10 09:01:05.441245', '2015-03-10 09:01:05.441245');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (25, '33333', '2015-03-09 10:07:09.056326', '2015-04-23 13:15:13.232981');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (32, 'eeeee', '2015-05-05 08:54:48.760734', '2015-05-05 08:54:48.760734');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (34, 'eeeeee2', '2015-05-05 16:25:20.812323', '2015-05-05 16:25:20.812323');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (35, 'azdazd', '2015-05-05 16:31:31.832023', '2015-05-05 16:31:31.832023');
INSERT INTO decision_trees (id, title_decision_tree, created_at, updated_at) VALUES (36, 'jrtj', '2015-05-05 17:03:09.199029', '2015-05-05 17:03:09.199029');


--
-- Name: decision_trees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('decision_trees_id_seq', 36, true);


--
-- Data for Name: incidents; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (5, 'c0202', 'Problème bourrage papier', '<p><br />
La machine ne fonctionne plus et affiche sur l&#39;&eacute;cran un code erreur.</p>
', '<p><br />
Eteindre et rallumer la machine.</p>
', true, '2015-02-23 09:10:14.946204', '2015-02-23 09:10:37.775667');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (6, 'c0202', 'azd', '<p>Bourrage papier</p>
', '<p>Eteindre et rallumer la machine</p>
', true, '2015-02-24 11:44:59.469413', '2015-02-26 10:52:32.398822');
INSERT INTO incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) VALUES (7, 'c0214', 'toto', '<p>aziodj</p>
', '<p>oijoijoij</p>
', false, '2015-05-06 16:02:22.658176', '2015-05-06 16:02:22.658176');


--
-- Name: incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('incidents_id_seq', 7, true);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: nicolas
--



--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('posts_id_seq', 1, false);


--
-- Data for Name: printers; Type: TABLE DATA; Schema: public; Owner: nicolas
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
INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (6, 'business hub 284e', NULL, '<div class="field-name-body">Le business hub 284e combine innovation technologique, convivialit&eacute;, s&eacute;curit&eacute; et &eacute;co responsabilit&eacute;.<br />
Ce nouveau syst&egrave;me d&rsquo;impression de 28 pages par minute noir et blanc, offre de nouvelles possibilit&eacute;s aux environnements de travail exigeants pour optimiser leurs t&acirc;ches quotidiennes et gagner en productivit&eacute;.<br />
Fiabilit&eacute; et rendu parfait gr&acirc;ce au Toner Simitri HD.<br />
Impression irr&eacute;prochable avec une r&eacute;solution allant jusqu&rsquo;&agrave; 1200x1200dpi.<br />
Un traitement optimal gr&acirc;ce &agrave; un disque dur de 250Go, une m&eacute;moire vive de 2Go, et un contr&ocirc;leur Emperon PCL/PS puissant.</div>
', '2015-02-09 14:35:03.185785', '2015-02-09 14:35:03.185785');
INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (9, 'C364e', NULL, '', '2015-03-09 15:54:55.715352', '2015-03-09 15:54:55.715352');
INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (8, 'bizhub hub C3110', NULL, '<p><span style="font-family:comic sans ms,cursive;"><span style="font-size:14px;">Multifonction A4 Couleur jusqu&#39;&agrave; 31 pages par minute.<br />
Design et compact, il est con&ccedil;u pour les utilisateurs n&eacute;cessitant de hautes performances ainsi qu&rsquo;un syst&egrave;me d&rsquo;impression de proximit&eacute;.<br />
Le business hub C3110 s&rsquo;int&eacute;grera parfaitement dans tout environnement de travail.&nbsp;</span></span></p>
', '2015-02-12 11:17:28.144782', '2015-03-09 16:08:25.774553');
INSERT INTO printers (id, code_printers, primary_key, description_printers, created_at, updated_at) VALUES (10, 'business hub C754', NULL, '<p><span style="font-family:comic sans ms,cursive;"><span style="font-size: 10pt;">copie et d&rsquo;impression &eacute;lev&eacute;e&nbsp;: 60 ppm en couleur et 75 ppm en noir &amp; blanc&nbsp;</span></span></p>

<p><span style="font-family:comic sans ms,cursive;">Vitesse de num&eacute;risation de 180 originaux par minute en un passage de la feuille dans le chargeur en recto verso</span></p>

<p><span style="font-family:comic sans ms,cursive;">M&eacute;moire vive de 2 Go et disque dur de 250 Go en standard&nbsp;: de nombreux documents peuvent &ecirc;tre stock&eacute;s directement depuis votre syst&egrave;me multifonction</span></p>

<p><span style="font-family:comic sans ms,cursive;">Toner polym&egrave;re SIMITRI<sup>&reg;</sup> HD garant d&rsquo;une qualit&eacute; d&rsquo;impression exceptionnelle</span></p>

<p><span style="font-family:comic sans ms,cursive;">R&eacute;solution jusqu&rsquo;&agrave; 1200x1200 ppp&nbsp;: grande finesse de reproduction de l&rsquo;image</span></p>
', '2015-03-09 16:18:53.587479', '2015-03-09 16:19:46.497526');


--
-- Data for Name: printers_consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
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
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (10, 6, 2, '2015-01-29 16:22:48.17463', '2015-01-29 16:22:48.17463');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (11, 7, 2, '2015-01-30 08:50:35.332364', '2015-01-30 08:50:35.332364');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (12, 8, 2, '2015-01-30 08:50:52.463126', '2015-01-30 08:50:52.463126');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (13, 9, 3, '2015-01-30 08:59:45.699298', '2015-01-30 08:59:45.699298');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (14, 10, 3, '2015-01-30 09:00:17.690227', '2015-01-30 09:00:17.690227');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (15, 11, 3, '2015-01-30 09:01:18.40213', '2015-01-30 09:01:18.40213');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (16, 12, 3, '2015-01-30 09:01:34.959497', '2015-01-30 09:01:34.959497');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (17, 13, 8, '2015-02-12 11:18:53.558519', '2015-02-12 11:18:53.558519');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (18, 14, 8, '2015-02-12 11:43:27.654355', '2015-02-12 11:43:27.654355');
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
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (73, 67, 1, '2015-05-05 17:35:44.886868', '2015-05-05 17:35:44.886868');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (75, 69, 8, '2015-05-06 10:23:52.050334', '2015-05-06 10:23:52.050334');
INSERT INTO printers_consommables (id, consommable_id, printer_id, created_at, updated_at) VALUES (77, 14, 1, '2015-05-06 15:48:58.174893', '2015-05-06 15:48:58.174893');


--
-- Name: printers_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_consommables_id_seq', 77, true);


--
-- Name: printers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_id_seq', 14, true);


--
-- Data for Name: printers_incidents; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (5, 5, 1, '2015-02-23 09:10:15.096046', '2015-02-23 09:10:15.096046');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (6, 6, 8, '2015-02-24 11:44:59.488523', '2015-02-24 11:44:59.488523');
INSERT INTO printers_incidents (id, incident_id, printer_id, created_at, updated_at) VALUES (7, 7, 2, '2015-05-06 16:02:22.707108', '2015-05-06 16:02:22.707108');


--
-- Name: printers_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_incidents_id_seq', 7, true);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (136, 'f', NULL, true, NULL, NULL, 35, '2015-05-05 16:55:07.253697', '2015-05-05 16:55:07.253697');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (137, 'f', NULL, false, NULL, NULL, 35, '2015-05-05 16:55:07.286457', '2015-05-05 16:55:07.286457');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (51, '3', NULL, false, NULL, NULL, 25, '2015-05-04 15:09:47.977856', '2015-05-04 15:09:47.977856');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (49, '1', '1', NULL, 50, 51, 25, '2015-05-04 15:09:47.942472', '2015-05-04 15:09:47.99727');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (52, '4', NULL, true, NULL, NULL, 25, '2015-05-04 17:06:13.778492', '2015-05-04 17:06:13.778492');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (53, '5', NULL, false, NULL, NULL, 25, '2015-05-04 17:06:13.846566', '2015-05-04 17:06:13.846566');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (50, '2', NULL, true, 52, 53, 25, '2015-05-04 15:09:47.961378', '2015-05-04 17:06:13.866654');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (54, 'premiere 1 ', '1', NULL, 55, 56, 32, '2015-05-05 08:56:35.614063', '2015-05-05 08:56:35.692028');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (55, '2', NULL, true, 57, 58, 32, '2015-05-05 08:56:35.641397', '2015-05-05 09:17:53.383769');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (57, '4', NULL, true, 59, 60, 32, '2015-05-05 09:17:53.298256', '2015-05-05 09:18:03.59686');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (65, '12', NULL, true, NULL, NULL, 32, '2015-05-05 09:18:44.660957', '2015-05-05 09:18:44.660957');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (66, '13', NULL, false, NULL, NULL, 32, '2015-05-05 09:18:44.704482', '2015-05-05 09:18:44.704482');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (60, '7', NULL, false, 65, 66, 32, '2015-05-05 09:18:03.56482', '2015-05-05 09:18:44.728301');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (58, '5', NULL, false, 67, 68, 32, '2015-05-05 09:17:53.345453', '2015-05-05 11:15:40.46232');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (67, '14', NULL, true, 69, 70, 32, '2015-05-05 11:15:40.35502', '2015-05-05 11:15:52.952839');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (71, '18', NULL, true, NULL, NULL, 32, '2015-05-05 11:16:02.95415', '2015-05-05 11:16:02.95415');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (72, '19', NULL, false, NULL, NULL, 32, '2015-05-05 11:16:02.982376', '2015-05-05 11:16:02.982376');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (69, '16', NULL, true, 71, 72, 32, '2015-05-05 11:15:52.875713', '2015-05-05 11:16:03.022265');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (73, '20', NULL, true, NULL, NULL, 32, '2015-05-05 11:16:13.156604', '2015-05-05 11:16:13.156604');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (74, '21', NULL, false, NULL, NULL, 32, '2015-05-05 11:16:13.190912', '2015-05-05 11:16:13.190912');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (70, '17', NULL, false, 73, 74, 32, '2015-05-05 11:15:52.900439', '2015-05-05 11:16:13.238339');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (75, '22', NULL, true, NULL, NULL, 32, '2015-05-05 11:16:27.693289', '2015-05-05 11:16:27.693289');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (76, '23', NULL, false, NULL, NULL, 32, '2015-05-05 11:16:27.721719', '2015-05-05 11:16:27.721719');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (68, '15', NULL, false, 75, 76, 32, '2015-05-05 11:15:40.413602', '2015-05-05 11:16:27.778767');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (56, '3', NULL, false, 77, 78, 32, '2015-05-05 08:56:35.674858', '2015-05-05 11:16:40.445557');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (94, '1', NULL, true, 106, 107, 33, '2015-05-05 16:03:50.62325', '2015-05-05 16:08:48.857496');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (129, '9', NULL, false, 136, 137, 35, '2015-05-05 16:32:44.734443', '2015-05-05 16:55:07.340135');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (77, '24', NULL, true, 79, 80, 32, '2015-05-05 11:16:40.362917', '2015-05-05 11:16:52.49744');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (82, '29', NULL, false, NULL, NULL, 32, '2015-05-05 11:17:15.078684', '2015-05-05 11:17:15.078684');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (79, '26', NULL, true, 81, 82, 32, '2015-05-05 11:16:52.409479', '2015-05-05 11:17:15.126797');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (83, '30', NULL, true, NULL, NULL, 32, '2015-05-05 11:17:28.082402', '2015-05-05 11:17:28.082402');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (84, '31', NULL, false, NULL, NULL, 32, '2015-05-05 11:17:28.10915', '2015-05-05 11:17:28.10915');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (81, '28', NULL, true, 83, 84, 32, '2015-05-05 11:17:15.056816', '2015-05-05 11:17:28.1656');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (85, '32', NULL, true, NULL, NULL, 32, '2015-05-05 11:17:49.277698', '2015-05-05 11:17:49.277698');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (80, '27', NULL, false, 85, 86, 32, '2015-05-05 11:16:52.450198', '2015-05-05 11:17:49.375408');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (87, '34', NULL, true, NULL, NULL, 32, '2015-05-05 11:17:58.412844', '2015-05-05 11:17:58.412844');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (88, '35', NULL, false, NULL, NULL, 32, '2015-05-05 11:17:58.449135', '2015-05-05 11:17:58.449135');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (86, '33', NULL, false, 87, 88, 32, '2015-05-05 11:17:49.32104', '2015-05-05 11:17:58.475289');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (90, '37', NULL, false, NULL, NULL, 32, '2015-05-05 11:18:08.173338', '2015-05-05 11:18:08.173338');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (78, '25', NULL, false, 89, 90, 32, '2015-05-05 11:16:40.390098', '2015-05-05 11:18:08.229746');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (91, '38', NULL, true, NULL, NULL, 32, '2015-05-05 11:18:16.852587', '2015-05-05 11:18:16.852587');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (92, '39', NULL, false, NULL, NULL, 32, '2015-05-05 11:18:16.900465', '2015-05-05 11:18:16.900465');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (89, '36', NULL, true, 91, 92, 32, '2015-05-05 11:18:08.1392', '2015-05-05 11:18:16.945933');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (59, '6', NULL, true, NULL, NULL, 32, '2015-05-05 09:18:03.52968', '2015-05-05 15:57:19.745155');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (93, 'premiere', '1', NULL, 94, 95, 33, '2015-05-05 16:03:50.589973', '2015-05-05 16:03:50.682577');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (111, 'l', NULL, false, NULL, NULL, 33, '2015-05-05 16:09:03.522567', '2015-05-05 16:09:03.522567');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (112, 'azd', NULL, true, NULL, NULL, 33, '2015-05-05 16:16:03.079764', '2015-05-05 16:16:03.079764');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (113, 'azd', NULL, false, NULL, NULL, 33, '2015-05-05 16:16:03.500235', '2015-05-05 16:16:03.500235');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (100, '5', NULL, true, NULL, NULL, 33, '2015-05-05 16:06:02.263035', '2015-05-05 16:06:02.263035');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (101, '6', NULL, false, NULL, NULL, 33, '2015-05-05 16:06:02.317292', '2015-05-05 16:06:02.317292');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (110, 'k', NULL, true, 112, 113, 33, '2015-05-05 16:09:03.488829', '2015-05-05 16:16:03.560387');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (95, '2', NULL, false, NULL, NULL, 33, '2015-05-05 16:03:50.654547', '2015-05-05 16:17:21.935902');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (140, '3', NULL, false, NULL, NULL, 36, '2015-05-05 17:03:17.974991', '2015-05-05 17:03:17.974991');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (104, 'f', NULL, true, NULL, NULL, 33, '2015-05-05 16:07:50.334463', '2015-05-05 16:07:50.334463');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (105, 'g', NULL, false, NULL, NULL, 33, '2015-05-05 16:07:50.368927', '2015-05-05 16:07:50.368927');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (138, '1', '1', NULL, 139, 140, 36, '2015-05-05 17:03:17.843233', '2015-05-05 17:03:17.994452');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (116, 'y', NULL, true, NULL, NULL, 33, '2015-05-05 16:17:41.57936', '2015-05-05 16:17:41.57936');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (117, 'k', NULL, false, NULL, NULL, 33, '2015-05-05 16:17:41.619743', '2015-05-05 16:17:41.619743');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (107, 'h', NULL, false, 116, 117, 33, '2015-05-05 16:08:48.794327', '2015-05-05 16:17:41.68269');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (142, '5', NULL, false, NULL, NULL, 36, '2015-05-05 17:04:08.489317', '2015-05-05 17:04:08.489317');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (106, 'g', NULL, true, NULL, NULL, 33, '2015-05-05 16:08:48.768259', '2015-05-05 16:18:14.079834');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (121, '2', NULL, true, NULL, NULL, 34, '2015-05-05 16:25:28.911955', '2015-05-05 16:25:28.911955');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (122, '3', NULL, false, NULL, NULL, 34, '2015-05-05 16:25:28.928378', '2015-05-05 16:25:28.928378');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (120, 'premiere 1', '1', NULL, 121, 122, 34, '2015-05-05 16:25:28.883455', '2015-05-05 16:25:28.946324');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (123, 'premiere 1', '1', NULL, 124, 125, 35, '2015-05-05 16:31:39.003501', '2015-05-05 16:31:39.090333');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (139, '2', NULL, true, 141, 142, 36, '2015-05-05 17:03:17.876472', '2015-05-05 17:04:08.533095');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (143, '7', NULL, true, NULL, NULL, 36, '2015-05-05 17:05:08.44781', '2015-05-05 17:05:08.44781');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (124, '2', NULL, true, 128, 129, 35, '2015-05-05 16:31:39.040548', '2015-05-05 16:32:44.755803');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (141, '4', NULL, true, 143, 144, 36, '2015-05-05 17:04:07.799761', '2015-05-05 17:05:08.550364');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (134, 'arrrrrrr', NULL, true, NULL, NULL, 35, '2015-05-05 16:54:46.464116', '2015-05-05 16:54:46.464116');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (135, 'rrrrrra', NULL, false, NULL, NULL, 35, '2015-05-05 16:54:46.496497', '2015-05-05 16:54:46.496497');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (125, '3', NULL, false, 134, 135, 35, '2015-05-05 16:31:39.072155', '2015-05-05 16:54:46.551987');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (128, '8', NULL, true, NULL, NULL, 35, '2015-05-05 16:32:44.697927', '2015-05-05 16:54:53.874485');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (145, '2', NULL, true, NULL, NULL, 36, '2015-05-06 15:19:26.842343', '2015-05-06 15:19:26.842343');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (146, '3', NULL, false, NULL, NULL, 36, '2015-05-06 15:19:27.023494', '2015-05-06 15:19:27.023494');
INSERT INTO questions (id, title_question, number_question, question_yes, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) VALUES (144, '8', NULL, false, 145, 146, 36, '2015-05-05 17:05:08.495569', '2015-05-06 15:19:27.044033');


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('questions_id_seq', 146, true);


--
-- Data for Name: releve_compteurs; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO releve_compteurs (id, description_releve_compteurs, valide_releve_compteurs, printer_id, created_at, updated_at) VALUES (1, '<ul>
	<li><span style="font-size:20px;">Bouton menu</span></li>
	<li><span style="font-size:20px;">Bouton compteur</span></li>
	<li><span style="font-size:20px;">Appuyer sur imprimer puis depart pour les imprimer et avoir les d&eacute;tails de tous les compteurs.</span></li>
</ul>
', true, 1, '2015-01-30 09:43:58.208772', '2015-02-12 13:11:06.47542');
INSERT INTO releve_compteurs (id, description_releve_compteurs, valide_releve_compteurs, printer_id, created_at, updated_at) VALUES (2, '<ul>
	<li>Bouton menu</li>
	<li>Bouton compteur</li>
	<li>Appuyer sur imprimer puis depart pour les imprimer et avoir les d&eacute;tails de tous les compteurs.</li>
</ul>
', true, 3, '2015-01-30 11:30:21.01422', '2015-02-12 14:07:21.447833');


--
-- Name: releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('releve_compteurs_id_seq', 4, true);


--
-- Data for Name: replacements; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO replacements (id, name, created_at, updated_at) VALUES (2, 'CLIENT', NULL, NULL);
INSERT INTO replacements (id, name, created_at, updated_at) VALUES (1, 'TECHNICIEN', NULL, NULL);


--
-- Name: replacements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('replacements_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: nicolas
--

INSERT INTO schema_migrations (version) VALUES ('20141023123820');
INSERT INTO schema_migrations (version) VALUES ('20141215122704');
INSERT INTO schema_migrations (version) VALUES ('20141023123339');
INSERT INTO schema_migrations (version) VALUES ('20141204101244');
INSERT INTO schema_migrations (version) VALUES ('20141023120533');
INSERT INTO schema_migrations (version) VALUES ('20141023123802');
INSERT INTO schema_migrations (version) VALUES ('20141023123439');
INSERT INTO schema_migrations (version) VALUES ('20141023122058');
INSERT INTO schema_migrations (version) VALUES ('20141023122224');
INSERT INTO schema_migrations (version) VALUES ('20141023114306');
INSERT INTO schema_migrations (version) VALUES ('20141104085224');
INSERT INTO schema_migrations (version) VALUES ('20141104142621');
INSERT INTO schema_migrations (version) VALUES ('20141107104506');
INSERT INTO schema_migrations (version) VALUES ('20141106152900');
INSERT INTO schema_migrations (version) VALUES ('20150225083407');
INSERT INTO schema_migrations (version) VALUES ('20141023124654');
INSERT INTO schema_migrations (version) VALUES ('20150506093342');
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

INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (19, 'gile@konicaminolta.fr', '$2a$10$7RPmbTE2ybDvlWkkVf4wl.so5BIO9MSlk3WXVGH3ixREJo0G1FWaW', NULL, NULL, NULL, 2, '2014-12-18 14:58:51.505057', '2014-12-18 14:58:51.505057', '127.0.0.1', '127.0.0.1', '2014-12-18 14:57:33.485901', '2014-12-18 14:58:51.506707', 'Gile', 'V', 'GV', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (17, 'karim.seddar@konicaminolta.fr', '$2a$10$I8Y8pm63kMAmzJLReTfCMuNOnJbdmyJayrHeCsyY.H8QqhBN7B/8G', '22c9d5de0949177482422425175ed27097ab01b21b54c4fba1df1c3d8bd9e963', '2014-12-18 13:51:19.276733', '2014-12-18 16:45:41.080894', 4, '2014-12-18 16:45:41.210793', '2014-12-18 16:45:41.210793', '150.17.156.122', '150.17.156.122', '2014-12-18 13:41:10.958338', '2014-12-18 16:45:41.212785', 'SEDDAR', 'Karim', 'FRCRUKSE', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (10, '', '', 'SXo-715CVkheoYseUGNv', NULL, NULL, 1, '2014-12-17 13:41:31.304329', '2014-12-17 13:41:31.304329', '127.0.0.1', '127.0.0.1', '2014-12-17 13:41:31.305888', '2014-12-17 13:41:31.305888', NULL, NULL, NULL, NULL, NULL);
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (5, 'frederic.chainaud@konicaminolta.fr', '$2a$10$kbgLAVHHgTORx09OtnVIk.TEGQB/6pHh2w6JSztqdmYQRLl3evRyu', NULL, NULL, '2014-12-05 15:12:50.750526', 7, '2015-03-09 15:48:41.154921', '2015-03-09 15:48:41.154921', '150.17.156.50', '150.17.156.106', '2014-12-05 15:12:31.413003', '2015-03-09 15:48:41.157148', 'Frederic', 'Chainaud', 'frederic.chainaud@konicaminolta.fr', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (27, 'pierre.berthaud@konicaminolta.fr', '$2a$10$c5DPc7c750XsdV4DTjKsOuISQrAMT92/Ybh4nPKZJls7kIavQTUF6', 'cbdeb65acc8d977b99857cc09f33a6a3d391fff1c10a5bb1752c8df3f85d3b77', '2015-02-12 10:57:36.184887', NULL, 3, '2015-02-12 13:44:40.186696', '2015-02-12 13:44:40.186696', '150.17.156.6', '150.17.156.6', '2015-02-12 10:56:58.942936', '2015-02-12 13:44:40.187787', 'Berthaud', 'Pierre', 'pberthaud', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (2, 'n.sebillehl1@gmail.fr', '$2a$10$aMdPkr556olMnaaWT6z8vO7mqfuWlAQteoXqled/wLOWk0cg0JfL6', NULL, NULL, '2015-01-14 08:54:28.433286', 11, '2015-02-12 10:24:49.834702', '2015-02-12 10:24:49.834702', '127.0.0.1', '127.0.0.1', '2014-12-01 14:58:49.364077', '2015-02-12 10:24:49.836005', 'nicoHL1', 'nicoHL1', 'nicoHL1', true, 'HL1');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (28, 'nicolas.sebille@edu.itescia.fr', '$2a$10$A9Z3UigJj1CL3GLoEgmzr.w72MxwMgq19ayxkkVM1E2eVjLxs237.', 'e443aa751dc47861458ebd10b0143760c9faaed6a36651371c8b217e551dc018', '2015-02-12 15:08:20.635971', NULL, 1, '2015-02-12 11:02:18.255928', '2015-02-12 11:02:18.255928', '150.17.157.170', '150.17.157.170', '2015-02-12 11:01:04.111121', '2015-02-12 15:08:20.637017', 'Sebilles', 'Nicolass', 'NicoSebilles', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (3, 'n.sebillehl2@gmail.fr', '$2a$10$XE0zP8dycj0.wkYqrKKKg.tEXcjTDwPf8C9TwWHH3ec.j85bs5rxe', NULL, NULL, NULL, 42, '2015-05-18 11:48:07.926615', '2015-05-06 16:01:45.579598', '127.0.0.1', '127.0.0.1', '2014-12-01 14:59:19.954959', '2015-05-18 11:48:07.928671', 'nicoHL2', 'nicoHL2', 'nicoHL2', true, 'HL2');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (9, 'sebille.nicolas.bts@gmail.com', '$2a$10$TKMTtEA0qd0vFY05m1oFDuUc8R3T.ZOg/tw4DMBjhzF.8Ju.V0tYG', 'geeVuHysWPWDmVgoqtxh', NULL, NULL, 18, '2015-05-07 09:13:08.424485', '2015-05-06 15:15:33.317335', '127.0.0.1', '127.0.0.1', '2014-12-16 16:46:47.969707', '2015-05-07 09:13:08.42929', 'nico', 'gmail', 'nicoGmail', true, 'ADMIN');
INSERT INTO users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) VALUES (1, 'n.sebilleadmin@gmail.fr', '$2a$10$m7bXHWDvhMKYjnT/QaIc4.HfmvESD/ubYbCkILeeZ/foPOsECATdS', NULL, NULL, NULL, 144, '2015-05-18 07:57:11.428389', '2015-05-06 16:35:22.2915', '127.0.0.1', '127.0.0.1', '2014-12-01 14:57:52.626461', '2015-05-18 07:57:11.430111', 'nicoA', 'nicoA', 'nicoA', true, 'ADMIN');


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('users_id_seq', 28, true);


--
-- PostgreSQL database dump complete
--

