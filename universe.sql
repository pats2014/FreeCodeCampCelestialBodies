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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    name character varying(50) NOT NULL,
    comet_id integer NOT NULL,
    description text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years numeric(20,0),
    galaxy_id integer NOT NULL,
    size_light_years integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years numeric(20,0),
    moon_id integer NOT NULL,
    diameter integer,
    planet_id integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years numeric(20,0),
    planet_id integer NOT NULL,
    number_of_moons integer,
    star_id integer,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50) NOT NULL,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_light_years numeric(20,0),
    star_id integer NOT NULL,
    surface_temperature_kelvin integer,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES ('Pop Rock', 1, NULL);
INSERT INTO public.comet VALUES ('Mega Metiorite', 2, NULL);
INSERT INTO public.comet VALUES ('Its me a Rock', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', true, 13600, 0, 1, 100000, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', false, 10000, 2537000, 2, 220000, NULL);
INSERT INTO public.galaxy VALUES ('Sombrero', false, 5000, 29000000, 3, 50000, NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', false, 8000, 23000000, 4, 60000, NULL);
INSERT INTO public.galaxy VALUES ('Large Magellanic Cloud', false, 10000, 163000, 5, 14000, NULL);
INSERT INTO public.galaxy VALUES ('Triangulum', false, 8000, 2730000, 6, 60000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', false, 4500, 0, 1, 3474, 1, NULL);
INSERT INTO public.moon VALUES ('Phobos', false, 4500, 1, 2, 22, 2, NULL);
INSERT INTO public.moon VALUES ('Deimos', false, 4500, 1, 3, 12, 2, NULL);
INSERT INTO public.moon VALUES ('Europa', false, 4600, 5, 4, 3121, 3, NULL);
INSERT INTO public.moon VALUES ('Ganymede', false, 4600, 5, 5, 5268, 3, NULL);
INSERT INTO public.moon VALUES ('Callisto', false, 4600, 5, 6, 4820, 3, NULL);
INSERT INTO public.moon VALUES ('Io', false, 4600, 5, 7, 3642, 3, NULL);
INSERT INTO public.moon VALUES ('Titan', false, 4600, 8, 8, 5151, 4, NULL);
INSERT INTO public.moon VALUES ('Enceladus', false, 4600, 8, 9, 504, 4, NULL);
INSERT INTO public.moon VALUES ('Rhea', false, 4600, 8, 10, 1527, 4, NULL);
INSERT INTO public.moon VALUES ('Mimas', false, 4600, 8, 11, 396, 4, NULL);
INSERT INTO public.moon VALUES ('Tethys', false, 4600, 8, 12, 1062, 4, NULL);
INSERT INTO public.moon VALUES ('Dione', false, 4600, 8, 13, 1123, 4, NULL);
INSERT INTO public.moon VALUES ('Triton', false, 4600, 3, 14, 2706, 4, NULL);
INSERT INTO public.moon VALUES ('Oberon', false, 4600, 8, 15, 1523, 4, NULL);
INSERT INTO public.moon VALUES ('Miranda', false, 4600, 8, 16, 472, 4, NULL);
INSERT INTO public.moon VALUES ('Proxima b Moon 1', false, 4500, 424000, 17, 50, 7, NULL);
INSERT INTO public.moon VALUES ('Proxima b Moon 2', false, 4500, 424000, 18, 60, 7, NULL);
INSERT INTO public.moon VALUES ('Kepler Moon', false, 4700, 1200000, 19, 3000, 8, NULL);
INSERT INTO public.moon VALUES ('TRAPPIST-1d Moon', false, 4800, 40, 20, 1000, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', true, 4500, 0, 1, 1, 1, NULL);
INSERT INTO public.planet VALUES ('Mars', false, 4600, 1, 2, 2, 1, NULL);
INSERT INTO public.planet VALUES ('Jupiter', false, 4600, 5, 3, 79, 1, NULL);
INSERT INTO public.planet VALUES ('Saturn', false, 4600, 8, 4, 83, 1, NULL);
INSERT INTO public.planet VALUES ('Venus', false, 4600, 0, 5, 0, 1, NULL);
INSERT INTO public.planet VALUES ('Mercury', false, 4600, 0, 6, 0, 1, NULL);
INSERT INTO public.planet VALUES ('Proxima b', false, 4500, 424000, 7, 1, 5, NULL);
INSERT INTO public.planet VALUES ('Kepler-442b', false, 4700, 1200000, 8, 0, 6, NULL);
INSERT INTO public.planet VALUES ('TRAPPIST-1d', false, 4800, 40, 9, 0, 6, NULL);
INSERT INTO public.planet VALUES ('TRAPPIST-1e', false, 4800, 40, 10, 0, 6, NULL);
INSERT INTO public.planet VALUES ('TRAPPIST-1f', false, 4800, 40, 11, 0, 6, NULL);
INSERT INTO public.planet VALUES ('Alpha Centauri Bb', false, 4850, 424000, 12, 0, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', true, 4600, 0, 1, 5778, 1, NULL);
INSERT INTO public.star VALUES ('Sirius A', false, 300, 8700000, 2, 9940, 1, NULL);
INSERT INTO public.star VALUES ('Betelgeuse', false, 10000, 640000, 3, 3500, 1, NULL);
INSERT INTO public.star VALUES ('Rigel', false, 8000, 860000, 4, 11000, 1, NULL);
INSERT INTO public.star VALUES ('Proxima Centauri', false, 4850, 424000, 5, 3050, 2, NULL);
INSERT INTO public.star VALUES ('Alpha Centauri', false, 4850, 424000, 6, 3050, 2, NULL);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 60, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 36, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 18, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet unique_constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_constraint_name UNIQUE (name);


--
-- Name: galaxy unique_constraint_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_constraint_name_galaxy UNIQUE (name);


--
-- Name: moon unique_constraint_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_constraint_name_moon UNIQUE (name);


--
-- Name: star unique_constraint_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_constraint_name_star UNIQUE (name);


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

