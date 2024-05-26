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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
    name character varying(50) NOT NULL,
    repair_count integer,
    manufacturer text,
    cost numeric,
    is_retired boolean,
    miles_per_hour integer,
    is_communicating boolean NOT NULL,
    artificial_satellite_id bigint NOT NULL
);


ALTER TABLE public.artificial_satellite OWNER TO freecodecamp;

--
-- Name: artificial_satellite_artificial_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.artificial_satellite_artificial_satellite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artificial_satellite_artificial_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: artificial_satellite_artificial_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.artificial_satellite_artificial_satellite_id_seq OWNED BY public.artificial_satellite.artificial_satellite_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50) NOT NULL,
    age integer,
    type text NOT NULL,
    has_blackhole boolean,
    is_active boolean,
    stellar_mass numeric,
    star_count integer,
    galaxy_id bigint NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    age integer,
    weight numeric,
    has_atmosphere boolean,
    is_tidally_locked boolean,
    orbital_period_days integer,
    geological_features text,
    moon_id bigint NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    age integer,
    type text NOT NULL,
    weight numeric,
    has_life boolean,
    rotation_period_hours integer,
    has_water boolean,
    planet_id bigint NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50) NOT NULL,
    age integer,
    spectral_class text NOT NULL,
    stellar_mass numeric,
    has_planets boolean,
    is_variable boolean,
    temperature integer,
    star_id bigint NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: artificial_satellite artificial_satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite ALTER COLUMN artificial_satellite_id SET DEFAULT nextval('public.artificial_satellite_artificial_satellite_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: artificial_satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.artificial_satellite VALUES ('Satellite Alpha', 2, 'SpaceTech Corp.', 50000000, false, 17500, true, 1);
INSERT INTO public.artificial_satellite VALUES ('Satellite Beta', 1, 'Galactic Dynamics Inc.', 30000000, false, 21000, false, 2);
INSERT INTO public.artificial_satellite VALUES ('Satellite Gamma', 3, 'Interstellar Solutions', 75000000, true, 19000, true, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 14, 'Spiral', true, true, 10000000000000000.0, 200, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 13, 'Elliptical', false, true, 9000000000000000.0, 100, 2);
INSERT INTO public.galaxy VALUES ('Whirlpool', 0, 'Spiral', false, true, 5000000000000000.0, 10, 3);
INSERT INTO public.galaxy VALUES ('Sombrero', 9, 'Lenticular', false, true, 3000000000000000.0, 5, 4);
INSERT INTO public.galaxy VALUES ('Pinwheel', 0, 'Spiral', false, true, 4000000000000000.0, 15, 5);
INSERT INTO public.galaxy VALUES ('Centaurus A', 7, 'Elliptical', true, true, 8000000000000000.0, 50, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon A', 5, 1989000000000000000000000, true, false, 29, 'Cratered', 1, 1);
INSERT INTO public.moon VALUES ('Moon B', 2, 1220000000000000000000000000, false, true, 12, 'Smooth Terrain', 2, 2);
INSERT INTO public.moon VALUES ('Moon C', 0, 167000000000000000000000, true, false, 18, 'Mountainous', 3, 3);
INSERT INTO public.moon VALUES ('Moon D', 0, 13200000000000000000000000, true, true, 38, 'Volcanic Features', 4, 4);
INSERT INTO public.moon VALUES ('Moon E', 0, 1060000000000000000000000, false, false, 20, 'Impact Craters', 5, 5);
INSERT INTO public.moon VALUES ('Moon F', 0, 15400000000000000000000, true, false, 33, 'Ridges and Valleys', 6, 6);
INSERT INTO public.moon VALUES ('Moon G', 0, 1090000000000000000000, false, true, 45, 'Flat Surface', 7, 7);
INSERT INTO public.moon VALUES ('Moon H', 0, 10300000000000000000, true, false, 60, 'Ring System', 8, 8);
INSERT INTO public.moon VALUES ('Moon I', 0, 102000000000000000, false, true, 72, 'Dark Mantle', 9, 9);
INSERT INTO public.moon VALUES ('Moon J', 0, 101000000000000, true, false, 84, 'Bright Polar Regions', 10, 10);
INSERT INTO public.moon VALUES ('Moon K', 0, 100000000000, false, true, 96, 'Sparse Craters', 11, 11);
INSERT INTO public.moon VALUES ('Moon L', 0, 100000000, true, false, 108, 'Active Volcanism', 12, 12);
INSERT INTO public.moon VALUES ('Moon M', 0, 100000, false, true, 120, 'No Craters', 13, 1);
INSERT INTO public.moon VALUES ('Moon N', 0, 100, true, false, 132, 'Ejecta Blankets', 14, 2);
INSERT INTO public.moon VALUES ('Moon O', 0, 10, false, true, 144, 'Tectonic Activity', 15, 3);
INSERT INTO public.moon VALUES ('Moon P', 0, 100, true, false, 156, 'Thermal Emission', 16, 4);
INSERT INTO public.moon VALUES ('Moon Q', 0, 1000, false, true, 168, 'Polar Ice Caps', 17, 5);
INSERT INTO public.moon VALUES ('Moon R', 0, 10000, true, false, 180, 'Meteorite Impacts', 18, 6);
INSERT INTO public.moon VALUES ('Moon S', 0, 100000, false, true, 192, 'Stable Orbit', 19, 7);
INSERT INTO public.moon VALUES ('Moon T', 0, 1000000, true, false, 204, 'Dynamic Atmosphere', 20, 8);
INSERT INTO public.moon VALUES ('Moon U', 0, 10000000, false, true, 216, 'Seasonal Changes', 21, 9);
INSERT INTO public.moon VALUES ('Moon V', 0, 100000000, true, false, 228, 'Rapid Rotation', 22, 10);
INSERT INTO public.moon VALUES ('Moon W', 0, 1000000000, false, true, 240, 'Multiple Moons', 23, 11);
INSERT INTO public.moon VALUES ('Moon X', 0, 10000000000, true, false, 252, 'Complex Geology', 24, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Planet X', 5, 'Terrestrial', 1989000000000000000000000, true, 24, true, 1, 1);
INSERT INTO public.planet VALUES ('Planet Y', 2, 'Gas Giant', 1220000000000000000000000000, false, 10, false, 2, 2);
INSERT INTO public.planet VALUES ('Planet Z', 0, 'Dwarf Planet', 167000000000000000000000, false, 18, true, 3, 3);
INSERT INTO public.planet VALUES ('Planet W', 0, 'Ice Giant', 13200000000000000000000000, false, 38, true, 4, 4);
INSERT INTO public.planet VALUES ('Planet V', 0, 'Ocean Planet', 1060000000000000000000000, true, 20, true, 5, 5);
INSERT INTO public.planet VALUES ('Planet U', 0, 'Iron Planet', 15400000000000000000000, false, 33, false, 6, 6);
INSERT INTO public.planet VALUES ('Planet T', 0, 'Chthonian Planet', 1090000000000000000000, false, 45, false, 7, 3);
INSERT INTO public.planet VALUES ('Planet S', 0, 'Scattered Disk Object', 10300000000000000000, false, 60, false, 8, 3);
INSERT INTO public.planet VALUES ('Planet R', 0, 'Trojan Planet', 102000000000000000, false, 72, false, 9, 3);
INSERT INTO public.planet VALUES ('Planet Q', 0, 'Trans-Neptunian Object', 101000000000000, false, 84, false, 10, 1);
INSERT INTO public.planet VALUES ('Planet P', 0, 'Comet', 100000000000, false, 96, false, 11, 2);
INSERT INTO public.planet VALUES ('Planet O', 0, 'Asteroid', 100000000, false, 108, false, 12, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Star A', 5, 'G2V', 1989000000000000000000000000000, true, false, 6000, 1, 1);
INSERT INTO public.star VALUES ('Star B', 2, 'K5III', 718000000000000000000000000000, false, true, 3900, 2, 2);
INSERT INTO public.star VALUES ('Star C', 0, 'O5V', 16000000000000000000000000000000, true, false, 35000, 3, 3);
INSERT INTO public.star VALUES ('Star D', 0, 'M0V', 390000000000000000000000000000, false, false, 2900, 4, 4);
INSERT INTO public.star VALUES ('Star E', 0, 'B0V', 14600000000000000000000000000000, true, true, 28000, 5, 5);
INSERT INTO public.star VALUES ('Star F', 0, 'T5V', 80000000000000000000000000000, false, false, 700, 6, 6);


--
-- Name: artificial_satellite_artificial_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.artificial_satellite_artificial_satellite_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: artificial_satellite artificial_satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_satellite_name_key UNIQUE (name);


--
-- Name: artificial_satellite artificial_satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artificial_satellite
    ADD CONSTRAINT artificial_satellite_pkey PRIMARY KEY (artificial_satellite_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

