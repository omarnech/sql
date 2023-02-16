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
    name character varying(30),
    age integer NOT NULL,
    number_stars integer,
    number_blackhole integer
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
    exisance_of_water boolean,
    diameter integer NOT NULL,
    weight integer NOT NULL,
    planet_id integer,
    name character varying(30)
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
    name character varying(30),
    existance_of_life boolean,
    weight numeric NOT NULL,
    diameter integer NOT NULL,
    distance_from_earth integer,
    nature text,
    star_id integer NOT NULL
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
-- Name: relation_between_tables; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.relation_between_tables (
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(30),
    relation_between_tables_id integer NOT NULL
);


ALTER TABLE public.relation_between_tables OWNER TO freecodecamp;

--
-- Name: relation_between_tables_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.relation_between_tables_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relation_between_tables_relation_id_seq OWNER TO freecodecamp;

--
-- Name: relation_between_tables_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.relation_between_tables_relation_id_seq OWNED BY public.relation_between_tables.relation_between_tables_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    age integer NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer,
    star_id integer NOT NULL
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: relation_between_tables relation_between_tables_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation_between_tables ALTER COLUMN relation_between_tables_id SET DEFAULT nextval('public.relation_between_tables_relation_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 4547, 7454, 748);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2', 787, 57, 87);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3', 78, 65, 87);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4', 85, 65, 798);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5', 98, 65, 75);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6', 985, 658, 784);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, false, 542, 547, 3, 'moon');
INSERT INTO public.moon VALUES (2, false, 57, 32, 4, 'Deinos');
INSERT INTO public.moon VALUES (3, false, 21, 32, 4, 'Phobos');
INSERT INTO public.moon VALUES (4, false, 35, 78, 5, 'Amalthea');
INSERT INTO public.moon VALUES (5, false, 65, 95, 5, 'Calliso');
INSERT INTO public.moon VALUES (6, false, 32, 86, 5, 'Europa');
INSERT INTO public.moon VALUES (7, false, 65, 89, 5, 'Ganymeda');
INSERT INTO public.moon VALUES (8, false, 52, 22, 5, 'Io');
INSERT INTO public.moon VALUES (9, false, 54, 54, 6, 'Dione');
INSERT INTO public.moon VALUES (10, false, 32, 33, 6, 'Enceladus');
INSERT INTO public.moon VALUES (11, false, 77, 88, 6, 'Hyperian');
INSERT INTO public.moon VALUES (12, false, 45, 55, 6, 'Lapetus');
INSERT INTO public.moon VALUES (13, false, 66, 88, 6, 'Mimas');
INSERT INTO public.moon VALUES (14, false, 22, 88, 6, 'Phoebe');
INSERT INTO public.moon VALUES (15, false, 77, 89, 6, 'Rhea');
INSERT INTO public.moon VALUES (16, false, 56, 789, 6, 'Thethys');
INSERT INTO public.moon VALUES (17, false, 75, 44, 6, 'Titan');
INSERT INTO public.moon VALUES (18, false, 22, 11, 7, 'Ariel');
INSERT INTO public.moon VALUES (19, false, 55, 66, 7, 'Miranda');
INSERT INTO public.moon VALUES (20, false, 75, 685, 7, 'Oberan');
INSERT INTO public.moon VALUES (21, false, 45, 21, 7, 'Titania');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 2650, 54665, 58877, 'rocky planet', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 6540, 54872, 54789, 'rocky planet', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 54325, 2145, 0, 'rocky planet', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 475, 545, 845, 'rocky planet', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 457, 5457, 4758, 'rocky planet', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 454, 86, 547, 'rocky planet', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 475, 758, 784, 'rocky planet', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 457, 4587, 8694, 'glass planet', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 4574, 4587, 4587, 'glass planet', 1);
INSERT INTO public.planet VALUES (10, 'planet_x', false, 45745, 145784, 45874, 'giantic gas', 2);
INSERT INTO public.planet VALUES (11, 'planet_y', false, 45784, 458754, 47587, 'giantic gas', 2);
INSERT INTO public.planet VALUES (12, 'planet_z', false, 454784, 96564, 4575185, 'giantic gaz', 2);


--
-- Data for Name: relation_between_tables; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.relation_between_tables VALUES (1, 3, 1, 'moon', 1);
INSERT INTO public.relation_between_tables VALUES (1, 4, 2, 'Deinos', 2);
INSERT INTO public.relation_between_tables VALUES (1, 4, 3, 'Phobos', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 47584, 54784, 1, 1);
INSERT INTO public.star VALUES ('star_x', 74541, 542141, 1, 2);
INSERT INTO public.star VALUES ('star_y', 458714, 44544, 1, 3);
INSERT INTO public.star VALUES ('star_u', 45845, 2185744, 1, 4);
INSERT INTO public.star VALUES ('star_t', 457454, 98526, 1, 5);
INSERT INTO public.star VALUES ('star_a', 875844, 965565, 1, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: relation_between_tables_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.relation_between_tables_relation_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: relation_between_tables relation_between_tables_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation_between_tables
    ADD CONSTRAINT relation_between_tables_name_key UNIQUE (name);


--
-- Name: relation_between_tables relation_between_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relation_between_tables
    ADD CONSTRAINT relation_between_tables_pkey PRIMARY KEY (relation_between_tables_id);


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

