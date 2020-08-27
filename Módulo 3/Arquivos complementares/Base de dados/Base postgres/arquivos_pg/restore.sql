--
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 10.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE public.subcategoria;
DROP TABLE public.promocao;
DROP TABLE public.produtos;
DROP TABLE public.departamento;
DROP TABLE public.categoria;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id_categoria integer,
    categoria character varying(50)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamento (
    id_departamento integer,
    departamento character varying(50)
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produtos (
    id_produto integer,
    produto character varying(50),
    cor character varying(15)
);


ALTER TABLE public.produtos OWNER TO postgres;

--
-- Name: promocao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promocao (
    id_promocao integer,
    nome character varying(255),
    desconto bigint
);


ALTER TABLE public.promocao OWNER TO postgres;

--
-- Name: subcategoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subcategoria (
    id_subcategoria integer,
    subcategoria character varying(50)
);


ALTER TABLE public.subcategoria OWNER TO postgres;

--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id_categoria, categoria) FROM stdin;
\.
COPY public.categoria (id_categoria, categoria) FROM '$$PATH$$/2807.dat';

--
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departamento (id_departamento, departamento) FROM stdin;
\.
COPY public.departamento (id_departamento, departamento) FROM '$$PATH$$/2806.dat';

--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produtos (id_produto, produto, cor) FROM stdin;
\.
COPY public.produtos (id_produto, produto, cor) FROM '$$PATH$$/2805.dat';

--
-- Data for Name: promocao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.promocao (id_promocao, nome, desconto) FROM stdin;
\.
COPY public.promocao (id_promocao, nome, desconto) FROM '$$PATH$$/2809.dat';

--
-- Data for Name: subcategoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subcategoria (id_subcategoria, subcategoria) FROM stdin;
\.
COPY public.subcategoria (id_subcategoria, subcategoria) FROM '$$PATH$$/2808.dat';

--
-- PostgreSQL database dump complete
--

