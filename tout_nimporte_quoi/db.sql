--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: arbre_decisions; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE arbre_decisions (
    id integer NOT NULL,
    "titreAD" character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.arbre_decisions OWNER TO nicolas;

--
-- Name: arbre_decisions_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE arbre_decisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.arbre_decisions_id_seq OWNER TO nicolas;

--
-- Name: arbre_decisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE arbre_decisions_id_seq OWNED BY arbre_decisions.id;


--
-- Name: attachments; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE attachments (
    id integer NOT NULL,
    "titreAttachments" character varying(255),
    "dateAjout" date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.attachments OWNER TO nicolas;

--
-- Name: attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attachments_id_seq OWNER TO nicolas;

--
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE attachments_id_seq OWNED BY attachments.id;


--
-- Name: consommables; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE consommables (
    id integer NOT NULL,
    code_consommables character varying(255),
    designation_consommables character varying(255),
    valide_consommables boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    duree_vie_consommables character varying(255)
);


ALTER TABLE public.consommables OWNER TO nicolas;

--
-- Name: consommables_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE consommables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consommables_id_seq OWNER TO nicolas;

--
-- Name: consommables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE consommables_id_seq OWNED BY consommables.id;


--
-- Name: incidents; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE incidents (
    id integer NOT NULL,
    code_incidents character varying(255),
    intitule_incidents character varying(255),
    description_incidents character varying(255),
    solution_incidents character varying(255),
    valide_incidents boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.incidents OWNER TO nicolas;

--
-- Name: incidents_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE incidents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incidents_id_seq OWNER TO nicolas;

--
-- Name: incidents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE incidents_id_seq OWNED BY incidents.id;


--
-- Name: printers; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE printers (
    id integer NOT NULL,
    code_printers character varying(255),
    description_printers character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    img character varying(255)
);


ALTER TABLE public.printers OWNER TO nicolas;

--
-- Name: printers_consommables; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE printers_consommables (
    id integer NOT NULL,
    consommable_id integer,
    printer_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.printers_consommables OWNER TO nicolas;

--
-- Name: printers_consommables_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE printers_consommables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.printers_consommables_id_seq OWNER TO nicolas;

--
-- Name: printers_consommables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE printers_consommables_id_seq OWNED BY printers_consommables.id;


--
-- Name: printers_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE printers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.printers_id_seq OWNER TO nicolas;

--
-- Name: printers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE printers_id_seq OWNED BY printers.id;


--
-- Name: printers_incidents; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE printers_incidents (
    id integer NOT NULL,
    incident_id integer,
    printer_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.printers_incidents OWNER TO nicolas;

--
-- Name: printers_incidents_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE printers_incidents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.printers_incidents_id_seq OWNER TO nicolas;

--
-- Name: printers_incidents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE printers_incidents_id_seq OWNED BY printers_incidents.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE questions (
    id integer NOT NULL,
    "titreQuestions" character varying(255),
    "libelleQuestions" character varying(255),
    "IDCheminOui" integer,
    "IDCheminNon" integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.questions OWNER TO nicolas;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO nicolas;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE questions_id_seq OWNED BY questions.id;


--
-- Name: releve_compteurs; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE releve_compteurs (
    id integer NOT NULL,
    description_releve_compteurs character varying(255),
    valide_releve_compteurs boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    printer_id integer
);


ALTER TABLE public.releve_compteurs OWNER TO nicolas;

--
-- Name: releve_compteurs_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE releve_compteurs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.releve_compteurs_id_seq OWNER TO nicolas;

--
-- Name: releve_compteurs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE releve_compteurs_id_seq OWNED BY releve_compteurs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO nicolas;

--
-- Name: user_visite_arbre_decisions; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE user_visite_arbre_decisions (
    id integer NOT NULL,
    "compteurVisiteArbreDecision" integer
);


ALTER TABLE public.user_visite_arbre_decisions OWNER TO nicolas;

--
-- Name: user_visite_arbre_decisions_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE user_visite_arbre_decisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_visite_arbre_decisions_id_seq OWNER TO nicolas;

--
-- Name: user_visite_arbre_decisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE user_visite_arbre_decisions_id_seq OWNED BY user_visite_arbre_decisions.id;


--
-- Name: user_visite_consommables; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE user_visite_consommables (
    id integer NOT NULL,
    "compteurVisiteConsommables" integer
);


ALTER TABLE public.user_visite_consommables OWNER TO nicolas;

--
-- Name: user_visite_consommables_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE user_visite_consommables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_visite_consommables_id_seq OWNER TO nicolas;

--
-- Name: user_visite_consommables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE user_visite_consommables_id_seq OWNED BY user_visite_consommables.id;


--
-- Name: user_visite_incidents; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE user_visite_incidents (
    id integer NOT NULL,
    "compteurVisiteIncidents" integer
);


ALTER TABLE public.user_visite_incidents OWNER TO nicolas;

--
-- Name: user_visite_incidents_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE user_visite_incidents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_visite_incidents_id_seq OWNER TO nicolas;

--
-- Name: user_visite_incidents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE user_visite_incidents_id_seq OWNED BY user_visite_incidents.id;


--
-- Name: user_visite_releve_compteurs; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE user_visite_releve_compteurs (
    id integer NOT NULL,
    "compteurVisiteReleveCompteurs" integer
);


ALTER TABLE public.user_visite_releve_compteurs OWNER TO nicolas;

--
-- Name: user_visite_releve_compteurs_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE user_visite_releve_compteurs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_visite_releve_compteurs_id_seq OWNER TO nicolas;

--
-- Name: user_visite_releve_compteurs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE user_visite_releve_compteurs_id_seq OWNED BY user_visite_releve_compteurs.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    last_name character varying(255),
    first_name character varying(255),
    login character varying(255),
    valide boolean,
    role character varying(255)
);


ALTER TABLE public.users OWNER TO nicolas;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO nicolas;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY arbre_decisions ALTER COLUMN id SET DEFAULT nextval('arbre_decisions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY attachments ALTER COLUMN id SET DEFAULT nextval('attachments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY consommables ALTER COLUMN id SET DEFAULT nextval('consommables_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY incidents ALTER COLUMN id SET DEFAULT nextval('incidents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY printers ALTER COLUMN id SET DEFAULT nextval('printers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY printers_consommables ALTER COLUMN id SET DEFAULT nextval('printers_consommables_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY printers_incidents ALTER COLUMN id SET DEFAULT nextval('printers_incidents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY questions ALTER COLUMN id SET DEFAULT nextval('questions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY releve_compteurs ALTER COLUMN id SET DEFAULT nextval('releve_compteurs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY user_visite_arbre_decisions ALTER COLUMN id SET DEFAULT nextval('user_visite_arbre_decisions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY user_visite_consommables ALTER COLUMN id SET DEFAULT nextval('user_visite_consommables_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY user_visite_incidents ALTER COLUMN id SET DEFAULT nextval('user_visite_incidents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY user_visite_releve_compteurs ALTER COLUMN id SET DEFAULT nextval('user_visite_releve_compteurs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: arbre_decisions; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY arbre_decisions (id, "titreAD", created_at, updated_at) FROM stdin;
\.


--
-- Name: arbre_decisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('arbre_decisions_id_seq', 1, false);


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY attachments (id, "titreAttachments", "dateAjout", created_at, updated_at) FROM stdin;
\.


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('attachments_id_seq', 1, false);


--
-- Data for Name: consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY consommables (id, code_consommables, designation_consommables, valide_consommables, created_at, updated_at, duree_vie_consommables) FROM stdin;
76	qz	qz	f	2014-12-24 09:42:05.213319	2014-12-24 09:44:12.009572	\N
69	A33K350	TN-321M Toner magenta f. C224/284/364/e	f	2014-12-05 15:15:39.708136	2014-12-24 10:15:48.987604	\N
67	A33K150	TN-321K Toner black  f. C224/284/364/e	t	2014-12-05 15:15:13.83553	2014-12-24 10:59:05.451953	\N
78	aa	zz	t	2014-12-24 11:27:27.099816	2014-12-24 11:34:05.438585	\N
80	A0XPWY1	FLACON RÉCUPERAT.TONER C5/652	t	2014-12-24 11:45:45.865827	2014-12-24 11:49:04.287377	\N
81	A3VU150	TN-711K Toner Black f. C654/754	t	2014-12-24 11:46:15.608745	2014-12-24 11:49:20.480602	\N
83	A3VU350	TN-711M Toner Magenta f. C654/754	t	2014-12-24 11:47:02.07415	2014-12-24 11:49:31.026347	\N
84	A3VU450	TN-711C Toner Cyan f. C654/754	t	2014-12-24 11:47:31.373663	2014-12-24 11:49:43.031746	\N
85	A3VU250	TN-711Y Toner Yellow f. C654/754	t	2014-12-24 11:47:58.50764	2014-12-24 11:50:00.452196	\N
\.


--
-- Name: consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('consommables_id_seq', 85, true);


--
-- Data for Name: incidents; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) FROM stdin;
30	b001	FAX Board Error 1	FAX Board Error 1	dd	f	2014-12-17 14:59:11.92333	2014-12-17 14:59:11.92333
31	b002	FAX Board Error 2	FAX Board Error 2	azd	f	2014-12-17 14:59:29.149706	2014-12-17 14:59:29.149706
32	b003	FAX Board Error 3	FAX Board Error 3	ef	f	2014-12-17 14:59:43.065107	2014-12-17 14:59:43.065107
34	b052	FAX Board mount fail	FAX Board mount failure 2	FAX Board mount failure 2	f	2014-12-17 15:00:21.347028	2014-12-17 15:00:21.347028
25	zeggg	fzfz	faz	azf	t	2014-12-17 14:49:11.125232	2014-12-17 15:12:54.936169
26	zadff	faz	azf	zaf	t	2014-12-17 14:49:22.44799	2014-12-17 15:13:07.407756
38	d	d	d	d	f	2014-12-18 14:18:27.350759	2014-12-18 14:18:27.350759
41	az	azd	azd	azd	f	2014-12-18 14:27:35.22928	2014-12-18 14:27:35.22928
39	az	az	azd	daz	t	2014-12-18 14:20:31.236724	2014-12-18 14:40:01.898326
40	az	az	az	z	t	2014-12-18 14:27:18.513537	2014-12-18 14:40:11.934305
33	b051	FAX Board mount fail	FAX Board mount failure 1	azef	t	2014-12-17 15:00:04.501878	2014-12-18 14:47:45.906978
42	az	azf	azfa	azf	f	2014-12-18 15:09:16.179995	2014-12-18 15:09:16.179995
43	qzf	qzf	qzfqfz	fqz	f	2014-12-18 15:11:14.001623	2014-12-18 15:11:14.001623
44	adz	zfazz	z	z	t	2014-12-18 16:34:31.34434	2014-12-18 16:37:51.636533
\.


--
-- Name: incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('incidents_id_seq', 44, true);


--
-- Data for Name: printers; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY printers (id, code_printers, description_printers, created_at, updated_at, img) FROM stdin;
4	C284E	A3 Couleur 28 ppm	2014-12-05 15:14:44.055472	2014-12-17 13:45:42.789279	c284e.jpg
5	Bizhub C364E	Multifonction A3 Couleur 36 PPMff	2014-12-05 15:20:17.559784	2014-12-18 14:41:57.663765	c364e.jpg
35	bizhub C654	MFP Couleur A3\r\n65 PPM N&b\r\n60 PPM Couleur	2014-12-24 11:45:06.649622	2014-12-24 11:45:06.649622	bizhub_C654.jpg
30	c454e	A3 Couleur 45 PPM	2014-12-16 10:35:49.664767	2014-12-24 11:50:53.234136	bizhub_c454e_df-701_fs-533_pc-410_f_4c_150dpi_0.jpg
31	c280	MFP A3 Couleur 28PPM	2014-12-17 14:58:34.960742	2014-12-24 11:52:39.315167	Konica-Minolta-Bizhub-C2804.jpg
\.


--
-- Data for Name: printers_consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY printers_consommables (id, consommable_id, printer_id, created_at, updated_at) FROM stdin;
24	67	4	2014-12-05 15:15:13.862524	2014-12-05 15:15:13.862524
26	69	4	2014-12-05 15:15:39.710349	2014-12-05 15:15:39.710349
58	76	5	2014-12-24 09:42:05.377207	2014-12-24 09:42:05.377207
60	78	33	2014-12-24 11:27:27.104162	2014-12-24 11:27:27.104162
62	80	35	2014-12-24 11:45:45.869	2014-12-24 11:45:45.869
63	81	35	2014-12-24 11:46:15.620221	2014-12-24 11:46:15.620221
65	83	35	2014-12-24 11:47:02.078586	2014-12-24 11:47:02.078586
66	84	35	2014-12-24 11:47:31.376298	2014-12-24 11:47:31.376298
67	85	35	2014-12-24 11:47:58.510368	2014-12-24 11:47:58.510368
\.


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

COPY printers_incidents (id, incident_id, printer_id, created_at, updated_at) FROM stdin;
8	25	30	2014-12-17 14:49:11.137049	2014-12-17 14:49:11.137049
9	26	30	2014-12-17 14:49:22.451185	2014-12-17 14:49:22.451185
13	30	31	2014-12-17 14:59:11.92613	2014-12-17 14:59:11.92613
14	31	31	2014-12-17 14:59:29.155801	2014-12-17 14:59:29.155801
15	32	31	2014-12-17 14:59:43.067928	2014-12-17 14:59:43.067928
16	33	31	2014-12-17 15:00:04.504857	2014-12-17 15:00:04.504857
17	34	31	2014-12-17 15:00:21.349726	2014-12-17 15:00:21.349726
21	38	5	2014-12-18 14:18:27.357117	2014-12-18 14:18:27.357117
22	39	5	2014-12-18 14:20:31.24045	2014-12-18 14:20:31.24045
23	40	5	2014-12-18 14:27:18.518833	2014-12-18 14:27:18.518833
24	41	5	2014-12-18 14:27:35.232996	2014-12-18 14:27:35.232996
25	42	4	2014-12-18 15:09:16.183246	2014-12-18 15:09:16.183246
26	43	4	2014-12-18 15:11:14.005173	2014-12-18 15:11:14.005173
27	44	30	2014-12-18 16:34:31.602892	2014-12-18 16:34:31.602892
\.


--
-- Name: printers_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_incidents_id_seq', 27, true);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY questions (id, "titreQuestions", "libelleQuestions", "IDCheminOui", "IDCheminNon", created_at, updated_at) FROM stdin;
\.


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('questions_id_seq', 1, false);


--
-- Data for Name: releve_compteurs; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY releve_compteurs (id, description_releve_compteurs, valide_releve_compteurs, created_at, updated_at, printer_id) FROM stdin;
1	azdazdazdazdazdazdazd	f	2014-12-04 11:36:33.011159	2014-12-04 11:36:33.011159	2
2	ffffffffffffffffffffff	t	2014-12-04 13:08:11.915286	2014-12-04 13:08:11.915286	2
\.


--
-- Name: releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('releve_compteurs_id_seq', 2, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY schema_migrations (version) FROM stdin;
20141022181522
20141023114306
20141106142640
20141106142849
20141023120533
20141023121935
20141023122058
20141023122224
20141023123339
20141023123439
20141023123802
20141023123820
20141023124654
20141104085224
20141104142621
20141106090215
20141106152900
20141107105752
20141107080845
20141107104506
20141201145702
20141204101244
20141204101245
20141210181048
20141215122704
20141218144754
\.


--
-- Data for Name: user_visite_arbre_decisions; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY user_visite_arbre_decisions (id, "compteurVisiteArbreDecision") FROM stdin;
\.


--
-- Name: user_visite_arbre_decisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('user_visite_arbre_decisions_id_seq', 1, false);


--
-- Data for Name: user_visite_consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY user_visite_consommables (id, "compteurVisiteConsommables") FROM stdin;
\.


--
-- Name: user_visite_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('user_visite_consommables_id_seq', 1, false);


--
-- Data for Name: user_visite_incidents; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY user_visite_incidents (id, "compteurVisiteIncidents") FROM stdin;
\.


--
-- Name: user_visite_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('user_visite_incidents_id_seq', 1, false);


--
-- Data for Name: user_visite_releve_compteurs; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY user_visite_releve_compteurs (id, "compteurVisiteReleveCompteurs") FROM stdin;
\.


--
-- Name: user_visite_releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('user_visite_releve_compteurs_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, last_name, first_name, login, valide, role) FROM stdin;
4	nicolas@konica.fr	$2a$10$cCZNeg03.8I0EgrcRhLQa.GK3z.GsY/q0kXBGaGkhv/1Y0JuboRpu	\N	\N	\N	0	\N	\N	\N	\N	2014-12-01 14:59:51.978557	2014-12-01 14:59:51.978557	nico	nico	nico	f	ADMIN
16	aa@aa.fr	$2a$10$zZH1XPjkqUfsTAU4xBCa3e/DTv9.2/SFzv2h6UDmiXTEjWopZmiWO	\N	\N	\N	1	2014-12-18 13:38:34.054075	2014-12-18 13:38:34.054075	150.17.157.170	150.17.157.170	2014-12-18 13:38:00.941761	2014-12-18 13:38:34.054843	aa	aa	aa	t	HL1
6	testfalse@f.fr	$2a$10$582KVLgJxFi/N5O64n849OAak5LZBD.We0.sTcshcIJyP5cByJbFa	\N	\N	\N	2	2014-12-16 11:29:54.236261	2014-12-16 11:29:54.236261	127.0.0.1	127.0.0.1	2014-12-16 11:28:47.206225	2014-12-16 11:31:53.036689	test	false	tFalse	f	ADMIN
19	gile@konicaminolta.fr	$2a$10$7RPmbTE2ybDvlWkkVf4wl.so5BIO9MSlk3WXVGH3ixREJo0G1FWaW	\N	\N	\N	2	2014-12-18 14:58:51.505057	2014-12-18 14:58:51.505057	127.0.0.1	127.0.0.1	2014-12-18 14:57:33.485901	2014-12-18 14:58:51.506707	Gile	V	GV	t	HL2
17	karim.seddar@konicaminolta.fr	$2a$10$I8Y8pm63kMAmzJLReTfCMuNOnJbdmyJayrHeCsyY.H8QqhBN7B/8G	22c9d5de0949177482422425175ed27097ab01b21b54c4fba1df1c3d8bd9e963	2014-12-18 13:51:19.276733	2014-12-18 16:45:41.080894	4	2014-12-18 16:45:41.210793	2014-12-18 16:45:41.210793	150.17.156.122	150.17.156.122	2014-12-18 13:41:10.958338	2014-12-18 16:45:41.212785	SEDDAR	Karim	FRCRUKSE	t	HL2
1	n.sebilleadmin@gmail.fr	$2a$10$m7bXHWDvhMKYjnT/QaIc4.HfmvESD/ubYbCkILeeZ/foPOsECATdS	\N	\N	2014-12-18 09:34:24.809491	46	2014-12-24 08:58:26.114916	2014-12-24 08:58:26.114916	127.0.0.1	127.0.0.1	2014-12-01 14:57:52.626461	2014-12-24 08:58:26.116713	nicoA	nicoA	nicoA	t	ADMIN
5	frederic.chainaud@konicaminolta.fr	$2a$10$kbgLAVHHgTORx09OtnVIk.TEGQB/6pHh2w6JSztqdmYQRLl3evRyu	\N	\N	2014-12-05 15:12:50.750526	4	2014-12-24 11:36:06.483724	2014-12-24 11:36:06.483724	150.17.156.126	150.17.156.126	2014-12-05 15:12:31.413003	2014-12-24 11:36:06.484953	Frederic	Chainaud	frederic.chainaud@konicaminolta.fr	t	ADMIN
18	test@km.fr	$2a$10$S8W5Ndg/PRWJga52he1vJ.T3r1w8iHHVB9nocS9NUowMervaY63si	\N	\N	\N	2	2014-12-18 14:37:22.013044	2014-12-18 14:37:22.013044	127.0.0.1	127.0.0.1	2014-12-18 14:33:53.893273	2014-12-18 14:37:22.014037	aa	aa	aa	t	HL1
3	n.sebillehl2@gmail.fr	$2a$10$XE0zP8dycj0.wkYqrKKKg.tEXcjTDwPf8C9TwWHH3ec.j85bs5rxe	\N	\N	\N	9	2014-12-18 14:40:19.454235	2014-12-18 14:40:19.454235	127.0.0.1	127.0.0.1	2014-12-01 14:59:19.954959	2014-12-18 14:40:19.455257	nicoHL2	nicoHL2	nicoHL2	t	HL2
7	nicolas.sebille@konicaminolta.fr	$2a$10$Gg4puqappsYAXTneMgxlF.VEPKaEPLZmzRV2iuU8zuJK3z80rNrce	8b01e5498fc41946168956459000b99debf110711347c8205f014f56a8577bf4	2014-12-16 16:22:32.104264	\N	0	\N	\N	\N	\N	2014-12-16 14:29:31.330199	2014-12-16 16:22:32.105144	Nicolas	Sebille	Nico	f	ADMIN
10			SXo-715CVkheoYseUGNv	\N	\N	1	2014-12-17 13:41:31.304329	2014-12-17 13:41:31.304329	127.0.0.1	127.0.0.1	2014-12-17 13:41:31.305888	2014-12-17 13:41:31.305888	\N	\N	\N	\N	\N
9	sebille.nicolas.bts@gmail.com	$2a$10$74u0ATKVBA9guEjEn1fjzuZcRP1TD7ETJyAUtQ5c1I4Z4V6OWgwZS	BZJuiMnCU_zJqHb7rhxx	2014-12-17 14:17:59.083534	\N	7	2014-12-17 14:18:38.797057	2014-12-17 14:18:38.797057	127.0.0.1	127.0.0.1	2014-12-16 16:46:47.969707	2014-12-17 14:18:38.798062	nico	gmail	nicoGmail	t	ADMIN
2	n.sebillehl1@gmail.fr	$2a$10$aMdPkr556olMnaaWT6z8vO7mqfuWlAQteoXqled/wLOWk0cg0JfL6	\N	\N	\N	4	2014-12-18 09:22:57.298765	2014-12-18 09:22:57.298765	127.0.0.1	127.0.0.1	2014-12-01 14:58:49.364077	2014-12-18 09:22:57.299921	nicoHL1	nicoHL1	nicoHL1	t	HL1
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('users_id_seq', 19, true);


--
-- Name: arbre_decisions_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY arbre_decisions
    ADD CONSTRAINT arbre_decisions_pkey PRIMARY KEY (id);


--
-- Name: attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- Name: consommables_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY consommables
    ADD CONSTRAINT consommables_pkey PRIMARY KEY (id);


--
-- Name: incidents_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY incidents
    ADD CONSTRAINT incidents_pkey PRIMARY KEY (id);


--
-- Name: printer_consos_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY printers_consommables
    ADD CONSTRAINT printer_consos_pkey PRIMARY KEY (id);


--
-- Name: printers_incidents_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY printers_incidents
    ADD CONSTRAINT printers_incidents_pkey PRIMARY KEY (id);


--
-- Name: printers_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY printers
    ADD CONSTRAINT printers_pkey PRIMARY KEY (id);


--
-- Name: questions_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: releve_compteurs_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY releve_compteurs
    ADD CONSTRAINT releve_compteurs_pkey PRIMARY KEY (id);


--
-- Name: user_visite_arbre_decisions_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY user_visite_arbre_decisions
    ADD CONSTRAINT user_visite_arbre_decisions_pkey PRIMARY KEY (id);


--
-- Name: user_visite_consommables_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY user_visite_consommables
    ADD CONSTRAINT user_visite_consommables_pkey PRIMARY KEY (id);


--
-- Name: user_visite_incidents_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY user_visite_incidents
    ADD CONSTRAINT user_visite_incidents_pkey PRIMARY KEY (id);


--
-- Name: user_visite_releve_compteurs_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY user_visite_releve_compteurs
    ADD CONSTRAINT user_visite_releve_compteurs_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

