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
-- Name: galactic_federation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galactic_federation (
    galactic_federation_id integer NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galactic_federation OWNER TO freecodecamp;

--
-- Name: galactic_federation_federal_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galactic_federation_federal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galactic_federation_federal_id_seq OWNER TO freecodecamp;

--
-- Name: galactic_federation_federal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galactic_federation_federal_id_seq OWNED BY public.galactic_federation.galactic_federation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL,
    description text
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
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_orbit_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_orbit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_orbit_id_seq OWNER TO freecodecamp;

--
-- Name: moon_orbit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_orbit_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    is_spherical boolean
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
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    is_spherical boolean
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
-- Name: galactic_federation galactic_federation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_federation ALTER COLUMN galactic_federation_id SET DEFAULT nextval('public.galactic_federation_federal_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_orbit_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galactic_federation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galactic_federation VALUES (4, 'galactic_defense', false, 'federation_1');
INSERT INTO public.galactic_federation VALUES (5, 'galactic_mining', false, 'federation_2');
INSERT INTO public.galactic_federation VALUES (6, 'galactic_arbitration', true, 'federation_3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 0, 0.0265, true, 1, 'home of the beatles');
INSERT INTO public.galaxy VALUES ('Ursa Major III', 1, 0.033, true, 2, 'Satelite of the Milky Way');
INSERT INTO public.galaxy VALUES ('Segue I', 2, 0.075, false, 3, 'Satelite of the Milky Way');
INSERT INTO public.galaxy VALUES ('Phoenix Dwarf Galaxy (P6380)', 3, 1.44, false, 4, 'Satelite of the Milky Way');
INSERT INTO public.galaxy VALUES ('Tucana III', 4, 0.0701, false, 5, 'Satelite of the Milky Way');
INSERT INTO public.galaxy VALUES ('Draco II', 5, 0.0747, false, 6, 'Satelite of the Milky way (tidally disrupted)');
INSERT INTO public.galaxy VALUES ('Sagittarius Dwarf Sphr ', 6, 0.078, false, 7, 'Satelite of the Milky Way (partial accretion by Milky way)');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('The Moon', 'Earths only spectral satelite', 0, 0.350, false, 1, 3, true);
INSERT INTO public.moon VALUES ('Phobos', 'Mars largest moon', 0, 0.350, false, 2, 4, true);
INSERT INTO public.moon VALUES ('Ganymede', 'largest moon on Jupiter', 0, 0.350, false, 24, 13, true);
INSERT INTO public.moon VALUES ('Moon3', 'Earths only spectral satellite', 0, 0.350, false, 25, 3, true);
INSERT INTO public.moon VALUES ('Moon4', 'Earths only spectral satellite', 0, 0.350, false, 26, 3, true);
INSERT INTO public.moon VALUES ('Moon5', 'Earths only spectral satellite', 0, 0.350, false, 27, 3, true);
INSERT INTO public.moon VALUES ('Moon6', 'Earths only spectral satellite', 0, 0.350, false, 28, 3, true);
INSERT INTO public.moon VALUES ('Moon7', 'Earths only spectral satellite', 0, 0.350, false, 29, 3, true);
INSERT INTO public.moon VALUES ('Moon8', 'Earths only spectral satellite', 0, 0.350, false, 30, 3, true);
INSERT INTO public.moon VALUES ('Moon9', 'Earths only spectral satellite', 0, 0.350, false, 31, 3, true);
INSERT INTO public.moon VALUES ('Moon10', 'Earths only spectral satellite', 0, 0.350, false, 32, 3, true);
INSERT INTO public.moon VALUES ('Moon11', 'Earths only spectral satellite', 0, 0.350, false, 33, 3, true);
INSERT INTO public.moon VALUES ('Moon12', 'Earths only spectral satellite', 0, 0.350, false, 34, 3, true);
INSERT INTO public.moon VALUES ('Moon13', 'Earths only spectral satellite', 0, 0.350, false, 35, 3, true);
INSERT INTO public.moon VALUES ('Moon14', 'Earths only spectral satellite', 0, 0.350, false, 36, 3, true);
INSERT INTO public.moon VALUES ('Moon15', 'Earths only spectral satellite', 0, 0.350, false, 37, 3, true);
INSERT INTO public.moon VALUES ('Moon16', 'Earths only spectral satellite', 0, 0.350, false, 38, 3, true);
INSERT INTO public.moon VALUES ('Moon17', 'Earths only spectral satellite', 0, 0.350, false, 39, 3, true);
INSERT INTO public.moon VALUES ('Moon18', 'Earths only spectral satellite', 0, 0.350, false, 40, 3, true);
INSERT INTO public.moon VALUES ('Moon19', 'Earths only spectral satellite', 0, 0.350, false, 41, 3, true);
INSERT INTO public.moon VALUES ('Moon20', 'Earths only spectral satellite', 0, 0.350, false, 42, 3, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mecury', 'the hottest planet in the solar system situated the closest to the main star', 1, 0.150, false, 1, 1, true);
INSERT INTO public.planet VALUES ('Venus', 'the second hottest planet in the solar system', 1, 0.150, false, 2, 1, true);
INSERT INTO public.planet VALUES ('Earth', 'the home of the beatles, the only planet known to support life', 1, 0.150, false, 3, 1, true);
INSERT INTO public.planet VALUES ('Mars', 'the next habaitable planet in the solar system after Earth', 1, 0.150, false, 4, 1, true);
INSERT INTO public.planet VALUES ('Jupiter', 'a giant made up of gases', 1, 0.150, false, 13, 1, true);
INSERT INTO public.planet VALUES ('Saturn', 'a giant made up of gases', 1, 0.150, false, 14, 1, true);
INSERT INTO public.planet VALUES ('Uranus', 'a giant made up of gases', 1, 0.150, false, 15, 1, true);
INSERT INTO public.planet VALUES ('Neptune', 'a giant made up of gases', 1, 0.150, false, 16, 1, true);
INSERT INTO public.planet VALUES ('Pluto', 'a dwarf planet and one of the smallest coldest and farthest planet in in the solar system', 1, 0.150, false, 17, 1, true);
INSERT INTO public.planet VALUES ('Ceres', 'a dwarf planet and one of the smallest coldest and farthest planet in in the solar system', 1, 0.150, false, 18, 1, true);
INSERT INTO public.planet VALUES ('Haumea', 'a dwarf planet and one of the smallest coldest and farthest planet in in the solar system', 1, 0.150, false, 19, 1, true);
INSERT INTO public.planet VALUES ('Makemake', 'a dwarf planet and one of the smallest coldest and farthest planet in in the solar system', 1, 0.150, false, 20, 1, true);
INSERT INTO public.planet VALUES ('Eris', 'a dwarf planet and one of the smallest coldest and farthest planet in in the solar system', 1, 0.150, false, 21, 1, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('The Sun', 'the only star in the solar system,situated at the center of the solar system', 5, 150, false, 1, 1, true);
INSERT INTO public.star VALUES ('The Sun2', 'the only star in the solar system,situated at the center of the solar system', 5, 150, false, 2, 1, true);
INSERT INTO public.star VALUES ('The Sun3', 'the only star in the solar system,situated at the center of the solar system', 5, 150, false, 3, 1, true);
INSERT INTO public.star VALUES ('The Sun4', 'the only star in the solar system,situated at the center of the solar system', 5, 150, false, 4, 1, true);
INSERT INTO public.star VALUES ('The Sun5', 'the only star in the solar system,situated at the center of the solar system', 5, 150, false, 5, 1, true);
INSERT INTO public.star VALUES ('The Sun6', 'the only star in the solar system,situated at the center of the solar system', 5, 150, false, 6, 1, true);


--
-- Name: galactic_federation_federal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galactic_federation_federal_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_orbit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_orbit_id_seq', 42, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galactic_federation galactic_federation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_federation
    ADD CONSTRAINT galactic_federation_name_key UNIQUE (name);


--
-- Name: galactic_federation galactic_federation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galactic_federation
    ADD CONSTRAINT galactic_federation_pkey PRIMARY KEY (galactic_federation_id);


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
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

