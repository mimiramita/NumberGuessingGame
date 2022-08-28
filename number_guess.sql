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

DROP DATABASE players;
--
-- Name: players; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE players WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE players OWNER TO freecodecamp;

\connect players

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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'Jim', NULL, NULL);
INSERT INTO public.players VALUES (2, 'user_1661669340187', NULL, NULL);
INSERT INTO public.players VALUES (3, 'user_1661669340186', NULL, NULL);
INSERT INTO public.players VALUES (4, 'user_1661669442568', NULL, NULL);
INSERT INTO public.players VALUES (5, 'user_1661669442567', NULL, NULL);
INSERT INTO public.players VALUES (6, 'user_1661669476606', NULL, NULL);
INSERT INTO public.players VALUES (7, 'user_1661669476605', NULL, NULL);
INSERT INTO public.players VALUES (8, 'user_1661669493312', NULL, NULL);
INSERT INTO public.players VALUES (9, 'user_1661669493311', NULL, NULL);
INSERT INTO public.players VALUES (10, 'user_1661669741034', NULL, NULL);
INSERT INTO public.players VALUES (11, 'user_1661669741033', NULL, NULL);
INSERT INTO public.players VALUES (12, 'user_1661669782464', NULL, NULL);
INSERT INTO public.players VALUES (13, 'user_1661669782463', NULL, NULL);
INSERT INTO public.players VALUES (14, 'user_1661670071439', NULL, NULL);
INSERT INTO public.players VALUES (15, 'user_1661670071438', NULL, NULL);
INSERT INTO public.players VALUES (16, 'user_1661670189938', NULL, NULL);
INSERT INTO public.players VALUES (17, 'user_1661670189937', NULL, NULL);
INSERT INTO public.players VALUES (18, 'user_1661670332498', NULL, NULL);
INSERT INTO public.players VALUES (19, 'user_1661670332497', NULL, NULL);
INSERT INTO public.players VALUES (20, 'user_1661670359826', NULL, NULL);
INSERT INTO public.players VALUES (21, 'user_1661670359825', NULL, NULL);
INSERT INTO public.players VALUES (22, 'user_1661670444822', NULL, NULL);
INSERT INTO public.players VALUES (23, 'JIm', NULL, NULL);
INSERT INTO public.players VALUES (24, 'user_1661670444821', NULL, NULL);
INSERT INTO public.players VALUES (25, 'user_1661670490507', NULL, NULL);
INSERT INTO public.players VALUES (26, 'user_1661670490506', NULL, NULL);
INSERT INTO public.players VALUES (27, 'user_1661670498503', NULL, NULL);
INSERT INTO public.players VALUES (28, 'user_1661670498502', NULL, NULL);
INSERT INTO public.players VALUES (29, 'user_1661695074056', NULL, NULL);
INSERT INTO public.players VALUES (30, 'user_1661695074055', NULL, NULL);
INSERT INTO public.players VALUES (31, 'user_1661695108872', NULL, NULL);
INSERT INTO public.players VALUES (32, 'user_1661695108871', NULL, NULL);
INSERT INTO public.players VALUES (33, 'user_1661695792973', NULL, NULL);
INSERT INTO public.players VALUES (34, 'user_1661695792972', NULL, NULL);
INSERT INTO public.players VALUES (35, 'user_1661695997700', NULL, NULL);
INSERT INTO public.players VALUES (36, 'user_1661695997699', NULL, NULL);
INSERT INTO public.players VALUES (37, 'user_1661696051821', NULL, NULL);
INSERT INTO public.players VALUES (38, 'user_1661696051820', NULL, NULL);
INSERT INTO public.players VALUES (39, 'user_1661696110908', NULL, NULL);
INSERT INTO public.players VALUES (40, 'user_1661696110907', NULL, NULL);
INSERT INTO public.players VALUES (42, 'user_1661696148198', NULL, NULL);
INSERT INTO public.players VALUES (43, 'user_1661696148197', NULL, NULL);
INSERT INTO public.players VALUES (44, 'user_1661696215001', 1, NULL);
INSERT INTO public.players VALUES (45, 'user_1661696215000', 1, NULL);
INSERT INTO public.players VALUES (46, 'user_1661696257777', 1, NULL);
INSERT INTO public.players VALUES (47, 'user_1661696257776', 1, NULL);
INSERT INTO public.players VALUES (48, 'user_1661696548752', 1, NULL);
INSERT INTO public.players VALUES (49, 'user_1661696548751', 1, NULL);
INSERT INTO public.players VALUES (50, 'user_1661696663033', 1, NULL);
INSERT INTO public.players VALUES (51, 'user_1661696663032', 1, NULL);
INSERT INTO public.players VALUES (52, 'user_1661696727726', 1, NULL);
INSERT INTO public.players VALUES (53, 'user_1661696727725', 1, NULL);
INSERT INTO public.players VALUES (54, 'user_1661696798440', 1, NULL);
INSERT INTO public.players VALUES (55, 'user_1661696798439', 1, NULL);
INSERT INTO public.players VALUES (56, 'user_1661696959830', 1, NULL);
INSERT INTO public.players VALUES (57, 'user_1661696959829', 1, NULL);
INSERT INTO public.players VALUES (58, 'user_1661696972936', 1, NULL);
INSERT INTO public.players VALUES (59, 'user_1661696972935', 1, NULL);
INSERT INTO public.players VALUES (68, 'user_1661697634164', 5, 27);
INSERT INTO public.players VALUES (61, 'user_1661697117065', 2, NULL);
INSERT INTO public.players VALUES (92, 'user_1661698328342', 2, 261);
INSERT INTO public.players VALUES (60, 'user_1661697117066', 5, NULL);
INSERT INTO public.players VALUES (102, 'user_1661698730954', 2, 607);
INSERT INTO public.players VALUES (80, 'user_1661698114736', 2, 112);
INSERT INTO public.players VALUES (91, 'user_1661698328343', 5, 179);
INSERT INTO public.players VALUES (71, 'user_1661697680989', 2, 681);
INSERT INTO public.players VALUES (74, 'james', 6, 1);
INSERT INTO public.players VALUES (79, 'user_1661698114737', 5, 96);
INSERT INTO public.players VALUES (63, 'user_1661697578212', 2, 437);
INSERT INTO public.players VALUES (70, 'user_1661697680990', 5, 314);
INSERT INTO public.players VALUES (62, 'user_1661697578213', 5, 22);
INSERT INTO public.players VALUES (65, 'user_1661697595807', 2, NULL);
INSERT INTO public.players VALUES (64, 'user_1661697595808', 5, NULL);
INSERT INTO public.players VALUES (73, 'user_1661697735829', 2, NULL);
INSERT INTO public.players VALUES (98, 'user_1661698629767', 2, 771);
INSERT INTO public.players VALUES (82, 'user_1661698184952', 2, NULL);
INSERT INTO public.players VALUES (72, 'user_1661697735830', 5, NULL);
INSERT INTO public.players VALUES (41, 'jim', 4, 3);
INSERT INTO public.players VALUES (67, 'user_1661697608051', 2, 412);
INSERT INTO public.players VALUES (101, 'user_1661698730955', 5, 451);
INSERT INTO public.players VALUES (81, 'user_1661698184953', 5, NULL);
INSERT INTO public.players VALUES (66, 'user_1661697608052', 5, 169);
INSERT INTO public.players VALUES (88, 'user_1661698291579', 2, 104);
INSERT INTO public.players VALUES (97, 'user_1661698629768', 5, 19);
INSERT INTO public.players VALUES (69, 'user_1661697634163', 2, 26);
INSERT INTO public.players VALUES (94, 'user_1661698564358', 2, 125);
INSERT INTO public.players VALUES (84, 'user_1661698262830', 2, 608);
INSERT INTO public.players VALUES (76, 'user_1661697952195', 2, 28);
INSERT INTO public.players VALUES (87, 'user_1661698291580', 5, 164);
INSERT INTO public.players VALUES (75, 'user_1661697952196', 5, 12);
INSERT INTO public.players VALUES (83, 'user_1661698262831', 5, 122);
INSERT INTO public.players VALUES (93, 'user_1661698564359', 5, 236);
INSERT INTO public.players VALUES (78, 'user_1661698010288', 2, 91);
INSERT INTO public.players VALUES (77, 'user_1661698010289', 5, 479);
INSERT INTO public.players VALUES (90, 'user_1661698308529', 2, 467);
INSERT INTO public.players VALUES (86, 'user_1661698284256', 2, 615);
INSERT INTO public.players VALUES (89, 'user_1661698308530', 5, 141);
INSERT INTO public.players VALUES (100, 'user_1661698663229', 2, 329);
INSERT INTO public.players VALUES (85, 'user_1661698284257', 5, 76);
INSERT INTO public.players VALUES (96, 'user_1661698590618', 2, 35);
INSERT INTO public.players VALUES (99, 'user_1661698663230', 5, 62);
INSERT INTO public.players VALUES (95, 'user_1661698590619', 5, 323);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 102, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- PostgreSQL database dump complete
--