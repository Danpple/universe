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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(10),
    planet text,
    size integer,
    mass integer,
    radius numeric,
    is_spherical boolean,
    residence boolean,
    nully integer NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: description_nully_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_nully_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_nully_seq OWNER TO freecodecamp;

--
-- Name: description_nully_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_nully_seq OWNED BY public.description.nully;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    size integer,
    distance integer,
    radius numeric,
    is_big boolean,
    residence boolean,
    nully integer NOT NULL
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
-- Name: galaxy_nully_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_nully_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_nully_seq OWNER TO freecodecamp;

--
-- Name: galaxy_nully_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_nully_seq OWNED BY public.galaxy.nully;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    galaxy text,
    size integer,
    mass integer,
    radius numeric,
    is_spherical boolean,
    is_white boolean,
    nully integer NOT NULL
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
-- Name: moon_nully_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_nully_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_nully_seq OWNER TO freecodecamp;

--
-- Name: moon_nully_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_nully_seq OWNED BY public.moon.nully;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    distance_from_sun integer,
    mass integer,
    radius numeric,
    residence boolean,
    is_spherical boolean,
    in_star text,
    nully integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_nully_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_nully_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_nully_seq OWNER TO freecodecamp;

--
-- Name: planet_nully_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_nully_seq OWNED BY public.planet.nully;


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
    name character varying,
    size integer,
    distance integer,
    heat numeric,
    is_close boolean,
    is_dwarf boolean,
    galaxy text,
    nully integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_nully_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_nully_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_nully_seq OWNER TO freecodecamp;

--
-- Name: star_nully_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_nully_seq OWNED BY public.star.nully;


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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: description nully; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN nully SET DEFAULT nextval('public.description_nully_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy nully; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN nully SET DEFAULT nextval('public.galaxy_nully_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon nully; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN nully SET DEFAULT nextval('public.moon_nully_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet nully; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN nully SET DEFAULT nextval('public.planet_nully_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star nully; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN nully SET DEFAULT nextval('public.star_nully_seq'::regclass);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'des', 'Earth', 23434, 34444, 2345.5, true, true, 1);
INSERT INTO public.description VALUES (2, 'des', 'Mercury', 56743, 85647, 4556.5, true, false, 2);
INSERT INTO public.description VALUES (3, 'des', 'Mars', 98746, 87263, 7446.8, true, false, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky_Way', 3233, 2334, 2342, true, true, 1);
INSERT INTO public.galaxy VALUES (2, 'Malin_1', 2344, 3234, 664, true, false, 2);
INSERT INTO public.galaxy VALUES (3, 'FireWorks', 3455, 2345, 5543, true, false, 3);
INSERT INTO public.galaxy VALUES (4, 'Eye_of_Sauron', 6655, 7473, 7575, true, false, 4);
INSERT INTO public.galaxy VALUES (5, 'CartWheel', 7757, 74747, 8282, true, false, 5);
INSERT INTO public.galaxy VALUES (6, 'ButterFly', 7636, 8348, 9879, true, false, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 'Milky_Way', 2323, 5432, 7373, true, true, 1);
INSERT INTO public.moon VALUES (2, 'Delmos', 'Milky_Way', 7754, 9876, 8664, true, false, 2);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Milky_Way', 7665, 8653, 7654, true, false, 3);
INSERT INTO public.moon VALUES (4, 'IO', 'Milky_Way', 6543, 8766, 9862, false, false, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'Milky_Way', 7634, 7464, 8867, true, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Milky_Way', 8675, 4326, 7542, false, false, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Milky_Way', 8765, 8743, 8765, false, false, 7);
INSERT INTO public.moon VALUES (8, 'Altne', 'Milky_Way', 8765, 5687, 9876, true, false, 8);
INSERT INTO public.moon VALUES (9, 'Ananke', 'Milky_Way', 8763, 6678, 8764, false, false, 9);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Milky_Way', 5678, 7654, 9876, false, false, 10);
INSERT INTO public.moon VALUES (11, 'Titan', 'Milky_Way', 4432, 8643, 6436, true, false, 11);
INSERT INTO public.moon VALUES (12, 'Aeglr', 'Milky_Way', 7638, 9643, 7665, true, true, 12);
INSERT INTO public.moon VALUES (13, 'Bell', 'Milky_Way', 7534, 9743, 3467, true, false, 13);
INSERT INTO public.moon VALUES (14, 'Arlel', 'Milky_Way', 8863, 7653, 6523, false, true, 14);
INSERT INTO public.moon VALUES (15, 'Blanca', 'Milky_Way', 9875, 3456, 7756, true, true, 15);
INSERT INTO public.moon VALUES (16, 'Callban', 'Milky_Way', 7643, 8654, 8765, true, false, 16);
INSERT INTO public.moon VALUES (17, 'Cordella', 'Milky_Way', 8676, 3233, 4442, true, false, 17);
INSERT INTO public.moon VALUES (18, 'Desplna', 'Milky_Way', 7676, 8888, 9999, true, true, 18);
INSERT INTO public.moon VALUES (19, 'Galatea', 'Milky_Way', 8653, 5434, 7532, false, false, 19);
INSERT INTO public.moon VALUES (20, 'Hippocamp', 'Milky_Way', 6545, 7665, 9887, true, true, 20);
INSERT INTO public.moon VALUES (21, 'Neso', 'Milky_Way', 9808, 7654, 3457, false, false, 21);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 23456444, 54444, 2453, false, true, 'The Sun', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 64545, 674646, 7363, false, true, 'The Sun', 2);
INSERT INTO public.planet VALUES (3, 'Earth', 5463636, 63635, 3453, true, true, 'The Sun', 3);
INSERT INTO public.planet VALUES (4, 'Mars', 5635543, 7355336, 6543, false, true, 'The Sun', 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 8975, 9764, 7659, false, true, 'The Sun', 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 87654, 987654, 2387, false, true, 'The Sun', 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 9876567, 86434, 6591, false, true, 'The Sun', 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 98765, 345678, 6542, false, true, 'The Sun', 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 87654, 345678, 8765, false, true, 'The Sun', 9);
INSERT INTO public.planet VALUES (10, 'Ceres', 345678, 987654, 8765, false, true, 'The Sun', 10);
INSERT INTO public.planet VALUES (11, 'MakeMake', 987654, 456787, 8765, false, true, 'The Sun', 11);
INSERT INTO public.planet VALUES (12, 'Eris', 87654, 45678, 8765, false, true, 'The Sun', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 3456578, 345678, 7543, false, true, 'Milky_Way', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 876543, 876543, 3498, false, true, 'Malin_1', 2);
INSERT INTO public.star VALUES (3, 'Alpha Persei', 87654, 345678, 7659, false, true, 'FireWorks', 3);
INSERT INTO public.star VALUES (4, 'Vega', 5367838, 73366, 4854, false, true, 'Eye_of_Sauron', 4);
INSERT INTO public.star VALUES (5, 'Fomalhaut', 7363636, 87364, 8532, false, true, 'CartWheel', 5);
INSERT INTO public.star VALUES (6, 'Deneb', 87654, 345678, 6795, false, true, 'ButterFly', 6);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 3, true);


--
-- Name: description_nully_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_nully_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_nully_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_nully_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: moon_nully_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_nully_seq', 21, true);


--
-- Name: planet_nully_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_nully_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_nully_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_nully_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: description description_description_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_description_id_key UNIQUE (description_id);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galaxy galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

