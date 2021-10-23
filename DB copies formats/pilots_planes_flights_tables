--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

-- Started on 2021-10-23 17:55:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3342 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16649)
-- Name: flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flights (
    flight_id integer NOT NULL,
    flight_dt date,
    plane integer,
    first_pilot_id integer,
    second_pilot_id integer,
    destination character varying(3),
    quantity integer
);


ALTER TABLE public.flights OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16648)
-- Name: flights_flight_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.flights_flight_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flights_flight_id_seq OWNER TO postgres;

--
-- TOC entry 3344 (class 0 OID 0)
-- Dependencies: 214
-- Name: flights_flight_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.flights_flight_id_seq OWNED BY public.flights.flight_id;


--
-- TOC entry 216 (class 1259 OID 16686)
-- Name: flights_upd; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flights_upd (
    second_pilot_id integer,
    cargo_flg boolean,
    plane integer
);


ALTER TABLE public.flights_upd OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16635)
-- Name: pilots; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pilots (
    pilot_id integer NOT NULL,
    name character varying(30),
    age integer,
    rank character varying(30),
    education_level character varying(30)
);


ALTER TABLE public.pilots OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16634)
-- Name: pilots_pilot_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pilots_pilot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pilots_pilot_id_seq OWNER TO postgres;

--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 210
-- Name: pilots_pilot_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pilots_pilot_id_seq OWNED BY public.pilots.pilot_id;


--
-- TOC entry 213 (class 1259 OID 16642)
-- Name: planes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planes (
    plane_id integer NOT NULL,
    capacity integer,
    cargo_flg boolean
);


ALTER TABLE public.planes OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16641)
-- Name: planes_plane_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planes_plane_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planes_plane_id_seq OWNER TO postgres;

--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 212
-- Name: planes_plane_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planes_plane_id_seq OWNED BY public.planes.plane_id;


--
-- TOC entry 3181 (class 2604 OID 16689)
-- Name: flights flight_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights ALTER COLUMN flight_id SET DEFAULT nextval('public.flights_flight_id_seq'::regclass);


--
-- TOC entry 3179 (class 2604 OID 16690)
-- Name: pilots pilot_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pilots ALTER COLUMN pilot_id SET DEFAULT nextval('public.pilots_pilot_id_seq'::regclass);


--
-- TOC entry 3180 (class 2604 OID 16691)
-- Name: planes plane_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planes ALTER COLUMN plane_id SET DEFAULT nextval('public.planes_plane_id_seq'::regclass);


--
-- TOC entry 3335 (class 0 OID 16649)
-- Dependencies: 215
-- Data for Name: flights; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flights (flight_id, flight_dt, plane, first_pilot_id, second_pilot_id, destination, quantity) FROM stdin;
2975	2021-01-08	39	1	3	SVO	70
29	2021-02-08	33	3	4	MSQ	80
35	2021-03-08	35	1	4	PEK	110
23	2021-08-03	28	1	4	PEK	110
4	2021-04-08	29	2	10	SVO	140
5	2021-05-08	31	10	1	SVO	170
6	2021-06-08	14	2	3	BEG	200
7	2021-07-08	39	1	4	MAD	290
8	2021-08-08	11	5	6	SVO	140
9	2021-09-08	31	1	2	MOW	230
10	2021-10-08	39	3	7	SVO	290
11	2021-08-13	83	8	3	AYT	320
12	2021-08-23	28	3	6	PEK	170
13	2021-08-23	29	5	8	SVO	200
243	2021-08-04	28	1	4	SVO	110
344	2021-08-05	29	2	10	SVO	140
555	2021-08-06	31	10	1	SVO	170
655	2021-08-07	14	2	3	SVO	200
557	2021-08-08	39	1	4	SVO	290
448	2021-08-10	11	5	6	SVO	140
329	2021-08-12	31	1	2	SVO	230
1340	2021-08-13	39	3	1	SVO	290
1551	2021-08-17	83	1	3	SVO	320
1288	2021-08-18	28	3	1	SVO	170
1388	2021-08-19	29	5	1	SVO	200
2443	2021-08-20	28	1	4	SVO	110
3444	2021-08-25	29	2	10	SVO	140
5255	2021-08-26	31	10	1	SVO	170
6155	2021-08-27	14	2	3	SVO	200
5157	2021-08-28	39	1	4	SVO	290
4148	2021-08-30	11	5	6	SVO	140
3129	2021-08-22	31	1	2	SVO	230
140	2021-08-23	39	3	1	SVO	290
151	2021-08-27	83	1	3	SVO	320
128	2021-08-28	28	3	1	SVO	170
188	2021-08-29	29	5	1	SVO	200
7243	2021-08-20	28	1	4	SVO	110
7344	2021-08-25	29	2	10	SVO	140
7555	2021-08-26	31	10	1	SVO	170
7155	2021-08-27	14	2	3	SVO	200
7157	2021-08-28	39	1	4	SVO	290
7148	2021-08-30	11	5	6	SVO	140
7129	2021-08-22	31	1	2	SVO	230
710	2021-08-23	39	3	1	SVO	290
711	2021-08-27	83	1	3	SVO	320
728	2021-08-28	28	3	1	SVO	170
718	2021-08-29	29	5	1	SVO	200
43	2021-08-20	28	1	4	SVO	110
44	2021-08-25	29	2	10	SVO	140
55	2021-08-26	31	10	1	SVO	170
75	2021-08-27	14	2	3	SVO	200
77	2021-08-28	39	1	4	SVO	290
78	2021-08-30	11	5	6	SVO	140
79	2021-08-22	31	1	2	SVO	230
3710	2021-08-23	39	3	1	SVO	290
7311	2021-08-27	83	1	3	SVO	320
7228	2021-08-28	28	3	1	SVO	170
7118	2021-08-29	29	5	1	SVO	200
4663	2021-08-20	28	1	4	SVO	110
4664	2021-08-25	29	2	10	SVO	140
5665	2021-08-26	31	10	1	SVO	170
7665	2021-08-27	14	2	3	SVO	200
677	2021-08-28	39	1	4	SVO	290
768	2021-08-30	11	5	6	SVO	140
769	2021-08-22	31	1	2	SVO	230
37610	2021-08-23	39	3	1	SVO	290
76311	2021-08-27	83	1	3	SVO	320
76228	2021-08-28	28	3	1	SVO	170
76118	2021-08-29	29	5	1	SVO	200
4763	2021-08-20	28	1	4	SVO	110
4674	2021-08-25	29	2	10	SVO	140
5675	2021-08-26	31	10	1	SVO	170
7965	2021-08-27	14	2	3	SVO	200
6797	2021-08-28	39	1	4	SVO	290
7698	2021-08-30	11	5	6	SVO	140
7699	2021-08-22	31	1	2	SVO	230
3910	2021-08-23	39	3	1	SVO	290
7911	2021-08-27	83	1	3	SVO	320
76998	2021-08-28	28	3	1	SVO	170
7918	2021-08-29	29	5	1	SVO	200
\.


--
-- TOC entry 3336 (class 0 OID 16686)
-- Dependencies: 216
-- Data for Name: flights_upd; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flights_upd (second_pilot_id, cargo_flg, plane) FROM stdin;
1	t	35
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
4	t	35
4	t	28
3	t	14
6	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
1	t	35
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
1	t	28
2	t	14
3	t	28
4	t	35
4	t	28
3	t	14
6	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
4	t	28
3	t	14
1	t	28
\.


--
-- TOC entry 3331 (class 0 OID 16635)
-- Dependencies: 211
-- Data for Name: pilots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pilots (pilot_id, name, age, rank, education_level) FROM stdin;
1	Natasha Kerensky	52	Captain	Bachelors
2	Colin Maclaren	43	Sergeant	Associate
3	Lynn Sheridan	27	Corporal	Masters
4	John Hayes	34	Sergeant	High School Diploma
5	Takiro Ikeda	41	Lieutenant	Bachelors
6	Miklos Deliustest	31	Corporal	Associate
7	John Clavell	40	Lieutenant	Masters
8	Piet Nichols	37	Corporal	High School Diploma
9	Simon Fraser	32	Sergeant	Bachelors
10	Mohammar Jahan	29	Corporal	Associate
\.


--
-- TOC entry 3333 (class 0 OID 16642)
-- Dependencies: 213
-- Data for Name: planes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planes (plane_id, capacity, cargo_flg) FROM stdin;
66	50	t
33	80	f
35	110	t
11	140	f
28	170	t
29	200	f
31	230	f
14	260	t
39	290	f
83	320	f
\.


--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 214
-- Name: flights_flight_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.flights_flight_id_seq', 1, false);


--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 210
-- Name: pilots_pilot_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pilots_pilot_id_seq', 1, false);


--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 212
-- Name: planes_plane_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planes_plane_id_seq', 1, false);


--
-- TOC entry 3187 (class 2606 OID 16654)
-- Name: flights flights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_pkey PRIMARY KEY (flight_id);


--
-- TOC entry 3183 (class 2606 OID 16640)
-- Name: pilots pilots_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pilots
    ADD CONSTRAINT pilots_pkey PRIMARY KEY (pilot_id);


--
-- TOC entry 3185 (class 2606 OID 16647)
-- Name: planes planes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planes
    ADD CONSTRAINT planes_pkey PRIMARY KEY (plane_id);


--
-- TOC entry 3189 (class 2606 OID 16660)
-- Name: flights flights_first_pilot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_first_pilot_id_fkey FOREIGN KEY (first_pilot_id) REFERENCES public.pilots(pilot_id);


--
-- TOC entry 3188 (class 2606 OID 16655)
-- Name: flights flights_plane_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_plane_fkey FOREIGN KEY (plane) REFERENCES public.planes(plane_id);


--
-- TOC entry 3190 (class 2606 OID 16665)
-- Name: flights flights_second_pilot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flights
    ADD CONSTRAINT flights_second_pilot_id_fkey FOREIGN KEY (second_pilot_id) REFERENCES public.pilots(pilot_id);


--
-- TOC entry 3343 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE flights; Type: ACL; Schema: public; Owner: postgres
--

GRANT REFERENCES,DELETE,TRIGGER,TRUNCATE ON TABLE public.flights TO pg_read_all_data;
GRANT SELECT,INSERT,UPDATE ON TABLE public.flights TO pg_read_all_data WITH GRANT OPTION;


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 216
-- Name: TABLE flights_upd; Type: ACL; Schema: public; Owner: postgres
--

GRANT REFERENCES,DELETE,TRIGGER,TRUNCATE ON TABLE public.flights_upd TO pg_read_all_data;
GRANT SELECT,INSERT,UPDATE ON TABLE public.flights_upd TO pg_read_all_data WITH GRANT OPTION;


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 211
-- Name: TABLE pilots; Type: ACL; Schema: public; Owner: postgres
--

GRANT REFERENCES,DELETE,TRIGGER,TRUNCATE ON TABLE public.pilots TO pg_read_all_data;
GRANT SELECT,INSERT,UPDATE ON TABLE public.pilots TO pg_read_all_data WITH GRANT OPTION;


--
-- TOC entry 3348 (class 0 OID 0)
-- Dependencies: 213
-- Name: TABLE planes; Type: ACL; Schema: public; Owner: postgres
--

GRANT REFERENCES,DELETE,TRIGGER,TRUNCATE ON TABLE public.planes TO pg_read_all_data;
GRANT SELECT,INSERT,UPDATE ON TABLE public.planes TO pg_read_all_data WITH GRANT OPTION;


-- Completed on 2021-10-23 17:55:25

--
-- PostgreSQL database dump complete
--

