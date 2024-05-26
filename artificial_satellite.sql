--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: artificial_satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.artificial_satellite (
    artificial_satellite integer NOT NULL,
    name character varying(50) NOT NULL,
    repair_count integer,
    manufacturer text,
    cost numeric,
    is_retired boolean,
    miles_per_hour integer,
    is_communicating boolean NOT NULL
);


ALTER TABLE public.artificial_satellite OWNER TO freecodecamp;

--
-- Data for Name: artificial_satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.artificial_satellite (artificial_satellite, name, repair_count, manufacturer, cost, is_retired, miles_per_hour, is_communicating) FROM stdin;
\.


--
-- Name: artificial_satellite artifical_satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artifical_satellite_pkey PRIMARY KEY (artificial_satellite);


--
-- PostgreSQL database dump complete
--

