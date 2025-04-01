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
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer,
    opponent_id integer
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
-- Name: raw_games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.raw_games (
    winner character varying(50) NOT NULL,
    opponent character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL
);


ALTER TABLE public.raw_games OWNER TO freecodecamp;

--
-- Name: raw_games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.raw_games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.raw_games_game_id_seq OWNER TO freecodecamp;

--
-- Name: raw_games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.raw_games_game_id_seq OWNED BY public.raw_games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
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
-- Name: raw_games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.raw_games ALTER COLUMN game_id SET DEFAULT nextval('public.raw_games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 4, 2, 14, 7);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 2, 0, 16, 17);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 2, 1, 7, 17);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 1, 0, 14, 16);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 3, 2, 7, 19);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 2, 0, 17, 9);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 2, 1, 16, 20);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 2, 0, 14, 3);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 2, 1, 17, 2);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 1, 0, 9, 6);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 3, 2, 16, 22);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 2, 0, 20, 13);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 2, 1, 7, 15);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 2, 1, 19, 24);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 2, 1, 3, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 4, 3, 14, 5);
INSERT INTO public.games VALUES (17, 2014, 'Final', 1, 0, 11, 5);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 3, 0, 23, 20);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 1, 0, 5, 23);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 7, 1, 11, 20);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 1, 0, 23, 8);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 1, 0, 5, 16);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 2, 1, 20, 2);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 1, 0, 11, 14);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 2, 1, 20, 18);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 2, 0, 2, 3);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 2, 0, 14, 10);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 2, 1, 11, 21);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 2, 1, 23, 13);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 2, 1, 8, 12);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 1, 0, 5, 6);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 2, 1, 16, 4);


--
-- Data for Name: raw_games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.raw_games VALUES ('France', 'Croatia', 4, 2, 1, 2018, 'Final');
INSERT INTO public.raw_games VALUES ('Belgium', 'England', 2, 0, 2, 2018, 'Third Place');
INSERT INTO public.raw_games VALUES ('Croatia', 'England', 2, 1, 3, 2018, 'Semi-Final');
INSERT INTO public.raw_games VALUES ('France', 'Belgium', 1, 0, 4, 2018, 'Semi-Final');
INSERT INTO public.raw_games VALUES ('Croatia', 'Russia', 3, 2, 5, 2018, 'Quarter-Final');
INSERT INTO public.raw_games VALUES ('England', 'Sweden', 2, 0, 6, 2018, 'Quarter-Final');
INSERT INTO public.raw_games VALUES ('Belgium', 'Brazil', 2, 1, 7, 2018, 'Quarter-Final');
INSERT INTO public.raw_games VALUES ('France', 'Uruguay', 2, 0, 8, 2018, 'Quarter-Final');
INSERT INTO public.raw_games VALUES ('England', 'Colombia', 2, 1, 9, 2018, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Sweden', 'Switzerland', 1, 0, 10, 2018, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Belgium', 'Japan', 3, 2, 11, 2018, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Brazil', 'Mexico', 2, 0, 12, 2018, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Croatia', 'Denmark', 2, 1, 13, 2018, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Russia', 'Spain', 2, 1, 14, 2018, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Uruguay', 'Portugal', 2, 1, 15, 2018, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('France', 'Argentina', 4, 3, 16, 2018, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Germany', 'Argentina', 1, 0, 17, 2014, 'Final');
INSERT INTO public.raw_games VALUES ('Netherlands', 'Brazil', 3, 0, 18, 2014, 'Third Place');
INSERT INTO public.raw_games VALUES ('Argentina', 'Netherlands', 1, 0, 19, 2014, 'Semi-Final');
INSERT INTO public.raw_games VALUES ('Germany', 'Brazil', 7, 1, 20, 2014, 'Semi-Final');
INSERT INTO public.raw_games VALUES ('Netherlands', 'Costa Rica', 1, 0, 21, 2014, 'Quarter-Final');
INSERT INTO public.raw_games VALUES ('Argentina', 'Belgium', 1, 0, 22, 2014, 'Quarter-Final');
INSERT INTO public.raw_games VALUES ('Brazil', 'Colombia', 2, 1, 23, 2014, 'Quarter-Final');
INSERT INTO public.raw_games VALUES ('Germany', 'France', 1, 0, 24, 2014, 'Quarter-Final');
INSERT INTO public.raw_games VALUES ('Brazil', 'Chile', 2, 1, 25, 2014, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Colombia', 'Uruguay', 2, 0, 26, 2014, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('France', 'Nigeria', 2, 0, 27, 2014, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Germany', 'Algeria', 2, 1, 28, 2014, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Netherlands', 'Mexico', 2, 1, 29, 2014, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Costa Rica', 'Greece', 2, 1, 30, 2014, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Argentina', 'Switzerland', 1, 0, 31, 2014, 'Eighth-Final');
INSERT INTO public.raw_games VALUES ('Belgium', 'United States', 2, 1, 32, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'Portugal');
INSERT INTO public.teams VALUES (2, 'Colombia');
INSERT INTO public.teams VALUES (3, 'Uruguay');
INSERT INTO public.teams VALUES (4, 'United States');
INSERT INTO public.teams VALUES (5, 'Argentina');
INSERT INTO public.teams VALUES (6, 'Switzerland');
INSERT INTO public.teams VALUES (7, 'Croatia');
INSERT INTO public.teams VALUES (8, 'Costa Rica');
INSERT INTO public.teams VALUES (9, 'Sweden');
INSERT INTO public.teams VALUES (10, 'Nigeria');
INSERT INTO public.teams VALUES (11, 'Germany');
INSERT INTO public.teams VALUES (12, 'Greece');
INSERT INTO public.teams VALUES (13, 'Mexico');
INSERT INTO public.teams VALUES (14, 'France');
INSERT INTO public.teams VALUES (15, 'Denmark');
INSERT INTO public.teams VALUES (16, 'Belgium');
INSERT INTO public.teams VALUES (17, 'England');
INSERT INTO public.teams VALUES (18, 'Chile');
INSERT INTO public.teams VALUES (19, 'Russia');
INSERT INTO public.teams VALUES (20, 'Brazil');
INSERT INTO public.teams VALUES (21, 'Algeria');
INSERT INTO public.teams VALUES (22, 'Japan');
INSERT INTO public.teams VALUES (23, 'Netherlands');
INSERT INTO public.teams VALUES (24, 'Spain');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: raw_games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.raw_games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: raw_games raw_games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.raw_games
    ADD CONSTRAINT raw_games_pkey PRIMARY KEY (game_id);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--