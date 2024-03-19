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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    mean_distance_from_sun numeric(4,3),
    size numeric
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    constellation text,
    number_of_stars numeric,
    viewable_from_earth boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
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
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_planet numeric,
    size integer,
    type text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
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
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_water boolean,
    size integer,
    type text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass numeric,
    surface_temp numeric,
    size integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Vesta', 'vestoid', 2.360, 525);
INSERT INTO public.asteroid VALUES (2, 'Bennu', 'blue', 1.130, 490);
INSERT INTO public.asteroid VALUES (3, 'Psyche', 'metallic', 3.000, 226);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda_Galaxy', 152000, 'Andromeda', 1000000000000, true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 100000, 'Sagittarius', 3000000000, true);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', 144300, 'Sculptor', 6000000000, false);
INSERT INTO public.galaxy VALUES (4, 'Firewords', 87300, 'Cepheus', 900000000, false);
INSERT INTO public.galaxy VALUES (5, 'Cigar', 40800, 'Ursa_Major', 30000000000, true);
INSERT INTO public.galaxy VALUES (6, 'Condor', 522000, 'Pavo', 1200000000000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, 3480, 'synchronous_rotation', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 9380, 23, 'synchronous_rotation', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460, 13, 'synchronous_rotation', 4);
INSERT INTO public.moon VALUES (4, 'Lo', 421800, 3644, 'main_group_moon', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1080400, 5268, 'main_group_moon', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1882700, 4820, 'main_group_moon', 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 181400, 168, 'prograde_irregular', 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 11461000, 140, 'prograde_irregular', 5);
INSERT INTO public.moon VALUES (10, 'Elara', 11741999, 86, 'prograde_irregular', 5);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 23624000, 60, 'retrograde_irregular', 5);
INSERT INTO public.moon VALUES (12, 'Sinope', 23939000, 38, 'retrograde_irregular', 5);
INSERT INTO public.moon VALUES (13, 'Lysithea', 11717000, 36, 'prograde_irregular', 5);
INSERT INTO public.moon VALUES (14, 'Mimas', 185540, 496, 'main_group_moon', 6);
INSERT INTO public.moon VALUES (15, 'Ymir', 23140000, 18, 'retrograde_irregular', 6);
INSERT INTO public.moon VALUES (16, 'Narvi', 19007000, 7, 'retrograde_irregular', 6);
INSERT INTO public.moon VALUES (17, 'Ariel', 190900, 1158, 'main_group_moon', 7);
INSERT INTO public.moon VALUES (18, 'Triton', 354800, 2706, 'retrograde_irregular', 8);
INSERT INTO public.moon VALUES (19, 'Halimede', 15728000, 62, 'retrograde_irregular', 8);
INSERT INTO public.moon VALUES (20, 'Charon', 19591, 1212, 'synchronous_rotation', 9);
INSERT INTO public.moon VALUES (5, 'Europa', 671100, 3122, 'main_group_moon', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 4880, 'terestrial', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 12104, 'terestrial', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 12760, 'terestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, 6780, 'terestrial', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 69911, 'gas_giant', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 120500, 'gas_giant', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', true, 51118, 'ice_giant', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 49528, 'ice_giant', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', true, 2253, 'dwarf', 1);
INSERT INTO public.planet VALUES (10, 'Ceres', true, 476, 'dwarf', 1);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', true, 13394, 'super_earth', 1);
INSERT INTO public.planet VALUES (12, 'COROT-7b', true, 10077, 'super_earth', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Proxima Centauri', 211680, 3042, 211680, 2);
INSERT INTO public.star VALUES (3, 'Arturus', 333000, 4200, 10800000, 2);
INSERT INTO public.star VALUES (4, 'Hamal', 499500, 5770, 6480000, 2);
INSERT INTO public.star VALUES (5, 'Pollux', 864000, 4666, 1944000, 2);
INSERT INTO public.star VALUES (6, 'Rigel', 6993000, 12100, 15120000, 2);
INSERT INTO public.star VALUES (1, 'Sun', 333000, 5772, 432000, 2);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: galaxy unique_constellation; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_constellation UNIQUE (constellation);


--
-- Name: moon unique_distance_from_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_distance_from_planet UNIQUE (distance_from_planet);


--
-- Name: asteroid unique_mean_distance_from_sun; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_mean_distance_from_sun UNIQUE (mean_distance_from_sun);


--
-- Name: planet unique_size; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_size UNIQUE (size);


--
-- Name: star unique_surface_temp; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_surface_temp UNIQUE (surface_temp);


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

