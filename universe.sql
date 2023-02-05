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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    name character varying(30) NOT NULL,
    black_holes_id integer NOT NULL,
    age_in_millions_of_years integer
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_holes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_holes_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_holes_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text,
    distance_from_earth numeric(20,0)
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
    age_in_millions_of_years integer NOT NULL,
    description text,
    distance_from_earth numeric(10,4),
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
    age_in_millions_of_years integer NOT NULL,
    description text,
    distance_from_earth numeric(10,4),
    has_life boolean,
    is_spherical boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text,
    distance_from_earth numeric(10,4),
    is_spherical boolean,
    galaxy_id integer NOT NULL
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_holes_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES ('Cygnus X-1', 1, 6);
INSERT INTO public.black_holes VALUES ('Saggittarius A', 2, 136);
INSERT INTO public.black_holes VALUES ('Cygni', 3, 20);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 13600, 'Milky Way Galaxy, large spiral system consisting of several hundred billion stars, one of which is the Sun. It takes its name from the Milky Way, the irregular luminous band of stars and gas clouds that stretches across the sky as seen from Earth. Although Earth lies well within the Milky Way Galaxy (sometimes simply called the Galaxy), astronomers do not have as complete an understanding of its nature as they do of some external star systems. A thick layer of interstellar dust obscures much of the Galaxy from scrutiny by optical telescopes, and astronomers can determine its large-scale structure only with the aid of radio and infrared telescopes, which can detect the forms of radiation that penetrate the obscuring matter.', 923330);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 10010, 'Andromeda Galaxy, also called Andromeda Nebula, (catalog numbers NGC 224 and M31), great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur. It is located about 2,480,000 light-years from Earth; its diameter is approximately 200,000 light-years; and it shares various characteristics with the Milky Way system. It was mentioned as early as 965 ce, in the Book of the Fixed Stars by the Islamic astronomer al-Ṣūfī, and rediscovered in 1612, shortly after the invention of the telescope, by the German astronomer Simon Marius, who said it resembled the light of a candle seen through a horn. For centuries astronomers regarded the Andromeda Galaxy as a component of the Milky Way Galaxy—i.e., as a so-called spiral nebula much like other glowing masses of gas within the local galactic system (hence the misnomer Andromeda Nebula). Only in the 1920s did the American astronomer Edwin Powell Hubble determine conclusively that the Andromeda was in fact a separate galaxy beyond the Milky Way.', 2480000);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', 3, 'Cygnus A, most powerful cosmic source of radio waves known, lying in the northern constellation Cygnus about 500,000,000 light-years (4.8 × 1021 km) from Earth. It has the appearance of a double galaxy. For a time it was thought to be two galaxies in collision, but the energy output is too large to be accounted for in that way. Radio energy is emitted from Cygnus A at an estimated 1045 ergs per second, more than 1011 times the rate at which energy of all kinds is emitted by the Sun. The source of the energy of Cygnus A remains undetermined.', 500000000);
INSERT INTO public.galaxy VALUES (4, 'M87', 13240, 'M87, in full Messier 87, also called Virgo A or NGC4486, giant elliptical galaxy in the constellation Virgo whose nucleus contains a black hole, the first ever to be directly imaged. M87 is the most powerful known source of radio energy among the thousands of galactic systems constituting the so-called Virgo Cluster. It is also a powerful X-ray source, which suggests the presence of very hot gas in the galaxy. A luminous gaseous jet projects outward from the galactic nucleus. Both the jet and the nucleus emit synchrotron radiation, a form of nonthermal radiation released by charged particles that are accelerated in magnetic fields and travel at speeds near that of light. M87 lies about 55 million light-years from Earth.', 53490000);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Cloud', 1101, 'Magellanic Cloud, either of two satellite galaxies of the Milky Way Galaxy, the vast star system of which Earth is a minor component.', 160000);
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf Galaxy', 13800, 'Canis Major Dwarf Galaxy, member of the Local Group of galaxies (the group that includes the Milky Way Galaxy) named after the constellation Canis Major, in which it appears to lie.', 25000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 453, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 27, NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 453, NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Amalthea', 453, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 5403, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'Europa', 5403, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'Ganymede', 5403, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'Io', 45, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'Triton', 5403, NULL, NULL, 7);
INSERT INTO public.moon VALUES (10, 'Ariel', 100, NULL, NULL, 8);
INSERT INTO public.moon VALUES (11, 'Miranda', 100, NULL, NULL, 8);
INSERT INTO public.moon VALUES (12, 'Oberon', 100, NULL, NULL, 8);
INSERT INTO public.moon VALUES (13, 'Titania', 100, NULL, NULL, 8);
INSERT INTO public.moon VALUES (14, 'Umbriel', 100, NULL, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Dione', 40, NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'Enceladus', 10, NULL, NULL, 3);
INSERT INTO public.moon VALUES (17, 'Hyperion', 45, NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, 'Iapetus', 4567, NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, 'Mimas', 45, NULL, NULL, 3);
INSERT INTO public.moon VALUES (20, 'Phoebe', 45, NULL, NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4543, NULL, NULL, true, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 4063, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Saturn', 4503, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4603, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 4503, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Venus', 4503, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 4503, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 4503, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Eris', 4503, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Makemake', 45, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 4503, NULL, NULL, false, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4603, NULL, 1.0000, NULL, 1);
INSERT INTO public.star VALUES (2, 'Alpheratz', 60, NULL, 96.0000, NULL, 2);
INSERT INTO public.star VALUES (3, 'Deneb', 10, NULL, 2616.0000, NULL, 3);
INSERT INTO public.star VALUES (4, 'Spica', 12, NULL, 261.0000, NULL, 4);
INSERT INTO public.star VALUES (5, 'R71', 15, NULL, 271.0000, NULL, 5);
INSERT INTO public.star VALUES (6, 'Aarzoo', 16, NULL, 5000.0000, NULL, 6);


--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_holes_id_seq', 3, true);


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
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


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

