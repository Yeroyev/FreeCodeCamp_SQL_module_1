--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    size numeric(4,2),
    gravity integer NOT NULL,
    description text,
    inhabited boolean,
    distance_from_the_earth integer,
    water boolean
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
-- Name: minerals; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.minerals (
    minerals_id integer NOT NULL,
    name character varying(40),
    type character varying(40),
    grain character varying(20),
    danger boolean,
    quantity integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.minerals OWNER TO freecodecamp;

--
-- Name: minerals_mineral_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.minerals_mineral_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.minerals_mineral_id_seq OWNER TO freecodecamp;

--
-- Name: minerals_mineral_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.minerals_mineral_id_seq OWNED BY public.minerals.minerals_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    planet_id integer NOT NULL,
    type character varying(20),
    danger boolean
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
    name character varying(40),
    star_id integer NOT NULL,
    type character varying(20),
    danger boolean
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
    name character varying(40),
    galaxy_id integer NOT NULL,
    type character varying(20),
    danger boolean
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: minerals minerals_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.minerals ALTER COLUMN minerals_id SET DEFAULT nextval('public.minerals_mineral_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 30.00, 4500, '8 planets', true, 10, true);
INSERT INTO public.galaxy VALUES (2, 'Strong balls', 20.50, 3000, '3 planets', false, 50, true);
INSERT INTO public.galaxy VALUES (3, 'French class', 18.33, 4200, '20 planets', false, 900, true);
INSERT INTO public.galaxy VALUES (4, 'English lake', 68.26, 3700, '11 planets', false, 180, false);
INSERT INTO public.galaxy VALUES (5, 'Mierde ocean', 95.58, 1500, '2 planets', false, 20, false);
INSERT INTO public.galaxy VALUES (6, 'SQL task', 48.23, 2300, '3 planets', false, 80, false);


--
-- Data for Name: minerals; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.minerals VALUES (1, 'Sio2', NULL, NULL, NULL, 10, NULL);
INSERT INTO public.minerals VALUES (2, 'Al2so4', NULL, NULL, NULL, 10, NULL);
INSERT INTO public.minerals VALUES (3, 'Mg2so4', NULL, NULL, NULL, 10, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'kr', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'tt', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'yt', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'fg', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'ph', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'np', 6, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'io', 7, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'po', 8, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'rt', 9, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'vb', 10, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'lg', 11, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'lf', 12, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'ke', 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'ty', 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'yw', 3, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'gl', 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'pe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'na', 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'is', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'pq', 8, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'mercuriy', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'earth', 2, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'pluton', 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'sun', 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'neptun', 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'upiter', 4, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'venera', 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'jonh', 5, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'clark', 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'newton', 6, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'castle', 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Cow', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Apple', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Fence', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Maison', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Pomme', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Femme', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: minerals_mineral_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.minerals_mineral_id_seq', 4, true);


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
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: minerals minerals_grain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.minerals
    ADD CONSTRAINT minerals_grain_key UNIQUE (grain);


--
-- Name: minerals minerals_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.minerals
    ADD CONSTRAINT minerals_pkey PRIMARY KEY (minerals_id);


--
-- Name: minerals minerals_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.minerals
    ADD CONSTRAINT minerals_planet_id_key UNIQUE (planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_type_key UNIQUE (type);


--
-- Name: moon nameu; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT nameu UNIQUE (name);


--
-- Name: star nameun; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT nameun UNIQUE (name);


--
-- Name: planet nameuni; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT nameuni UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_type_key UNIQUE (type);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_type_key UNIQUE (type);


--
-- Name: galaxy su; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT su UNIQUE (size);


--
-- Name: minerals minerals_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.minerals
    ADD CONSTRAINT minerals_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

