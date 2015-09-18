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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: corsheaders_corsmodel; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE corsheaders_corsmodel (
    id integer NOT NULL,
    cors character varying(255) NOT NULL
);


ALTER TABLE public.corsheaders_corsmodel OWNER TO postgres;

--
-- Name: corsheaders_corsmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE corsheaders_corsmodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.corsheaders_corsmodel_id_seq OWNER TO postgres;

--
-- Name: corsheaders_corsmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE corsheaders_corsmodel_id_seq OWNED BY corsheaders_corsmodel.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.south_migrationhistory OWNER TO postgres;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.south_migrationhistory_id_seq OWNER TO postgres;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: user_auth_customerdetails; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_auth_customerdetails (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    auth_key character varying(255) NOT NULL,
    currency character varying(5) NOT NULL,
    personalization boolean NOT NULL
);


ALTER TABLE public.user_auth_customerdetails OWNER TO postgres;

--
-- Name: user_auth_customerdetails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_auth_customerdetails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_auth_customerdetails_id_seq OWNER TO postgres;

--
-- Name: user_auth_customerdetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_auth_customerdetails_id_seq OWNED BY user_auth_customerdetails.id;


--
-- Name: user_auth_fieldrestrict; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_auth_fieldrestrict (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    customer_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_auth_fieldrestrict OWNER TO postgres;

--
-- Name: user_auth_fieldrestrict_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_auth_fieldrestrict_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_auth_fieldrestrict_id_seq OWNER TO postgres;

--
-- Name: user_auth_fieldrestrict_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_auth_fieldrestrict_id_seq OWNED BY user_auth_fieldrestrict.id;


--
-- Name: user_auth_machineinfo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_auth_machineinfo (
    id integer NOT NULL,
    name character varying(25),
    host character varying(255)
);


ALTER TABLE public.user_auth_machineinfo OWNER TO postgres;

--
-- Name: user_auth_machineinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_auth_machineinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_auth_machineinfo_id_seq OWNER TO postgres;

--
-- Name: user_auth_machineinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_auth_machineinfo_id_seq OWNED BY user_auth_machineinfo.id;


--
-- Name: user_auth_otherinfo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_auth_otherinfo (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    customer_id integer NOT NULL
);


ALTER TABLE public.user_auth_otherinfo OWNER TO postgres;

--
-- Name: user_auth_otherinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_auth_otherinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_auth_otherinfo_id_seq OWNER TO postgres;

--
-- Name: user_auth_otherinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_auth_otherinfo_id_seq OWNED BY user_auth_otherinfo.id;


--
-- Name: user_auth_profile; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_auth_profile (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    customer_name_id integer NOT NULL,
    machine_location_id integer NOT NULL,
    albus_url character varying(255) NOT NULL,
    solr_url character varying(255) NOT NULL,
    autosuggest_url character varying(255),
    relevance_feedback boolean NOT NULL,
    created_by_id integer,
    production boolean NOT NULL
);


ALTER TABLE public.user_auth_profile OWNER TO postgres;

--
-- Name: user_auth_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_auth_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_auth_profile_id_seq OWNER TO postgres;

--
-- Name: user_auth_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_auth_profile_id_seq OWNED BY user_auth_profile.id;


--
-- Name: user_auth_userdetails; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE user_auth_userdetails (
    id integer NOT NULL,
    privilege integer NOT NULL,
    is_staff boolean NOT NULL,
    profile_id integer NOT NULL,
    user_id integer NOT NULL,
    password_changed boolean NOT NULL
);


ALTER TABLE public.user_auth_userdetails OWNER TO postgres;

--
-- Name: user_auth_userdetails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_auth_userdetails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_auth_userdetails_id_seq OWNER TO postgres;

--
-- Name: user_auth_userdetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_auth_userdetails_id_seq OWNED BY user_auth_userdetails.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY corsheaders_corsmodel ALTER COLUMN id SET DEFAULT nextval('corsheaders_corsmodel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_customerdetails ALTER COLUMN id SET DEFAULT nextval('user_auth_customerdetails_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_fieldrestrict ALTER COLUMN id SET DEFAULT nextval('user_auth_fieldrestrict_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_machineinfo ALTER COLUMN id SET DEFAULT nextval('user_auth_machineinfo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_otherinfo ALTER COLUMN id SET DEFAULT nextval('user_auth_otherinfo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_profile ALTER COLUMN id SET DEFAULT nextval('user_auth_profile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_userdetails ALTER COLUMN id SET DEFAULT nextval('user_auth_userdetails_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add migration history	7	add_migrationhistory
20	Can change migration history	7	change_migrationhistory
21	Can delete migration history	7	delete_migrationhistory
22	Can add cors model	8	add_corsmodel
23	Can change cors model	8	change_corsmodel
24	Can delete cors model	8	delete_corsmodel
25	Can add customer details	9	add_customerdetails
26	Can change customer details	9	change_customerdetails
27	Can delete customer details	9	delete_customerdetails
28	Can add machine info	10	add_machineinfo
29	Can change machine info	10	change_machineinfo
30	Can delete machine info	10	delete_machineinfo
31	Can add profile	11	add_profile
32	Can change profile	11	change_profile
33	Can delete profile	11	delete_profile
34	Can add user details	12	add_userdetails
35	Can change user details	12	change_userdetails
36	Can delete user details	12	delete_userdetails
37	Can add other info	13	add_otherinfo
38	Can change other info	13	change_otherinfo
39	Can delete other info	13	delete_otherinfo
40	Can add field restrict	14	add_fieldrestrict
41	Can change field restrict	14	change_fieldrestrict
42	Can delete field restrict	14	delete_fieldrestrict
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 42, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
18	pbkdf2_sha256$12000$WeD4jyRNvhJH$dpFKur2uJ6CxZeKFD3VRvXiV3GED+4RBROjFRQ3v354=	2015-04-27 15:48:21+05:30	f	arunmadhanagopal@gmail.com	arun	m	arunmadhanagopal@gmail.com	f	t	2015-04-27 15:48:21+05:30
2	pbkdf2_sha256$12000$6PBmwOAC1TpN$pjhPnqJRgU8lkSN7iZc6XPHXk3VyNju5FK0eKgcQIkw=	2014-12-11 16:50:07+05:30	t	arun				f	t	2014-12-11 16:50:07+05:30
3	pbkdf2_sha256$12000$nOobOa0TNVzj$7ZOFSCKrlb1ZydrO3ifRTIAsAMGdJBd3k6W7X7u3Sig=	2015-04-20 19:33:26+05:30	f	external				f	t	2015-04-20 19:33:26+05:30
19	pbkdf2_sha256$12000$BtsgJMthGNDQ$i0GhbINzWtcvMXfytKjojUk+AShK361rAc+9WXI+4EM=	2015-04-29 15:21:10.839719+05:30	f	arun@zettata.com	arun	m	arun@zettata.com	f	t	2015-04-29 15:21:10.839843+05:30
23	pbkdf2_sha256$12000$8AapSeIvBTfQ$n/ozcA2CkXDTTELK1G9mF3TleIwS9k9zlYKAG/7mVkc=	2015-04-29 15:28:40.070232+05:30	f	aas@asd.com	asd	asdsd	aas@asd.com	f	t	2015-04-29 15:28:40.070333+05:30
1	pbkdf2_sha256$12000$dmtebVSTRU1C$nAm9pXobPG2d5H3UFOIKTdtDIUORi91ozZVlJUfInT0=	2015-08-07 15:04:55.27596+05:30	t	admin			arun@zettata.com	t	t	2014-12-11 13:50:50.244209+05:30
25	pbkdf2_sha256$12000$Ca5kra5vdDrt$/ch5sS5EgP9W4d2VRn5Cj9Di8xjpuKXjmSoeggoJBnY=	2015-04-29 15:31:05.93519+05:30	f	asd@asd.com	zcas	aszxc	asd@asd.com	f	t	2015-04-29 15:31:05.935434+05:30
26	pbkdf2_sha256$12000$ou38ojzkzwkX$2/6SESHWGFtGiImAvN6B6vnofYgItQ+GwiBGy5BJzdE=	2015-04-29 16:21:49.589228+05:30	f	asd2sad@asd.com	final	test	asd2sad@asd.com	f	t	2015-04-29 16:21:49.589292+05:30
27	pbkdf2_sha256$12000$P3cL6El5k0RN$+kpCW2X1qj4Zkrt2Nncss1IeSQG8dEoVCosGI14DyGU=	2015-04-29 16:24:24.963975+05:30	f	zxczx@asd	zxc	zxc	zxczx@asd	f	t	2015-04-29 16:24:24.96405+05:30
28	pbkdf2_sha256$12000$E4kd8cwg706y$hrvsfhYVtZ7gHgDySoJoWmr4+YzpwBPnaWH2tnDgjWY=	2015-04-29 16:27:31.086396+05:30	f	sss@sss.com	ass	sss	sss@sss.com	f	t	2015-04-29 16:27:31.086509+05:30
29	pbkdf2_sha256$12000$bMm6V8SUaOT0$Azg4TdnE9wzZ1OU8ZyFXVzVkTfpU2qT/v0KNG/468j0=	2015-04-29 16:30:23.152929+05:30	f	cc@ccc	aasscc	ccc	cc@ccc	f	t	2015-04-29 16:30:23.153003+05:30
24	pbkdf2_sha256$12000$2iWUtnawQo1w$fii0m4FgY0WKYgnNIvwwwwmxgSMazxvpnbRejbpT204=	2015-04-29 15:30:42+05:30	f	z	zzzc	zzzz	z@z.com	f	t	2015-04-29 15:30:42+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 34, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: corsheaders_corsmodel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY corsheaders_corsmodel (id, cors) FROM stdin;
\.


--
-- Name: corsheaders_corsmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('corsheaders_corsmodel_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2014-12-11 16:48:40.235467+05:30	1	9	1	shopclues	1	
2	2014-12-11 16:49:03.451996+05:30	1	10	1	local	1	
3	2014-12-11 16:50:07.404879+05:30	1	4	2	arun	1	
4	2014-12-11 16:50:31.814142+05:30	1	11	1	shopclues	1	
5	2014-12-11 16:56:19.148181+05:30	1	9	1	shopclues	2	Changed auth_key.
6	2014-12-11 17:01:46.162806+05:30	1	12	1	arun	1	
7	2014-12-11 17:02:15.66976+05:30	1	10	1	local	2	Changed host.
8	2015-01-16 13:22:31.342125+05:30	1	11	8	shopcluesz	2	Changed production and created_by.
9	2015-01-16 13:22:45.927224+05:30	1	11	8	shopcluesz	2	Changed production.
10	2015-01-16 13:24:02.455174+05:30	1	12	1	arun	2	Changed is_staff.
11	2015-01-16 13:39:37.929839+05:30	1	12	1	arun	2	Changed is_staff.
12	2015-01-20 12:18:17.166039+05:30	1	9	4	yepme	1	
13	2015-02-06 15:39:27.756344+05:30	1	9	3	staples	3	
14	2015-02-06 15:39:36.192795+05:30	1	9	2	staples	2	Changed auth_key and currency.
15	2015-02-06 15:44:33.966813+05:30	1	11	9	staples	2	No fields changed.
16	2015-02-10 15:13:56.040628+05:30	1	11	22	staples-2	3	
17	2015-02-10 15:14:01.755078+05:30	1	11	21	staples-2	3	
18	2015-02-10 15:14:19.834691+05:30	1	11	19	aaa	3	
19	2015-02-10 15:14:19.85474+05:30	1	11	18	aaaaw	3	
20	2015-02-10 15:14:19.86533+05:30	1	11	15	jamaikara	3	
21	2015-02-10 15:14:19.876303+05:30	1	11	14	aaa	3	
22	2015-02-10 15:14:19.8876+05:30	1	11	13	arun123	3	
23	2015-02-10 15:14:19.898542+05:30	1	11	11	asasdsa	3	
24	2015-02-10 15:14:19.909577+05:30	1	11	10	asdsa	3	
25	2015-02-12 18:50:47.81198+05:30	1	12	1	arun	2	Changed is_staff.
26	2015-02-12 19:01:02.672717+05:30	1	11	12	shopclues-test	2	Changed relevance_feedback.
27	2015-02-12 19:01:23.224582+05:30	1	11	12	shopclues-test	2	Changed relevance_feedback.
28	2015-02-12 19:01:31.307247+05:30	1	12	1	arun	2	Changed is_staff.
29	2015-04-20 17:08:06.425443+05:30	1	12	1	arun	2	Changed privilege.
30	2015-04-20 17:08:45.703899+05:30	1	12	2	admin	1	
31	2015-04-20 19:33:26.364559+05:30	1	4	3	external	1	
32	2015-04-20 19:33:44.809101+05:30	1	4	3	external	2	No fields changed.
33	2015-04-24 15:36:42.023631+05:30	1	4	4	arunmadhanagopal@gmail.com	3	
34	2015-04-24 16:13:51.443394+05:30	1	4	5	arunmadhanagopal@gmail.com	3	
35	2015-04-24 16:15:00.780985+05:30	1	4	6	arunmadhanagopal@gmail.com	3	
36	2015-04-27 14:08:47.411067+05:30	1	12	1	arun	2	Changed is_staff.
37	2015-04-27 14:09:00.58794+05:30	1	12	6	arunmadhanagopal@gmail.com	3	
38	2015-04-27 14:09:10.132614+05:30	1	4	7	arunmadhanagopal@gmail.com	3	
39	2015-04-27 14:30:01.449351+05:30	1	4	1	admin	2	Changed password.
40	2015-04-27 14:56:06.617979+05:30	1	4	8	arunmadhanagopal@gmail.com	3	
41	2015-04-27 15:04:40.182262+05:30	1	4	9	arunmadhanagopal@gmail.com	3	
42	2015-04-27 15:09:14.883476+05:30	1	4	10	arunmadhanagopal@gmail.com	3	
43	2015-04-27 15:11:22.841758+05:30	1	4	11	arunmadhanagopal@gmail.com	3	
44	2015-04-27 15:37:01.953792+05:30	1	4	12	arunmadhanagopal@gmail.com	3	
45	2015-04-27 15:37:41.063491+05:30	1	4	13	arunmadhanagopal@gmail.com	3	
46	2015-04-27 15:41:34.895355+05:30	1	4	14	arunmadhanagopal@gmail.com	3	
47	2015-04-27 15:48:10.186582+05:30	1	4	17	arunmadhanagopal@gmail.com	3	
48	2015-04-27 16:47:33.962701+05:30	1	4	18	arunmadhanagopal@gmail.com	2	Changed is_active.
49	2015-04-27 16:51:57.865859+05:30	1	4	2	arun	2	Changed is_active.
50	2015-04-27 16:59:07.874701+05:30	1	4	2	arun	2	Changed is_active.
51	2015-04-28 11:53:53.604193+05:30	1	4	18	arunmadhanagopal@gmail.com	2	Changed is_active.
52	2015-04-28 13:25:31.760807+05:30	1	12	1	arun	2	Changed privilege.
53	2015-04-28 13:39:03.007847+05:30	1	12	1	arun	2	Changed privilege.
54	2015-04-28 13:47:58.830445+05:30	1	12	1	arun	2	Changed is_staff.
55	2015-04-30 17:37:29.486647+05:30	1	12	1	arun	2	Changed is_staff.
56	2015-04-30 17:37:48.680656+05:30	1	12	22	cc@ccc	3	
57	2015-04-30 17:37:48.698451+05:30	1	12	21	sss@sss.com	3	
58	2015-04-30 17:37:48.709192+05:30	1	12	20	zxczx@asd	3	
59	2015-04-30 17:37:48.720774+05:30	1	12	19	asd2sad@asd.com	3	
60	2015-04-30 17:37:48.731499+05:30	1	12	18	asd@asd.com	3	
61	2015-04-30 17:37:48.742756+05:30	1	12	17	z@z.com	3	
62	2015-04-30 17:37:48.7542+05:30	1	12	16	aas@asd.com	3	
63	2015-04-30 17:37:48.764691+05:30	1	12	2	admin	3	
64	2015-05-04 19:28:00.840906+05:30	1	4	18	arunmadhanagopal@gmail.com	2	Changed is_active.
65	2015-05-08 15:27:27.09438+05:30	1	12	1	arun	2	Changed is_staff and profile.
66	2015-07-01 16:55:45.124085+05:30	1	9	5	livecareer	1	
67	2015-07-08 12:59:42.417669+05:30	1	14	1	FieldRestrict object	1	
68	2015-07-08 13:00:02.276939+05:30	1	14	2	FieldRestrict object	1	
69	2015-08-07 15:05:09.546122+05:30	1	12	1	arun	2	Changed is_staff.
70	2015-08-07 17:10:41.38937+05:30	1	12	1	arun	2	No fields changed.
71	2015-08-07 17:11:19.744013+05:30	1	4	24	z	2	Changed username.
72	2015-08-07 17:11:30.153398+05:30	1	4	1	admin	2	Changed password.
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 72, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	migration history	south	migrationhistory
8	cors model	corsheaders	corsmodel
9	customer details	user_auth	customerdetails
10	machine info	user_auth	machineinfo
11	profile	user_auth	profile
12	user details	user_auth	userdetails
13	other info	user_auth	otherinfo
14	field restrict	user_auth	fieldrestrict
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
jv4cuvvntq19ne047cs7czkr91mask8n	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2014-12-25 13:58:33.655937+05:30
v6syzd5km26y1pz8cr8agqafotub1kk9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-12 15:45:17.318491+05:30
7xtwbptfvoj68drca2wvxbx05kp56zzt	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2014-12-25 15:38:18.102056+05:30
xhmy0lzjq8ndsrrpz80ov49ryz8o3apk	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2014-12-25 16:24:49.025303+05:30
n0dx5gok3ymd62els0x8wd1aapa4ued2	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-25 17:06:47.232347+05:30
9fbvxwvwkfzu7dbyx5ph9jp3k3547dv5	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-25 17:06:47.546087+05:30
raaux4dz7f6bji3jg77na691fkm5neyz	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-25 19:23:23.34715+05:30
pw2v8zic57hrkb6iudeowb0kq7oizdsz	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-26 11:33:44.543889+05:30
pdlvyamgdrncqjmw9vzifr5tg8hv0o7u	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-27 15:18:02.714143+05:30
7efux2hiaem2zltqyfctjjd1oduikd8e	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-27 15:20:18.021246+05:30
6wqu0vix9e4cwhaxamv9bx81d6gewxen	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-27 15:21:41.764373+05:30
8620nabnhbmu0i798j9qlwmkkcvyqzkk	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-27 16:59:21.032085+05:30
ffe70imlhd5widr33knq22rx4vkfeca9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-27 16:59:21.045313+05:30
f3s5w43wg3aglmct7io9f1fgzl6far3b	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-27 16:59:21.047904+05:30
4rq175c9hvhft3s5q0x376jz3inz6mpr	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-29 13:50:46.866356+05:30
1ptu0b1j2whacho4evso84lx8aqg1k39	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-30 17:36:42.468697+05:30
t7bv1swmos6e7jkddxrdolnkw8xzs0j9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-30 17:36:42.521589+05:30
ui0bxngulofblzofh125kr4o7uuyk2tg	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-30 17:36:42.524582+05:30
kmdwozcwvypi45lqz7wl39ur9mjjg1eu	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2014-12-31 12:31:00.03532+05:30
7a7zlzm0dc7auxjcw3981nukims518d8	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-05 17:23:00.729661+05:30
xc1ljstalc3kns0swrqvdy0hqj3lbl7w	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-06 13:25:35.141595+05:30
1blpvgfkd8bfs0q2p0hg2m9o7m4hxc6y	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-07 11:43:47.104706+05:30
vuerp3kfcgyei9wncnpflwi84sfgsjd2	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-07 15:17:15.939651+05:30
q5aqhfabo80s70zcmvl934cynnbcsuyt	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-07 17:32:00.054388+05:30
18jkuze3os5ehoq1w3096xho5c0wyrf1	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-07 17:32:09.743774+05:30
ent6lhs12t03250ahy53r5hijvq3t6be	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-12 16:31:21.943828+05:30
55ggthy80r2ba7td5mgs443nkwmpmm63	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-13 12:37:11.151255+05:30
i2f8rua8u6zbhr8o8fuh5doob9qc7v8m	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-23 13:13:03.077826+05:30
ams2aswp04j9php4h10b2q59w3ndhst4	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-26 17:21:58.667263+05:30
wxquv41if0g64agy6eypusru94hax2x9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-27 11:50:39.551106+05:30
8w9x9aveh06b2j0mftg0us0msegtfa73	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-01-30 13:22:09.47097+05:30
vqble2dxu8s4tfwfntu2qfers8ifpbz3	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-01-30 15:38:19.291231+05:30
sl8r790ttf3ceak3r731dp9wf19799h6	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-02-03 12:17:31.625412+05:30
re3snhyu34puxcrjdb18zdnp5dmmdkmk	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-03 14:35:34.767967+05:30
xlbxtr9cugrqe83rcl258nibf5n3h7dg	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-03 16:35:39.851814+05:30
blwzyyo295vmy40vsmte1j35vrk98uz8	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-05 13:03:57.780071+05:30
6ln8we6eo8q5qy41fepmvsczwquwh1lm	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-06 13:30:44.549797+05:30
1609x1buy3861xwzxz0h3y5ufe5jj1id	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-07 09:00:02.213004+05:30
r21x5l4wxinlvxl6f2wlm6l99g6mxcfo	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-08 09:34:39.977008+05:30
hthzuibylpk2rmu0du421sim0j8asgsq	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-08 09:34:39.98013+05:30
iekjzbw4newamezvo3jrll21rnlmqgpi	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-08 09:34:40.13943+05:30
dl9m9vye1yzsz0bsnj7gml2rbq9jcu1h	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-11 15:14:14.584801+05:30
spc9yl8zayvtodu2cqozdro49mj76zaz	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-13 12:28:12.551888+05:30
238o5x66jxs29dxygstbdbmfzgjbjsrj	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-13 16:34:38.946442+05:30
23m5d66cgcpvkvnb3pii48iruxhym28q	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-16 16:07:05.377415+05:30
jb6chjp643zt0ra2beco571lrv6lfwr1	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-17 15:41:09.530827+05:30
79to40fgzolsb3ep61791rjblw35ozew	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-17 18:33:40.634179+05:30
3rx32kdzqw0vzrkp1xwl4k5svj7v55fq	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-17 18:33:41.875384+05:30
8vq2kpbmi2vuc2756lx6uofa7htaaa4b	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-19 13:00:49.717765+05:30
axxv5b6d4e1hr8e5poqexzes6gccvutt	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-20 15:23:14.278154+05:30
spn6nro503irqozd7pvc3frg26k6pt1c	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-02-20 15:39:14.855313+05:30
5ajwcxp4s4rmwcg3o1a2jxm2q9bn5d06	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 12:00:20.680099+05:30
vygkafwrz5oahat1mv1vpjqf0270puls	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 16:18:14.68055+05:30
7yhn318ys901dufcl0m05pkc56v0sqyq	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 17:26:04.201265+05:30
53m781tmbubmwv4m91y6eatgukkpu7bn	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-12 18:44:57.352854+05:30
4w1psjjhyg2sgz55psozlevax9xcf4ke	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-14 14:18:53.191479+05:30
vtw05zbxz32b9h2di9s1we4560pmm9j6	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-05-14 17:37:16.406762+05:30
qlk6lb8wvsfh1nhqn7oam2qp132sl09n	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-20 12:46:59.633862+05:30
bjqvfsx8pjq5nsacrv1yacejpgu30y2i	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-05-22 15:26:56.195772+05:30
q0et9eoqwoekrw2c9p9cqh3xsdycwxkn	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-26 14:09:41.55235+05:30
8rrk3nam64fufet0qtjdr4nsv9f1tyl0	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-27 18:21:38.764238+05:30
qgsu99sezt3wqsd2t5qlenwfdsvp0g2o	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-03 11:20:02.238106+05:30
jc8lose25m1hbtfh4dzulap9zjmr5ndb	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-03 11:46:51.611281+05:30
byjeh2j6hy59r5txk9rgp81je10i7yb4	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-04 13:02:03.71735+05:30
z75z5xtlquuqps3211ofjxrlkgz0vx5v	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-08 12:32:55.128044+05:30
r0g2mhyvwhh31jjvlswwkvigkqgwk8h4	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-09 12:01:34.713938+05:30
qb5rztx5ha2hoan3j135kqskpvivmur2	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-10 11:36:07.340875+05:30
36ele8vs6n4v7bc73hxj322gi006ewe9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-12 16:38:17.020804+05:30
sxkiz9ove6ortnivhskz2zh1ik7r2k2w	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-15 18:58:46.586177+05:30
9z5hl3fxptulmbe6mlzr627bt87lf5v7	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-15 18:58:49.358731+05:30
53usz5pfmb3lpeu8bigmbpvz9q20inls	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-24 10:36:33.905956+05:30
1bm9xz5etn1xy7k7ggbf62tzvyuzukqq	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-29 16:12:20.61423+05:30
b80cvah8b3gk9j98ocadqv2q686zgb5g	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-03 15:51:10.280411+05:30
9j46xpckjwx7mgcre5gs782cz0hc5fj2	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-10 15:42:15.350851+05:30
v8153hdl6rjow0qzqsghr0x1ytbekjhu	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-14 15:24:40.24698+05:30
i3dy803aqs6zlj3xj17hcfs6jb07nop9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-16 12:14:20.04434+05:30
xwoi0tl827vgi15bf2dwqh4458ke22sg	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-20 12:45:46.053159+05:30
e41qs3zjrbhd9l6fhnjgvq491mw40oif	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-07-22 12:59:13.264028+05:30
2hhntyx8s0i5ywsd9mas29hl4z7x3vl7	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-28 19:50:35.55974+05:30
yzifytkpzp9guveb3qanv08wmyw69f27	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-29 11:46:39.549867+05:30
4mzbau3me0skeqxdsuq2bd9qtdwikzet	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-29 15:35:41.850147+05:30
e4ime8m33uem52vdud7ajxg95on30e3s	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-31 11:55:54.297465+05:30
hgfq9uu61efgxqkf4l4ac3hk0gqpxr0h	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-16 11:25:47.859358+05:30
kqx4co2xd5w1boohw8a84vjvp6khhzxp	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 09:07:14.887892+05:30
09ys9ccbd1350soweeziz64wv9oqpcrg	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 09:34:15.615715+05:30
3pxkxl2wf9h4ludjpvpyxlgya5rj26qo	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 10:00:27.099427+05:30
5xqb57rx963qo3yfzcimfi9k3yccxizv	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 10:32:45.873808+05:30
9z58ucw16y09mnk7qtx9dgrd4ai8vkmy	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 14:46:44.367638+05:30
l72yr0p7szogzmwctd1kcjcepo2cvb5k	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-18 16:53:11.887041+05:30
8i82tvza3hovheuynrldcp2itc0q19x9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-18 17:16:35.190029+05:30
4a2h3l072xgq9bauzzvnvkzojbawd45i	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-18 17:16:37.985755+05:30
kjpvtuebju0lqirt4lni63wu8eoo6lt5	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-18 17:26:10.497958+05:30
ex2ko4jszue5mjd8cxue4tue6kia618a	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-20 15:39:13.626254+05:30
h1q1a3667d8ha0fywivmfp0y79dwa9i5	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-21 14:39:33.824689+05:30
9zaae06zb74yrtrumefivrpthepn21ee	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-08-21 15:04:55.331772+05:30
1excbengpv3tmep5athq2n0m8gy6u1ky	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-24 12:01:01.736234+05:30
wn52bqmtoiorwvk2542ph6dtoj66v3sc	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 17:26:04.174266+05:30
kodsku44bitw179t773qabkf9ifhuuxz	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-12 18:44:57.62831+05:30
ukhs3hn21jdpwdqyea16d98x3tnxzf46	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-05-18 19:27:49.439372+05:30
pwx043iabh2s0ldzx7jpr8fixu95hhkd	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-19 19:11:54.987057+05:30
jsoyzj9aueviw046cjj2vi3kf7unapx2	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-22 16:33:05.815362+05:30
lj995ch30xvzmsrjw5gwi2cb1ub7hkhj	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-25 12:54:30.940669+05:30
pt44o4o3ce270my4xfihrga88p7mptu8	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-26 14:09:41.528023+05:30
vjngy4m4vrgpqb7d9h7nt1z3tism73j9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-27 15:45:04.754411+05:30
fm6vvkihf6gafmu34llbe7hczt2o01tg	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-28 12:31:30.364403+05:30
6kszj1drhon0x27tng403iubpojb6ge6	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-02 12:40:04.059105+05:30
p6z9owxaqjsgzkl6dzpp28tcdrppebdm	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-03 11:07:07.363392+05:30
gwi8vyqfrw2n874av5vw065e3zfrq7xn	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-03 11:30:06.220286+05:30
qjqfec7g466hzxz8pcpxlg9zt46sc3xb	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-03 15:14:38.398763+05:30
am6n3kfyqy2hl4igrs7w75sp58xv6kur	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-04 11:41:48.491188+05:30
674k6npqgftmj2b4k3imteny1hpmyfx4	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-08 12:22:26.886264+05:30
59stn7jpodhpskmvwjgpicx9ktnzw22t	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-09 11:59:19.15312+05:30
lwu18519jk35x1zat9uzuxawlx3gtbli	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-10 11:35:52.386795+05:30
9wkvciy4nwr9yt9n7f1n79lae0s7k5uc	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-11 19:12:57.05776+05:30
ztej2sd8d8edhtmhv3dosdrhmmebnhrw	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-12 16:24:42.271891+05:30
yzqsaz3ys2evvt2mz83q1m4ukpbtaabx	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-12 16:42:06.030866+05:30
e2ksscvmgjf6evddy1qrqddv71csjxn5	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-15 16:18:40.951275+05:30
s5i77vmybcln5d1x5dqoag8pc0p8kphb	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-15 18:58:46.559893+05:30
iwxznb88wgpz60lfbr8viovglasvj7ew	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-17 16:01:48.963866+05:30
z6qspv9rjuq7pxdkxp1tbls11vno1jpe	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-19 10:13:10.033176+05:30
iej7fiz01bxlkypnz0atdvgwxj3fwcps	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-24 10:36:33.90467+05:30
b005fsz9goylqv5f75e8lk9t7jsazrlr	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-24 14:18:19.094953+05:30
d2ly1gnym26zviyb57g46fb91q37s8tk	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-26 16:45:01.7589+05:30
c5wbgzsa17b42pd6ghry3z20uwm4vkur	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-29 16:12:20.611678+05:30
1qpxz5rrmxtyi4af71rl1eiqttmnv3or	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-30 00:49:18.793014+05:30
o507mh931s63fsslt7el8ffn0bgnfhko	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-06-30 19:18:33.635943+05:30
47wsho0hph3sw278yggetbvd27jo2vja	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-02 12:03:13.464294+05:30
ckh60xyyiqor989haq6wbtg1o6yak8wx	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-03 12:16:04.392445+05:30
pgrahmp62bawvjhajihh37791174ckrq	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-07 13:00:40.56109+05:30
4ud2hni9ozpsh62av9bz4a3xad882pem	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-08 18:23:10.637412+05:30
0ki1f60nhll54bxky2y9qd42hn0tygjn	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-10 15:42:15.39977+05:30
d3k4w96foywejok1k9vilxfrjlknrwbh	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-13 11:56:55.732917+05:30
abohe610lqk3fiprbnvjkokwr9rwi7te	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-07-15 16:55:20.408511+05:30
klu80ygvzmyyc5paftqgnpuqfzymqqc0	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-16 12:14:20.023726+05:30
xjcaw2qp0cfs2d2kgpg9lu05n5f9ofgs	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-20 12:45:46.022566+05:30
jqfp1djdv2mrqvzq1tc5lfmp0v59r92p	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-21 17:06:24.034904+05:30
i4i6vlbppy8u48301cc7z5e0nehk717j	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-24 11:10:35.516979+05:30
z3flr0zdw4j2066uyftacejpwpzot1ju	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-27 15:20:38.258019+05:30
sswnunv0armg5rc8v0xh5jd0rv0737qw	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-28 19:50:35.570249+05:30
whka3akvri3gz9ozyv2d7ywvedmru4gi	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-29 11:46:39.564654+05:30
6x2id9np7vwak3zhv0znmle1j8106rlc	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-29 14:24:01.393549+05:30
rk89iomeuhjy3lce76odweypcebdkogi	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-29 19:08:14.003381+05:30
o1qsuzl5tzsplc8m9ldsmbdd4m5jdktz	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-07-31 11:13:39.05573+05:30
nd0aws31zvzwwkahiv8wj2ginjbyhszo	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-05 20:14:18.855939+05:30
qc4ehgv5mchjjhdg87v1mbx8b35dn3aq	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-11 17:54:44.17294+05:30
kzd40jfie2i7ekij0o3od1l8qkird02y	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-13 20:30:23.194744+05:30
p1d2ud354ltvol0eczjgcnkyj13lrqya	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-14 14:21:24.778007+05:30
99d92tzj9hg55wgi4geyid4ik7tur0rr	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-16 11:25:47.852182+05:30
cj57r9yotgwc9ev6drcx4t7u1i6k66qa	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 09:07:14.869004+05:30
nqdbea7rw3cwqiirw3dt78lom04x91ir	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 09:29:49.192697+05:30
fdhievve07i1zrnm4v8lga4igdrkzxv5	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 09:42:18.977494+05:30
7ni6nrnxyed6eur1a4rpvzfloy6d85ve	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 10:28:30.07162+05:30
hdi53tm287u30c4agmyqq6il4pgrgcuu	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-08-17 10:32:45.914572+05:30
8ypvuqooj9u9ln5sc6gfgbgsjouoncqp	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 17:26:04.180188+05:30
s0k07oc5gaqepsaqnno1t5ljip837kzw	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 17:28:06.7305+05:30
ws16hck2cjpmipsuwwp2p7630lrjftfx	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 17:28:06.740934+05:30
27m1hjivpfyt2cukca82nvrpaflftk0o	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 17:28:06.803172+05:30
cihvy6x8mv8ygapag9l5w05zu241smht	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 17:38:36.324728+05:30
phg30a0qznfdwt0dnclsc94yczmgal32	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-26 17:38:36.338721+05:30
2s5uenygkqyanrrt7hvu3cq7li2zk3rb	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-02-26 18:50:26.193687+05:30
pz0erzk4l9atmi65mq5vdrgk63vyqj4u	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-27 11:07:37.922863+05:30
yn2oyraxwbbs2ua2es7a28zxzgwtyufe	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-27 11:07:37.945682+05:30
clp94js500jfn51mht3zud8qs06xq4fl	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-02-27 11:07:37.967519+05:30
n3sioksoxm0cwwlstu4y16u4w2bjm0vv	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-02 11:40:16.878215+05:30
kpngh8uc24ie3wj8pr5q1lid6gdfv3gk	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-02 11:40:18.413619+05:30
cmuxs4r4gg9il26h55n2yaq3oiozoa3a	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-02 11:40:18.952672+05:30
8l0xxs5dyas6by671mturi456g0bn50z	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-05 15:06:55.134505+05:30
o0nar1fg40xaz3c3naqkwa31nvc7o0bb	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-05 15:06:59.443456+05:30
cctyoljm00js1pfjs9sga9i457j4u62n	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-12 16:53:21.959029+05:30
ex5yt4mkqr1fdeleu5c6de3e6lnkupj9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-12 17:21:41.675133+05:30
1dxees35mv49zfcv4xsthwa07jfummzf	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-16 13:15:30.794437+05:30
nae17djp23csjr2g2imsqrk07jr8lzpw	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-16 15:54:04.109075+05:30
5sr2fxy1zragokq0rj48t60nxsgry79w	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-16 15:54:04.112234+05:30
6dgvr95n1lcr3oe8l640tai428wp8nen	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-16 15:54:04.126973+05:30
yedp5ekikd5m29sbyk46slgox00216zv	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-19 19:40:30.849897+05:30
kuv7vwh1mbxzktu7zuawao0n4gvzmxqa	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-20 13:48:35.998309+05:30
yscmcueptu0t2pffm8df6gz8vbx78r10	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-23 16:28:17.170451+05:30
6t6fnvwi68evyp0289u84bcoin5d35kv	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-25 17:05:19.92888+05:30
ngzaqbjm7696i7c6648n4ws6uo82gzc5	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-26 15:38:12.628611+05:30
lft8r2qj50wpkizeoc2x7ryk4vs959ta	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-03-26 15:38:15.35425+05:30
ml8ail7b1xgpanm76fcwsg4p3je0951r	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-01 16:37:23.547439+05:30
hqlwfz2qp4wj80x7zvkllfo11hlkixjg	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-03 11:36:51.567976+05:30
7lz5da8qk1bnhsbfok3vpfhiwuxpebl5	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-03 11:36:52.003912+05:30
pl7i6twgb9egx53g0n4aclxrb596vo57	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-07 11:15:26.643858+05:30
3rjjk5r1qonv3x643fllz3l9qu354vus	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-07 11:15:27.149223+05:30
gajnhknrspmcl4ompt9ee0q9j3elvqpw	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-09 09:50:30.399598+05:30
lrlk5x1l0us6x5c4qnszysl0ixwdtjuh	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-09 15:09:56.835074+05:30
asrtakcab0q8pq5flvkmtmv2w20867mz	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-09 23:46:28.804117+05:30
3mmdng7hlskewcup1usl5cqycojy46yq	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-10 15:25:42.956875+05:30
3t449qn8sq0dtpp8fwrvqdkfqsgm0y36	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-13 13:22:53.317772+05:30
hmry4yvw095d4wg8l255a1l8rirj7jx0	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-13 17:06:44.898041+05:30
hj97khmkg6cdbgjzcfh5071ic931p5up	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-13 17:10:24.861861+05:30
ltpeu6hmoocar17nxq3mze7fbr6lklh5	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-13 17:12:52.742554+05:30
d4iuwfbcpbr0cfqng6qlia3e7cqloxu4	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-14 13:26:23.53299+05:30
65iwxb5f961ahwiwu5fr70v4dv491v0c	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-14 14:02:42.498385+05:30
oyugr706v1waxdh2dotphr00j08047a9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-14 14:04:52.387142+05:30
kfzcjptnxwi06euz1aewn1fteeam8s05	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-14 16:52:32.545585+05:30
mnu9ayj5sc94jf7ampddlmd7pyqmwces	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-14 16:52:32.575055+05:30
w2ckh728gcl4gewlovps7z65qqd1i6j2	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-20 18:05:37.005952+05:30
ddios8vlnoqj7fih617nkfqiagtt65ip	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-21 12:36:14.462793+05:30
8qcbuh0rn9l439k0xf4hkih2kv0m3tpw	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-21 13:28:09.65817+05:30
5vkglo8ecsvfkm3lnb8nz4zqy7wv0ss6	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-21 16:42:40.529125+05:30
7l3srf2axkaet6a7pbgwn13vafkdh5nw	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-22 17:54:03.629442+05:30
hufvtxujk907vk82jvcbxl9u6omy43hu	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-23 13:11:45.168031+05:30
d9fgset0xxletksucep6bsxnx2e2e4zd	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-23 14:37:51.608872+05:30
g37mmt1vgcybrvjinc769frd5jjh7pdr	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-23 14:59:24.033376+05:30
lvnnm6isvw60um8i6iggoxx5twdahlob	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-23 15:38:48.056797+05:30
y9yqbz15buoaqsyf782tm6atchrljup0	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-23 17:31:53.125684+05:30
heociipwtwkleayn0qyynb1pq6ui2erh	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-23 18:39:37.443984+05:30
zk9u29dg4s1xgjfjrrgy90qv4ge45ys7	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-24 19:14:28.131966+05:30
bltoy4w840ptxhhrq6ncjb042fmwiv8g	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-27 12:12:05.784186+05:30
u090phr55j0m54mtdqmbszpp3t6f5uhw	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-28 12:10:30.68113+05:30
v2htn5w381cffffg1c6sxrdns2fuyb1o	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-28 12:23:54.059374+05:30
tgs1w0er8dufrwxzmhjfslkoulqxldas	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-28 18:08:27.761263+05:30
0j5hgh3ir45k9a76hh4sx86xfs7rcxlx	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-28 18:08:59.330351+05:30
7ehi0dkq8squovv681ir6skfa7tevfvd	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-04-29 11:08:39.299509+05:30
cpefht7dy0t1pz92gd0yjs1nszy4lm3t	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-01 12:25:19.315342+05:30
6ca46sh5yy2cq3z7h6c8h3fneysyiakl	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-01 12:46:50.949697+05:30
oajevgg9dszhhx16m3bmc516li6ft4wv	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-01 13:04:32.046587+05:30
hxbndvum24lcf1wdcx7s1oukirirzenf	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 14:30:10.418187+05:30
e49hrufpzpax65b2vwfeqq67mdyrllv9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:43:45.707943+05:30
3e8vfhcubzl3kgydmjk34z4fgd3plss1	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:44:32.30449+05:30
d5oy58pllih6n5tavng8e0pz6qhjyd6w	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:45:27.969626+05:30
lhfwzhtqdh2ng1m3ob9xpooewnglipsv	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:46:03.73521+05:30
phw3pigh3d7tn6dj5jnxa8pi688gmk1u	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:47:24.027+05:30
aa1aab7ydk9dpxe5m8ubs42j8jyoierq	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:48:33.900992+05:30
fo4j5awks06enwqc74worie51x5cbupa	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:50:13.221349+05:30
45ss7si5gbm0mqihbs986gco3hq9a4nk	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:51:01.148769+05:30
evdnerj7ynxvtfmc3d1qcuhc07rmv0z0	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:51:30.347463+05:30
gx9dphsaxpi6ahm6qt2e8b6psznb8892	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-04 15:53:23.966245+05:30
hbmk9sfh46xz5msl92wad1mfuxao14v6	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-05-04 17:07:58.461043+05:30
6jxwphhbukrwx24oohbpvatd02wbmt6a	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-05 12:26:04.302909+05:30
fcmcv7ze3r8lb956mzvnd72nqjoeb4bt	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-05 18:32:49.441496+05:30
ehmkvkmd303g6g2rfxznpt8i4gkslvwr	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-05 18:32:49.393141+05:30
6ovasnncu69pyxxjm0jp89l48gm7nrr4	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 12:18:14.351006+05:30
03nductd83nsrzusl47g8plz20ev3gfz	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 12:18:14.390377+05:30
1dqz0ql8hnsr60o6loylqu8p7eiwbamh	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 15:39:19.793611+05:30
0hwad1u8qw5fje1pa1pa7idvkgim50v6	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 15:39:20.399118+05:30
3pov2587bzi9j90aa383p0cg7t53wb5d	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 15:39:24.481867+05:30
awonwfs1mr9kz2vqnei9cgvhhwvkr7u7	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 20:08:57.739321+05:30
7u9u9kj2n5rdemr0vta2fcj3loj1f631	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 20:09:02.422848+05:30
0pdomeet38apjnywwco3u3rw1to3qu89	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 21:00:52.938786+05:30
94q0zo6tek264j7p9sgdorm5sg7jw8f5	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 21:06:03.795522+05:30
bsu6kq6y47tjqirz3rclwocgrvao9zcs	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-06 21:06:03.915478+05:30
r4c0p2dtumq76s5q9buy2namdm27w1mv	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 17:06:53.629529+05:30
4aztzty3eh6uvouc2rvtal7yyq7pq128	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 17:06:53.68311+05:30
gylmgugiit439oa8n4wkxab52g1h5xm8	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 17:17:16.839907+05:30
0mjwz0lt3zxcmyxblflabv2shg2o5x8q	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 17:30:02.462268+05:30
egct3kw8mdovvctwjsdrholeexqrnkhe	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 17:30:02.48638+05:30
eajjl5icl91chx3cu8v0p0jngp9rqjim	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 17:30:02.482931+05:30
2gafkw53cy52ytwsuixubjwnm61xf67u	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 17:33:55.524602+05:30
jx9lpeyb57r9dwy5tuxp2w5ayn9ct6w1	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 17:33:55.533812+05:30
9rq5o500bvb3s6ux11aerojf6ys10xet	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 17:33:55.540597+05:30
j2xtqw79otmiexkmgxcy3uv4i1hda0sw	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 18:10:36.91515+05:30
o8lcykotxlkin02gpka9lo9ddhr27ff4	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 18:19:48.256483+05:30
u6lf3xl918bmqppfkjxteed6av6k3rxq	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 21:33:01.980602+05:30
en6gs8llygv0rdp6on0w733paybde4as	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-07 21:33:02.057534+05:30
gq2616t7fd614r2qq1aqrv94dlj8jyhl	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-08 11:03:41.938168+05:30
u9buewl82x3wtyk3n64661w3azbe6bij	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-08 11:05:52.930364+05:30
91na2o5273viopzxnehf8v8p3q0jdzpz	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-08 12:42:52.423408+05:30
dv5gjmvhxr4dlzj4mvmibzg234mfeyc7	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-08 13:02:26.906081+05:30
vfsul98byimknd43tzdcdqvomjh8c7j9	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-08 14:55:21.81094+05:30
tizydwvns9nmymeumkffqwam27qgx5c0	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-05-08 15:34:50.118928+05:30
orqw0o9pgmiau3g0chygqaawnelw143m	ZDBjY2NjZmQxNjZkOGE5Y2IyNTJlM2ZlNWU3NjVhZjY0NjhhZWM3ODp7fQ==	2015-05-08 15:54:56.274782+05:30
vjtvq3lgrkq5zpa800tu2uxmpgf7a21s	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-05-08 16:13:38.561392+05:30
8r86kat9azjjuih8etg2rtkmgrnto2zw	MmJlM2RkNzQyMzczNmEyMGE3MWFkNmIxNDQwNDk0MjM5OTU5YjIzYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=	2015-05-11 14:08:31.460198+05:30
\.


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	user_auth	0001_initial	2014-12-11 13:56:21.471431+05:30
2	user_auth	0002_auto__del_field_userdetails_other_info__add_field_otherinfo_customer__	2014-12-11 13:56:22.029742+05:30
3	user_auth	0003_auto__chg_field_profile_created_by__del_unique_profile_created_by	2014-12-11 13:56:22.099659+05:30
4	user_auth	0004_auto__add_field_profile_production	2015-01-16 13:08:30.21692+05:30
5	user_auth	0005_auto__add_field_userdetails_password_changed	2015-04-28 12:34:11.912749+05:30
6	user_auth	0006_auto__add_fieldrestrict	2015-07-08 12:21:38.474775+05:30
\.


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 6, true);


--
-- Data for Name: user_auth_customerdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_auth_customerdetails (id, name, auth_key, currency, personalization) FROM stdin;
1	shopclues	d35e7f77da5329b2e8eeffbeac555695	Rs.	f
4	yepme	db22cefb6dcccdeee6c79ef2bfa9099d	Rs.	f
2	staples	baef7f8e39c53f852c8a14b7f6018b58	$	t
5	livecareer	5d091eab436d979ec7e029bd7b099ba3	$	f
\.


--
-- Name: user_auth_customerdetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_auth_customerdetails_id_seq', 5, true);


--
-- Data for Name: user_auth_fieldrestrict; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_auth_fieldrestrict (id, field, customer_id, user_id) FROM stdin;
1	brand	1	1
2	pincode	1	1
\.


--
-- Name: user_auth_fieldrestrict_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_auth_fieldrestrict_id_seq', 2, true);


--
-- Data for Name: user_auth_machineinfo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_auth_machineinfo (id, name, host) FROM stdin;
1	local	http://local.zettata.com:9000
\.


--
-- Name: user_auth_machineinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_auth_machineinfo_id_seq', 1, true);


--
-- Data for Name: user_auth_otherinfo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_auth_otherinfo (id, key, value, customer_id) FROM stdin;
\.


--
-- Name: user_auth_otherinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_auth_otherinfo_id_seq', 1, false);


--
-- Data for Name: user_auth_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_auth_profile (id, name, customer_name_id, machine_location_id, albus_url, solr_url, autosuggest_url, relevance_feedback, created_by_id, production) FROM stdin;
1	zettata-poc	1	1	http://api.apac-sg.zettata.com/v1/shopclues/select	http://solr4.apac-sg.zettata.com/solr/shopclues/select	http://solr1.apac-sg.zettata.com/solr/shopclues/select	t	2	f
8	shopcluesz	2	1	http://api.apac-sg.zettata.com/v1/shopclues/select	http://solr1.apac-sg.zettata.com/solr/shopclues/select	http://solr1.apac-sg.zettata.com/solr/shopclues/select	t	1	f
24	staples-pd-rank	2	1	http://takealot.dev.zettata.net/voldemort/staples_newPR	http://api.apac-sg.zettata.com/v1/shopclues/select	http://api.apac-sg.zettata.com/v1/shopclues/select	f	2	f
17	staples-1	2	1	http://api3.us-east.zettata.com/v1/staples/select	http://solr1.us-east.zettata.com/solr/staples/select	http://solr6.stage.zettata.com/solr/staples_alter/select	t	2	f
16	yepme	4	1	http://api.sandbox.apac-sg.zettata.com/v1/yepme/select	http://api.sandbox.apac-sg.zettata.com/v1/yepme/select	http://api.sandbox.apac-sg.zettata.com/v1/yepme/select	f	2	f
23	staples-3	2	1	http://vikram.dev.zettata.net/v1/staples/select	http://solr1.us-east.zettata.com/solr/staples/select	http://solr6.stage.zettata.com/solr/staples_alter/select	f	2	f
12	shopclues-test	1	1	http://api.apac-sg.zettata.com/v1/shopclues/select	http://api.apac-sg.zettata.com/v1/shopclues/select	http://api.apac-sg.zettata.com/v1/shopclues/select	t	2	f
20	staples-2	2	1	http://vikram.dev.zettata.net/v1/staples/select	http://solr1.us-east.zettata.com/solr/staples/select	http://solr6.stage.zettata.com/solr/staples_alter/select	f	2	f
9	staples	2	1	http://api3.us-east.zettata.com/v1/staples/select	http://solr1.us-east.zettata.com/solr/staples/select	http://solr6.stage.zettata.com/solr/staples_alter/select	t	2	f
\.


--
-- Name: user_auth_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_auth_profile_id_seq', 24, true);


--
-- Data for Name: user_auth_userdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_auth_userdetails (id, privilege, is_staff, profile_id, user_id, password_changed) FROM stdin;
14	2	f	16	18	t
1	1	f	1	2	t
\.


--
-- Name: user_auth_userdetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_auth_userdetails_id_seq', 22, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: corsheaders_corsmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY corsheaders_corsmodel
    ADD CONSTRAINT corsheaders_corsmodel_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: user_auth_customerdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_auth_customerdetails
    ADD CONSTRAINT user_auth_customerdetails_pkey PRIMARY KEY (id);


--
-- Name: user_auth_fieldrestrict_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_auth_fieldrestrict
    ADD CONSTRAINT user_auth_fieldrestrict_pkey PRIMARY KEY (id);


--
-- Name: user_auth_machineinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_auth_machineinfo
    ADD CONSTRAINT user_auth_machineinfo_pkey PRIMARY KEY (id);


--
-- Name: user_auth_otherinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_auth_otherinfo
    ADD CONSTRAINT user_auth_otherinfo_pkey PRIMARY KEY (id);


--
-- Name: user_auth_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_auth_profile
    ADD CONSTRAINT user_auth_profile_pkey PRIMARY KEY (id);


--
-- Name: user_auth_userdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_auth_userdetails
    ADD CONSTRAINT user_auth_userdetails_pkey PRIMARY KEY (id);


--
-- Name: user_auth_userdetails_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY user_auth_userdetails
    ADD CONSTRAINT user_auth_userdetails_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: user_auth_fieldrestrict_customer_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX user_auth_fieldrestrict_customer_id ON user_auth_fieldrestrict USING btree (customer_id);


--
-- Name: user_auth_fieldrestrict_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX user_auth_fieldrestrict_user_id ON user_auth_fieldrestrict USING btree (user_id);


--
-- Name: user_auth_otherinfo_customer_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX user_auth_otherinfo_customer_id ON user_auth_otherinfo USING btree (customer_id);


--
-- Name: user_auth_profile_customer_name_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX user_auth_profile_customer_name_id ON user_auth_profile USING btree (customer_name_id);


--
-- Name: user_auth_profile_machine_location_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX user_auth_profile_machine_location_id ON user_auth_profile USING btree (machine_location_id);


--
-- Name: user_auth_userdetails_profile_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX user_auth_userdetails_profile_id ON user_auth_userdetails USING btree (profile_id);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_93d2d1f8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT content_type_id_refs_id_93d2d1f8 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: created_by_id_refs_id_68b43208; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_profile
    ADD CONSTRAINT created_by_id_refs_id_68b43208 FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customer_id_refs_id_5e771114; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_otherinfo
    ADD CONSTRAINT customer_id_refs_id_5e771114 FOREIGN KEY (customer_id) REFERENCES user_auth_customerdetails(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customer_id_refs_id_e471562d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_fieldrestrict
    ADD CONSTRAINT customer_id_refs_id_e471562d FOREIGN KEY (customer_id) REFERENCES user_auth_customerdetails(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customer_name_id_refs_id_8cbfa064; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_profile
    ADD CONSTRAINT customer_name_id_refs_id_8cbfa064 FOREIGN KEY (customer_name_id) REFERENCES user_auth_customerdetails(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: machine_location_id_refs_id_8c03f0e0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_profile
    ADD CONSTRAINT machine_location_id_refs_id_8c03f0e0 FOREIGN KEY (machine_location_id) REFERENCES user_auth_machineinfo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_id_refs_id_66babb91; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_userdetails
    ADD CONSTRAINT profile_id_refs_id_66babb91 FOREIGN KEY (profile_id) REFERENCES user_auth_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_1abb06bc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_fieldrestrict
    ADD CONSTRAINT user_id_refs_id_1abb06bc FOREIGN KEY (user_id) REFERENCES user_auth_userdetails(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_c0d12874; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT user_id_refs_id_c0d12874 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_c6775617; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth_userdetails
    ADD CONSTRAINT user_id_refs_id_c6775617 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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

