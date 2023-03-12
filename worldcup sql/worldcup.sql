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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (419, 2018, 'Final', 855, 856, 4, 2);
INSERT INTO public.games VALUES (420, 2018, 'Third Place', 857, 858, 2, 0);
INSERT INTO public.games VALUES (421, 2018, 'Semi-Final', 856, 858, 2, 1);
INSERT INTO public.games VALUES (422, 2018, 'Semi-Final', 855, 857, 1, 0);
INSERT INTO public.games VALUES (423, 2018, 'Quarter-Final', 856, 859, 3, 2);
INSERT INTO public.games VALUES (424, 2018, 'Quarter-Final', 858, 860, 2, 0);
INSERT INTO public.games VALUES (425, 2018, 'Quarter-Final', 857, 861, 2, 1);
INSERT INTO public.games VALUES (426, 2018, 'Quarter-Final', 855, 862, 2, 0);
INSERT INTO public.games VALUES (427, 2018, 'Eighth-Final', 858, 863, 2, 1);
INSERT INTO public.games VALUES (428, 2018, 'Eighth-Final', 860, 864, 1, 0);
INSERT INTO public.games VALUES (429, 2018, 'Eighth-Final', 857, 865, 3, 2);
INSERT INTO public.games VALUES (430, 2018, 'Eighth-Final', 861, 866, 2, 0);
INSERT INTO public.games VALUES (431, 2018, 'Eighth-Final', 856, 867, 2, 1);
INSERT INTO public.games VALUES (432, 2018, 'Eighth-Final', 859, 868, 2, 1);
INSERT INTO public.games VALUES (433, 2018, 'Eighth-Final', 862, 869, 2, 1);
INSERT INTO public.games VALUES (434, 2018, 'Eighth-Final', 855, 870, 4, 3);
INSERT INTO public.games VALUES (435, 2014, 'Final', 871, 870, 1, 0);
INSERT INTO public.games VALUES (436, 2014, 'Third Place', 872, 861, 3, 0);
INSERT INTO public.games VALUES (437, 2014, 'Semi-Final', 870, 872, 1, 0);
INSERT INTO public.games VALUES (438, 2014, 'Semi-Final', 871, 861, 7, 1);
INSERT INTO public.games VALUES (439, 2014, 'Quarter-Final', 872, 873, 1, 0);
INSERT INTO public.games VALUES (440, 2014, 'Quarter-Final', 870, 857, 1, 0);
INSERT INTO public.games VALUES (441, 2014, 'Quarter-Final', 861, 863, 2, 1);
INSERT INTO public.games VALUES (442, 2014, 'Quarter-Final', 871, 855, 1, 0);
INSERT INTO public.games VALUES (443, 2014, 'Eighth-Final', 861, 874, 2, 1);
INSERT INTO public.games VALUES (444, 2014, 'Eighth-Final', 863, 862, 2, 0);
INSERT INTO public.games VALUES (445, 2014, 'Eighth-Final', 855, 875, 2, 0);
INSERT INTO public.games VALUES (446, 2014, 'Eighth-Final', 871, 876, 2, 1);
INSERT INTO public.games VALUES (447, 2014, 'Eighth-Final', 872, 866, 2, 1);
INSERT INTO public.games VALUES (448, 2014, 'Eighth-Final', 873, 877, 2, 1);
INSERT INTO public.games VALUES (449, 2014, 'Eighth-Final', 870, 864, 1, 0);
INSERT INTO public.games VALUES (450, 2014, 'Eighth-Final', 857, 878, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (855, 'France');
INSERT INTO public.teams VALUES (856, 'Croatia');
INSERT INTO public.teams VALUES (857, 'Belgium');
INSERT INTO public.teams VALUES (858, 'England');
INSERT INTO public.teams VALUES (859, 'Russia');
INSERT INTO public.teams VALUES (860, 'Sweden');
INSERT INTO public.teams VALUES (861, 'Brazil');
INSERT INTO public.teams VALUES (862, 'Uruguay');
INSERT INTO public.teams VALUES (863, 'Colombia');
INSERT INTO public.teams VALUES (864, 'Switzerland');
INSERT INTO public.teams VALUES (865, 'Japan');
INSERT INTO public.teams VALUES (866, 'Mexico');
INSERT INTO public.teams VALUES (867, 'Denmark');
INSERT INTO public.teams VALUES (868, 'Spain');
INSERT INTO public.teams VALUES (869, 'Portugal');
INSERT INTO public.teams VALUES (870, 'Argentina');
INSERT INTO public.teams VALUES (871, 'Germany');
INSERT INTO public.teams VALUES (872, 'Netherlands');
INSERT INTO public.teams VALUES (873, 'Costa Rica');
INSERT INTO public.teams VALUES (874, 'Chile');
INSERT INTO public.teams VALUES (875, 'Nigeria');
INSERT INTO public.teams VALUES (876, 'Algeria');
INSERT INTO public.teams VALUES (877, 'Greece');
INSERT INTO public.teams VALUES (878, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 450, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 878, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

