--
-- PostgreSQL database dump
--

\restrict Kchiv1exGGoBYjXwoHs7WbOTflRNVfzxYSLKcqfRA3lpm4pAZHMXxpr2aUivjmE

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-02-02 19:40:23

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 32769)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employeeid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    email character varying(100),
    departmentid integer,
    hiredate date,
    salary numeric(10,2)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 4908 (class 0 OID 32769)
-- Dependencies: 220
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (employeeid, firstname, lastname, email, departmentid, hiredate, salary) FROM stdin;
1	John	Smith	john.smith@example.com	101	2021-06-15	75000.00
2	Jane	Doe	jane.doe@example.com	102	2020-03-10	85000.00
3	Michael	Johnson	michael.johnson@example.com	101	2019-11-22	95000.00
4	Emily	Davis	emily.davis@example.com	103	2022-01-05	68000.00
5	William	Brown	william.brown@example.com	102	2018-07-19	80000.00
\.


--
-- TOC entry 4758 (class 2606 OID 32776)
-- Name: employees employees_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_email_key UNIQUE (email);


--
-- TOC entry 4760 (class 2606 OID 32774)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employeeid);


-- Completed on 2026-02-02 19:40:24

--
-- PostgreSQL database dump complete
--

\unrestrict Kchiv1exGGoBYjXwoHs7WbOTflRNVfzxYSLKcqfRA3lpm4pAZHMXxpr2aUivjmE

