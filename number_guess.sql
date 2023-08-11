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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game (
    game_id integer NOT NULL,
    best_game integer NOT NULL,
    profile_id integer NOT NULL
);


ALTER TABLE public.game OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.game.game_id;


--
-- Name: profile; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.profile (
    profile_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.profile OWNER TO freecodecamp;

--
-- Name: profile_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.profile_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_profile_id_seq OWNER TO freecodecamp;

--
-- Name: profile_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.profile_profile_id_seq OWNED BY public.profile.profile_id;


--
-- Name: game game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Name: profile profile_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.profile ALTER COLUMN profile_id SET DEFAULT nextval('public.profile_profile_id_seq'::regclass);


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game VALUES (20, 8, 37);
INSERT INTO public.game VALUES (21, 7, 37);
INSERT INTO public.game VALUES (22, 11, 37);
INSERT INTO public.game VALUES (23, 350, 38);
INSERT INTO public.game VALUES (24, 695, 38);
INSERT INTO public.game VALUES (25, 586, 39);
INSERT INTO public.game VALUES (26, 335, 39);
INSERT INTO public.game VALUES (27, 822, 38);
INSERT INTO public.game VALUES (28, 361, 38);
INSERT INTO public.game VALUES (29, 942, 38);
INSERT INTO public.game VALUES (30, 33, 40);
INSERT INTO public.game VALUES (31, 387, 40);
INSERT INTO public.game VALUES (32, 549, 41);
INSERT INTO public.game VALUES (33, 40, 41);
INSERT INTO public.game VALUES (34, 210, 40);
INSERT INTO public.game VALUES (35, 528, 40);
INSERT INTO public.game VALUES (36, 162, 40);
INSERT INTO public.game VALUES (37, 12, 42);
INSERT INTO public.game VALUES (38, 8, 42);
INSERT INTO public.game VALUES (39, 723, 43);
INSERT INTO public.game VALUES (40, 659, 43);
INSERT INTO public.game VALUES (41, 616, 43);
INSERT INTO public.game VALUES (42, 649, 43);
INSERT INTO public.game VALUES (43, 82, 43);
INSERT INTO public.game VALUES (44, 882, 46);
INSERT INTO public.game VALUES (45, 782, 46);
INSERT INTO public.game VALUES (46, 245, 47);
INSERT INTO public.game VALUES (47, 818, 47);
INSERT INTO public.game VALUES (48, 322, 46);
INSERT INTO public.game VALUES (49, 576, 46);
INSERT INTO public.game VALUES (50, 267, 46);
INSERT INTO public.game VALUES (51, 662, 48);
INSERT INTO public.game VALUES (52, 291, 48);
INSERT INTO public.game VALUES (53, 474, 49);
INSERT INTO public.game VALUES (54, 904, 49);
INSERT INTO public.game VALUES (55, 313, 48);
INSERT INTO public.game VALUES (56, 560, 48);
INSERT INTO public.game VALUES (57, 962, 48);
INSERT INTO public.game VALUES (58, 779, 50);
INSERT INTO public.game VALUES (59, 563, 50);
INSERT INTO public.game VALUES (60, 154, 51);
INSERT INTO public.game VALUES (61, 433, 51);
INSERT INTO public.game VALUES (62, 290, 50);
INSERT INTO public.game VALUES (63, 222, 50);
INSERT INTO public.game VALUES (64, 633, 50);
INSERT INTO public.game VALUES (65, 640, 52);
INSERT INTO public.game VALUES (66, 546, 52);
INSERT INTO public.game VALUES (67, 4, 53);
INSERT INTO public.game VALUES (68, 151, 53);
INSERT INTO public.game VALUES (69, 986, 52);
INSERT INTO public.game VALUES (70, 338, 52);
INSERT INTO public.game VALUES (71, 527, 52);


--
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.profile VALUES (37, 'Robert');
INSERT INTO public.profile VALUES (38, 'user_1691740050942');
INSERT INTO public.profile VALUES (39, 'user_1691740050941');
INSERT INTO public.profile VALUES (40, 'user_1691740099522');
INSERT INTO public.profile VALUES (41, 'user_1691740099521');
INSERT INTO public.profile VALUES (42, 'Patrick');
INSERT INTO public.profile VALUES (43, 'user_1691740271352');
INSERT INTO public.profile VALUES (44, 'user_1691740271351');
INSERT INTO public.profile VALUES (45, 'user_1691740271351');
INSERT INTO public.profile VALUES (46, 'user_1691740313928');
INSERT INTO public.profile VALUES (47, 'user_1691740313927');
INSERT INTO public.profile VALUES (48, 'user_1691740335896');
INSERT INTO public.profile VALUES (49, 'user_1691740335895');
INSERT INTO public.profile VALUES (50, 'user_1691740366108');
INSERT INTO public.profile VALUES (51, 'user_1691740366107');
INSERT INTO public.profile VALUES (52, 'user_1691740406811');
INSERT INTO public.profile VALUES (53, 'user_1691740406810');


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 71, true);


--
-- Name: profile_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.profile_profile_id_seq', 53, true);


--
-- Name: game game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id);


--
-- Name: game game_profile_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_profile_id_fkey FOREIGN KEY (profile_id) REFERENCES public.profile(profile_id);


--
-- PostgreSQL database dump complete
--

