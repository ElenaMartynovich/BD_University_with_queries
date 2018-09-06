--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.4

-- Started on 2018-09-06 16:46:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12278)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 16425)
-- Name: Faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Faculty" (
    f_id integer NOT NULL,
    f_name character varying(100) NOT NULL,
    f_adress character varying(100),
    f_surname_of_dean integer,
    f_year_of_foundation integer
);


ALTER TABLE public."Faculty" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16423)
-- Name: Faculty_f_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Faculty_f_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Faculty_f_id_seq" OWNER TO postgres;

--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 197
-- Name: Faculty_f_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Faculty_f_id_seq" OWNED BY public."Faculty".f_id;


--
-- TOC entry 200 (class 1259 OID 16433)
-- Name: Lecturers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Lecturers" (
    l_id integer NOT NULL,
    l_surname character varying(50) NOT NULL,
    l_name character varying(30) NOT NULL,
    l_date_of_birth date,
    l_science_degree character varying(100),
    l_position character varying(100),
    l_faculty integer
);


ALTER TABLE public."Lecturers" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16431)
-- Name: Lecturers_l_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Lecturers_l_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Lecturers_l_id_seq" OWNER TO postgres;

--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 199
-- Name: Lecturers_l_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Lecturers_l_id_seq" OWNED BY public."Lecturers".l_id;


--
-- TOC entry 196 (class 1259 OID 16417)
-- Name: Subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Subject" (
    s_name character varying(40) NOT NULL,
    s_faculty integer,
    s_semester integer NOT NULL,
    s_number_of_hours integer NOT NULL,
    s_form_of_control character varying(30) NOT NULL,
    s_surname_of_lecturer integer NOT NULL,
    s_id integer NOT NULL
);


ALTER TABLE public."Subject" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16522)
-- Name: Subject_s_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Subject_s_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Subject_s_id_seq" OWNER TO postgres;

--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 201
-- Name: Subject_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Subject_s_id_seq" OWNED BY public."Subject".s_id;


--
-- TOC entry 2037 (class 2604 OID 16428)
-- Name: Faculty f_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Faculty" ALTER COLUMN f_id SET DEFAULT nextval('public."Faculty_f_id_seq"'::regclass);


--
-- TOC entry 2038 (class 2604 OID 16436)
-- Name: Lecturers l_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lecturers" ALTER COLUMN l_id SET DEFAULT nextval('public."Lecturers_l_id_seq"'::regclass);


--
-- TOC entry 2036 (class 2604 OID 16524)
-- Name: Subject s_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subject" ALTER COLUMN s_id SET DEFAULT nextval('public."Subject_s_id_seq"'::regclass);


--
-- TOC entry 2176 (class 0 OID 16425)
-- Dependencies: 198
-- Data for Name: Faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Faculty" (f_id, f_name, f_adress, f_surname_of_dean, f_year_of_foundation) VALUES (2, 'Faculty of foreign languages', 'Chernivtsi, Sadova street, 5', 5, 1996);
INSERT INTO public."Faculty" (f_id, f_name, f_adress, f_surname_of_dean, f_year_of_foundation) VALUES (3, 'Faculty of Physical and Technical and Computer Sciences', 'Chernivtsi,Stroozhynetskaya  street , 101', 3, 1984);
INSERT INTO public."Faculty" (f_id, f_name, f_adress, f_surname_of_dean, f_year_of_foundation) VALUES (4, 'Faculty of Mathematics and Informatics', 'Chernivtsi, Universitetska street., 28', 1, 1983);
INSERT INTO public."Faculty" (f_id, f_name, f_adress, f_surname_of_dean, f_year_of_foundation) VALUES (1, 'Faculty of Economics', 'Chernivtsi, Cathedral street, 2', 7, 1993);


--
-- TOC entry 2178 (class 0 OID 16433)
-- Dependencies: 200
-- Data for Name: Lecturers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Lecturers" (l_id, l_surname, l_name, l_date_of_birth, l_science_degree, l_position, l_faculty) VALUES (1, 'Cherevko', 'Ihor', '1956-01-16', 'Doctor of Physics and Mathematics', 'Dean of Faculty of Mathematics and Physics', 4);
INSERT INTO public."Lecturers" (l_id, l_surname, l_name, l_date_of_birth, l_science_degree, l_position, l_faculty) VALUES (2, 'Bihun', 'Yaroslav', '1952-04-18', 'Candidate of Physics and Mathematics', 'Head of the Department of Applied Mathematics', 4);
INSERT INTO public."Lecturers" (l_id, l_surname, l_name, l_date_of_birth, l_science_degree, l_position, l_faculty) VALUES (3, 'Anhelskiy', 'Oleh', '1972-06-05', 'Doctor of Physics and Mathematics', 'Dean of Faculty of Physical and Computer Sciences', 3);
INSERT INTO public."Lecturers" (l_id, l_surname, l_name, l_date_of_birth, l_science_degree, l_position, l_faculty) VALUES (4, 'Balovsyak', 'Serhiy', '1965-08-27', 'Candidate of Physical and Mathematical Sciences', 'Deputy Dean of the Faculty of Physics and Computer Science for methodological work', 3);
INSERT INTO public."Lecturers" (l_id, l_surname, l_name, l_date_of_birth, l_science_degree, l_position, l_faculty) VALUES (5, 'Osovska', 'Iryna', '1981-06-30', 'Doctor of Philology', 'Dean of the Faculty of foreign languages', 2);
INSERT INTO public."Lecturers" (l_id, l_surname, l_name, l_date_of_birth, l_science_degree, l_position, l_faculty) VALUES (6, 'Kravets', 'Diana', '1989-04-28', 'Doctor of Philology', 'Deputy Dean for reserch work', 2);
INSERT INTO public."Lecturers" (l_id, l_surname, l_name, l_date_of_birth, l_science_degree, l_position, l_faculty) VALUES (7, 'Biloskurskiy', 'Ruslan', '1973-03-09', 'Doctor of Economic Sciences', 'Dean of the Faculty of Economics', 1);
INSERT INTO public."Lecturers" (l_id, l_surname, l_name, l_date_of_birth, l_science_degree, l_position, l_faculty) VALUES (8, 'Greshko', 'Roman', '1971-10-07', 'Candidate of Economic Sciences', 'Deputy Dean of the Faculty of Economics', 1);


--
-- TOC entry 2174 (class 0 OID 16417)
-- Dependencies: 196
-- Data for Name: Subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Subject" (s_name, s_faculty, s_semester, s_number_of_hours, s_form_of_control, s_surname_of_lecturer, s_id) VALUES ('Finance and Credit', 1, 2, 18, 'test', 8, 2);
INSERT INTO public."Subject" (s_name, s_faculty, s_semester, s_number_of_hours, s_form_of_control, s_surname_of_lecturer, s_id) VALUES ('English', 2, 1, 20, 'exam', 6, 3);
INSERT INTO public."Subject" (s_name, s_faculty, s_semester, s_number_of_hours, s_form_of_control, s_surname_of_lecturer, s_id) VALUES ('Comparative Linguistics', 2, 2, 15, 'test', 5, 4);
INSERT INTO public."Subject" (s_name, s_faculty, s_semester, s_number_of_hours, s_form_of_control, s_surname_of_lecturer, s_id) VALUES ('General Physics', 3, 1, 20, 'exam', 3, 5);
INSERT INTO public."Subject" (s_name, s_faculty, s_semester, s_number_of_hours, s_form_of_control, s_surname_of_lecturer, s_id) VALUES ('Electronics and Energy', 3, 2, 28, 'test', 4, 6);
INSERT INTO public."Subject" (s_name, s_faculty, s_semester, s_number_of_hours, s_form_of_control, s_surname_of_lecturer, s_id) VALUES ('Buiseness Economics', 1, 1, 24, 'exam', 7, 1);
INSERT INTO public."Subject" (s_name, s_faculty, s_semester, s_number_of_hours, s_form_of_control, s_surname_of_lecturer, s_id) VALUES ('Differential Equations', 4, 1, 28, 'exam', 1, 7);
INSERT INTO public."Subject" (s_name, s_faculty, s_semester, s_number_of_hours, s_form_of_control, s_surname_of_lecturer, s_id) VALUES ('Mathematical modelling', 4, 2, 24, 'test', 2, 8);


--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 197
-- Name: Faculty_f_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Faculty_f_id_seq"', 6, true);


--
-- TOC entry 2192 (class 0 OID 0)
-- Dependencies: 199
-- Name: Lecturers_l_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Lecturers_l_id_seq"', 8, true);


--
-- TOC entry 2193 (class 0 OID 0)
-- Dependencies: 201
-- Name: Subject_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Subject_s_id_seq"', 20, true);


--
-- TOC entry 2044 (class 2606 OID 16430)
-- Name: Faculty Faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Faculty"
    ADD CONSTRAINT "Faculty_pkey" PRIMARY KEY (f_id) WITH (fillfactor='10');


--
-- TOC entry 2047 (class 2606 OID 16438)
-- Name: Lecturers Lecturers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lecturers"
    ADD CONSTRAINT "Lecturers_pkey" PRIMARY KEY (l_id);


--
-- TOC entry 2040 (class 2606 OID 16531)
-- Name: Subject Subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subject"
    ADD CONSTRAINT "Subject_pkey" PRIMARY KEY (s_id);


--
-- TOC entry 2048 (class 1259 OID 16450)
-- Name: fki_lecturer_faculty; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_lecturer_faculty ON public."Lecturers" USING btree (l_faculty);


--
-- TOC entry 2045 (class 1259 OID 16444)
-- Name: fki_s; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_s ON public."Faculty" USING btree (f_surname_of_dean);


--
-- TOC entry 2041 (class 1259 OID 16456)
-- Name: fki_subject_faculty; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_subject_faculty ON public."Subject" USING btree (s_faculty);


--
-- TOC entry 2042 (class 1259 OID 16462)
-- Name: fki_subject_surname_of_lecturer; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_subject_surname_of_lecturer ON public."Subject" USING btree (s_surname_of_lecturer);


--
-- TOC entry 2051 (class 2606 OID 16439)
-- Name: Faculty Surname_of_dean; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Faculty"
    ADD CONSTRAINT "Surname_of_dean" FOREIGN KEY (f_surname_of_dean) REFERENCES public."Lecturers"(l_id);


--
-- TOC entry 2052 (class 2606 OID 16445)
-- Name: Lecturers lecturer_faculty; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Lecturers"
    ADD CONSTRAINT lecturer_faculty FOREIGN KEY (l_faculty) REFERENCES public."Faculty"(f_id);


--
-- TOC entry 2049 (class 2606 OID 16451)
-- Name: Subject subject_faculty; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subject"
    ADD CONSTRAINT subject_faculty FOREIGN KEY (s_faculty) REFERENCES public."Faculty"(f_id);


--
-- TOC entry 2050 (class 2606 OID 16457)
-- Name: Subject subject_surname_of_lecturer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Subject"
    ADD CONSTRAINT subject_surname_of_lecturer FOREIGN KEY (s_surname_of_lecturer) REFERENCES public."Lecturers"(l_id);


-- Completed on 2018-09-06 16:46:12

--
-- PostgreSQL database dump complete
--

