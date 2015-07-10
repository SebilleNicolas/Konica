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
-- Name: attachments; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE attachments (
    id integer NOT NULL,
    filename character varying(255),
    file character varying(255),
    type_attachment character varying(255),
    printer_id integer,
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
    duree_vie_consommables character varying(255),
    replacement_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
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
-- Name: decision_trees; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE decision_trees (
    id integer NOT NULL,
    title_decision_tree character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.decision_trees OWNER TO nicolas;

--
-- Name: decision_trees_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE decision_trees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.decision_trees_id_seq OWNER TO nicolas;

--
-- Name: decision_trees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE decision_trees_id_seq OWNED BY decision_trees.id;


--
-- Name: incidents; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE incidents (
    id integer NOT NULL,
    code_incidents character varying(255),
    intitule_incidents character varying(255),
    description_incidents text,
    solution_incidents text,
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
    primary_key character varying(255),
    description_printers text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
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
    title_question character varying(255),
    number_question character varying(255),
    id_route_yes integer,
    id_route_no integer,
    decision_tree_id integer,
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
    description_releve_compteurs text,
    valide_releve_compteurs boolean,
    printer_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
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
-- Name: replacements; Type: TABLE; Schema: public; Owner: nicolas; Tablespace: 
--

CREATE TABLE replacements (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.replacements OWNER TO nicolas;

--
-- Name: replacements_id_seq; Type: SEQUENCE; Schema: public; Owner: nicolas
--

CREATE SEQUENCE replacements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.replacements_id_seq OWNER TO nicolas;

--
-- Name: replacements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nicolas
--

ALTER SEQUENCE replacements_id_seq OWNED BY replacements.id;


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

ALTER TABLE ONLY attachments ALTER COLUMN id SET DEFAULT nextval('attachments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY consommables ALTER COLUMN id SET DEFAULT nextval('consommables_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: nicolas
--

ALTER TABLE ONLY decision_trees ALTER COLUMN id SET DEFAULT nextval('decision_trees_id_seq'::regclass);


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

ALTER TABLE ONLY replacements ALTER COLUMN id SET DEFAULT nextval('replacements_id_seq'::regclass);


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
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY attachments (id, filename, file, type_attachment, printer_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('attachments_id_seq', 1, false);


--
-- Data for Name: consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY consommables (id, code_consommables, designation_consommables, valide_consommables, duree_vie_consommables, replacement_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('consommables_id_seq', 1, false);


--
-- Data for Name: decision_trees; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY decision_trees (id, title_decision_tree, created_at, updated_at) FROM stdin;
\.


--
-- Name: decision_trees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('decision_trees_id_seq', 1, false);


--
-- Data for Name: incidents; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY incidents (id, code_incidents, intitule_incidents, description_incidents, solution_incidents, valide_incidents, created_at, updated_at) FROM stdin;
\.


--
-- Name: incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('incidents_id_seq', 1, false);


--
-- Data for Name: printers; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY printers (id, code_printers, primary_key, description_printers, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: printers_consommables; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY printers_consommables (id, consommable_id, printer_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: printers_consommables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_consommables_id_seq', 1, false);


--
-- Name: printers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_id_seq', 1, false);


--
-- Data for Name: printers_incidents; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY printers_incidents (id, incident_id, printer_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: printers_incidents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('printers_incidents_id_seq', 1, false);


--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY questions (id, title_question, number_question, id_route_yes, id_route_no, decision_tree_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('questions_id_seq', 1, false);


--
-- Data for Name: releve_compteurs; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY releve_compteurs (id, description_releve_compteurs, valide_releve_compteurs, printer_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: releve_compteurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('releve_compteurs_id_seq', 1, false);


--
-- Data for Name: replacements; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY replacements (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Name: replacements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('replacements_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: nicolas
--

COPY schema_migrations (version) FROM stdin;
20150225083407
20141023123820
20141215122704
20141023123339
20141204101244
20141023120533
20141023123802
20141023123439
20141023122058
20141023122224
20141023114306
20141104085224
20141104142621
20141107104506
20141106152900
20141023124654
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
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nicolas
--

SELECT pg_catalog.setval('users_id_seq', 1, false);


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
-- Name: decision_trees_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY decision_trees
    ADD CONSTRAINT decision_trees_pkey PRIMARY KEY (id);


--
-- Name: incidents_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY incidents
    ADD CONSTRAINT incidents_pkey PRIMARY KEY (id);


--
-- Name: printers_consommables_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY printers_consommables
    ADD CONSTRAINT printers_consommables_pkey PRIMARY KEY (id);


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
-- Name: replacements_pkey; Type: CONSTRAINT; Schema: public; Owner: nicolas; Tablespace: 
--

ALTER TABLE ONLY replacements
    ADD CONSTRAINT replacements_pkey PRIMARY KEY (id);


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

