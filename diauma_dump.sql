--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12
-- Dumped by pg_dump version 16.3 (Ubuntu 16.3-1.pgdg22.04+1)

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

ALTER TABLE ONLY public.maps_type DROP CONSTRAINT maps_type_parent_id_b8277754_fk_maps_type_id;
ALTER TABLE ONLY public.maps_scan_scan_type DROP CONSTRAINT maps_scan_scan_type_type_id_fc19d491_fk_maps_type_id;
ALTER TABLE ONLY public.maps_scan_scan_type DROP CONSTRAINT maps_scan_scan_type_scan_id_2d3729f3_fk_maps_scan_id;
ALTER TABLE ONLY public.maps_scan_scan_reference DROP CONSTRAINT maps_scan_scan_reference_scan_id_c86b5a3e_fk_maps_scan_id;
ALTER TABLE ONLY public.maps_scan_scan_reference DROP CONSTRAINT maps_scan_scan_refer_reference_id_efaf24e5_fk_maps_refe;
ALTER TABLE ONLY public.maps_scan_scan_person DROP CONSTRAINT maps_scan_scan_person_scan_id_88d9cce9_fk_maps_scan_id;
ALTER TABLE ONLY public.maps_scan_scan_person DROP CONSTRAINT maps_scan_scan_person_person_id_f99c3461_fk_maps_person_id;
ALTER TABLE ONLY public.maps_scan_scan_map DROP CONSTRAINT maps_scan_scan_map_scan_id_21a19138_fk_maps_scan_id;
ALTER TABLE ONLY public.maps_scan_scan_map DROP CONSTRAINT maps_scan_scan_map_map_id_9e720248_fk_maps_map_id;
ALTER TABLE ONLY public.maps_reference DROP CONSTRAINT maps_reference_super_id_09e3bb42_fk_maps_reference_id;
ALTER TABLE ONLY public.maps_reference_reference_type DROP CONSTRAINT maps_reference_reference_type_type_id_7e338932_fk_maps_type_id;
ALTER TABLE ONLY public.maps_reference_reference_type DROP CONSTRAINT maps_reference_refer_reference_id_38cd6479_fk_maps_refe;
ALTER TABLE ONLY public.maps_place_place_type DROP CONSTRAINT maps_place_place_type_type_id_fbbfec63_fk_maps_type_id;
ALTER TABLE ONLY public.maps_place_place_type DROP CONSTRAINT maps_place_place_type_place_id_21fde972_fk_maps_place_id;
ALTER TABLE ONLY public.maps_person_person_type DROP CONSTRAINT maps_person_person_type_type_id_138219a0_fk_maps_type_id;
ALTER TABLE ONLY public.maps_person_person_type DROP CONSTRAINT maps_person_person_type_person_id_94b985a4_fk_maps_person_id;
ALTER TABLE ONLY public.maps_person DROP CONSTRAINT maps_person_person_location_id_e23c9ecc_fk_maps_place_id;
ALTER TABLE ONLY public.maps_person_person_institutes DROP CONSTRAINT maps_person_person_i_person_id_02ba207a_fk_maps_pers;
ALTER TABLE ONLY public.maps_person_person_institutes DROP CONSTRAINT maps_person_person_i_institute_id_3123fbb4_fk_maps_inst;
ALTER TABLE ONLY public.maps_map_map_type DROP CONSTRAINT maps_map_map_type_type_id_c24ef6de_fk_maps_type_id;
ALTER TABLE ONLY public.maps_map_map_type DROP CONSTRAINT maps_map_map_type_map_id_a296045b_fk_maps_map_id;
ALTER TABLE ONLY public.maps_map_map_scan DROP CONSTRAINT maps_map_map_scan_map_id_8d0022f4_fk_maps_map_id;
ALTER TABLE ONLY public.maps_map_map_references DROP CONSTRAINT maps_map_map_references_map_id_6d8dfd3f_fk_maps_map_id;
ALTER TABLE ONLY public.maps_map_map_references DROP CONSTRAINT maps_map_map_referen_reference_id_459a89ca_fk_maps_refe;
ALTER TABLE ONLY public.maps_map_map_places DROP CONSTRAINT maps_map_map_places_place_id_1a799e4a_fk_maps_place_id;
ALTER TABLE ONLY public.maps_map_map_places DROP CONSTRAINT maps_map_map_places_map_id_cdf091f2_fk_maps_map_id;
ALTER TABLE ONLY public.maps_map_map_persons DROP CONSTRAINT maps_map_map_persons_person_id_dae77c35_fk_maps_person_id;
ALTER TABLE ONLY public.maps_map_map_persons DROP CONSTRAINT maps_map_map_persons_map_id_aa413b5f_fk_maps_map_id;
ALTER TABLE ONLY public.maps_map DROP CONSTRAINT maps_map_map_location_id_2b1e0353_fk_maps_place_id;
ALTER TABLE ONLY public.maps_map DROP CONSTRAINT maps_map_map_issued_id_0895c253_fk_maps_place_id;
ALTER TABLE ONLY public.maps_map_map_institute DROP CONSTRAINT maps_map_map_institute_map_id_6256af8a_fk_maps_map_id;
ALTER TABLE ONLY public.maps_map_map_institute DROP CONSTRAINT maps_map_map_institu_institute_id_22dabb5a_fk_maps_inst;
ALTER TABLE ONLY public.maps_map_map_file DROP CONSTRAINT maps_map_map_file_map_id_9e4e4fb7_fk_maps_map_id;
ALTER TABLE ONLY public.maps_map DROP CONSTRAINT maps_map_map_copy_id_d8a9b7a1_fk_maps_map_id;
ALTER TABLE ONLY public.maps_map DROP CONSTRAINT maps_map_map_base_id_d4c8d198_fk_maps_map_id;
ALTER TABLE ONLY public.maps_institute_institute_type DROP CONSTRAINT maps_institute_institute_type_type_id_4764f400_fk_maps_type_id;
ALTER TABLE ONLY public.maps_institute DROP CONSTRAINT maps_institute_institute_location_id_6a11dc54_fk_maps_place_id;
ALTER TABLE ONLY public.maps_institute_institute_type DROP CONSTRAINT maps_institute_insti_institute_id_278e76cc_fk_maps_inst;
ALTER TABLE ONLY public.maps_file_file_type DROP CONSTRAINT maps_file_file_type_type_id_deb4d1f7_fk_maps_type_id;
ALTER TABLE ONLY public.maps_file_file_type DROP CONSTRAINT maps_file_file_type_file_id_bc62ba18_fk_maps_file_id;
ALTER TABLE ONLY public.maps_file_file_reference DROP CONSTRAINT maps_file_file_reference_file_id_fda1266a_fk_maps_file_id;
ALTER TABLE ONLY public.maps_file_file_reference DROP CONSTRAINT maps_file_file_refer_reference_id_d0f31d94_fk_maps_refe;
ALTER TABLE ONLY public.maps_file_file_map DROP CONSTRAINT maps_file_file_map_map_id_9e0bdd7c_fk_maps_map_id;
ALTER TABLE ONLY public.maps_file_file_map DROP CONSTRAINT maps_file_file_map_file_id_c307ffeb_fk_maps_file_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.maps_type_tree_id_9ddf6cd6;
DROP INDEX public.maps_type_rght_04c51423;
DROP INDEX public.maps_type_parent_id_b8277754;
DROP INDEX public.maps_type_lft_f368a00c;
DROP INDEX public.maps_type_level_994128a4;
DROP INDEX public.maps_scan_scan_type_type_id_fc19d491;
DROP INDEX public.maps_scan_scan_type_scan_id_2d3729f3;
DROP INDEX public.maps_scan_scan_reference_scan_id_c86b5a3e;
DROP INDEX public.maps_scan_scan_reference_reference_id_efaf24e5;
DROP INDEX public.maps_scan_scan_person_scan_id_88d9cce9;
DROP INDEX public.maps_scan_scan_person_person_id_f99c3461;
DROP INDEX public.maps_scan_scan_map_scan_id_21a19138;
DROP INDEX public.maps_scan_scan_map_map_id_9e720248;
DROP INDEX public.maps_reference_super_id_09e3bb42;
DROP INDEX public.maps_reference_reference_type_type_id_7e338932;
DROP INDEX public.maps_reference_reference_type_reference_id_38cd6479;
DROP INDEX public.maps_place_place_type_type_id_fbbfec63;
DROP INDEX public.maps_place_place_type_place_id_21fde972;
DROP INDEX public.maps_person_person_type_type_id_138219a0;
DROP INDEX public.maps_person_person_type_person_id_94b985a4;
DROP INDEX public.maps_person_person_location_id_e23c9ecc;
DROP INDEX public.maps_person_person_institutes_person_id_02ba207a;
DROP INDEX public.maps_person_person_institutes_institute_id_3123fbb4;
DROP INDEX public.maps_map_map_type_type_id_c24ef6de;
DROP INDEX public.maps_map_map_type_map_id_a296045b;
DROP INDEX public.maps_map_map_scan_scan_id_465e3c0c;
DROP INDEX public.maps_map_map_scan_map_id_8d0022f4;
DROP INDEX public.maps_map_map_references_reference_id_459a89ca;
DROP INDEX public.maps_map_map_references_map_id_6d8dfd3f;
DROP INDEX public.maps_map_map_places_place_id_1a799e4a;
DROP INDEX public.maps_map_map_places_map_id_cdf091f2;
DROP INDEX public.maps_map_map_persons_person_id_dae77c35;
DROP INDEX public.maps_map_map_persons_map_id_aa413b5f;
DROP INDEX public.maps_map_map_location_id_2b1e0353;
DROP INDEX public.maps_map_map_issued_id_0895c253;
DROP INDEX public.maps_map_map_institute_map_id_6256af8a;
DROP INDEX public.maps_map_map_institute_institute_id_22dabb5a;
DROP INDEX public.maps_map_map_file_map_id_9e4e4fb7;
DROP INDEX public.maps_map_map_file_file_id_8ba3db90;
DROP INDEX public.maps_map_map_copy_id_d8a9b7a1;
DROP INDEX public.maps_map_map_base_id_d4c8d198;
DROP INDEX public.maps_institute_institute_type_type_id_4764f400;
DROP INDEX public.maps_institute_institute_type_institute_id_278e76cc;
DROP INDEX public.maps_institute_institute_location_id_6a11dc54;
DROP INDEX public.maps_file_file_type_type_id_deb4d1f7;
DROP INDEX public.maps_file_file_type_file_id_bc62ba18;
DROP INDEX public.maps_file_file_reference_reference_id_d0f31d94;
DROP INDEX public.maps_file_file_reference_file_id_fda1266a;
DROP INDEX public.maps_file_file_map_map_id_9e0bdd7c;
DROP INDEX public.maps_file_file_map_file_id_c307ffeb;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.maps_type DROP CONSTRAINT maps_type_pkey;
ALTER TABLE ONLY public.maps_scan_scan_type DROP CONSTRAINT maps_scan_scan_type_scan_id_type_id_f92f6b7e_uniq;
ALTER TABLE ONLY public.maps_scan_scan_type DROP CONSTRAINT maps_scan_scan_type_pkey;
ALTER TABLE ONLY public.maps_scan_scan_reference DROP CONSTRAINT maps_scan_scan_reference_scan_id_reference_id_a6e37230_uniq;
ALTER TABLE ONLY public.maps_scan_scan_reference DROP CONSTRAINT maps_scan_scan_reference_pkey;
ALTER TABLE ONLY public.maps_scan_scan_person DROP CONSTRAINT maps_scan_scan_person_scan_id_person_id_7dd06cf1_uniq;
ALTER TABLE ONLY public.maps_scan_scan_person DROP CONSTRAINT maps_scan_scan_person_pkey;
ALTER TABLE ONLY public.maps_scan_scan_map DROP CONSTRAINT maps_scan_scan_map_scan_id_map_id_97630f8f_uniq;
ALTER TABLE ONLY public.maps_scan_scan_map DROP CONSTRAINT maps_scan_scan_map_pkey;
ALTER TABLE ONLY public.maps_scan DROP CONSTRAINT maps_scan_pkey;
ALTER TABLE ONLY public.maps_reference_reference_type DROP CONSTRAINT maps_reference_reference_type_pkey;
ALTER TABLE ONLY public.maps_reference_reference_type DROP CONSTRAINT maps_reference_reference_reference_id_type_id_be0389aa_uniq;
ALTER TABLE ONLY public.maps_reference DROP CONSTRAINT maps_reference_pkey;
ALTER TABLE ONLY public.maps_place_place_type DROP CONSTRAINT maps_place_place_type_place_id_type_id_279cfb12_uniq;
ALTER TABLE ONLY public.maps_place_place_type DROP CONSTRAINT maps_place_place_type_pkey;
ALTER TABLE ONLY public.maps_place DROP CONSTRAINT maps_place_pkey;
ALTER TABLE ONLY public.maps_person DROP CONSTRAINT maps_person_pkey;
ALTER TABLE ONLY public.maps_person_person_type DROP CONSTRAINT maps_person_person_type_pkey;
ALTER TABLE ONLY public.maps_person_person_type DROP CONSTRAINT maps_person_person_type_person_id_type_id_e4987fe7_uniq;
ALTER TABLE ONLY public.maps_person_person_institutes DROP CONSTRAINT maps_person_person_institutes_pkey;
ALTER TABLE ONLY public.maps_person_person_institutes DROP CONSTRAINT maps_person_person_insti_person_id_institute_id_dcf6c4ed_uniq;
ALTER TABLE ONLY public.maps_map DROP CONSTRAINT maps_map_pkey;
ALTER TABLE ONLY public.maps_map_map_type DROP CONSTRAINT maps_map_map_type_pkey;
ALTER TABLE ONLY public.maps_map_map_type DROP CONSTRAINT maps_map_map_type_map_id_type_id_7bfe0076_uniq;
ALTER TABLE ONLY public.maps_map_map_scan DROP CONSTRAINT maps_map_map_scan_pkey;
ALTER TABLE ONLY public.maps_map_map_scan DROP CONSTRAINT maps_map_map_scan_map_id_scan_id_f6124912_uniq;
ALTER TABLE ONLY public.maps_map_map_references DROP CONSTRAINT maps_map_map_references_pkey;
ALTER TABLE ONLY public.maps_map_map_references DROP CONSTRAINT maps_map_map_references_map_id_reference_id_6d416742_uniq;
ALTER TABLE ONLY public.maps_map_map_places DROP CONSTRAINT maps_map_map_places_pkey;
ALTER TABLE ONLY public.maps_map_map_places DROP CONSTRAINT maps_map_map_places_map_id_place_id_55c2923d_uniq;
ALTER TABLE ONLY public.maps_map_map_persons DROP CONSTRAINT maps_map_map_persons_pkey;
ALTER TABLE ONLY public.maps_map_map_persons DROP CONSTRAINT maps_map_map_persons_map_id_person_id_86915b7f_uniq;
ALTER TABLE ONLY public.maps_map_map_institute DROP CONSTRAINT maps_map_map_institute_pkey;
ALTER TABLE ONLY public.maps_map_map_institute DROP CONSTRAINT maps_map_map_institute_map_id_institute_id_8569aa5c_uniq;
ALTER TABLE ONLY public.maps_map_map_file DROP CONSTRAINT maps_map_map_file_pkey;
ALTER TABLE ONLY public.maps_map_map_file DROP CONSTRAINT maps_map_map_file_map_id_file_id_0c980a11_uniq;
ALTER TABLE ONLY public.maps_institute DROP CONSTRAINT maps_institute_pkey;
ALTER TABLE ONLY public.maps_institute_institute_type DROP CONSTRAINT maps_institute_institute_type_pkey;
ALTER TABLE ONLY public.maps_institute_institute_type DROP CONSTRAINT maps_institute_institute_institute_id_type_id_4ff99b12_uniq;
ALTER TABLE ONLY public.maps_file DROP CONSTRAINT maps_file_pkey;
ALTER TABLE ONLY public.maps_file_file_type DROP CONSTRAINT maps_file_file_type_pkey;
ALTER TABLE ONLY public.maps_file_file_type DROP CONSTRAINT maps_file_file_type_file_id_type_id_efbea730_uniq;
ALTER TABLE ONLY public.maps_file_file_reference DROP CONSTRAINT maps_file_file_reference_pkey;
ALTER TABLE ONLY public.maps_file_file_reference DROP CONSTRAINT maps_file_file_reference_file_id_reference_id_b9cece58_uniq;
ALTER TABLE ONLY public.maps_file_file_map DROP CONSTRAINT maps_file_file_map_pkey;
ALTER TABLE ONLY public.maps_file_file_map DROP CONSTRAINT maps_file_file_map_file_id_map_id_ff59351d_uniq;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.maps_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_scan_scan_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_scan_scan_reference ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_scan_scan_person ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_scan_scan_map ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_scan ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_reference_reference_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_reference ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_place_place_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_place ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_person_person_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_person_person_institutes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_person ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_map_map_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_map_map_scan ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_map_map_references ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_map_map_places ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_map_map_persons ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_map_map_institute ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_map_map_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_map ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_institute_institute_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_institute ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_file_file_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_file_file_reference ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_file_file_map ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.maps_file ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.maps_type_id_seq;
DROP TABLE public.maps_type;
DROP SEQUENCE public.maps_scan_scan_type_id_seq;
DROP TABLE public.maps_scan_scan_type;
DROP SEQUENCE public.maps_scan_scan_reference_id_seq;
DROP TABLE public.maps_scan_scan_reference;
DROP SEQUENCE public.maps_scan_scan_person_id_seq;
DROP TABLE public.maps_scan_scan_person;
DROP SEQUENCE public.maps_scan_scan_map_id_seq;
DROP TABLE public.maps_scan_scan_map;
DROP SEQUENCE public.maps_scan_id_seq;
DROP TABLE public.maps_scan;
DROP SEQUENCE public.maps_reference_reference_type_id_seq;
DROP TABLE public.maps_reference_reference_type;
DROP SEQUENCE public.maps_reference_id_seq;
DROP TABLE public.maps_reference;
DROP SEQUENCE public.maps_place_place_type_id_seq;
DROP TABLE public.maps_place_place_type;
DROP SEQUENCE public.maps_place_id_seq;
DROP TABLE public.maps_place;
DROP SEQUENCE public.maps_person_person_type_id_seq;
DROP TABLE public.maps_person_person_type;
DROP SEQUENCE public.maps_person_person_institutes_id_seq;
DROP TABLE public.maps_person_person_institutes;
DROP SEQUENCE public.maps_person_id_seq;
DROP TABLE public.maps_person;
DROP SEQUENCE public.maps_map_map_type_id_seq;
DROP TABLE public.maps_map_map_type;
DROP SEQUENCE public.maps_map_map_scan_id_seq;
DROP TABLE public.maps_map_map_scan;
DROP SEQUENCE public.maps_map_map_references_id_seq;
DROP TABLE public.maps_map_map_references;
DROP SEQUENCE public.maps_map_map_places_id_seq;
DROP TABLE public.maps_map_map_places;
DROP SEQUENCE public.maps_map_map_persons_id_seq;
DROP TABLE public.maps_map_map_persons;
DROP SEQUENCE public.maps_map_map_institute_id_seq;
DROP TABLE public.maps_map_map_institute;
DROP SEQUENCE public.maps_map_map_file_id_seq;
DROP TABLE public.maps_map_map_file;
DROP SEQUENCE public.maps_map_id_seq;
DROP TABLE public.maps_map;
DROP SEQUENCE public.maps_institute_institute_type_id_seq;
DROP TABLE public.maps_institute_institute_type;
DROP SEQUENCE public.maps_institute_id_seq;
DROP TABLE public.maps_institute;
DROP SEQUENCE public.maps_file_id_seq;
DROP SEQUENCE public.maps_file_file_type_id_seq;
DROP TABLE public.maps_file_file_type;
DROP SEQUENCE public.maps_file_file_reference_id_seq;
DROP TABLE public.maps_file_file_reference;
DROP SEQUENCE public.maps_file_file_map_id_seq;
DROP TABLE public.maps_file_file_map;
DROP TABLE public.maps_file;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP FUNCTION public.substring_index(text, text, integer);
DROP FUNCTION public.rand();
DROP EXTENSION postgis;
-- *not* dropping schema, since initdb creates it
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


--
-- Name: rand(); Type: FUNCTION; Schema: public; Owner: arche_hephaistos
--

CREATE FUNCTION public.rand() RETURNS double precision
    LANGUAGE sql
    AS $$SELECT random();$$;


ALTER FUNCTION public.rand() OWNER TO arche_hephaistos;

--
-- Name: substring_index(text, text, integer); Type: FUNCTION; Schema: public; Owner: arche_hephaistos
--

CREATE FUNCTION public.substring_index(text, text, integer) RETURNS text
    LANGUAGE sql
    AS $_$SELECT array_to_string((string_to_array($1, $2)) [1:$3], $2);$_$;


ALTER FUNCTION public.substring_index(text, text, integer) OWNER TO arche_hephaistos;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO diauma;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO diauma;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO diauma;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO diauma;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO diauma;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO diauma;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO diauma;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO diauma;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO diauma;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO diauma;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO diauma;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO diauma;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO diauma;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO diauma;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO diauma;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO diauma;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO diauma;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO diauma;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO diauma;

--
-- Name: maps_file; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_file (
    id integer NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    info text NOT NULL
);


ALTER TABLE public.maps_file OWNER TO diauma;

--
-- Name: maps_file_file_map; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_file_file_map (
    id integer NOT NULL,
    file_id integer NOT NULL,
    map_id integer NOT NULL
);


ALTER TABLE public.maps_file_file_map OWNER TO diauma;

--
-- Name: maps_file_file_map_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_file_file_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_file_file_map_id_seq OWNER TO diauma;

--
-- Name: maps_file_file_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_file_file_map_id_seq OWNED BY public.maps_file_file_map.id;


--
-- Name: maps_file_file_reference; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_file_file_reference (
    id integer NOT NULL,
    file_id integer NOT NULL,
    reference_id integer NOT NULL
);


ALTER TABLE public.maps_file_file_reference OWNER TO diauma;

--
-- Name: maps_file_file_reference_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_file_file_reference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_file_file_reference_id_seq OWNER TO diauma;

--
-- Name: maps_file_file_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_file_file_reference_id_seq OWNED BY public.maps_file_file_reference.id;


--
-- Name: maps_file_file_type; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_file_file_type (
    id integer NOT NULL,
    file_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.maps_file_file_type OWNER TO diauma;

--
-- Name: maps_file_file_type_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_file_file_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_file_file_type_id_seq OWNER TO diauma;

--
-- Name: maps_file_file_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_file_file_type_id_seq OWNED BY public.maps_file_file_type.id;


--
-- Name: maps_file_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_file_id_seq OWNER TO diauma;

--
-- Name: maps_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_file_id_seq OWNED BY public.maps_file.id;


--
-- Name: maps_institute; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_institute (
    id integer NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    info text NOT NULL,
    institute_location_id integer
);


ALTER TABLE public.maps_institute OWNER TO diauma;

--
-- Name: maps_institute_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_institute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_institute_id_seq OWNER TO diauma;

--
-- Name: maps_institute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_institute_id_seq OWNED BY public.maps_institute.id;


--
-- Name: maps_institute_institute_type; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_institute_institute_type (
    id integer NOT NULL,
    institute_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.maps_institute_institute_type OWNER TO diauma;

--
-- Name: maps_institute_institute_type_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_institute_institute_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_institute_institute_type_id_seq OWNER TO diauma;

--
-- Name: maps_institute_institute_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_institute_institute_type_id_seq OWNED BY public.maps_institute_institute_type.id;


--
-- Name: maps_map; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_map (
    id integer NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    info text NOT NULL,
    scale integer,
    width double precision,
    height double precision,
    date_created date,
    date_created2 date,
    date_content date,
    date_content2 date,
    map_base_id integer,
    map_copy_id integer,
    map_issued_id integer,
    map_location_id integer,
    map_id character varying(255)
);


ALTER TABLE public.maps_map OWNER TO diauma;

--
-- Name: maps_map_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_map_id_seq OWNER TO diauma;

--
-- Name: maps_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_map_id_seq OWNED BY public.maps_map.id;


--
-- Name: maps_map_map_file; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_map_map_file (
    id integer NOT NULL,
    map_id integer NOT NULL,
    file_id integer NOT NULL
);


ALTER TABLE public.maps_map_map_file OWNER TO diauma;

--
-- Name: maps_map_map_file_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_map_map_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_map_map_file_id_seq OWNER TO diauma;

--
-- Name: maps_map_map_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_map_map_file_id_seq OWNED BY public.maps_map_map_file.id;


--
-- Name: maps_map_map_institute; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_map_map_institute (
    id integer NOT NULL,
    map_id integer NOT NULL,
    institute_id integer NOT NULL
);


ALTER TABLE public.maps_map_map_institute OWNER TO diauma;

--
-- Name: maps_map_map_institute_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_map_map_institute_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_map_map_institute_id_seq OWNER TO diauma;

--
-- Name: maps_map_map_institute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_map_map_institute_id_seq OWNED BY public.maps_map_map_institute.id;


--
-- Name: maps_map_map_persons; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_map_map_persons (
    id integer NOT NULL,
    map_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.maps_map_map_persons OWNER TO diauma;

--
-- Name: maps_map_map_persons_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_map_map_persons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_map_map_persons_id_seq OWNER TO diauma;

--
-- Name: maps_map_map_persons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_map_map_persons_id_seq OWNED BY public.maps_map_map_persons.id;


--
-- Name: maps_map_map_places; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_map_map_places (
    id integer NOT NULL,
    map_id integer NOT NULL,
    place_id integer NOT NULL
);


ALTER TABLE public.maps_map_map_places OWNER TO diauma;

--
-- Name: maps_map_map_places_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_map_map_places_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_map_map_places_id_seq OWNER TO diauma;

--
-- Name: maps_map_map_places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_map_map_places_id_seq OWNED BY public.maps_map_map_places.id;


--
-- Name: maps_map_map_references; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_map_map_references (
    id integer NOT NULL,
    map_id integer NOT NULL,
    reference_id integer NOT NULL
);


ALTER TABLE public.maps_map_map_references OWNER TO diauma;

--
-- Name: maps_map_map_references_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_map_map_references_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_map_map_references_id_seq OWNER TO diauma;

--
-- Name: maps_map_map_references_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_map_map_references_id_seq OWNED BY public.maps_map_map_references.id;


--
-- Name: maps_map_map_scan; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_map_map_scan (
    id integer NOT NULL,
    map_id integer NOT NULL,
    scan_id integer NOT NULL
);


ALTER TABLE public.maps_map_map_scan OWNER TO diauma;

--
-- Name: maps_map_map_scan_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_map_map_scan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_map_map_scan_id_seq OWNER TO diauma;

--
-- Name: maps_map_map_scan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_map_map_scan_id_seq OWNED BY public.maps_map_map_scan.id;


--
-- Name: maps_map_map_type; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_map_map_type (
    id integer NOT NULL,
    map_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.maps_map_map_type OWNER TO diauma;

--
-- Name: maps_map_map_type_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_map_map_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_map_map_type_id_seq OWNER TO diauma;

--
-- Name: maps_map_map_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_map_map_type_id_seq OWNED BY public.maps_map_map_type.id;


--
-- Name: maps_person; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_person (
    id integer NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    info text NOT NULL,
    person_location_id integer,
    date_begin date,
    date_end date,
    gnd_id integer
);


ALTER TABLE public.maps_person OWNER TO diauma;

--
-- Name: maps_person_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_person_id_seq OWNER TO diauma;

--
-- Name: maps_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_person_id_seq OWNED BY public.maps_person.id;


--
-- Name: maps_person_person_institutes; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_person_person_institutes (
    id integer NOT NULL,
    person_id integer NOT NULL,
    institute_id integer NOT NULL
);


ALTER TABLE public.maps_person_person_institutes OWNER TO diauma;

--
-- Name: maps_person_person_institutes_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_person_person_institutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_person_person_institutes_id_seq OWNER TO diauma;

--
-- Name: maps_person_person_institutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_person_person_institutes_id_seq OWNED BY public.maps_person_person_institutes.id;


--
-- Name: maps_person_person_type; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_person_person_type (
    id integer NOT NULL,
    person_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.maps_person_person_type OWNER TO diauma;

--
-- Name: maps_person_person_type_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_person_person_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_person_person_type_id_seq OWNER TO diauma;

--
-- Name: maps_person_person_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_person_person_type_id_seq OWNED BY public.maps_person_person_type.id;


--
-- Name: maps_place; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_place (
    id integer NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    info text NOT NULL,
    modern_name character varying(255) NOT NULL,
    geonames_id integer
);


ALTER TABLE public.maps_place OWNER TO diauma;

--
-- Name: maps_place_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_place_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_place_id_seq OWNER TO diauma;

--
-- Name: maps_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_place_id_seq OWNED BY public.maps_place.id;


--
-- Name: maps_place_place_type; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_place_place_type (
    id integer NOT NULL,
    place_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.maps_place_place_type OWNER TO diauma;

--
-- Name: maps_place_place_type_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_place_place_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_place_place_type_id_seq OWNER TO diauma;

--
-- Name: maps_place_place_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_place_place_type_id_seq OWNED BY public.maps_place_place_type.id;


--
-- Name: maps_reference; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_reference (
    id integer NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    info text NOT NULL,
    super_id integer
);


ALTER TABLE public.maps_reference OWNER TO diauma;

--
-- Name: maps_reference_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_reference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_reference_id_seq OWNER TO diauma;

--
-- Name: maps_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_reference_id_seq OWNED BY public.maps_reference.id;


--
-- Name: maps_reference_reference_type; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_reference_reference_type (
    id integer NOT NULL,
    reference_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.maps_reference_reference_type OWNER TO diauma;

--
-- Name: maps_reference_reference_type_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_reference_reference_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_reference_reference_type_id_seq OWNER TO diauma;

--
-- Name: maps_reference_reference_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_reference_reference_type_id_seq OWNED BY public.maps_reference_reference_type.id;


--
-- Name: maps_scan; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_scan (
    id integer NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    info text NOT NULL,
    scan_date date
);


ALTER TABLE public.maps_scan OWNER TO diauma;

--
-- Name: maps_scan_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_scan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_scan_id_seq OWNER TO diauma;

--
-- Name: maps_scan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_scan_id_seq OWNED BY public.maps_scan.id;


--
-- Name: maps_scan_scan_map; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_scan_scan_map (
    id integer NOT NULL,
    scan_id integer NOT NULL,
    map_id integer NOT NULL
);


ALTER TABLE public.maps_scan_scan_map OWNER TO diauma;

--
-- Name: maps_scan_scan_map_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_scan_scan_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_scan_scan_map_id_seq OWNER TO diauma;

--
-- Name: maps_scan_scan_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_scan_scan_map_id_seq OWNED BY public.maps_scan_scan_map.id;


--
-- Name: maps_scan_scan_person; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_scan_scan_person (
    id integer NOT NULL,
    scan_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.maps_scan_scan_person OWNER TO diauma;

--
-- Name: maps_scan_scan_person_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_scan_scan_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_scan_scan_person_id_seq OWNER TO diauma;

--
-- Name: maps_scan_scan_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_scan_scan_person_id_seq OWNED BY public.maps_scan_scan_person.id;


--
-- Name: maps_scan_scan_reference; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_scan_scan_reference (
    id integer NOT NULL,
    scan_id integer NOT NULL,
    reference_id integer NOT NULL
);


ALTER TABLE public.maps_scan_scan_reference OWNER TO diauma;

--
-- Name: maps_scan_scan_reference_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_scan_scan_reference_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_scan_scan_reference_id_seq OWNER TO diauma;

--
-- Name: maps_scan_scan_reference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_scan_scan_reference_id_seq OWNED BY public.maps_scan_scan_reference.id;


--
-- Name: maps_scan_scan_type; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_scan_scan_type (
    id integer NOT NULL,
    scan_id integer NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.maps_scan_scan_type OWNER TO diauma;

--
-- Name: maps_scan_scan_type_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_scan_scan_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_scan_scan_type_id_seq OWNER TO diauma;

--
-- Name: maps_scan_scan_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_scan_scan_type_id_seq OWNED BY public.maps_scan_scan_type.id;


--
-- Name: maps_type; Type: TABLE; Schema: public; Owner: diauma
--

CREATE TABLE public.maps_type (
    id integer NOT NULL,
    name character varying(250) NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    parent_id integer,
    info text NOT NULL,
    CONSTRAINT maps_type_level_check CHECK ((level >= 0)),
    CONSTRAINT maps_type_lft_check CHECK ((lft >= 0)),
    CONSTRAINT maps_type_rght_check CHECK ((rght >= 0)),
    CONSTRAINT maps_type_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.maps_type OWNER TO diauma;

--
-- Name: maps_type_id_seq; Type: SEQUENCE; Schema: public; Owner: diauma
--

CREATE SEQUENCE public.maps_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.maps_type_id_seq OWNER TO diauma;

--
-- Name: maps_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: diauma
--

ALTER SEQUENCE public.maps_type_id_seq OWNED BY public.maps_type.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: maps_file id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file ALTER COLUMN id SET DEFAULT nextval('public.maps_file_id_seq'::regclass);


--
-- Name: maps_file_file_map id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_map ALTER COLUMN id SET DEFAULT nextval('public.maps_file_file_map_id_seq'::regclass);


--
-- Name: maps_file_file_reference id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_reference ALTER COLUMN id SET DEFAULT nextval('public.maps_file_file_reference_id_seq'::regclass);


--
-- Name: maps_file_file_type id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_type ALTER COLUMN id SET DEFAULT nextval('public.maps_file_file_type_id_seq'::regclass);


--
-- Name: maps_institute id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_institute ALTER COLUMN id SET DEFAULT nextval('public.maps_institute_id_seq'::regclass);


--
-- Name: maps_institute_institute_type id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_institute_institute_type ALTER COLUMN id SET DEFAULT nextval('public.maps_institute_institute_type_id_seq'::regclass);


--
-- Name: maps_map id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map ALTER COLUMN id SET DEFAULT nextval('public.maps_map_id_seq'::regclass);


--
-- Name: maps_map_map_file id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_file ALTER COLUMN id SET DEFAULT nextval('public.maps_map_map_file_id_seq'::regclass);


--
-- Name: maps_map_map_institute id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_institute ALTER COLUMN id SET DEFAULT nextval('public.maps_map_map_institute_id_seq'::regclass);


--
-- Name: maps_map_map_persons id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_persons ALTER COLUMN id SET DEFAULT nextval('public.maps_map_map_persons_id_seq'::regclass);


--
-- Name: maps_map_map_places id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_places ALTER COLUMN id SET DEFAULT nextval('public.maps_map_map_places_id_seq'::regclass);


--
-- Name: maps_map_map_references id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_references ALTER COLUMN id SET DEFAULT nextval('public.maps_map_map_references_id_seq'::regclass);


--
-- Name: maps_map_map_scan id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_scan ALTER COLUMN id SET DEFAULT nextval('public.maps_map_map_scan_id_seq'::regclass);


--
-- Name: maps_map_map_type id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_type ALTER COLUMN id SET DEFAULT nextval('public.maps_map_map_type_id_seq'::regclass);


--
-- Name: maps_person id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person ALTER COLUMN id SET DEFAULT nextval('public.maps_person_id_seq'::regclass);


--
-- Name: maps_person_person_institutes id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_institutes ALTER COLUMN id SET DEFAULT nextval('public.maps_person_person_institutes_id_seq'::regclass);


--
-- Name: maps_person_person_type id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_type ALTER COLUMN id SET DEFAULT nextval('public.maps_person_person_type_id_seq'::regclass);


--
-- Name: maps_place id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_place ALTER COLUMN id SET DEFAULT nextval('public.maps_place_id_seq'::regclass);


--
-- Name: maps_place_place_type id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_place_place_type ALTER COLUMN id SET DEFAULT nextval('public.maps_place_place_type_id_seq'::regclass);


--
-- Name: maps_reference id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_reference ALTER COLUMN id SET DEFAULT nextval('public.maps_reference_id_seq'::regclass);


--
-- Name: maps_reference_reference_type id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_reference_reference_type ALTER COLUMN id SET DEFAULT nextval('public.maps_reference_reference_type_id_seq'::regclass);


--
-- Name: maps_scan id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan ALTER COLUMN id SET DEFAULT nextval('public.maps_scan_id_seq'::regclass);


--
-- Name: maps_scan_scan_map id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_map ALTER COLUMN id SET DEFAULT nextval('public.maps_scan_scan_map_id_seq'::regclass);


--
-- Name: maps_scan_scan_person id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_person ALTER COLUMN id SET DEFAULT nextval('public.maps_scan_scan_person_id_seq'::regclass);


--
-- Name: maps_scan_scan_reference id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_reference ALTER COLUMN id SET DEFAULT nextval('public.maps_scan_scan_reference_id_seq'::regclass);


--
-- Name: maps_scan_scan_type id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_type ALTER COLUMN id SET DEFAULT nextval('public.maps_scan_scan_type_id_seq'::regclass);


--
-- Name: maps_type id; Type: DEFAULT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_type ALTER COLUMN id SET DEFAULT nextval('public.maps_type_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.auth_group (id, name) FROM stdin;
1	Editor
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	32
2	1	33
3	1	19
4	1	20
5	1	21
6	1	22
7	1	23
8	1	24
9	1	25
10	1	26
11	1	27
12	1	28
13	1	29
14	1	30
15	1	31
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add map	7	add_map
20	Can change map	7	change_map
21	Can delete map	7	delete_map
22	Can add reference	8	add_reference
23	Can change reference	8	change_reference
24	Can delete reference	8	delete_reference
25	Can add institute	9	add_institute
26	Can change institute	9	change_institute
27	Can delete institute	9	delete_institute
28	Can add person	10	add_person
29	Can change person	10	change_person
30	Can delete person	10	delete_person
31	Can add place	11	add_place
32	Can change place	11	change_place
33	Can delete place	11	delete_place
34	Can add place	12	add_place
35	Can change place	12	change_place
36	Can delete place	12	delete_place
37	Can add institute	13	add_institute
38	Can change institute	13	change_institute
39	Can delete institute	13	delete_institute
40	Can add person	14	add_person
41	Can change person	14	change_person
42	Can delete person	14	delete_person
43	Can add reference	15	add_reference
44	Can change reference	15	change_reference
45	Can delete reference	15	delete_reference
46	Can add map	16	add_map
47	Can change map	16	change_map
48	Can delete map	16	delete_map
49	Can add site	17	add_site
50	Can change site	17	change_site
51	Can delete site	17	delete_site
52	Can add type	18	add_type
53	Can change type	18	change_type
54	Can delete type	18	delete_type
55	Can add file	19	add_file
56	Can change file	19	change_file
57	Can delete file	19	delete_file
58	Can add scan	20	add_scan
59	Can change scan	20	change_scan
60	Can delete scan	20	delete_scan
61	Can add scan	21	add_scan
62	Can change scan	21	change_scan
63	Can delete scan	21	delete_scan
64	Can add file	22	add_file
65	Can change file	22	change_file
66	Can delete file	22	delete_file
67	Can view log entry	1	view_logentry
68	Can view permission	3	view_permission
69	Can view group	2	view_group
70	Can view user	4	view_user
71	Can view content type	5	view_contenttype
72	Can view session	6	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
11	pbkdf2_sha256$150000$LJSXo27Sy5Om$ttK3PBk/RKtl/8a7nDEKEBy3MbScLU3XQVOuUILunvk=	2020-05-19 09:26:20.69907+02	f	Daniel				t	t	2020-05-13 16:51:59+02
10	pbkdf2_sha256$150000$JHMVJUed9B6L$FekbD6lNOyFQT8T2GHkLKwW865HoGSqls4byy/bMcqA=	2023-09-12 16:36:39.787162+02	f	Klemens				f	t	2018-03-19 17:12:03.200965+01
1	pbkdf2_sha256$150000$UHMHoa2mbT3x$1Q6+RzLSe/+mSTqUrvTwIZ+XBWvOkRKe3uzq5pTKP1E=	2023-05-16 12:27:32.952095+02	t	Alex				t	t	2017-05-22 15:34:15+02
6	pbkdf2_sha256$150000$TTSI9kYMIw8Y$cVos0uElYWgy3VipNbaC5AKGmdGckQ0yObDmm0V9Fd0=	2023-07-27 13:39:08.390371+02	f	Manzi				f	t	2017-06-01 16:07:32.045469+02
7	pbkdf2_sha256$150000$Qfo8nZFw8WjK$70LmZF33DeGHbraJ/9j4M5KqqxTksSRdha5sMKfPVhY=	2024-03-27 07:48:41.013688+01	f	Jan				f	t	2017-06-01 16:15:29.719516+02
8	pbkdf2_sha256$120000$G00h4qxVGcwW$ejVPBXCX5vVkPvnrBPO7JVo30beYTGGA8Lt+JsiShnM=	2019-08-01 15:26:25.951507+02	f	Claudia				f	t	2017-06-06 10:50:56+02
12	pbkdf2_sha256$150000$6DDRKMlyGqgj$lkKyvdqvQ+1gzVcPvvOKSnZzxVe1NSO9vQmVkIngonU=	2020-07-21 14:47:41.727875+02	f	Paul	Paul	Zodl	paul.zodl@outlook.com	f	t	2020-07-06 11:50:58+02
13	pbkdf2_sha256$150000$747gqbcxwspr$WeilHQO2BbAlDN1s39oH7x2AGnlU2EfQXTQC4VfGWrk=	2020-08-21 13:12:25.770071+02	f	Seta				f	t	2020-07-17 15:32:19.95189+02
14	pbkdf2_sha256$150000$u34HhpYka9j3$qRxkKJLwGE7ZapJPyFQdNKeUsE7bljCk2CyevykIERk=	2021-07-15 13:49:51.506401+02	f	Patrick	Patrick	Huemer		f	t	2021-06-23 13:01:10+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
3	11	1
4	12	1
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1	11	1
2	11	2
3	11	3
4	11	4
5	11	5
6	11	6
7	11	7
8	11	8
9	11	9
10	11	10
11	11	11
12	11	12
13	11	13
14	11	14
15	11	15
16	11	16
17	11	17
18	11	18
19	11	19
20	11	20
21	11	21
22	11	22
23	11	23
24	11	24
25	11	25
26	11	26
27	11	27
28	11	28
29	11	29
30	11	30
31	11	31
32	11	32
33	11	33
34	11	34
35	11	35
36	11	36
37	11	37
38	11	38
39	11	39
40	11	40
41	11	41
42	11	42
43	11	43
44	11	44
45	11	45
46	11	46
47	11	47
48	11	48
49	11	49
50	11	50
51	11	51
52	11	52
53	11	53
54	11	54
55	11	55
56	11	56
57	11	57
58	11	58
59	11	59
60	11	60
61	11	61
62	11	62
63	11	63
64	11	64
65	11	65
66	11	66
67	11	67
68	11	68
69	11	69
70	11	70
71	11	71
72	11	72
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-05-31 12:42:37.309772+02	2	test	1	[{"added": {}}]	4	1
2	2017-05-31 12:46:11.20055+02	1	Editor	1	[{"added": {}}]	2	1
3	2017-05-31 12:46:55.760898+02	3	test2	1	[{"added": {}}]	4	1
4	2017-05-31 12:47:08.683857+02	3	test2	2	[]	4	1
5	2017-05-31 12:48:03.79051+02	3	test2	2	[]	4	1
6	2017-05-31 12:48:29.222812+02	3	test2	2	[]	4	1
7	2017-05-31 12:48:52.110042+02	3	test2	2	[]	4	1
8	2017-05-31 13:15:07.272137+02	2	test	3		4	1
9	2017-05-31 13:15:07.27467+02	3	test2	3		4	1
10	2017-05-31 13:15:23.178038+02	1	Alex	2	[{"changed": {"fields": ["username"]}}]	4	1
11	2017-05-31 13:16:11.03886+02	4	Manfred	1	[{"added": {}}]	4	1
12	2017-05-31 13:16:38.952584+02	5	Jan	1	[{"added": {}}]	4	1
13	2017-06-01 16:05:18.128669+02	5	Jan	3		4	1
14	2017-06-01 16:05:18.130492+02	4	Manfred	3		4	1
15	2017-06-01 16:07:32.080495+02	6	Manzi	1	[{"added": {}}]	4	1
16	2017-06-01 16:15:29.756536+02	7	Jan	1	[{"added": {}}]	4	1
17	2017-06-06 10:50:56.205578+02	8	Claudia	1	[{"added": {}}]	4	1
18	2017-06-06 10:51:05.820462+02	8	Claudia	2	[]	4	1
19	2017-08-16 10:44:07.320752+02	8	Claudia	2	[{"changed": {"fields": ["password"]}}]	4	1
20	2017-08-30 15:00:08.453413+02	1	Map	1	[{"added": {}}]	18	1
21	2017-08-30 15:00:15.779927+02	2	Person	1	[{"added": {}}]	18	1
22	2017-08-30 15:00:41.493635+02	3	Reference	1	[{"added": {}}]	18	1
23	2017-08-30 15:00:49.286238+02	4	Place	1	[{"added": {}}]	18	1
24	2017-08-30 15:00:56.378984+02	5	Insititute	1	[{"added": {}}]	18	1
25	2017-08-30 15:04:32.513652+02	6	Map Type	1	[{"added": {}}]	18	1
26	2017-08-30 15:06:21.172718+02	8	Processing stage	1	[{"added": {}}]	18	1
27	2017-08-30 15:07:31.772903+02	10	Material	1	[{"added": {}}]	18	1
28	2017-08-30 15:10:54.771841+02	5	Institute	2	[{"changed": {"fields": ["name"]}}]	18	1
29	2017-08-30 15:13:21.27503+02	12	Institute Type	1	[{"added": {}}]	18	1
30	2017-08-30 16:45:29.972971+02	24	Sex	1	[{"added": {}}]	18	1
31	2017-08-31 13:47:52.383935+02	28	Test	3		18	1
32	2017-09-04 13:36:41.515954+02	35	DELETE ME	3		18	1
33	2017-09-04 13:38:03.053715+02	39	Place type	1	[{"added": {}}]	18	1
34	2017-09-04 13:38:14.360272+02	40	Reference type	1	[{"added": {}}]	18	1
35	2017-09-05 11:06:55.296903+02	45	Condition	1	[{"added": {}}]	18	1
36	2017-09-05 11:15:27.014423+02	51	Administrative Units	1	[{"added": {}}]	18	1
37	2017-09-05 11:17:41.424554+02	54	Historical Place	1	[{"added": {}}]	18	1
38	2017-09-12 14:29:10.884877+02	72	Scientific domain	1	[{"added": {}}]	18	1
39	2017-09-14 13:30:47.278613+02	74	Epoch	1	[{"added": {}}]	18	1
40	2017-09-14 13:46:39.554433+02	79	Lade	1	[{"added": {}}]	18	1
41	2017-09-14 14:20:34.836288+02	85	Scientific domain	1	[{"added": {}}]	18	1
42	2017-09-14 14:30:39.837442+02	89	Sponsor	1	[{"added": {}}]	18	1
43	2017-10-16 15:12:58.150227+02	101	File	1	[{"added": {}}]	18	1
44	2017-10-16 15:13:02.668055+02	102	Scan	1	[{"added": {}}]	18	1
45	2017-10-16 15:27:57.728984+02	103	Licence	1	[{"added": {}}]	18	1
46	2017-10-16 15:28:20.586794+02	104	Licence	1	[{"added": {}}]	18	1
47	2018-01-08 13:42:32.79493+01	36	To do: Copy move to feature	3		18	1
48	2018-01-15 12:25:18.938114+01	9	testuser	1	[{"added": {}}]	4	1
49	2018-01-15 12:32:52.294506+01	9	testuser	3		4	1
50	2018-03-19 17:12:03.32132+01	10	Klemens	1	[{"added": {}}]	4	1
51	2019-03-06 15:21:31.061086+01	188	Historical Places	1	[{"added": {}}]	18	1
52	2019-03-06 15:22:13.051433+01	189	Austro-Hungarian Empire	1	[{"added": {}}]	18	1
53	2019-03-06 15:22:31.800513+01	None	Austro-Hungarian Empire	3		18	1
54	2019-04-30 12:30:17.707627+02	8	Claudia	2	[{"changed": {"fields": ["password"]}}]	4	1
55	2020-05-13 16:51:59.848288+02	11	Daniel	1	[{"added": {}}]	4	1
56	2020-05-13 16:52:23.942507+02	11	Daniel	2	[{"changed": {"fields": ["is_staff", "groups", "user_permissions"]}}]	4	1
57	2020-07-06 11:50:58.235411+02	12	Paul	1	[{"added": {}}]	4	1
58	2020-07-06 11:51:42.494235+02	12	Paul	2	[{"changed": {"fields": ["first_name", "last_name", "email", "groups"]}}]	4	1
59	2020-07-06 11:54:53.487672+02	12	Paul	2	[{"changed": {"fields": ["password"]}}]	4	1
60	2020-07-06 12:37:51.53565+02	6	Manzi	2	[{"changed": {"fields": ["password"]}}]	4	1
61	2020-07-17 15:32:20.114231+02	13	Seta	1	[{"added": {}}]	4	1
62	2021-06-23 13:01:10.156052+02	14	Patrick	1	[{"added": {}}]	4	1
63	2021-06-23 13:02:35.090857+02	14	Patrick	2	[{"changed": {"fields": ["first_name", "last_name"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	diauma	map
8	diauma	reference
9	diauma	institute
10	diauma	person
11	diauma	place
12	maps	place
13	maps	institute
14	maps	person
15	maps	reference
16	maps	map
17	sites	site
18	maps	type
19	files	file
20	files	scan
21	maps	scan
22	maps	file
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
48	maps	0006_place_geonames_id	2018-04-11 12:13:40.888933+02
49	maps	0007_auto_20180508_1032	2018-05-08 12:32:42.908917+02
50	maps	0008_person_gnd_id	2018-06-12 13:58:26.467574+02
19	contenttypes	0001_initial	2017-05-31 12:03:04.041916+02
20	auth	0001_initial	2017-05-31 12:03:04.056302+02
21	admin	0001_initial	2017-05-31 12:03:04.067856+02
22	admin	0002_logentry_remove_auto_add	2017-05-31 12:03:04.079124+02
23	contenttypes	0002_remove_content_type_name	2017-05-31 12:03:04.105937+02
24	auth	0002_alter_permission_name_max_length	2017-05-31 12:03:04.112178+02
25	auth	0003_alter_user_email_max_length	2017-05-31 12:03:04.122679+02
26	auth	0004_alter_user_username_opts	2017-05-31 12:03:04.132455+02
27	auth	0005_alter_user_last_login_null	2017-05-31 12:03:04.143391+02
28	auth	0006_require_contenttypes_0002	2017-05-31 12:03:04.144887+02
29	auth	0007_alter_validators_add_error_messages	2017-05-31 12:03:04.155616+02
30	auth	0008_alter_user_username_max_length	2017-05-31 12:03:04.19182+02
31	sessions	0001_initial	2017-05-31 12:03:04.19581+02
32	diauma	0001_initial	2017-05-31 12:07:25.755256+02
33	diauma	0002_auto_20170622_1259	2017-06-22 14:59:22.672348+02
34	maps	0001_initial	2017-08-07 11:53:40.209703+02
35	sites	0001_initial	2017-08-07 12:19:17.888894+02
36	sites	0002_alter_domain_unique	2017-08-07 12:19:17.895268+02
37	maps	0002_auto_20170830_1241	2017-08-30 14:43:00.681985+02
38	maps	0003_auto_20170830_1412	2017-08-30 16:12:30.836083+02
39	maps	0004_auto_20170918_1517	2017-09-18 17:17:35.2554+02
40	maps	0005_place_modern_name	2017-09-25 12:56:11.749392+02
41	files	0001_initial	2017-10-16 15:25:51.061161+02
42	maps	0006_auto_20171016_1324	2017-10-16 15:25:55.959864+02
43	maps	0002_file_scan	2017-10-18 17:04:16.542289+02
44	maps	0001_squashed_0006_auto_20171016_1324	2017-10-18 17:04:16.545671+02
45	maps	0003_auto_20171106_1248	2017-11-06 13:48:30.93548+01
46	maps	0004_auto_20180213_1331	2018-02-13 14:31:36.419536+01
47	maps	0005_type_info	2018-02-21 14:55:25.046389+01
51	admin	0003_logentry_add_action_flag_choices	2019-04-29 14:38:13.448665+02
52	auth	0009_alter_user_last_name_max_length	2019-04-29 14:38:13.481852+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
fpi7lamzr1u3zuljgplzbu2tnd0db5v6	NmUxNTVjZDU1OTg1YWI5YzJmOGIwZDM4ZDNlYWYxYzMxZWExNDUyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWNiNmY0MDE5OTVjMzc0YzhjNzQwZDMwMjc0YTBlNmQ4ZGNiZGUxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-25 12:31:07.675621+02
nusipy8inae23l22ct1jmtfnfd024hzq	NDliOWU2NGFmY2RmOWJmZjJhZjFmNmEyMTcxZWY5MzExMTA5MjE0Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjYjZmNDAxOTk1YzM3NGM4Yzc0MGQzMDI3NGEwZTZkOGRjYmRlMTgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-26 13:42:51.056547+02
koylzny7bfm5opo5fhixnhy8a2plq4mm	ZjA1Nzg2ODM1OThiZDc0MjVjMzgwN2U2YmJlOWQ3ZmEzMjBhM2Q0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjYjZmNDAxOTk1YzM3NGM4Yzc0MGQzMDI3NGEwZTZkOGRjYmRlMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-06-14 12:50:49.302708+02
q4bvulawefral4glugx8tp75vcw9vz2x	NDliOWU2NGFmY2RmOWJmZjJhZjFmNmEyMTcxZWY5MzExMTA5MjE0Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjYjZmNDAxOTk1YzM3NGM4Yzc0MGQzMDI3NGEwZTZkOGRjYmRlMTgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-06-15 14:08:44.15178+02
qdvek88duca040aa252uceeao0nm9f5t	ZjJlNGEzMjc4YjE5NTE3OTAyYTM5ZjhhZGUwMWYwNWUzYzIwODRmMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWNiNmY0MDE5OTVjMzc0YzhjNzQwZDMwMjc0YTBlNmQ4ZGNiZGUxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-02 14:19:42.364843+02
jaoj97cyi3e2p9bt08ioft0vl7az4bxd	MDg0MjJlNDFlZmQwNjY5MzU4MTE0NzI2MTllMWYzMjY1MjY3NjI1Nzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzOTQwYTJjNmIwZmRmM2Y2ZGUyMTdlY2VjOThhMjZjY2JhN2RjYmZkIn0=	2017-10-09 15:30:08.45349+02
oyk2xg9lzzyi8m2iu7qc4wz5eixucdrt	NDQzM2E1ZTMxMDBmMWVhODVlNDFlOWJkZGExMGU3OTQ5MzMwYjJkODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2I2ZjQwMTk5NWMzNzRjOGM3NDBkMzAyNzRhMGU2ZDhkY2JkZTE4In0=	2017-10-18 12:43:46.830746+02
xeu2if12k3xv8nrkr5yfdszjobrmdbmv	ZWM3ZTk2NzE5OTQ2OWM1MzQxOGY4ODU2NTcwN2U2MjM0MTg0YjYwNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImU1ZjgyYjMyYmNhZDU0N2ZmNDZmODkxNTYxZWE4Y2JlNTBkODYxMDAiLCJfYXV0aF91c2VyX2lkIjoiOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-06-20 10:51:23.118669+02
iiibp0mboltss0z8t5vpr452dkwevqf6	ZmM3ZWRiZWU0ZjZmZDE3ZmQyYTEwZTA1ZDhkOGQ3OWMxZDM4ODYzZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjciLCJfYXV0aF91c2VyX2hhc2giOiIzOTQwYTJjNmIwZmRmM2Y2ZGUyMTdlY2VjOThhMjZjY2JhN2RjYmZkIn0=	2017-11-01 07:25:45.541237+01
ib3apksvd1lb9rn4vmxi5grwe0hgzb4x	NmUxNTVjZDU1OTg1YWI5YzJmOGIwZDM4ZDNlYWYxYzMxZWExNDUyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWNiNmY0MDE5OTVjMzc0YzhjNzQwZDMwMjc0YTBlNmQ4ZGNiZGUxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-07-06 15:01:35.752537+02
hsvxsbeyeq3coy6b7vi24hsu9f1s7lgw	MmMwN2YyNjc4ZGIxZWQyYzI3YmYyM2UzMzMzZjJjNzQ1YTBhNDQ2NDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9oYXNoIjoiMzk0MGEyYzZiMGZkZjNmNmRlMjE3ZWNlYzk4YTI2Y2NiYTdkY2JmZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-07-12 11:06:53.449665+02
it0k5z9fg2jzsd3fntxpd4fxdbq6t4z0	MTkzNmRmNWE1OTJiNjdhOWI1MTZmOTVjYzI5MmZjM2ZjNTRiMmI4Njp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2I2ZjQwMTk5NWMzNzRjOGM3NDBkMzAyNzRhMGU2ZDhkY2JkZTE4In0=	2017-11-01 15:53:20.987701+01
vsvjlmeq14peirhl6ltm1qas29d2v7qy	ZjJlNGEzMjc4YjE5NTE3OTAyYTM5ZjhhZGUwMWYwNWUzYzIwODRmMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWNiNmY0MDE5OTVjMzc0YzhjNzQwZDMwMjc0YTBlNmQ4ZGNiZGUxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-07-24 13:16:04.52193+02
l2pnqkl05xmwclpk7ff6ktk2jsbru1xh	NDQzM2E1ZTMxMDBmMWVhODVlNDFlOWJkZGExMGU3OTQ5MzMwYjJkODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2I2ZjQwMTk5NWMzNzRjOGM3NDBkMzAyNzRhMGU2ZDhkY2JkZTE4In0=	2017-08-21 12:19:44.651789+02
jxx30keez9bhxa4lmhh9edttyf4nm7zi	MmMwN2YyNjc4ZGIxZWQyYzI3YmYyM2UzMzMzZjJjNzQ1YTBhNDQ2NDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9oYXNoIjoiMzk0MGEyYzZiMGZkZjNmNmRlMjE3ZWNlYzk4YTI2Y2NiYTdkY2JmZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-02 14:04:22.492571+01
11uakj6iv4m4jfacppg5dxr2vyvflwax	NDQzM2E1ZTMxMDBmMWVhODVlNDFlOWJkZGExMGU3OTQ5MzMwYjJkODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2I2ZjQwMTk5NWMzNzRjOGM3NDBkMzAyNzRhMGU2ZDhkY2JkZTE4In0=	2017-08-21 15:07:10.811156+02
h1o2x1koecl09qdbb1ig8fc95xhrczyq	MmMwN2YyNjc4ZGIxZWQyYzI3YmYyM2UzMzMzZjJjNzQ1YTBhNDQ2NDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9oYXNoIjoiMzk0MGEyYzZiMGZkZjNmNmRlMjE3ZWNlYzk4YTI2Y2NiYTdkY2JmZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-08-23 11:16:24.265803+02
7cd47mh5bn7uyrm3kesu40rpoe7o4dos	ZjJlNGEzMjc4YjE5NTE3OTAyYTM5ZjhhZGUwMWYwNWUzYzIwODRmMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWNiNmY0MDE5OTVjMzc0YzhjNzQwZDMwMjc0YTBlNmQ4ZGNiZGUxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-16 13:20:44.850204+01
jw9kl9wu5a8prkwpr2fduqsm5ng3vb9o	OTY1MDM1NDg4NmJhOTU3OWNhMGFkMWQ5NWFkY2FhYzg1YzEwM2ZiNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJjZTJmOTIxNTBmZmY2YzUwNDI2YmVkMGU0ZjNkNDYzZTU2MzBlMDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=	2017-11-22 12:54:26.587985+01
99zvhhyewrq0vsosc4kz92l46tc4sx2i	NmUxNTVjZDU1OTg1YWI5YzJmOGIwZDM4ZDNlYWYxYzMxZWExNDUyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWNiNmY0MDE5OTVjMzc0YzhjNzQwZDMwMjc0YTBlNmQ4ZGNiZGUxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-08-31 13:49:59.161907+02
efbjgezvnz91ejwd1nfcd0i3cp0dh1i1	NTYwNDY1N2Q5MDc2NWNiMmEzYzUwNWM1YjdkZDcwMzI2MTViNWUxMDp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNlMmY5MjE1MGZmZjZjNTA0MjZiZWQwZTRmM2Q0NjNlNTYzMGUwMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-09-05 15:03:21.394715+02
b0uzothpj9gcjnpa11m8byda79k645s2	NmUxNTVjZDU1OTg1YWI5YzJmOGIwZDM4ZDNlYWYxYzMxZWExNDUyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWNiNmY0MDE5OTVjMzc0YzhjNzQwZDMwMjc0YTBlNmQ4ZGNiZGUxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-04 13:46:14.994293+01
2oqlfoan76fspk1e09r4zpqp3kgs1z1q	NDQzM2E1ZTMxMDBmMWVhODVlNDFlOWJkZGExMGU3OTQ5MzMwYjJkODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2I2ZjQwMTk5NWMzNzRjOGM3NDBkMzAyNzRhMGU2ZDhkY2JkZTE4In0=	2017-12-18 15:46:23.336388+01
22n31puykwopb88aa4dz4hjrtyhg6ha9	ODhkMThhMmIyNTkzY2FhZjJjMTVmMWRjN2ViYjFmMWNkY2VmNTVhMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTExZjgwNDQyZjYxYjQwYjlkOTI0YjU2MWE1YjcxZDI5YWZhNWUyYiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-03-27 16:23:48.606471+02
wep3yu46xkpc5w296cvbpxohy1a01ejx	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2023-08-25 11:40:59.406229+02
4tg7t4cyb5hj4448bnwrsb37xs6sbrpy	NDQzM2E1ZTMxMDBmMWVhODVlNDFlOWJkZGExMGU3OTQ5MzMwYjJkODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2I2ZjQwMTk5NWMzNzRjOGM3NDBkMzAyNzRhMGU2ZDhkY2JkZTE4In0=	2017-12-06 12:05:01.524294+01
7i2yiamp3dd11cs6jdwkv5oyo92eg0tt	ZjA1Nzg2ODM1OThiZDc0MjVjMzgwN2U2YmJlOWQ3ZmEzMjBhM2Q0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjYjZmNDAxOTk1YzM3NGM4Yzc0MGQzMDI3NGEwZTZkOGRjYmRlMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-22 13:32:01.879015+01
4rlcvjqr1q28winkppvulxqqlyqn2lls	YmMzZTlmMzU5NDIwMzQwMWZkZThiOGMwYTA5NmYzZmI0OWRmZTcyMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTExZjgwNDQyZjYxYjQwYjlkOTI0YjU2MWE1YjcxZDI5YWZhNWUyYiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-03-29 13:16:53.774579+02
dbe1zix5ylfc7o8zjbgts76p0qd2wyzd	NGY1ZThjZDRkMjI4ZjMwOGU4ZmQ2NGU1ZWFjMDNmYTBhMDA1MTUyZjp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2F1dGhfdXNlcl9pZCI6IjcifQ==	2018-04-02 12:17:09.247796+02
eqte443k52cm4gsf39cva6fmsluduuxh	ZjA1Nzg2ODM1OThiZDc0MjVjMzgwN2U2YmJlOWQ3ZmEzMjBhM2Q0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjYjZmNDAxOTk1YzM3NGM4Yzc0MGQzMDI3NGEwZTZkOGRjYmRlMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-30 10:36:34.414955+01
z0xf3ynhvaeuo8dcdrarolh3mnx13j6u	ZDdlMmViNzVkZDMxYjA1MzZkN2Y4Y2RmZDU0ZmNkZWRiZmI3MDIyNjp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZWE4YTczNzUwNzE4NWE1MjcyMmJkYzQzZjhhMjMyNTBjODc0ZWU4IiwiX2F1dGhfdXNlcl9pZCI6IjEwIn0=	2018-04-04 14:46:01.35943+02
vaxtcr9i571uzqzasgcawvzu7dfss92c	NzQ3YTAxYjg3ZmRlMzU5ZDU0MzlmZGJjODRmMjJmMzc1ZjBmOGE5Mjp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWEzZTFlNDFiZmQ3NmZlMWVmMjkxZTQ0YWUyODM2ZmUyZGRiMTA0IiwiX2F1dGhfdXNlcl9pZCI6IjgifQ==	2018-04-10 13:27:27.309271+02
ma3pyd1pcrdeuel550ccpue35alwdyff	Y2Y3ZDYzZTk5MTNhODY1MTI3NzdmMzI0NTA1N2M1OWY5NmVkYWNlZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjM5NDBhMmM2YjBmZGYzZjZkZTIxN2VjZWM5OGEyNmNjYmE3ZGNiZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2018-02-09 12:14:03.7951+01
p504olsyfey4wevfwl72k07fc9grhkvl	YmMzZTlmMzU5NDIwMzQwMWZkZThiOGMwYTA5NmYzZmI0OWRmZTcyMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTExZjgwNDQyZjYxYjQwYjlkOTI0YjU2MWE1YjcxZDI5YWZhNWUyYiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-04-11 11:26:35.496582+02
p2ws8w82esncd29lhss4ehd919ewele5	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2018-04-14 15:18:11.660672+02
7n46tntujzaojb5ykoawk3z2xeh2v9u3	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2018-02-21 13:27:32.627554+01
27o1coapejeb92xejtydrv7y9efmtw5t	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2018-04-24 09:26:10.361871+02
u910izhmq55fqcp8sm0c0hjx8d7ratj6	YzEyMWMyMmRmMjBlNGIxMTQzZWE0NDQ4ZGE3MDFhODc2NmRiMDNkNjp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjcyNWI0OTAxMTI0NWJiY2QzNzE4Y2ZhZTNhMTJiZjEyZTI5MjlmNSIsIl9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2018-03-06 14:28:09.853096+01
amq3ypdqs3b1dc18yt8qdsvs36w72i3p	YzEyMWMyMmRmMjBlNGIxMTQzZWE0NDQ4ZGE3MDFhODc2NmRiMDNkNjp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjcyNWI0OTAxMTI0NWJiY2QzNzE4Y2ZhZTNhMTJiZjEyZTI5MjlmNSIsIl9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2018-03-07 13:29:44.335106+01
h073ssg8ci00cglo3ymjqmv3t1axy5z8	ZjZhYWM2ODQwZmE1NzU5MTU2OWVlNjY0YjAzZWM4Njg2MTUwZWU2Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjkxMWY4MDQ0MmY2MWI0MGI5ZDkyNGI1NjFhNWI3MWQyOWFmYTVlMmIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-03-07 14:56:18.657673+01
36kq4fp8imwu2bmwlimv530sf08nudds	ZjE3ZjQ4OTViZTg4MmQ5ZGI4MzhjODk5YjY4MDgyZDQ0ZGM5NTdlZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjI3MjViNDkwMTEyNDViYmNkMzcxOGNmYWUzYTEyYmYxMmUyOTI5ZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2018-03-07 21:59:58.720137+01
sky7b0j9n9ezuixdwvq0kjzzdj2ynwo1	ZmFjZDBmNjA5YmFmYTY2ODNmYTgzNGJlMTI1MmVkZjRjMTU3YTFmNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkxMWY4MDQ0MmY2MWI0MGI5ZDkyNGI1NjFhNWI3MWQyOWFmYTVlMmIifQ==	2018-04-30 16:09:36.4453+02
ieihanjmu8usnfb922pv8z3uz396om0c	YmM5YTcxY2M1NTg0MjdmNzI3OGVkNTVhZjUzZGY3YWRiZjEyNTA4NTp7Il9hdXRoX3VzZXJfaGFzaCI6IjdlYThhNzM3NTA3MTg1YTUyNzIyYmRjNDNmOGEyMzI1MGM4NzRlZTgiLCJfbGFuZ3VhZ2UiOiJlbiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwIn0=	2018-05-01 11:27:22.401476+02
akcxrerqxqohlkylsaqbr47v3b8sanqh	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2018-05-03 12:15:02.723429+02
jr5fmt4krbj4g629ext5ujna8tus62c9	Y2U2YjU0MjM5ZjYxOGUwMTNlNjEwZDVkYTBmNzAxMWJlYjkxZDAxZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdlYThhNzM3NTA3MTg1YTUyNzIyYmRjNDNmOGEyMzI1MGM4NzRlZTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjEwIn0=	2018-05-18 14:34:45.765002+02
hfxml8whm51prnwf5u2n3ygo2ftc9tu2	ZjAxMGM5YWVkNmQ5MzU5NGE5ZmIwNDViNmZhNjBhY2FjY2JlMmU1Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTExZjgwNDQyZjYxYjQwYjlkOTI0YjU2MWE1YjcxZDI5YWZhNWUyYiIsIl9sYW5ndWFnZSI6ImRlIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==	2018-05-22 13:03:23.201686+02
yq5m1oa2a3o90zod7l25h7c20oozgizf	MTY3YjhkZDZiMmVhOTcxOWI4YTkxZTg5OGFjNTIwMzZiYjAyZmNjZTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdlYThhNzM3NTA3MTg1YTUyNzIyYmRjNDNmOGEyMzI1MGM4NzRlZTgiLCJfbGFuZ3VhZ2UiOiJlbiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-06-01 14:44:34.32743+02
tlwkvrzgpr5sdapawbys09jbkiiggfbc	ODZmMjA1MTgyMTZiZGQ1ZGIwMzkxYzk3NTYwZDU0MzMxN2IzMGE1Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9	2018-06-08 10:02:21.295534+02
11l05mxd5jm3unh29lffa96hoz9bl547	OGJjMmZjOTMyM2YyOGU1ZDBlMGFkNTI2MDRmZjY3MGQ1N2E4NDNhNTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEwIiwiX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2hhc2giOiI3ZWE4YTczNzUwNzE4NWE1MjcyMmJkYzQzZjhhMjMyNTBjODc0ZWU4In0=	2018-06-18 13:52:48.597283+02
nys3m3iuiv2vhc2ddzpzl6wsnficjjks	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-01-18 13:01:46.406758+01
nx3sq977t3p55xk1rhfrhp323lbaro0j	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2023-07-18 18:24:02.146863+02
dmnxak21caaqbgqy2rk1bmedmhv0k1rq	NDQzM2E1ZTMxMDBmMWVhODVlNDFlOWJkZGExMGU3OTQ5MzMwYjJkODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1Y2I2ZjQwMTk5NWMzNzRjOGM3NDBkMzAyNzRhMGU2ZDhkY2JkZTE4In0=	2018-01-04 12:15:58.691974+01
bscd69gle2f9325dpnjcbpu5tpefvu0h	ZjA1Nzg2ODM1OThiZDc0MjVjMzgwN2U2YmJlOWQ3ZmEzMjBhM2Q0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVjYjZmNDAxOTk1YzM3NGM4Yzc0MGQzMDI3NGEwZTZkOGRjYmRlMTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-01-29 11:55:04.790981+01
sg5l7he6bu3eujvh0z32az5suxy2ztqe	MmZhYmRkNWE2YjY1OTI4N2NlNGMyMjAxYzlhNWRjNGM3MmQ5YjE3MTp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWNiNmY0MDE5OTVjMzc0YzhjNzQwZDMwMjc0YTBlNmQ4ZGNiZGUxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==	2018-02-13 16:16:45.828051+01
kmdcuvkd55uknljwqjne0lhcpxe28r23	OTliOWIxMjEyZjRlMTJmYWIzNDAxYmI2ZmU4MjMzYmU0ZDJlYThlYjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2xhbmd1YWdlIjoiZW4iLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2F1dGhfdXNlcl9pZCI6IjcifQ==	2018-06-11 15:51:40.434344+02
sr8g3qtvlx3dp2p79lpy6bjsox1yxmtl	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2018-02-06 17:00:30.475864+01
avhxiw6m9qgh4ekw74usig2jvo4g1k4t	N2NjYTBmNWU0MmZmNDc5MmQ3ZTE3ZjNlNmRmMjU5ZjQ5OTA5MDM5NTp7Il9hdXRoX3VzZXJfaGFzaCI6ImYzYjY5ODY2OTE3OGE3ZjEzYmYwMWM5YWFjOTgyNDgyNTcxMjBjZmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=	2018-01-29 12:25:50.346529+01
1h1ednvhimupfjxl0gsa7edya73djtgh	Y2Y3ZDYzZTk5MTNhODY1MTI3NzdmMzI0NTA1N2M1OWY5NmVkYWNlZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjM5NDBhMmM2YjBmZGYzZjZkZTIxN2VjZWM5OGEyNmNjYmE3ZGNiZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2018-01-30 12:16:23.754887+01
2haspnf7qf2o5xpoh9tz4cze9i1xd78c	Y2Y3ZDYzZTk5MTNhODY1MTI3NzdmMzI0NTA1N2M1OWY5NmVkYWNlZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjM5NDBhMmM2YjBmZGYzZjZkZTIxN2VjZWM5OGEyNmNjYmE3ZGNiZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2018-01-30 13:19:28.364174+01
lt11q77yjceeh4h2mb0evmmtffps07st	NTYwNDY1N2Q5MDc2NWNiMmEzYzUwNWM1YjdkZDcwMzI2MTViNWUxMDp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9oYXNoIjoiYmNlMmY5MjE1MGZmZjZjNTA0MjZiZWQwZTRmM2Q0NjNlNTYzMGUwMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-01-16 23:13:13.972464+01
8j6g56tkp0beeaei81wm1ymdwv3mgk8c	NjU2ZjAzNjAyMmFmYTk5YmE4MzYxM2U5YTVmNGNlNTI4NmFhNmRiNDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCJ9	2018-12-24 14:26:12.181766+01
o9mdga8g5lp7m6051jgu0qgibvrxsmmj	NGM4ZDg3MDQ3MmUyZTA5ZTBjNDE2ZGU2YTU2MmZmYzhiOWIxYWRjNTp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjEwIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-07-02 13:54:13.498007+02
9rp1ywtlbtue8y0cm3atrgm8pzq59ets	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2018-07-03 14:10:04.888554+02
lpmz9fm5wy08v0hj9oy9o0kt6whtuo1a	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2018-12-24 15:37:58.914364+01
dzv5zjditxxofzmunroyxpjjflt2772l	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-07-04 10:49:43.784174+02
yu8rqq1s10d535wzmchkx79fhecwo533	ZDdjZWNiYzg1OThmZDI1ZjUwNGZhZThmNzVmNTFjN2VmYjFjYWM5ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTExZjgwNDQyZjYxYjQwYjlkOTI0YjU2MWE1YjcxZDI5YWZhNWUyYiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2xhbmd1YWdlIjoiZGUifQ==	2018-07-05 12:11:00.466187+02
g9rkz20bhanpnpkp74u06iktrev04fc9	Y2Y5NDg3NzBiZTc4YzIzN2ZmNGRlYzVmYWYwNjQzMzk1ODljMDI5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9sYW5ndWFnZSI6ImVuIn0=	2018-07-06 12:53:54.534135+02
wr7zwtqrl9rrn2737hxso805rk8mje1d	NjU2ZjAzNjAyMmFmYTk5YmE4MzYxM2U5YTVmNGNlNTI4NmFhNmRiNDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCJ9	2018-07-18 11:26:19.008791+02
0ahnrg56ubq564njn1qquusqslbux2p3	MTEyZmJlM2EzNGQ2N2RlOTgxMTlkY2VkNzM0NTM3ZTQ2MzZkNmIwMzp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjI3MjViNDkwMTEyNDViYmNkMzcxOGNmYWUzYTEyYmYxMmUyOTI5ZjUifQ==	2018-07-23 11:33:49.866965+02
wm5drng7nc33c3ukkvi6df6w74ztozz5	N2RjMmI2MmEyMzk1NTk3ZmE0ODkzMjZlZWZhNzliNDgzOTc1MWJmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTFmODA0NDJmNjFiNDBiOWQ5MjRiNTYxYTViNzFkMjlhZmE1ZTJiIn0=	2018-07-30 16:19:01.673805+02
cr3r4s3xwl13fpbkq69xur73stimk8oz	Y2Y5NDg3NzBiZTc4YzIzN2ZmNGRlYzVmYWYwNjQzMzk1ODljMDI5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9sYW5ndWFnZSI6ImVuIn0=	2018-08-15 10:28:34.643985+02
n3hmbfpap2x96ak95vshkc6n5o6ue2vr	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-08-21 13:43:04.854648+02
179w0zf8bp9wvtiiiv6re6tpq3c4jcjl	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-08-28 10:51:17.042879+02
078x732rze9x8tj3f4hwubi5hfxvaknr	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-09-06 11:10:24.781461+02
grhqhkst9qdrk6cd19c2cl6nb7j9zlm8	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-09-13 08:43:12.403788+02
r57vw2vs2kskkaj6zr6lh1e6rf6ohd7x	Y2Y5NDg3NzBiZTc4YzIzN2ZmNGRlYzVmYWYwNjQzMzk1ODljMDI5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9sYW5ndWFnZSI6ImVuIn0=	2018-09-17 09:35:52.301568+02
8ohvmbn02xwuaakyljtyjcte57xwvn1c	MWE4OWY4YjMwNzNlMDhmM2VjYTEwZmFkMTRlMWZhY2FjNTVmMWYwOTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyJ9	2019-08-16 09:15:20.24888+02
utta3s3di0vxea4yzuraofqs22kai8tj	N2RjMmI2MmEyMzk1NTk3ZmE0ODkzMjZlZWZhNzliNDgzOTc1MWJmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTFmODA0NDJmNjFiNDBiOWQ5MjRiNTYxYTViNzFkMjlhZmE1ZTJiIn0=	2018-09-20 13:35:12.380638+02
becoam8asr7szvhfr8hp8nmz5ysiuj08	NjU2ZjAzNjAyMmFmYTk5YmE4MzYxM2U5YTVmNGNlNTI4NmFhNmRiNDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCJ9	2018-09-25 09:12:02.387986+02
rhhxx01t92g15isls3a7dfvj3vqq47j8	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-12-24 15:00:51.846505+01
zt6mwdw7quf8yreazoo42r5i5p1ayxa7	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-10-01 10:28:02.650445+02
trpv8jebnf37kwefyumfrcxscj7uh9vp	Y2Y5NDg3NzBiZTc4YzIzN2ZmNGRlYzVmYWYwNjQzMzk1ODljMDI5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9sYW5ndWFnZSI6ImVuIn0=	2018-10-01 16:13:38.501721+02
bz3prnyc0zzwz21kf44qmhz2el9uohhg	N2RjMmI2MmEyMzk1NTk3ZmE0ODkzMjZlZWZhNzliNDgzOTc1MWJmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTFmODA0NDJmNjFiNDBiOWQ5MjRiNTYxYTViNzFkMjlhZmE1ZTJiIn0=	2018-10-02 16:33:09.04238+02
5hxxyc6lzvbwe7lz57wbw2vm0hji6lm8	N2RjMmI2MmEyMzk1NTk3ZmE0ODkzMjZlZWZhNzliNDgzOTc1MWJmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTFmODA0NDJmNjFiNDBiOWQ5MjRiNTYxYTViNzFkMjlhZmE1ZTJiIn0=	2018-10-02 16:34:18.155933+02
7jfxzgegvfef96m43khd1dw5qoe34wyf	N2RjMmI2MmEyMzk1NTk3ZmE0ODkzMjZlZWZhNzliNDgzOTc1MWJmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTFmODA0NDJmNjFiNDBiOWQ5MjRiNTYxYTViNzFkMjlhZmE1ZTJiIn0=	2018-10-09 14:45:34.5475+02
kfxcizh515p8kv6h6pt32n1fthb09t61	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-10-15 12:06:42.182574+02
4kgglf2bdrenstumx3o2khw1pcpyf2vx	Y2Y5NDg3NzBiZTc4YzIzN2ZmNGRlYzVmYWYwNjQzMzk1ODljMDI5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9sYW5ndWFnZSI6ImVuIn0=	2018-10-16 13:43:27.90767+02
fmljva0hpp3n75r9z269lccdj7yzm8p2	MzBlODQ5ZGFjMDlhYTI4YjI5NjExYzg0ODkzNmZjYjI1MWQ1YjRhYTp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjEwIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZWE4YTczNzUwNzE4NWE1MjcyMmJkYzQzZjhhMjMyNTBjODc0ZWU4In0=	2018-11-13 14:47:47.481847+01
5q1bomei5qryuyrf6b2dxlgpytc7xcoz	OGUxMGE1MzVkYTJmM2E5ODYxZTNlMTEyYTY0ODcwNzllMTI5YjVlOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTFmODA0NDJmNjFiNDBiOWQ5MjRiNTYxYTViNzFkMjlhZmE1ZTJiIiwiX2xhbmd1YWdlIjoiZGUifQ==	2018-11-14 16:22:12.314489+01
17ths95ay4w24bpczculaf306mmyq1wl	Y2Y5NDg3NzBiZTc4YzIzN2ZmNGRlYzVmYWYwNjQzMzk1ODljMDI5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9sYW5ndWFnZSI6ImVuIn0=	2018-11-14 17:04:48.918356+01
et2vezdlvcovawrbrmygikohpebklh0q	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-11-22 14:09:12.732766+01
zneepfh7ll6goilhhwz8v80d6df4s66y	Y2Y5NDg3NzBiZTc4YzIzN2ZmNGRlYzVmYWYwNjQzMzk1ODljMDI5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9sYW5ndWFnZSI6ImVuIn0=	2018-11-26 14:00:06.359856+01
1lqt880lqpuavk0b8nsvc9if4rcqiwyn	N2RjMmI2MmEyMzk1NTk3ZmE0ODkzMjZlZWZhNzliNDgzOTc1MWJmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTFmODA0NDJmNjFiNDBiOWQ5MjRiNTYxYTViNzFkMjlhZmE1ZTJiIn0=	2018-12-03 13:40:14.427231+01
xwi8r0l3iepv9tu5qiqlrffiefpm8e4m	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-12-05 16:41:56.098914+01
8lmswsg2lt705d7gwoi4497pj7iyioza	N2RjMmI2MmEyMzk1NTk3ZmE0ODkzMjZlZWZhNzliNDgzOTc1MWJmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5MTFmODA0NDJmNjFiNDBiOWQ5MjRiNTYxYTViNzFkMjlhZmE1ZTJiIn0=	2018-12-06 12:06:24.258196+01
w9rech60ysy971pcmpn9zsrmq98bh00r	YzU3NGY5MmY4N2M0MjE2NmJkYjI0Y2JmZTljMmY4NzFiYTI0YTk3NTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzI1YjQ5MDExMjQ1YmJjZDM3MThjZmFlM2ExMmJmMTJlMjkyOWY1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2018-12-10 09:30:26.002835+01
8cn86gehw6v7kph8j0mkcfa1y5lb3hdt	Y2Y5NDg3NzBiZTc4YzIzN2ZmNGRlYzVmYWYwNjQzMzk1ODljMDI5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2VhOGE3Mzc1MDcxODVhNTI3MjJiZGM0M2Y4YTIzMjUwYzg3NGVlOCIsIl9sYW5ndWFnZSI6ImVuIn0=	2018-12-10 11:51:34.093838+01
xbwk92um8zwajaqycsua1du4ae3uh75k	YzQ4MTQ5N2ZhZWE1MjlkYzA3YzU5ODQ5MmQ0YjFjYjZiYzQ5NjBkMDp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZWEzZTFlNDFiZmQ3NmZlMWVmMjkxZTQ0YWUyODM2ZmUyZGRiMTA0In0=	2018-12-19 16:17:49.162251+01
ivru43lnay7cka8x0rvfvhjc6wwx09ev	NDgzNmU1YmExMDJiN2ZmOWExM2I5MDZjM2YyYjVhODIyM2I3MjBhOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-01-18 15:13:38.770981+01
4erqw0478gusmyjculewhno9rwssdibc	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-05-28 13:47:14.955638+02
scazbxiq3wj41wlsjuv7yhjx5x40z322	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2023-08-30 08:36:59.241605+02
o0swey38ng33ptwkhtyzwlfht8hz20ch	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2023-09-26 16:36:39.789499+02
394oulmv0ppy0pb5xhv6oq8iom6irh9j	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2019-05-29 12:01:04.545336+02
ogh3gydrpq767q7m34be05hlc7nyu3wd	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2019-09-09 01:28:29.755728+02
36wmz49h6ffdb6yje85e08h7bfnbzj1y	NDgzNmU1YmExMDJiN2ZmOWExM2I5MDZjM2YyYjVhODIyM2I3MjBhOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-09-09 14:04:13.854011+02
h8eqvxd9xh7kjqd0c7y9jdtgxyghjve8	ZTc0YTJlZjRlZTgwYjNlZGEyZGExMmIxOGRiNTZkNzYyZmMzZTdmNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1IiwiX2xhbmd1YWdlIjoiZGUifQ==	2019-09-11 14:01:30.084719+02
78p8gvh1iuxjvbrf4z7on0bbxvcc1gl2	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2019-09-11 19:02:09.989617+02
ef5lzecjnav3ysk914odwdd3ux5dyq1z	MWMwNDhmYzEzYTA3NDA4NGY2MjZmMmIyMWMwYWUzMTliZTQyN2NkNzp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjM2NDE0MWM3ZDc1MTdhZGFkNWRhNzBkZDI2ZDBhNDYxNmI3YjhkNzUifQ==	2019-06-11 12:36:30.478977+02
b4949m7mtivv7q48odzlytn7pjmqvglb	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-06-11 14:57:38.418152+02
zbttz6e92o51tyl8zb1gf85x5n6xjg37	MDc1MGQ0Y2FlZGM2NWZhMGRlNDcwNDY3MzA5MDljMGE0YWEwY2UwNjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOTUyNzEyOWIyOTkyNGRmMjg3ZTE4Yjc3ODJiZDQ3ZDY4MjEwMDY1In0=	2019-06-17 10:43:43.460895+02
ofj112b1p5splx6ljvyvjqd603t9r127	ZTVjNjNmOTgwZTBhN2JmMTFiMDEyMjMwNDQ2ZGU3ZDk3NjY3MTIwOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIn0=	2019-06-17 13:23:37.562921+02
712o2mepki138oeqls6872fd34hiar18	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2019-06-19 09:32:15.667703+02
wrl1tt642udd3cd0irogvrhkvncuuh8q	MWE4OWY4YjMwNzNlMDhmM2VjYTEwZmFkMTRlMWZhY2FjNTVmMWYwOTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyJ9	2019-06-26 17:27:30.552598+02
vbgrlw5508wkzkn87rcj0paw79q6g7nh	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2019-10-02 13:22:19.850873+02
l4igbwb6sg9flieoy1h9hkhluf49uefw	ZjA3ZjdjYmRjMDdjOWY2YjU3YjcyODQxODlhNzA2N2JiZTIxZTgzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-10-11 10:03:36.075116+02
2yr7vbvn46ykhczz8tqszn2cxdbo36px	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-07-01 13:09:27.404997+02
qxzlen2qo09ivh7j3j7x63d04by3r58r	NDgzNmU1YmExMDJiN2ZmOWExM2I5MDZjM2YyYjVhODIyM2I3MjBhOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-07-09 22:07:41.960636+02
kzsse6t9itxum64hgbs0irg7qtpnlxkc	MDc1MGQ0Y2FlZGM2NWZhMGRlNDcwNDY3MzA5MDljMGE0YWEwY2UwNjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOTUyNzEyOWIyOTkyNGRmMjg3ZTE4Yjc3ODJiZDQ3ZDY4MjEwMDY1In0=	2019-07-10 10:36:07.449615+02
g5z39eg6awv56xlikwkmmmdneudt796g	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-07-24 16:17:37.526987+02
h00yfm41x6rkdpr3lvq4o3os9mcj7hh1	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-08-01 13:58:22.2157+02
m35undmbm0l1h2lpq8m3wavq4h20mfrw	OGVlNGFiOWNjZmMwNDNiZTRlYWRjNTNmMWJmZDZlNDJjNzg2OGY0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-08-13 14:17:27.633596+02
om7xeim4hqq282kgcddlnajuep69roh6	NDgzNmU1YmExMDJiN2ZmOWExM2I5MDZjM2YyYjVhODIyM2I3MjBhOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-08-13 16:25:32.025993+02
cvby89l4nglfxyftuefnrpy8awpvojnr	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-08-15 10:32:51.075759+02
d4kknif4thz8nhu327c538ndb7wu2ogf	MDc1MGQ0Y2FlZGM2NWZhMGRlNDcwNDY3MzA5MDljMGE0YWEwY2UwNjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOTUyNzEyOWIyOTkyNGRmMjg3ZTE4Yjc3ODJiZDQ3ZDY4MjEwMDY1In0=	2019-08-15 15:26:25.955011+02
i4wo72d6ewswvcei10o4jzdlgs7eomtb	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-01-24 14:01:46.961027+01
ezs42caquk9svxy8ookdjkaop0dhdl1x	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2023-11-26 17:31:30.11967+01
15a9tc37yrc2vojqjg919ck0y5oeq0bq	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-05-28 13:58:15.198008+02
ped1humvozbv52w6ti78t8n3wiczknjl	MWE4OWY4YjMwNzNlMDhmM2VjYTEwZmFkMTRlMWZhY2FjNTVmMWYwOTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyJ9	2019-08-05 13:58:33.155327+02
f15glz6sk3t10gd99gv7d8fcscbn683u	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-08-15 10:33:26.914177+02
kaa3fv7it4a7nfffs5cr8xt6uwvdb2s2	NGFmMzdiYjc3ZGI1N2JlMjlmOWRiNjkzMzI4MDI0MmU1Yzk1ZGVlZDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIiwiX2xhbmd1YWdlIjoiZGUifQ==	2019-10-11 16:28:14.118641+02
k2tcxmm1c63533li1z14f2ayydev9xe9	ZmJlMWFlZTcwMGU0NjkwMWI4YjA3ZWRjNGZmMmI5MzdhNDNjNzk1NTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzZjOTY1ZjQxM2YyYmM5MGMzYzA2OTg3M2FiMWQyNzFiMWY0NTEyYSJ9	2020-07-21 11:18:32.809773+02
7opfm2dmc8cdore3ovok6nlzazl7p1n3	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2020-07-28 17:04:58.886021+02
l2dhu2nkx7rbhqc2zdrojtf1dygj003z	YTMyYzA1MDZmZGNhNzgxM2U5Y2FmZWVhODRiNmJiNzg3MDFjMjI1ODp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzc4ZTk5NzNmYmQ0ODk0M2M0ODFhYjI2NDAwZjE3YmFmY2Q3YTU2MyJ9	2020-07-31 15:33:24.264107+02
f8ynxgoidl0f46ztso31jac0ys85qojo	ZmJlMWFlZTcwMGU0NjkwMWI4YjA3ZWRjNGZmMmI5MzdhNDNjNzk1NTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzZjOTY1ZjQxM2YyYmM5MGMzYzA2OTg3M2FiMWQyNzFiMWY0NTEyYSJ9	2020-08-04 14:47:41.732729+02
4xmt989lzp1z6gqbhp4lgx2r4rqnq0le	MmIxMTEyY2Y5Njk1ZGExYzYxZDk5Y2YxNTEwNzFjMzVlOGYzMjFkODp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NjNjMTJlYTIwNDVhOTI4ZGRkZDQ3YjRlM2NiNmY1NjdmMzNmZmVlIn0=	2020-08-11 10:59:29.143323+02
ykphfv5px2c5dmzy1k0b72icxxszurbb	MzgzMjEyOTljZTY4NTVhMDU2ZmVlNGYxNjFmMmM0NzIyNDA2ZjdjMTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzc4ZTk5NzNmYmQ0ODk0M2M0ODFhYjI2NDAwZjE3YmFmY2Q3YTU2MyIsIl9sYW5ndWFnZSI6ImRlIn0=	2020-08-26 15:55:29.982457+02
a6awj1rc9dy3uc86zgs901j88blhjnh4	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2020-08-28 10:31:03.31567+02
d9tdb8hnh9zwi7etzv25t9ka785tw8ar	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2020-08-31 12:43:13.500811+02
gyeyoka1r527a6tszxfmyvwdxhvkhgsi	MmIxMTEyY2Y5Njk1ZGExYzYxZDk5Y2YxNTEwNzFjMzVlOGYzMjFkODp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NjNjMTJlYTIwNDVhOTI4ZGRkZDQ3YjRlM2NiNmY1NjdmMzNmZmVlIn0=	2020-09-01 20:58:56.09828+02
jgsu7al9k3p1lsbjav74d3kfwvny677t	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2020-09-04 11:25:55.271483+02
iyds850p10qo6ewdbzb14qgdbf0cg75s	YTMyYzA1MDZmZGNhNzgxM2U5Y2FmZWVhODRiNmJiNzg3MDFjMjI1ODp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNzc4ZTk5NzNmYmQ0ODk0M2M0ODFhYjI2NDAwZjE3YmFmY2Q3YTU2MyJ9	2020-09-04 13:12:25.777553+02
jkjxnp8g63hxqy7kueuz2yr09vmt1uz5	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-09-13 09:24:22.071235+02
i2cgijfpf0v4k8pv215zsh1bjudwttlp	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2020-09-14 15:08:27.139032+02
xkcgaak08o1hnkqzmcmtx78wonat0zmx	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-09-22 13:27:19.203679+02
znsk6ylhyeyueptmngplu3psa621s53j	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-10-05 11:40:08.708869+02
h662dpmmgiefvr0c2t7im0xpv40ta8rn	MmIxMTEyY2Y5Njk1ZGExYzYxZDk5Y2YxNTEwNzFjMzVlOGYzMjFkODp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NjNjMTJlYTIwNDVhOTI4ZGRkZDQ3YjRlM2NiNmY1NjdmMzNmZmVlIn0=	2020-10-06 11:30:31.515998+02
5nhu0hdy3giu2ulsstwjwjfjk65w1jat	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2020-10-11 20:00:10.568771+02
j9atrqmmwyemsocuakj6u7au1w79vhz9	ZjFkMGMzNGU3ZGQzNDFkMGZiMmNhYjkzN2MyMjdkZjIyNTkwN2Q0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5IiwiX2xhbmd1YWdlIjoiZGUifQ==	2020-10-12 15:06:17.280141+02
jcqgut31l0ca1ezi5adbf4mwf2ys7yyi	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2021-01-17 19:25:28.920759+01
2dcj983kbgtp7f89u8qx9nyb4dwuiru5	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2021-02-06 11:27:09.079712+01
cyzi1eyhqocebortu49mpunnc4wjb3vk	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2021-02-18 12:41:47.074944+01
qq8oogl0fjdagfj1n6fh6urrpbpknrxd	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-07-31 15:33:44.779513+02
98gldaihncof7ps1za64r9la64b2cz7t	NDgzNmU1YmExMDJiN2ZmOWExM2I5MDZjM2YyYjVhODIyM2I3MjBhOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-02-04 10:09:45.24103+01
lftw77ouxr42q7xst65j5tork8pe1h1b	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2023-12-09 18:59:29.413568+01
pmj6da3wdq5xv3rudxvpkxbbqx28yqtj	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2019-10-30 15:58:40.884539+01
2nskrlz9ol8r81s73xh1pybps5p7gbfo	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2019-11-07 20:00:01.816423+01
s6lsd21orkbp815d2i5z2d4msnvurbrx	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2019-11-11 22:54:05.673865+01
g0bnsuwjlug0kqjhf90donoc163nev2s	Yzc4ZGVkMjYyZTI5ZDg1MmMwMDNmYjdkMWZiMDYzODljNTY3M2IzNDp7Il9sYW5ndWFnZSI6ImRlIiwiX2F1dGhfdXNlcl9pZCI6IjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImIyY2VhMWJlNjE2YmRmNmIwNWVlMmI1NzBjNjI5ZjUwOWI5NWNlY2QifQ==	2019-11-19 16:17:38.969027+01
j4j7i5qqgr66u0ozd7tb8797qqekzfck	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2019-11-26 15:54:21.734819+01
45p45o5pcaa7g3935col2fkd7sn1zlbp	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2019-12-19 16:46:02.8019+01
gkn59qdqmysz5zqvyy5gzayarad02t6j	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-01-23 15:58:34.695414+01
xr6vndoln2qjinsashz8xqdja290pd9a	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-01-24 08:45:55.503358+01
czccladw614phefb0appy2gyipkvt13y	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-01-24 17:25:15.388612+01
1f0b6ctk847k6geu30r2fnn4682xp7tx	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-01-25 13:33:31.391384+01
f0adfhytu9tnvbvf70t6jrjh978xey7b	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-01-25 15:25:42.176834+01
yulrt3wuo1xpv0nk0hx0nkdsv6o1ewmx	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2020-01-26 05:45:10.444974+01
8hn826bti7at0jshvikohu5ha401hx6u	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-01-26 13:10:00.204641+01
kn1ob3ktboktrg0jqrl8hkjs6wxgpsx9	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-01-28 11:03:03.095456+01
6ibte3m8oxsfd6dzdwiwa15zt1eu8xzv	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-02-04 23:13:31.224266+01
nw9jnuqmf2cg6btwvicadi80omdzyefc	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-02-10 09:41:31.68521+01
cdrhn5u8xam3j7kyf649771axkr9eomb	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-03-13 16:01:51.799487+01
83trb778lv75oku60kg3257tjq5j7kos	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-03-19 13:47:49.745134+01
f4wyw1eumk9oebgbfapx7wm5ei6h5odx	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2020-03-31 16:42:30.130981+02
mal235rher8zqif0jx27r7p0qzkjxo58	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2020-04-07 22:54:56.213903+02
trfat242crpag1qh4xabqzokykhcgd23	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-04-15 20:29:09.741684+02
x7kdvw1xzca8yxedwoos6z2e40lywe4n	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-04-29 18:08:06.720762+02
bbaouuj39a62rcpde0ykw8i2r3gcp9nv	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2020-04-30 17:34:57.431968+02
r1pzlgvhmsvso8mxgwx588fyp41djpa5	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2020-05-01 16:38:00.82373+02
njvw9n3iseepjtxuna41pi56xbm0k0q7	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2020-05-05 10:22:06.189318+02
fdcop4cj058c383ikon42hpacct1uogf	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2020-05-22 14:46:28.818975+02
g4qtmpd60bgaioq2t3kik593a6u5dfit	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2020-05-27 16:20:47.163188+02
fwv1h1bm085vckke3cgfh79628xgwaf2	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2020-05-28 16:22:30.035668+02
mgklfu0ks91q8te5j1eu1lb9v9h4gs32	YjQ0NDJjMmIzZDExMGRlZWIzNDZkMzViMzM1NThlNjJmOTg2YmNiNjp7Il9sYW5ndWFnZSI6ImRlIiwiX2F1dGhfdXNlcl9pZCI6IjExIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ODFlOWVmMzc1YzVlODNiZDQ4MzlmMGU2MTY1YjQzYzExNTM1ZmI3In0=	2020-06-02 09:26:20.702268+02
zlvpt4vwe775rbffqaz336269isaszq6	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2020-06-16 11:47:15.456949+02
zofyiforgpfhcse72q57ii4e93ns1qzc	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-02-05 12:41:26.976751+01
3etco3c5vvdcahb962apa9239fq0u2cj	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2023-12-12 23:38:19.387519+01
rohga8dcvq7r7drflo04gqm0wq6p3fr9	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2024-01-21 20:37:58.123895+01
a35l229x73kw49d42jcchfxixcjod3jc	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2024-03-28 10:55:59.024027+01
lg6g5tyv79kbqcbzts6fwv6dpjp20yjk	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2024-04-07 19:08:12.431356+02
ywdq0e936l56mgitqli6csh8cvcoqowg	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2024-04-08 12:32:18.018445+02
3vn1b6sz3nh0h7uf1cze3gkx8aagpag6	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2024-04-09 19:45:45.639317+02
xc6m6o7w3i9izscs5aiqjdr8sn0ms8e1	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2024-04-10 08:48:41.015372+02
0camw8a12xxuq4v7bkez6tzblngj1nei	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-02-11 12:04:01.162699+01
a5c5to7yxogq49pt1m3r0pr6928gv7mb	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2021-04-01 10:32:13.740695+02
hwzknridj1ady8ugczvpw5w16sp9osrs	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2021-04-23 21:57:00.200902+02
vxd80uix1kbr4ac1auh6q53nvyrot7ln	OTllOTRlYmFmYWQzM2FiNzViY2E1NzNkM2I5ZDdjYTg2Yjg0MTk4ZTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmNlYTFiZTYxNmJkZjZiMDVlZTJiNTcwYzYyOWY1MDliOTVjZWNkIn0=	2021-05-06 12:41:22.402015+02
osicdroq6jseqicyfkh7ncs4vq639abc	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2021-07-07 13:00:04.616044+02
ynjdpjd0owl9kmvdezdebbqrigu8h661	MDExMWQ3OGE3OWFlNjJlZTQ2YzA5YTFlNDU0YWEwY2Y4MmExMjA3ZDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGQ5NmQyNmIxOGUwNzU1NmViNWQ0YTEwMDZhNmJiNTQ2YzNmMWU2MyJ9	2021-07-11 10:36:37.769018+02
d2xgaketpz6m8d1hgtps2reembqx4ew4	MDExMWQ3OGE3OWFlNjJlZTQ2YzA5YTFlNDU0YWEwY2Y4MmExMjA3ZDp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGQ5NmQyNmIxOGUwNzU1NmViNWQ0YTEwMDZhNmJiNTQ2YzNmMWU2MyJ9	2021-07-29 13:49:51.518292+02
7b0l3t03tt3i25c70hobnfxh3ntjrz9i	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2021-08-13 12:25:36.804845+02
bg3rvls92c5zldfmdtj5pf6fml221nm2	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2021-09-27 11:59:41.893906+02
g091pdlc1g0buuyaztnf0mpbd95d9n7x	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2021-10-06 12:04:13.406986+02
ufuemnyxgpan3j7cm07fob5gvexgtq1p	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2021-10-31 14:56:34.092672+01
ndddvvunyvcb1qh05e9ds5qj8c3ckd2h	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2021-11-25 13:41:00.485584+01
zxd5dja2feuxvji8xraiwujso9qe6o9f	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2021-12-27 16:20:12.783232+01
1qfq9uz1ovadz8fkplol8fmus5pdqfee	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2022-01-12 18:34:47.860441+01
kke0znas4licy5iap2ls7iflqydzzsf7	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2022-01-15 12:56:46.626649+01
rzqrtelhdykv0ovalrwnuuqkyf9cad20	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2022-06-17 15:57:43.258892+02
ovjbwh4l0l50shsr62g004h9vjct6fpo	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2022-07-10 16:43:12.135165+02
684ekvalnlssijerp1d04kvdonwy4dn1	Nzc1NDY3MDFjYTEyMmQxNzY0ZmIzMjM0MjZhNDIzZDg3ZWI0ZWFlODp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWM1OTkzOTNmMDg5N2U4ODgzMmU2YWU5ZGU1NmVhNWRjZGZmMGVlNCJ9	2022-09-03 08:58:42.93554+02
0pobowi1tov9k9pqfgogfe33z78nezae	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2022-09-12 23:53:40.749637+02
o4kqtu1mwndo41sn1hcequrw5xsk9kpx	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2023-03-11 12:42:07.785654+01
c13twe9bchnf1tvpbvu57hgzve67tql9	MDA5NWQ0NjdiZjQ4MWI1ODAzMzZiOGUwYmRiYWJiNTk4M2MxMDFiZTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NjNjMTJlYTIwNDVhOTI4ZGRkZDQ3YjRlM2NiNmY1NjdmMzNmZmVlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2023-05-28 18:54:06.249466+02
6i6iffc8hymab350hjxs5nh8cng4a96z	MTM5MzFjMzhjODEzMjM5YTI1NjNmNzE4NGE0NjUwZDIyZjlmYmNkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjM1MWU1MmU5ZTMyOGVkMjJiMmVmMGZmM2I4ZjFjOTUzMmRmODg5In0=	2023-05-30 12:27:32.958502+02
semurj47qax7wkcmp1d5kpidxkop6c63	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2023-06-15 23:23:58.387302+02
sctk9xxekrljpvb2pmg531ubuo1svb3l	MmIxMTEyY2Y5Njk1ZGExYzYxZDk5Y2YxNTEwNzFjMzVlOGYzMjFkODp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NjNjMTJlYTIwNDVhOTI4ZGRkZDQ3YjRlM2NiNmY1NjdmMzNmZmVlIn0=	2023-07-02 14:40:43.011184+02
wiz84q3wcmck1tl56egqtxk0rn5ehav5	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-02-11 12:04:27.60335+01
au7kr5tzesxm53dxoop9ys5hifsd4cq4	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-02-12 13:33:22.879007+01
hvdgmwt8xmspyqfsrhkx3n4yxr8alsxw	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-02-12 13:36:42.167696+01
z5nj9aikaw7ovgf68ctshwjbwhzom33o	OTM5MjcyYjk3YTkzNGZkMGY3ZjFiNDBkMGU4NjA0MDMwMWQ3ODMwMjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMjA2OWNlNTA4MDY3YjE0ZDg1YjM2NWJjN2ZiMzUxMzUyOWJiNjZhIn0=	2019-02-12 14:05:06.365619+01
ivtwwwbpvfg5z912yk1yn7p5a85o39ds	MWE4OWY4YjMwNzNlMDhmM2VjYTEwZmFkMTRlMWZhY2FjNTVmMWYwOTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyJ9	2019-02-12 17:01:04.45488+01
s9yjho78xt9fo8v7sv5j5ao66go5fvag	ODQ5ZGRlMmQwNDdkMTFiZWI5NGI3ZWVkZDdlNTBiMzczMzMwOTdkYzp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmQ0YWE1OTdkMGVkYzhkOWVhYTE1YWEyODdmMTc4OWE2NDU3ZGI5In0=	2019-02-13 10:08:17.638482+01
juuq292elgcaz7n776xl4hivah2t00gx	M2UyNGJiMTU4MWUzNjgyMGI2NjU1ODAxNzJhMjUzZjU5ODg2YjcwYjp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjA0NjU1OGYxYTg4Y2FhZmNlZjBkNTc0YzA0YTA3ODQzYzhjOGExOGUifQ==	2019-02-19 15:24:12.466677+01
kwdeq71guoti6vr3ujaoojjga9mftdui	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-02-25 12:30:14.214881+01
62dnkfk2c26n2z3b3sm1lu4c6qvyyz9h	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2019-03-02 08:20:00.489399+01
x784p4phzefmbr66e76n1c75jcqzp50x	M2UyNGJiMTU4MWUzNjgyMGI2NjU1ODAxNzJhMjUzZjU5ODg2YjcwYjp7Il9sYW5ndWFnZSI6ImVuIiwiX2F1dGhfdXNlcl9pZCI6IjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjA0NjU1OGYxYTg4Y2FhZmNlZjBkNTc0YzA0YTA3ODQzYzhjOGExOGUifQ==	2019-03-18 15:58:17.130315+01
y3vhq13h45pr0isoekkd00c0xaytlccg	NzFjN2FjMWI1ZjdlNmQxYjE1ZDgzZjVhMTk5ZGNmMDQ2MTY0YzRmMzp7Il9sYW5ndWFnZSI6ImRlIn0=	2019-03-20 15:38:34.839416+01
esgcjk1z1ie1iyey6mdsialvequsihdx	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-03-20 16:09:22.868187+01
q89xsol0qduqmeavmvwup6u8pqvttm6p	OGVlNGFiOWNjZmMwNDNiZTRlYWRjNTNmMWJmZDZlNDJjNzg2OGY0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1IiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-03-25 13:31:41.042516+01
1ljtyqa8tiq4w0jgm9s87gbmvgjkuamq	NDgzNmU1YmExMDJiN2ZmOWExM2I5MDZjM2YyYjVhODIyM2I3MjBhOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-04-01 17:08:23.060403+02
2ckwwldhnnlreqh6maegvr8sy2eqsj2m	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-04-03 14:42:48.794046+02
9gg2ri0iic0e9h26qmv4zuf8gfx27yry	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-04-08 13:47:05.958036+02
z2449j69b8vobtofhxj13e54826e6hhk	NDgzNmU1YmExMDJiN2ZmOWExM2I5MDZjM2YyYjVhODIyM2I3MjBhOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-04-16 17:31:11.386741+02
62eahv6std7fepl7utwxbxzt4a2f5qgf	NGJiMGYzMTg3ODIzYzU4YTkwNjE2ODFiNTQzZThmMGFlNDgwN2U3Mjp7Il9sYW5ndWFnZSI6ImVuIn0=	2019-04-17 13:34:08.980222+02
p0jtzuxypqwfrfqp9g75spw1mqkixlo1	YWZjZDMwNjk0NGUyMjQ4MGM4ZjNhYmZjYmJjZDliNTYwMzc3OTU0ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjQxNDFjN2Q3NTE3YWRhZDVkYTcwZGQyNmQwYTQ2MTZiN2I4ZDc1In0=	2019-04-17 20:01:43.739465+02
ikr6kxqbwq3hj3ki3om56p842q3mdd3i	NDgzNmU1YmExMDJiN2ZmOWExM2I5MDZjM2YyYjVhODIyM2I3MjBhOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-04-30 17:59:59.173481+02
j867lo3qpa1e4fu1o4or5pvld00w80qx	ZTVjNjNmOTgwZTBhN2JmMTFiMDEyMjMwNDQ2ZGU3ZDk3NjY3MTIwOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIn0=	2019-05-13 16:13:57.726996+02
5g7gf5l9fxgwo6n2m7cdqyxbvygr2uya	YTgzMjRkMGUxMjllMDdjMDcxM2VmNmQ5MWY3M2FhMTU1ODFiZjI4NDp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2RiNWM0NzcxYmRiZTM0Y2Y1MmUyNTJjMDBlNjM5NTFkZDg3ZTRlMyIsIl9sYW5ndWFnZSI6ImVuIn0=	2019-05-14 13:56:47.997863+02
7mi5inr4lqud0afbs9moqftp68xpvseu	MDc1MGQ0Y2FlZGM2NWZhMGRlNDcwNDY3MzA5MDljMGE0YWEwY2UwNjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiOTUyNzEyOWIyOTkyNGRmMjg3ZTE4Yjc3ODJiZDQ3ZDY4MjEwMDY1In0=	2019-05-14 14:33:14.202308+02
ny8iyqffixseuvzm8qagrhdo4enc2vqj	NDgzNmU1YmExMDJiN2ZmOWExM2I5MDZjM2YyYjVhODIyM2I3MjBhOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDY1NThmMWE4OGNhYWZjZWYwZDU3NGMwNGEwNzg0M2M4YzhhMThlIiwiX2xhbmd1YWdlIjoiZW4ifQ==	2019-05-27 10:20:35.534576+02
\.


--
-- Data for Name: maps_file; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_file (id, created_date, modified_date, name, file, info) FROM stdin;
13	2018-10-29 10:07:09.960032+01	2018-10-29 10:07:09.960064+01	DAÖ Kommentar zur 1.Lieferung S. 311-420_gesammelt	file/DA_Kommentar_zur_1.Lieferung_S._311-420_gesammelt.pdf	
14	2018-10-29 10:07:28.597847+01	2018-10-29 10:07:28.59788+01	DAÖ Kommentar zur 1.Lieferung S. 218-310_gesammelt	file/DA_Kommentar_zur_1.Lieferung_S._218-310_gesammelt.pdf	
16	2019-03-25 13:52:56.141502+01	2019-03-25 13:52:56.141532+01	Kommentar zu Karten in Bessarabien	file/Kommentar_zu_Karten_in_Bessarabien.pdf	
17	2019-03-28 10:32:26.84813+01	2019-04-08 12:38:42.721299+02	Verzeichnis der Karten des Sprachatlasses_gesamt	file/Verzeichnis_der_Karten_des_Sprachatlasses_gesamt.pdf	
\.


--
-- Data for Name: maps_file_file_map; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_file_file_map (id, file_id, map_id) FROM stdin;
\.


--
-- Data for Name: maps_file_file_reference; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_file_file_reference (id, file_id, reference_id) FROM stdin;
4	13	41
5	14	41
6	16	48
7	17	49
\.


--
-- Data for Name: maps_file_file_type; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_file_file_type (id, file_id, type_id) FROM stdin;
\.


--
-- Data for Name: maps_institute; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_institute (id, created_date, modified_date, name, info, institute_location_id) FROM stdin;
3	2017-08-30 15:11:15.541217+02	2017-08-30 15:13:54.779844+02	Dr. C. Wolf und Sohn		2
4	2017-08-30 15:57:01.201914+02	2017-08-30 15:57:01.201936+02	Artaria		\N
6	2017-09-04 11:18:47.912033+02	2017-09-04 11:19:06.103949+02	Bundesamt für Eich- und Vermessungswesen	Landesaufnahme in Wien	4
7	2017-09-04 13:35:44.158278+02	2017-09-04 13:35:44.1583+02	Institut für Grenz-und Auslandsstudien e.V.		\N
8	2017-09-04 13:43:07.317179+02	2017-09-04 13:43:07.317202+02	Akademische Druck- und Verlagsanstalt Graz		\N
9	2017-09-05 12:25:40.586081+02	2017-09-05 12:25:40.586103+02	Bundesministerium für Landesverteidigung		\N
11	2017-09-06 12:01:45.833824+02	2017-09-06 12:03:41.347209+02	Institut de Kartographie M. Milochev-Belgraditch		\N
12	2017-09-06 12:24:30.062235+02	2017-09-06 12:24:30.062255+02	Verlag Karl H. Frak, Karlsbad / Leipzig		\N
13	2017-09-06 15:35:13.613344+02	2017-09-06 15:35:13.613365+02	KuK Militär Geografisches Institut		\N
14	2017-09-06 15:36:54.834472+02	2017-09-06 15:36:54.834493+02	Tiroler Heimatbund - Gesellschaft der Freunde Tirols		\N
15	2017-09-07 17:05:15.262302+02	2017-09-07 17:05:15.262325+02	Verlag von Hermann Goldschmiedt GesmbH		4
16	2017-09-07 17:07:18.967119+02	2017-09-07 17:07:18.967141+02	Koppe-Bellmann, Prag-Smichow		\N
17	2017-09-11 15:52:37.573277+02	2017-09-11 15:52:37.5733+02	Kommissionsverlag des K.u.K. Militärgeografischen Instituts		\N
18	2017-09-11 16:03:03.360603+02	2017-09-11 16:03:03.360624+02	Druck des k.u.k. Militärgeographischen Institutes		\N
19	2017-09-12 14:17:08.848748+02	2017-09-12 14:17:08.848782+02	Verlag des Geschichtsvereins für Kärtnen		\N
20	2017-09-12 14:20:32.961097+02	2017-09-12 14:20:32.961119+02	Offsetdruck Chr. Beller K.G.Stuttgart		\N
2	2017-08-17 15:04:25.736653+02	2018-06-20 10:47:33.967198+02	ÖAW		4
21	2018-07-11 14:57:04.395393+02	2018-07-11 14:58:45.729264+02	Giesecke & Devrient, Leipzig u. Berlin		6
22	2018-09-05 14:23:12.545123+02	2018-09-05 14:28:05.818749+02	Geographisches Institut Universität Wien		4
23	2018-09-05 14:27:14.979142+02	2018-09-06 12:18:09.965234+02	Reichsministerium des Innern		6
5	2017-08-30 15:58:07.269149+02	2018-09-06 12:42:23.570886+02	Freytag & Berndt		\N
24	2018-09-12 13:04:03.146774+02	2018-09-12 13:04:03.146802+02	Steiermärkische Landesregierung		\N
\.


--
-- Data for Name: maps_institute_institute_type; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_institute_institute_type (id, institute_id, type_id) FROM stdin;
1	3	13
2	5	13
3	21	13
4	22	86
5	22	87
6	23	161
7	24	161
\.


--
-- Data for Name: maps_map; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_map (id, created_date, modified_date, name, title, info, scale, width, height, date_created, date_created2, date_content, date_content2, map_base_id, map_copy_id, map_issued_id, map_location_id, map_id) FROM stdin;
124	2018-03-19 11:42:36.990462+01	2018-06-12 13:54:09.129568+02	Karten außerhalb der Lieferungen_0017	machen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
125	2018-03-19 12:13:45.699862+01	2018-06-12 14:40:53.823671+02	Karten außerhalb der Lieferungen_0018			2000000	48	42	\N	\N	\N	\N	\N	\N	\N	4	\N
126	2018-03-19 12:18:49.017924+01	2018-06-12 14:41:01.332208+02	Karten außerhalb der Lieferungen_0019	müde		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
33	2017-09-04 13:35:19.700537+02	2017-09-19 17:17:40.895741+02	Das Kärntner Unterland nach der Volkszählung vom Mai 1939		Kopie, Stempel des RIM, 2 Stempel des geographischen Instituts, Visualisierung von Deutschen, Windischen, Slowenen und Kroaten.	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
132	2018-03-19 12:54:15.73012+01	2018-06-12 14:19:20.051707+02	Karten außerhalb der Lieferungen_0025	-h- in zehn		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
134	2018-03-19 13:04:57.098883+01	2018-06-12 14:21:36.251492+02	Karten außerhalb der Lieferungen_0027	-k-/-ch- in Birke		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
131	2018-03-19 12:50:18.768133+01	2018-06-12 14:07:20.465192+02	Karten außerhalb der Lieferungen_0024	-h-in leihen		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
110	2018-02-07 11:29:57.990454+01	2018-06-12 12:53:21.524707+02	Karten außerhalb der Lieferungen_0004	-ir- in Kirche		\N	50	40	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
109	2018-01-23 16:12:07.089467+01	2018-06-12 12:51:01.347384+02	Karten außerhalb der Lieferungen_0003	Egerde, Bedeutung		2000000	50	40	\N	\N	\N	\N	\N	\N	\N	4	\N
111	2018-02-07 11:38:12.912786+01	2018-06-12 12:57:10.211041+02	Karten außerhalb der Lieferungen_0005	Sinngleiche für Heidelbeere		2000000	50	40	\N	\N	\N	\N	\N	\N	\N	4	\N
119	2018-02-07 12:47:32.342593+01	2018-06-12 13:22:05.025143+02	Karten außerhalb der Lieferungen_0013	Lippe	Stempel: Bayer. Akademie der Wissenschaften Wörterbuchkommission	2000000	50	40	\N	\N	\N	\N	\N	\N	2	4	\N
352	2018-05-18 14:29:23.843938+02	2018-05-28 16:28:33.040553+02	Kleine Karten Kranzmayer_0026	Lautformen von "Mittwoch"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
251	2018-04-23 12:40:22.388758+02	2018-05-29 09:31:23.795748+02	V.Beiblaetter Fuer Den Atlastext_0003	Wanderungen deutscher Hausbaunamen		\N	17	20	\N	\N	\N	\N	\N	\N	\N	4	\N
112	2018-02-07 11:48:13.188195+01	2018-06-12 12:58:23.569825+02	Karten außerhalb der Lieferungen_0006			\N	50	40	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
139	2018-03-21 14:29:06.662527+01	2018-05-28 12:46:40.078186+02	I.Entwürfe ausserhalb der Lieferungen_0002	wäschen		\N	61	52	\N	\N	\N	\N	\N	\N	\N	4	\N
148	2018-03-21 16:09:41.272492+01	2018-05-28 12:48:30.027584+02	I.Entwürfe ausserhalb der Lieferungen_0011	Nachmittagsjause		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
114	2018-02-07 11:58:51.143394+01	2018-06-12 13:11:19.340734+02	Karten außerhalb der Lieferungen_0008	stechen		\N	47	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
115	2018-02-07 12:04:11.249644+01	2018-06-12 13:13:00.087958+02	Karten außerhalb der Lieferungen_0009	zehn		2000000	50	40	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
116	2018-02-07 12:35:34.062015+01	2018-06-12 13:15:14.050846+02	Karten außerhalb der Lieferungen_0010	mhd. e-(ê-,e̋-,a̋-) in "Ähre"		\N	50	40	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
117	2018-02-07 12:41:30.94296+01	2018-06-12 13:18:38.220349+02	Karten außerhalb der Lieferungen_0011	Gletscher		2000000	40	40	\N	\N	\N	\N	\N	\N	\N	4	\N
121	2018-02-07 13:04:14.044628+01	2018-06-12 13:49:22.493956+02	Karten außerhalb der Lieferungen_0015	mhd. -a- in Hasen, mz., und in Gasse		\N	50	40	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
118	2018-02-07 12:43:54.522722+01	2018-06-12 13:51:31.174081+02	Karten außerhalb der Lieferungen_0012	Gletscher Entwurf		2000000	50	40	\N	\N	\N	\N	\N	\N	\N	4	\N
120	2018-02-07 12:58:37.207513+01	2018-06-12 13:51:45.752184+02	Karten außerhalb der Lieferungen_0014	mhd. -â- in 'blasen u. mhd. -a- in Hasen		\N	50	40	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	14
128	2018-03-19 12:35:15.251124+01	2018-06-12 14:00:46.673232+02	Karten außerhalb der Lieferungen_0021	Kalk		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
129	2018-03-19 12:42:06.539393+01	2018-06-12 14:04:21.030899+02	Karten außerhalb der Lieferungen_0022	-h-in Ähre		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
133	2018-03-19 12:58:35.441607+01	2018-06-12 14:20:16.886172+02	Karten außerhalb der Lieferungen_0026	mhd. -uo und -ch- im Worte Buchenholz		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
138	2018-03-21 14:16:24.475169+01	2018-05-28 12:46:29.093276+02	I.Entwürfe ausserhalb der Lieferungen_0001	wäschen		\N	61	52	\N	\N	\N	\N	\N	\N	\N	4	\N
135	2018-03-19 13:11:06.183714+01	2018-06-12 14:23:05.904215+02	Karten außerhalb der Lieferungen_0028	-k-/-ch- in Birke		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
145	2018-03-21 16:04:25.785093+01	2018-05-28 12:47:39.340863+02	I.Entwürfe ausserhalb der Lieferungen_0008	bair. Mundartaufteilung TK		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
151	2018-03-21 16:14:35.439518+01	2018-05-28 12:42:37.39456+02	I.Entwürfe ausserhalb der Lieferungen_0014	?		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
152	2018-03-21 16:15:48.604297+01	2018-05-28 12:43:02.563776+02	I.Entwürfe ausserhalb der Lieferungen_0015	Einteilung der Mundarten		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
153	2018-03-21 16:17:59.937547+01	2018-05-28 12:43:34.71914+02	I.Entwürfe ausserhalb der Lieferungen_0016	Synoptische Karte der schwäbisch-bay. Lautgrenze		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
154	2018-03-21 16:20:50.994374+01	2018-05-28 12:44:35.617259+02	I.Entwürfe ausserhalb der Lieferungen_0017	Synoptische Karte von Nordbayern		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
155	2018-03-21 16:22:37.621071+01	2018-05-28 12:44:52.802956+02	I.Entwürfe ausserhalb der Lieferungen_0018	wo reimt machen mir sprachen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	\N	\N
156	2018-03-21 16:24:12.340477+01	2018-05-28 12:45:29.578281+02	I.Entwürfe ausserhalb der Lieferungen_0019	Obste=Heubanse		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
140	2018-03-21 14:38:54.221346+01	2018-05-28 12:46:50.646634+02	I.Entwürfe ausserhalb der Lieferungen_0003	Grundkarte, Endung im Worte Gote, Tote		2800000	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
141	2018-03-21 14:42:38.705316+01	2018-05-28 12:47:01.756418+02	I.Entwürfe ausserhalb der Lieferungen_0004	untitled		\N	41	31	\N	\N	\N	\N	\N	\N	\N	4	\N
142	2018-03-21 14:45:05.06663+01	2018-05-28 12:47:10.692999+02	I.Entwürfe ausserhalb der Lieferungen_0005	-en in reuen		\N	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
144	2018-03-21 14:56:40.07138+01	2018-05-28 12:47:32.159406+02	I.Entwürfe ausserhalb der Lieferungen_0007	Hausflur		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	\N	\N
147	2018-03-21 16:08:09.952448+01	2018-05-28 12:47:56.291631+02	I.Entwürfe ausserhalb der Lieferungen_0010	treug=trocken		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
143	2018-03-21 14:53:02.441867+01	2018-05-28 12:48:07.808606+02	I.Entwürfe ausserhalb der Lieferungen_0006	Herkunft der Zarzer		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	\N	\N
149	2018-03-21 16:11:02.692161+01	2018-05-28 12:48:39.959566+02	I.Entwürfe ausserhalb der Lieferungen_0012	Vormund		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
137	2018-03-19 13:23:50.809614+01	2018-06-12 14:32:06.569183+02	Karten außerhalb der Lieferungen_0030	en- in tausend, -en in siebzig		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
136	2018-03-19 13:17:22.12248+01	2018-06-12 14:41:22.925106+02	Karten außerhalb der Lieferungen_0029	-rch- in Kirche		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
113	2018-02-07 11:56:13.19591+01	2018-06-13 14:45:10.755418+02	Karten außerhalb der Lieferungen_0007	mhd. -ou- in (Pfeife) rauchen		\N	50	40	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
160	2018-03-22 12:53:15.447672+01	2018-05-28 13:59:49.654231+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0002	Neu?=Warum?		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
265	2018-05-04 15:06:35.804484+02	2018-05-29 09:37:52.731553+02	V.Beiblaetter Fuer Den Atlastext_0017	ei in breiter		\N	42	43	\N	\N	\N	\N	\N	\N	\N	4	\N
201	2018-03-26 16:58:11.900356+02	2018-06-13 13:03:58.56042+02	IX.Oetztaler Arbeit_0001	Ötztal Mahtähler (?)		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
202	2018-03-26 16:59:17.801635+02	2018-06-13 13:04:56.096014+02	IX.Oetztaler Arbeit_0002	Hochtäler		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
203	2018-03-26 17:06:18.593306+02	2018-06-13 13:05:30.331338+02	IX.Oetztaler Arbeit_0003	Ötztal westtirol (?)		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
204	2018-03-26 17:08:52.294122+02	2018-06-13 13:05:56.728224+02	IX.Oetztaler Arbeit_0004	Ötztal Tirol		47	39	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
205	2018-03-26 17:15:32.60077+02	2018-06-13 13:06:22.537976+02	IX.Oetztaler Arbeit_0005	Ötztal Kärnten		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
206	2018-03-26 17:20:30.000381+02	2018-06-13 13:07:21.87139+02	IX.Oetztaler Arbeit_0006	Ötztal Salzburg		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
207	2018-03-26 17:21:38.127351+02	2018-06-13 13:08:15.138116+02	IX.Oetztaler Arbeit_0007	Ötztal südbair.		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
166	2018-03-22 14:05:07.023246+01	2018-05-28 14:04:03.180562+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0008	Fürtuch, Pipe, Tähe(l)		2000000	42	42	\N	\N	\N	\N	\N	\N	\N	4	\N
208	2018-03-26 17:23:21.333914+02	2018-06-13 13:08:57.549558+02	IX.Oetztaler Arbeit_0008	Ötztal südbair.		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
209	2018-03-26 17:24:19.85671+02	2018-06-13 14:00:50.373768+02	IX.Oetztaler Arbeit_0009	Ötztal schwäb.		\N	39	47	\N	\N	\N	\N	\N	\N	\N	4	\N
197	2018-03-22 16:27:26.212281+01	2018-05-28 14:49:04.66804+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0040	Anze=Gabeldeichsel		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
159	2018-03-22 12:19:01.816913+01	2018-05-28 13:59:35.576819+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0001	Zand Entwurf		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
161	2018-03-22 13:40:09.934858+01	2018-05-28 14:00:04.243971+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0003			\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	â in zâh
162	2018-03-22 13:42:45.689111+01	2018-05-28 14:00:22.375549+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0004	Ziegenglöcklein=Sterbeglöcklein		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
163	2018-03-22 13:44:39.013805+01	2018-05-28 14:00:39.468213+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0005	Sterbeglocke		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
164	2018-03-22 13:51:09.091023+01	2018-05-28 14:02:50.060785+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0006	Zügenglöcklein		2000000	41	43	\N	\N	\N	\N	\N	\N	\N	4	\N
165	2018-03-22 13:54:44.729857+01	2018-05-28 14:03:21.915661+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0007	Faßhahn		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
168	2018-03-22 14:19:48.13277+01	2018-05-28 14:04:40.409446+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0010	'hinein', Lautungen		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
169	2018-03-22 14:22:28.587324+01	2018-05-28 14:18:56.388568+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0011	einhin, stät, weu		2000000	41	41	\N	\N	\N	\N	\N	\N	\N	4	\N
170	2018-03-22 14:26:42.990804+01	2018-05-28 14:19:15.892769+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0013	Lache/Lacke		\N	\N	\N	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
171	2018-03-22 14:28:55.235799+01	2018-05-28 14:30:31.503804+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0014	himmletzen 'wetterleuchten'		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
174	2018-03-22 14:45:48.098361+01	2018-05-28 14:31:35.947016+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0017	gedörrte Brine		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
176	2018-03-22 15:11:29.447302+01	2018-05-28 14:32:20.700459+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0019	es=ihr, enk=euch		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
177	2018-03-22 15:15:23.120008+01	2018-05-28 14:32:53.093583+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0020	ei in Leiter		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
178	2018-03-22 15:16:40.733926+01	2018-05-28 14:33:13.936253+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0021	ei in Leiter		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
179	2018-03-22 15:19:08.440184+01	2018-05-28 14:36:44.795181+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0022	breit, Leiter, Beunde		2000000	40	40	\N	\N	\N	\N	\N	\N	\N	4	\N
180	2018-03-22 15:33:44.807296+01	2018-05-28 14:37:03.988991+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0023	ei in breit		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
181	2018-03-22 15:35:37.301246+01	2018-05-28 14:37:30.00104+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0024	ei in breit		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
182	2018-03-22 15:37:41.233498+01	2018-05-28 14:37:44.554188+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0025	ei in breit		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
183	2018-03-22 15:39:16.922502+01	2018-05-28 14:37:59.511125+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0026	Flachs		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
184	2018-03-22 15:44:41.853384+01	2018-05-28 14:40:37.710783+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0027	-b-/-f- in Knoblauch		\N	47	43	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
185	2018-03-22 15:53:00.997905+01	2018-05-28 14:41:02.968732+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0028	Knoblauch, Entwurf		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
186	2018-03-22 15:54:39.344661+01	2018-05-28 14:42:00.038889+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0029	Prein, Mar, Knoflauch		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
188	2018-03-22 16:00:52.819186+01	2018-05-28 14:44:23.762972+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0031	Rädergestell beim Pflug		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
189	2018-03-22 16:03:31.187127+01	2018-05-28 14:46:29.280154+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0032	Änze, Gereder, Sage		\N	40	35	\N	\N	\N	\N	\N	\N	\N	4	\N
190	2018-03-22 16:11:13.34556+01	2018-05-28 14:46:43.139998+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0033	bair. Sage "Sege"=Säge		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
191	2018-03-22 16:15:35.829709+01	2018-05-28 14:46:59.145715+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0034	bair. Sage "Säge"		\N	38	42	\N	\N	\N	\N	\N	\N	\N	4	\N
193	2018-03-22 16:19:38.121254+01	2018-05-28 14:47:35.243077+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0036	Teigwalze		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
194	2018-03-22 16:22:41.760227+01	2018-05-28 14:48:08.390673+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0037	Walger, Klôtze, Kuchel		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
195	2018-03-22 16:23:48.630327+01	2018-05-28 14:48:25.30144+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0038	Sinngleiche für Hirse		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
196	2018-03-22 16:25:14.980499+01	2018-05-28 14:48:43.327852+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0039	Änze=Gabeldeichsel		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
198	2018-03-22 16:28:48.376319+01	2018-05-28 14:49:28.161243+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0041	[Titelblatt]		\N	50	45	\N	\N	\N	\N	\N	\N	\N	\N	\N
175	2018-03-22 15:08:53.045365+01	2018-05-28 15:15:11.879886+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0018	untitled		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
187	2018-03-22 15:59:12.471276+01	2018-05-28 15:15:32.444164+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0030	untitled		2000000	40	40	\N	\N	\N	\N	\N	\N	\N	4	\N
158	2018-03-22 12:15:16.861173+01	2018-05-28 13:45:12.006665+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0000	bair. Zand		\N	47	43	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
234	2018-04-19 13:19:26.939969+02	2018-05-28 16:03:51.984511+02	IX.Vierte Lieferung (In Vorbereitung)_0007	nordbair. feix		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
235	2018-04-19 13:26:33.685591+02	2018-05-28 16:04:00.812286+02	IX.Vierte Lieferung (In Vorbereitung)_0008	reuen, Zwetschke, hüten		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
236	2018-04-19 13:28:15.45161+02	2018-05-28 16:04:11.190369+02	IX.Vierte Lieferung (In Vorbereitung)_0009	Himmel(s)wagen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
237	2018-04-19 13:29:35.654846+02	2018-05-28 16:04:21.814303+02	IX.Vierte Lieferung (In Vorbereitung)_0010	en		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
238	2018-04-19 13:32:31.132311+02	2018-05-28 16:05:15.394123+02	IX.Vierte Lieferung (In Vorbereitung)_0011	-ch-k-g-		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
239	2018-04-19 13:35:03.717041+02	2018-05-28 16:05:25.759019+02	IX.Vierte Lieferung (In Vorbereitung)_0012	Schaf		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
240	2018-04-19 13:37:25.781615+02	2018-05-28 16:05:35.019459+02	IX.Vierte Lieferung (In Vorbereitung)_0013	Schwund		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
230	2018-04-19 13:01:39.832991+02	2018-05-28 16:02:33.737363+02	IX.Vierte Lieferung (In Vorbereitung)_0003	j-		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
241	2018-04-19 13:38:57.008464+02	2018-05-28 16:05:44.502131+02	IX.Vierte Lieferung (In Vorbereitung)_0014	Wucherselbstlaute		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
242	2018-04-19 13:40:57.977863+02	2018-05-28 16:05:51.841044+02	IX.Vierte Lieferung (In Vorbereitung)_0015	Wucherselbstlaute		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
243	2018-04-19 13:42:32.565255+02	2018-05-28 16:07:53.435702+02	IX.Vierte Lieferung (In Vorbereitung)_0016	Gâhheil		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
221	2018-04-04 13:51:40.92493+02	2018-06-12 14:35:16.383272+02	Karten außerhalb der Lieferungen_0032	-ch-/-k- in rauchen/rauken		\N	47	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
222	2018-04-04 13:55:38.832954+02	2018-06-12 14:36:20.953137+02	Karten außerhalb der Lieferungen_0033	-ch-/-k- in rauchen		\N	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
223	2018-04-04 13:56:13.217434+02	2018-06-12 14:37:39.981927+02	Karten außerhalb der Lieferungen_0034	[Deckblatt]		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
210	2018-03-26 17:31:46.407191+02	2018-06-13 14:02:08.302876+02	IX.Oetztaler Arbeit_0010	Ötztal schwäb.		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
211	2018-04-04 12:12:04.179016+02	2018-06-13 14:02:59.621366+02	IX.Oetztaler Arbeit_0011	Ötztal		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
212	2018-04-04 12:15:06.636236+02	2018-06-13 14:03:37.153038+02	IX.Oetztaler Arbeit_0012	Ötztal schwäb-al.		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
213	2018-04-04 12:18:51.521019+02	2018-06-13 14:04:02.218538+02	IX.Oetztaler Arbeit_0013	Ötztal al.		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
214	2018-04-04 12:19:55.513444+02	2018-06-13 14:04:58.344144+02	IX.Oetztaler Arbeit_0014	Ötztal		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
215	2018-04-04 12:21:47.28469+02	2018-06-13 14:05:28.707078+02	IX.Oetztaler Arbeit_0015	Ötztal bair.		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
216	2018-04-04 12:23:07.633276+02	2018-06-13 14:06:09.268415+02	IX.Oetztaler Arbeit_0016	Ötztal		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
217	2018-04-04 12:24:25.952874+02	2018-06-13 14:06:29.374863+02	IX.Oetztaler Arbeit_0017	Ötztal bair		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
218	2018-04-04 12:26:26.581439+02	2018-06-13 14:08:21.37464+02	IX.Oetztaler Arbeit_0018	ei/ô im Südbair.		\N	47	44	\N	\N	\N	\N	\N	\N	\N	4	\N
219	2018-04-04 12:27:31.67257+02	2018-06-13 14:08:51.970775+02	IX.Oetztaler Arbeit_0019	[Titelblatt]		\N	50	45	\N	\N	\N	\N	\N	\N	\N	4	\N
244	2018-04-19 13:43:58.800897+02	2018-05-28 16:08:05.396711+02	IX.Vierte Lieferung (In Vorbereitung)_0017	Dris(chü)bel		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
250	2018-04-23 12:38:17.59491+02	2018-05-29 09:31:09.939814+02	V.Beiblaetter Fuer Den Atlastext_0002	?		\N	21	11	\N	\N	\N	\N	\N	\N	\N	4	\N
157	2018-03-21 16:26:10.83423+01	2018-05-28 12:46:04.379584+02	I.Entwürfe ausserhalb der Lieferungen_0020	[Titelblatt]		\N	50	45	\N	\N	\N	\N	\N	\N	\N	4	\N
172	2018-03-22 14:36:13.312416+01	2018-05-28 14:30:47.344196+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0015	Wildes Gejaide und Nachtgejaide		\N	35	41	\N	\N	\N	\N	\N	\N	\N	4	\N
227	2018-04-19 12:48:44.607192+02	2018-05-28 16:00:14.716392+02	IX.Vierte Lieferung (In Vorbereitung)_0000	Kröte, Hälter, Epfel		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
228	2018-04-19 12:54:44.966075+02	2018-05-28 16:01:25.819437+02	IX.Vierte Lieferung (In Vorbereitung)_0001	Liege, Kümmerung, fragen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
229	2018-04-19 12:57:23.504999+02	2018-05-28 16:01:37.300013+02	IX.Vierte Lieferung (In Vorbereitung)_0002	g, el, -nst		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
231	2018-04-19 13:04:30.434233+02	2018-05-28 16:02:46.004298+02	IX.Vierte Lieferung (In Vorbereitung)_0004	geifern		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
233	2018-04-19 13:15:59.122598+02	2018-05-28 16:03:42.995045+02	IX.Vierte Lieferung (In Vorbereitung)_0006	nie/r)gend(s)		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
245	2018-04-19 13:45:56.750537+02	2018-05-28 16:08:16.141445+02	IX.Vierte Lieferung (In Vorbereitung)_0018	misten, düngen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
246	2018-04-19 13:47:20.069149+02	2018-05-28 16:08:52.665931+02	IX.Vierte Lieferung (In Vorbereitung)_0019	Zaugge		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
247	2018-04-19 13:48:14.585528+02	2018-05-28 16:09:16.881285+02	IX.Vierte Lieferung (In Vorbereitung)_0020	[Titelblatt]		\N	49	45	\N	\N	\N	\N	\N	\N	\N	\N	\N
248	2018-04-23 12:33:44.91435+02	2018-05-29 09:30:44.478495+02	V.Beiblaetter Fuer Den Atlastext_0000	deutsch Däch (?)		\N	27	39	\N	\N	\N	\N	\N	\N	\N	4	\N
249	2018-04-23 12:36:32.875348+02	2018-05-29 09:30:55.092252+02	V.Beiblaetter Fuer Den Atlastext_0001	?		\N	11	8	\N	\N	\N	\N	\N	\N	\N	4	\N
252	2018-04-23 12:42:06.771959+02	2018-05-29 09:31:35.131892+02	V.Beiblaetter Fuer Den Atlastext_0004	(a)aee		\N	50	30	\N	\N	\N	\N	\N	\N	\N	4	\N
253	2018-04-23 12:43:35.224462+02	2018-05-29 09:31:47.929341+02	V.Beiblaetter Fuer Den Atlastext_0005	?		\N	51	21	\N	\N	\N	\N	\N	\N	\N	4	\N
254	2018-04-23 14:03:42.532638+02	2018-05-29 09:35:04.618008+02	V.Beiblaetter Fuer Den Atlastext_0006	?		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
255	2018-04-23 14:05:24.415131+02	2018-05-29 09:35:15.447973+02	V.Beiblaetter Fuer Den Atlastext_0007	bair. Kuchel "Küche"		\N	46	42	\N	\N	\N	\N	\N	\N	\N	4	\N
256	2018-04-23 14:07:00.451428+02	2018-05-29 09:35:26.560677+02	V.Beiblaetter Fuer Den Atlastext_0008	wilde Jagd		\N	46	39	\N	\N	\N	\N	\N	\N	\N	4	\N
257	2018-04-23 14:09:36.423505+02	2018-05-29 09:35:46.132955+02	V.Beiblaetter Fuer Den Atlastext_0009	-nk-		\N	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
258	2018-04-23 14:11:23.026177+02	2018-05-29 09:35:56.790956+02	V.Beiblaetter Fuer Den Atlastext_0010	Beiblatt		\N	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
260	2018-05-04 14:35:53.711078+02	2018-05-29 09:36:42.513171+02	V.Beiblaetter Fuer Den Atlastext_0012	ei in kleiner		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
261	2018-05-04 14:43:37.967394+02	2018-05-29 09:36:51.617173+02	V.Beiblaetter Fuer Den Atlastext_0013	ei in kleiner		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
262	2018-05-04 14:48:54.985414+02	2018-05-29 09:37:06.244087+02	V.Beiblaetter Fuer Den Atlastext_0014	ei in Stein		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
263	2018-05-04 14:52:44.962785+02	2018-05-29 09:37:20.131393+02	V.Beiblaetter Fuer Den Atlastext_0015	ei in Stein		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
264	2018-05-04 15:01:55.378008+02	2018-05-29 09:37:43.478218+02	V.Beiblaetter Fuer Den Atlastext_0016	Beiblatt		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
266	2018-05-04 15:10:52.306499+02	2018-05-29 09:38:02.530627+02	V.Beiblaetter Fuer Den Atlastext_0018	ein in breiter (Komparativ)		2000000	48	42	\N	\N	\N	\N	\N	\N	\N	4	\N
267	2018-05-04 15:25:28.67073+02	2018-05-29 09:38:12.506791+02	V.Beiblaetter Fuer Den Atlastext_0019	ei und n in kleiner		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
268	2018-05-04 15:26:45.917745+02	2018-05-29 09:38:30.848802+02	V.Beiblaetter Fuer Den Atlastext_0020	ei in Steine (plur.)		\N	47	42	\N	\N	\N	\N	\N	\N	\N	4	\N
512	2018-06-05 14:08:37.30597+02	2018-06-05 14:08:37.305997+02	General- und Spezialkarten Mappe I_0008	Grundkarte/Gegenden		2000000	59	33	1970-01-01	1970-12-31	\N	\N	\N	\N	4	4	\N
514	2018-06-05 14:29:23.938435+02	2018-06-05 14:29:23.938471+02	General- und Spezialkarten Mappe I_0010	machen		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
273	2018-05-07 11:55:56.768898+02	2018-05-29 11:39:16.273912+02	VIII.Dritte Lieferung (In Vorbereitung)_0001	-h-/-g- in sehen/segen		\N	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
293	2018-05-07 12:37:31.012558+02	2018-05-29 11:44:25.907718+02	VIII.Dritte Lieferung (In Vorbereitung)_0021	[Deckblatt]		\N	49	45	\N	\N	\N	\N	\N	\N	\N	4	\N
295	2018-05-07 13:52:16.159894+02	2018-05-29 11:46:08.864064+02	VII.II.Lieferung (In Vorbereitung)_0002	Ertag, Pfinztag		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
269	2018-05-04 15:28:08.143947+02	2018-05-29 09:38:42.2071+02	V.Beiblaetter Fuer Den Atlastext_0021	ei in Steine (plur.)		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
270	2018-05-04 15:30:19.012159+02	2018-05-29 09:38:52.64033+02	V.Beiblaetter Fuer Den Atlastext_0022	ei in kleiner (Komparativ)		\N	47	42	\N	\N	\N	\N	\N	\N	\N	4	\N
271	2018-05-04 15:31:02.451902+02	2018-05-29 09:39:07.51245+02	V.Beiblaetter Fuer Den Atlastext_0023	[Titelblatt]		\N	50	45	\N	\N	\N	\N	\N	\N	\N	4	\N
272	2018-05-07 11:53:46.044718+02	2018-05-29 11:39:05.863114+02	VIII.Dritte Lieferung (In Vorbereitung)_0000	Muhme		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
274	2018-05-07 11:59:37.294471+02	2018-05-29 11:39:26.483391+02	VIII.Dritte Lieferung (In Vorbereitung)_0002	-h-/-g- in 'sehen'		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
275	2018-05-07 12:03:20.406687+02	2018-05-29 11:39:40.928033+02	VIII.Dritte Lieferung (In Vorbereitung)_0003	?		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
277	2018-05-07 12:06:51.84062+02	2018-05-29 11:40:03.179862+02	VIII.Dritte Lieferung (In Vorbereitung)_0005	B - m in Boden		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
278	2018-05-07 12:09:12.186524+02	2018-05-29 11:40:38.575773+02	VIII.Dritte Lieferung (In Vorbereitung)_0006	sein, gewungen, ch		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
279	2018-05-07 12:10:56.213224+02	2018-05-29 11:40:49.750513+02	VIII.Dritte Lieferung (In Vorbereitung)_0007	Hent, Waier, Gückebergen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
280	2018-05-07 12:12:44.42338+02	2018-05-29 11:40:59.662119+02	VIII.Dritte Lieferung (In Vorbereitung)_0008	Staunze, Geisthüter, (ge)funnen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
281	2018-05-07 12:14:35.958954+02	2018-05-29 11:41:11.40881+02	VIII.Dritte Lieferung (In Vorbereitung)_0009	Metzger		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
282	2018-05-07 12:17:37.591628+02	2018-05-29 11:41:23.741214+02	VIII.Dritte Lieferung (In Vorbereitung)_0010	gerecht		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
283	2018-05-07 12:19:22.683684+02	2018-05-29 11:42:15.28047+02	VIII.Dritte Lieferung (In Vorbereitung)_0011	sait		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
284	2018-05-07 12:21:25.301213+02	2018-05-29 11:42:29.634711+02	VIII.Dritte Lieferung (In Vorbereitung)_0012	auswärts		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
285	2018-05-07 12:24:55.359826+02	2018-05-29 11:42:39.099969+02	VIII.Dritte Lieferung (In Vorbereitung)_0013	-r- Schwund vor n		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
286	2018-05-07 12:26:54.982867+02	2018-05-29 11:42:48.412982+02	VIII.Dritte Lieferung (In Vorbereitung)_0014	Kombinierte Karte		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
287	2018-05-07 12:28:49.764341+02	2018-05-29 11:42:58.102149+02	VIII.Dritte Lieferung (In Vorbereitung)_0015	ich sehe		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
288	2018-05-07 12:30:45.923829+02	2018-05-29 11:43:22.266842+02	VIII.Dritte Lieferung (In Vorbereitung)_0016	mhd. ich sihe		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
289	2018-05-07 12:32:11.056482+02	2018-05-29 11:43:32.16306+02	VIII.Dritte Lieferung (In Vorbereitung)_0017	ol in Holz		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
291	2018-05-07 12:35:05.343451+02	2018-05-29 11:43:52.10208+02	VIII.Dritte Lieferung (In Vorbereitung)_0019	ê		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
292	2018-05-07 12:36:23.378993+02	2018-05-29 11:44:12.789211+02	VIII.Dritte Lieferung (In Vorbereitung)_0020	o in Tochter		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
294	2018-05-07 13:43:18.052888+02	2018-05-29 11:45:57.049119+02	VII.II.Lieferung (In Vorbereitung)_0001	Ertag, Pfinztag		\N	45	43	\N	\N	\N	\N	\N	\N	\N	4	\N
296	2018-05-07 14:05:44.779567+02	2018-05-29 11:46:21.490443+02	VII.II.Lieferung (In Vorbereitung)_0003	Doppelreibelaut nach Vokallänge niemer nimmer		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
297	2018-05-07 14:09:33.762085+02	2018-05-29 11:46:31.459872+02	VII.II.Lieferung (In Vorbereitung)_0004	Wuelscher Maulwurf		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
298	2018-05-07 14:12:23.717418+02	2018-05-29 11:46:41.854561+02	VII.II.Lieferung (In Vorbereitung)_0005	Troie, Schelm, Tribel		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
299	2018-05-07 14:14:45.531811+02	2018-05-29 11:46:59.954339+02	VII.II.Lieferung (In Vorbereitung)_0006	-br in 'Donner', Riester, Herbst		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
300	2018-05-07 14:17:51.100944+02	2018-05-29 11:47:10.23809+02	VII.II.Lieferung (In Vorbereitung)_0007	au in versaumen, im/ihm, Streb(e)		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
302	2018-05-07 14:30:36.621567+02	2018-05-29 11:47:28.558337+02	VII.II.Lieferung (In Vorbereitung)_0009	locken und Kindsen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
303	2018-05-07 14:35:31.277198+02	2018-05-29 11:47:37.845176+02	VII.II.Lieferung (In Vorbereitung)_0010	Härmlein, Kelper, flôß		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
304	2018-05-07 14:38:02.761511+02	2018-05-29 11:47:57.803892+02	VII.II.Lieferung (In Vorbereitung)_0011	Habergrieß, Gränte, Forke		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
306	2018-05-07 14:48:19.957211+02	2018-05-29 11:48:18.456331+02	VII.II.Lieferung (In Vorbereitung)_0013	schilhen, kin verschiedenen Wärtern, o in 'not'		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
307	2018-05-07 14:49:52.55913+02	2018-05-29 11:48:28.269367+02	VII.II.Lieferung (In Vorbereitung)_0014	Arl, Ärling, -h- in Forhe		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
308	2018-05-07 14:51:26.84671+02	2018-05-29 11:48:37.816566+02	VII.II.Lieferung (In Vorbereitung)_0015	Selbstlautkürze in mhd. Einsilbern		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
309	2018-05-07 14:53:50.159605+02	2018-05-29 11:49:16.200785+02	VII.II.Lieferung (In Vorbereitung)_0016	mhd. t-, -t- in 'Kater', 'rote', 'Tag', b in 'Berg', -ck- in 'Buchel'		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
310	2018-05-15 11:37:14.670275+02	2018-05-29 11:49:24.504624+02	VII.II.Lieferung (In Vorbereitung)_0017	gb		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
311	2018-05-15 12:25:19.04577+02	2018-05-29 11:49:33.97749+02	VII.II.Lieferung (In Vorbereitung)_0018	kxr-, khr in gerauft		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
312	2018-05-15 12:27:21.209647+02	2018-05-29 11:49:42.301503+02	VII.II.Lieferung (In Vorbereitung)_0019	e in es, iu in iuch usw		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
313	2018-05-15 12:30:19.084488+02	2018-05-29 11:49:49.772926+02	VII.II.Lieferung (In Vorbereitung)_0020	i, r, ch in Kirche		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
314	2018-05-15 12:34:57.307605+02	2018-05-29 11:50:09.068402+02	VII.II.Lieferung (In Vorbereitung)_0021	e in sehen		\N	47	40	\N	\N	\N	\N	\N	\N	\N	4	\N
315	2018-05-15 13:01:07.726605+02	2018-05-29 11:50:21.555671+02	VII.II.Lieferung (In Vorbereitung)_0022	Deichsel		\N	47	43	1940-01-01	1940-12-31	\N	\N	\N	\N	\N	4	\N
316	2018-05-15 13:03:46.56035+02	2018-05-29 11:50:27.946704+02	VII.II.Lieferung (In Vorbereitung)_0023	-chs- in Leuchse		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
317	2018-05-15 14:02:47.276576+02	2018-05-29 11:50:36.427113+02	VII.II.Lieferung (In Vorbereitung)_0024	mhd -â- in blasen		2000000	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
318	2018-05-15 14:06:38.170795+02	2018-05-29 11:50:44.073076+02	VII.II.Lieferung (In Vorbereitung)_0025	O in Ofen		2000000	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
319	2018-05-15 14:10:16.747803+02	2018-05-29 11:51:03.551935+02	VII.II.Lieferung (In Vorbereitung)_0026	mhd. .uo- in Hut, Blut		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
320	2018-05-15 14:13:28.433615+02	2018-05-29 11:51:11.202647+02	VII.II.Lieferung (In Vorbereitung)_0027	Mittelzungenselbstlaute für mhd. uo, ô und o auslautende -e		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
321	2018-05-15 14:16:46.957249+02	2018-05-29 11:51:18.399147+02	VII.II.Lieferung (In Vorbereitung)_0028	Dachs/Dächse abgehackte Nadelzweige		2000000	48	43	1940-01-01	1940-12-31	\N	\N	\N	\N	\N	4	\N
330	2018-05-16 14:37:51.722668+02	2018-05-28 16:16:56.245536+02	Kleine Karten Kranzmayer_0004	"-tag" im Worte "Montag"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
337	2018-05-16 15:39:59.679993+02	2018-05-28 16:18:58.765261+02	Kleine Karten Kranzmayer_0011	Einzelne Dialekträume in Österreich S.3		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
336	2018-05-16 15:38:47.829088+02	2018-05-28 16:19:14.396222+02	Kleine Karten Kranzmayer_0010	Einzelne Dialekträume in Österreich S.2		\N	21	30	\N	\N	\N	\N	\N	\N	\N	4	\N
328	2018-05-16 14:33:34.295192+02	2018-05-28 16:16:43.501042+02	Kleine Karten Kranzmayer_0002	Mhd. â, ^^a im Worte "Montag"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
366	2018-05-18 17:41:45.955056+02	2018-05-28 15:08:13.941961+02	IV.Gedruckte Karten der Lieferungen_0001	Ertag		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
329	2018-05-16 14:35:37.320666+02	2018-05-28 16:16:49.759872+02	Kleine Karten Kranzmayer_0003	Ausdrücke für "Träne"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
331	2018-05-16 14:41:41.78894+02	2018-05-28 16:17:02.729074+02	Kleine Karten Kranzmayer_0005	Merkmale der Landesmundarten: Steiermark und Burgenland		\N	27	21	\N	\N	\N	\N	\N	\N	\N	4	\N
332	2018-05-16 14:43:43.465088+02	2018-05-28 16:17:30.885191+02	Kleine Karten Kranzmayer_0006	Merkmale der Landesmundarten: Oberösterreich, Kärnten, Salzburg		\N	27	21	\N	\N	\N	\N	\N	\N	\N	4	\N
369	2018-05-22 09:52:42.411497+02	2018-05-28 15:08:37.699584+02	IV.Gedruckte Karten der Lieferungen_0004	er in ?		2000000	38	42	\N	\N	\N	\N	\N	\N	\N	4	\N
333	2018-05-16 14:45:26.629396+02	2018-05-28 16:17:38.402976+02	Kleine Karten Kranzmayer_0007	Sprachaltertümer im alpinen Raum		\N	27	21	\N	\N	\N	\N	\N	\N	\N	4	\N
334	2018-05-16 14:47:38.77853+02	2018-05-28 16:17:44.957066+02	Kleine Karten Kranzmayer_0008	Merkmale der Landesmundarten: Vorarlberg, Tirol und Niederösterreich		\N	27	21	\N	\N	\N	\N	\N	\N	\N	4	\N
335	2018-05-16 14:50:13.411306+02	2018-05-28 16:17:50.81918+02	Kleine Karten Kranzmayer_0009	Einzelne Dialekträume in Österreich		\N	21	30	\N	\N	\N	\N	\N	\N	\N	4	\N
338	2018-05-16 15:42:35.141334+02	2018-05-28 16:19:50.244709+02	Kleine Karten Kranzmayer_0012	Ausbildung von Landesmundarten: Kärnten, Salzburg, Burgenland		\N	21	19	\N	\N	\N	\N	\N	\N	\N	4	\N
339	2018-05-16 15:44:12.612873+02	2018-05-28 16:21:44.414069+02	Kleine Karten Kranzmayer_0013	Karte 28		\N	7	12	\N	\N	\N	\N	\N	\N	\N	4	\N
341	2018-05-16 15:50:22.620164+02	2018-05-28 16:22:14.265626+02	Kleine Karten Kranzmayer_0015	Karte 20		\N	19	12	\N	\N	\N	\N	\N	\N	\N	4	\N
370	2018-05-22 09:55:03.467038+02	2018-05-28 15:08:55.069531+02	IV.Gedruckte Karten der Lieferungen_0005	Fronleichnamstag		\N	47	39	1940-10-01	1940-10-31	\N	\N	\N	\N	\N	4	\N
375	2018-05-22 10:45:47.493681+02	2018-05-28 15:09:51.262708+02	IV.Gedruckte Karten der Lieferungen_0010	Kirchtag, tenk, Fasching		2000000	41	44	\N	\N	\N	\N	\N	\N	\N	4	\N
367	2018-05-18 17:45:48.958443+02	2018-05-28 15:08:21.135087+02	IV.Gedruckte Karten der Lieferungen_0002	Grundkarte		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
340	2018-05-16 15:45:30.619797+02	2018-05-28 16:21:56.177092+02	Kleine Karten Kranzmayer_0014	Karte 27		\N	21	30	\N	\N	\N	\N	\N	\N	\N	4	\N
378	2018-05-22 11:44:45.159318+02	2018-05-28 15:10:57.716853+02	IV.Gedruckte Karten der Lieferungen_0013	-lein, Mehrzahl		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
342	2018-05-18 13:47:29.278379+02	2018-05-28 16:22:25.716066+02	Kleine Karten Kranzmayer_0016	?		\N	21	9	\N	\N	\N	\N	\N	\N	\N	4	\N
343	2018-05-18 13:49:51.286752+02	2018-05-28 16:23:07.59069+02	Kleine Karten Kranzmayer_0017	verschiedene Karten 1-9		\N	22	28	\N	\N	\N	\N	\N	\N	\N	4	\N
379	2018-05-22 11:47:00.427575+02	2018-05-28 15:11:07.629822+02	IV.Gedruckte Karten der Lieferungen_0014	Mäntag		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
344	2018-05-18 13:52:32.13058+02	2018-05-28 16:23:21.16103+02	Kleine Karten Kranzmayer_0018	bis Karte 17		\N	24	27	\N	\N	\N	\N	\N	\N	\N	4	\N
371	2018-05-22 09:59:14.688604+02	2018-05-28 15:09:02.290546+02	IV.Gedruckte Karten der Lieferungen_0006	Kirchtag/Kirchweih		\N	\N	\N	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
373	2018-05-22 10:06:39.949774+02	2018-05-28 15:09:18.005718+02	IV.Gedruckte Karten der Lieferungen_0008	Kirchtage, tenk, Fasching		2000000	38	37	\N	\N	\N	\N	\N	\N	\N	4	\N
374	2018-05-22 10:40:52.348643+02	2018-05-28 15:09:34.135066+02	IV.Gedruckte Karten der Lieferungen_0009	Kirchtag/Kirchweih, Fasching, link		2000000	40	40	\N	\N	\N	\N	\N	\N	\N	4	\N
376	2018-05-22 11:35:13.163254+02	2018-05-28 15:10:30.49166+02	IV.Gedruckte Karten der Lieferungen_0011	Fürtuch, Pipe, Tähe(l)		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
377	2018-05-22 11:41:09.75186+02	2018-05-28 15:10:43.119903+02	IV.Gedruckte Karten der Lieferungen_0012	ei in "breit und "Leiter"		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
345	2018-05-18 14:06:14.350215+02	2018-05-28 16:23:30.311103+02	Kleine Karten Kranzmayer_0019	bis Karte 26		\N	24	30	\N	\N	\N	\N	\N	\N	\N	4	\N
346	2018-05-18 14:13:06.275722+02	2018-05-28 16:23:36.953934+02	Kleine Karten Kranzmayer_0020	Synonyma für "Dienstag"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
347	2018-05-18 14:14:46.317121+02	2018-05-28 16:26:49.038037+02	Kleine Karten Kranzmayer_0021	Synonyma für "Samstag"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
348	2018-05-18 14:16:59.317608+02	2018-05-28 16:26:55.775619+02	Kleine Karten Kranzmayer_0022	Synonyma für "Dienstag"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
349	2018-05-18 14:23:23.162588+02	2018-05-28 16:27:01.629144+02	Kleine Karten Kranzmayer_0023	Synonyma für "Donnerstag"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
350	2018-05-18 14:25:46.340079+02	2018-05-28 16:27:07.901308+02	Kleine Karten Kranzmayer_0024	Synonyma für "Donnerstag"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
351	2018-05-18 14:27:50.278827+02	2018-05-28 16:27:13.446194+02	Kleine Karten Kranzmayer_0025	Lautformen von "Mittwoch"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
353	2018-05-18 14:31:27.032082+02	2018-05-28 16:28:44.423732+02	Kleine Karten Kranzmayer_0027	Geschichte von "Mittwoch"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
354	2018-05-18 14:43:21.636175+02	2018-05-28 16:28:51.408043+02	Kleine Karten Kranzmayer_0028	Mhd. e im Worte "Ergetag"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
355	2018-05-18 14:45:31.703831+02	2018-05-28 16:28:58.101304+02	Kleine Karten Kranzmayer_0029	Ausdrücke für "Griebe"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
356	2018-05-18 14:48:06.505353+02	2018-05-28 16:29:04.815988+02	Kleine Karten Kranzmayer_0030	Ahd. -ah- im Worte "Zähre"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
357	2018-05-18 14:49:52.787858+02	2018-05-28 16:33:51.497148+02	Kleine Karten Kranzmayer_0032	Ahd. -ah- im Worte "Zähre"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
358	2018-05-18 14:52:31.423472+02	2018-05-28 16:34:01.540593+02	Kleine Karten Kranzmayer_0033	Synonyma für "Stirne"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
359	2018-05-18 14:54:40.485524+02	2018-05-28 16:34:10.356326+02	Kleine Karten Kranzmayer_0034	Synonyma für "Kinn"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
360	2018-05-18 14:55:48.308169+02	2018-05-28 16:34:16.731911+02	Kleine Karten Kranzmayer_0035	Mhd. ô im Worte "rot"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
361	2018-05-18 14:57:41.621406+02	2018-05-28 16:34:40.335904+02	Kleine Karten Kranzmayer_0036	Mhd. or im Worte "Ort"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
362	2018-05-18 14:58:46.986846+02	2018-05-28 16:34:49.799239+02	Kleine Karten Kranzmayer_0037	Mhd. o und r im Worte "Dorf"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
363	2018-05-18 15:00:07.55521+02	2018-05-28 16:34:55.742742+02	Kleine Karten Kranzmayer_0038	Bair. -ge- im Worte "Ergetag"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
323	2018-05-15 14:22:14.854826+02	2018-05-29 11:51:32.356453+02	VII.II.Lieferung (In Vorbereitung)_0030	Pflugschar		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
324	2018-05-15 14:25:58.326738+02	2018-05-29 11:51:45.44863+02	VII.II.Lieferung (In Vorbereitung)_0031	jenseits		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
325	2018-05-15 14:27:27.82753+02	2018-05-29 11:51:52.196424+02	VII.II.Lieferung (In Vorbereitung)_0032	Schaden		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
326	2018-05-15 14:28:56.434795+02	2018-05-29 11:51:58.780086+02	VII.II.Lieferung (In Vorbereitung)_0033	[Titelblatt]		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
428	2018-05-29 13:34:26.383534+02	2018-05-29 13:34:26.383562+02	Kleine Karten Kranzmayer_0040	Biene		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
276	2018-05-07 12:04:56.074043+02	2018-05-29 11:39:53.165849+02	VIII.Dritte Lieferung (In Vorbereitung)_0004	segen, Hanef, brechen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
425	2018-05-28 14:14:22.288089+02	2018-05-28 15:14:03.963096+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0012	einhin, stat, weu		2000000	41	41	\N	\N	\N	\N	\N	\N	\N	4	\N
388	2018-05-22 12:17:46.681159+02	2018-05-28 15:18:23.087401+02	IV.Gedruckte Karten der Lieferungen_0023	Walger, Klôtze, Kuchel		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
389	2018-05-22 12:24:48.241821+02	2018-05-28 15:18:32.102421+02	IV.Gedruckte Karten der Lieferungen_0024	Walger, Klôtze, Kuchel		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
403	2018-05-23 13:27:41.761801+02	2018-05-28 15:21:45.285998+02	IV.Gedruckte Karten der Lieferungen_0038	Drangeld, Göt(i), ein etliche Klafter		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
421	2018-05-23 15:41:17.41958+02	2018-05-28 15:25:26.708862+02	IV.Gedruckte Karten der Lieferungen_0056	-lein in Gläslein		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
146	2018-03-21 16:06:05.878233+01	2018-05-28 12:47:47.748476+02	I.Entwürfe ausserhalb der Lieferungen_0009	bair. Mundartaufteilung GK		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
150	2018-03-21 16:12:42.742237+01	2018-05-28 12:48:49.476651+02	I.Entwürfe ausserhalb der Lieferungen_0013	gäh (Mainfranken zäh)		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
167	2018-03-22 14:12:11.473328+01	2018-05-28 14:04:20.817623+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0009	Drangeld, Göt(i), ein		2000000	41	43	\N	\N	\N	\N	\N	\N	\N	4	\N
385	2018-05-22 12:05:53.489216+02	2018-05-28 15:18:01.321914+02	IV.Gedruckte Karten der Lieferungen_0020	wê		2000000	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
192	2018-03-22 16:18:04.51518+01	2018-05-28 14:47:17.638919+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0035	Walger, Klôtze, Kuchal		2000000	41	43	\N	\N	\N	\N	\N	\N	\N	4	\N
365	2018-05-18 17:36:41.298232+02	2018-05-28 15:08:07.385113+02	IV.Gedruckte Karten der Lieferungen_0000	5. Mhd e im Worte "Ergetag"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
368	2018-05-22 09:29:11.629822+02	2018-05-28 15:08:29.140552+02	IV.Gedruckte Karten der Lieferungen_0003	ergetag, Pfinztag, es, enk, Pfeit		2000000	41	44	\N	\N	\N	\N	\N	\N	\N	4	\N
380	2018-05-22 11:49:29.116653+02	2018-05-28 15:11:16.644371+02	IV.Gedruckte Karten der Lieferungen_0015	Mittag=Mittwoch, Strauche=Schnupfen,  -nd- in hundert		2000000	40	42	\N	\N	\N	\N	\N	\N	\N	4	\N
381	2018-05-22 11:52:06.748291+02	2018-05-28 15:11:25.417919+02	IV.Gedruckte Karten der Lieferungen_0016	Rauchfang, ent		2000000	42	42	\N	\N	\N	\N	\N	\N	\N	4	\N
382	2018-05-22 11:55:56.070715+02	2018-05-28 15:11:36.9197+02	IV.Gedruckte Karten der Lieferungen_0017	-e in eine rote Hose und in die linke Hand		\N	46	43	\N	\N	\N	\N	\N	\N	\N	4	\N
383	2018-05-22 11:58:04.134581+02	2018-05-28 15:11:57.227002+02	IV.Gedruckte Karten der Lieferungen_0018	-e in eine rote Hose und in die linke Hand		2000000	47	23	\N	\N	\N	\N	\N	\N	\N	4	\N
384	2018-05-22 12:01:58.065021+02	2018-05-28 15:12:07.730788+02	IV.Gedruckte Karten der Lieferungen_0019	Walger, Klôtze, Kuchel		2000000	41	44	\N	\N	\N	\N	\N	\N	\N	4	\N
386	2018-05-22 12:12:06.99033+02	2018-05-28 15:18:08.837265+02	IV.Gedruckte Karten der Lieferungen_0021	Walger, Klôtze, Kuchel		2000000	41	43	\N	\N	\N	\N	\N	\N	\N	4	\N
387	2018-05-22 12:13:44.470679+02	2018-05-28 15:18:16.224529+02	IV.Gedruckte Karten der Lieferungen_0022	Walger, Klôtze, Kuchel		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
390	2018-05-22 12:28:15.113701+02	2018-05-28 15:18:40.20969+02	IV.Gedruckte Karten der Lieferungen_0025	Walger, Klôtze, Kuchel		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
391	2018-05-22 12:30:18.651102+02	2018-05-28 15:18:48.794816+02	IV.Gedruckte Karten der Lieferungen_0026	Prein, Har, Knoflauch		2000000	42	40	\N	\N	\N	\N	\N	\N	\N	4	\N
392	2018-05-22 12:32:05.158519+02	2018-05-28 15:18:55.736983+02	IV.Gedruckte Karten der Lieferungen_0027	Lacke Pfütze		\N	41	42	\N	\N	\N	\N	\N	\N	\N	4	\N
393	2018-05-22 12:39:43.009657+02	2018-05-28 15:20:00.910055+02	IV.Gedruckte Karten der Lieferungen_0028	zant, ich kimm, Lache		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
394	2018-05-22 12:42:48.226174+02	2018-05-28 15:20:09.575353+02	IV.Gedruckte Karten der Lieferungen_0029	Lacke, Kimm, Zand		2000000	40	45	\N	\N	\N	\N	\N	\N	\N	4	\N
395	2018-05-22 12:44:50.48183+02	2018-05-28 15:20:16.513083+02	IV.Gedruckte Karten der Lieferungen_0030	Lacke, Kimm, Zand		2000000	40	45	\N	\N	\N	\N	\N	\N	\N	4	\N
396	2018-05-22 12:52:10.049235+02	2018-05-28 15:20:22.142993+02	IV.Gedruckte Karten der Lieferungen_0031	Lacke, Kimm, Zand		2000000	40	45	\N	\N	\N	\N	\N	\N	\N	4	\N
397	2018-05-22 12:54:17.767882+02	2018-05-28 15:20:28.831038+02	IV.Gedruckte Karten der Lieferungen_0032	Lacke, Kimm, Zand		2000000	40	45	\N	\N	\N	\N	\N	\N	\N	4	\N
398	2018-05-23 13:10:52.953281+02	2018-05-28 15:20:35.22075+02	IV.Gedruckte Karten der Lieferungen_0033	ei in "breit" und "Leiter"		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
399	2018-05-23 13:13:43.035799+02	2018-05-28 15:20:41.407003+02	IV.Gedruckte Karten der Lieferungen_0034	ei in breit/breiter		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
401	2018-05-23 13:17:43.832143+02	2018-05-28 15:20:55.152948+02	IV.Gedruckte Karten der Lieferungen_0036	ei in breit/breiter/Leiter, eu in Beunde		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
402	2018-05-23 13:25:29.277422+02	2018-05-28 15:21:37.120574+02	IV.Gedruckte Karten der Lieferungen_0037	Drangeld, Göt(i), ein etliche Klafter		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
404	2018-05-23 13:29:39.169692+02	2018-05-28 15:21:56.914458+02	IV.Gedruckte Karten der Lieferungen_0039	Fürtuch, Pipe, Tähe(l)		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
405	2018-05-23 13:32:41.916982+02	2018-05-28 15:22:13.24737+02	IV.Gedruckte Karten der Lieferungen_0040	Zügenglöcklein, himmletzen, Gejaide		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
406	2018-05-23 13:35:13.921088+02	2018-05-28 15:22:19.442198+02	IV.Gedruckte Karten der Lieferungen_0041	einhin, stät, weu		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
407	2018-05-23 13:39:07.879627+02	2018-05-28 15:22:24.856609+02	IV.Gedruckte Karten der Lieferungen_0042	Änze		\N	43	43	\N	\N	\N	\N	\N	\N	\N	4	\N
408	2018-05-23 13:45:23.751092+02	2018-05-28 15:22:30.948662+02	IV.Gedruckte Karten der Lieferungen_0043	-in in Schwägerin (Bäurin)		\N	47	43	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
409	2018-05-23 14:00:15.721812+02	2018-05-28 15:22:38.168677+02	IV.Gedruckte Karten der Lieferungen_0044	?		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
410	2018-05-23 14:03:45.250632+02	2018-05-28 15:22:44.115928+02	IV.Gedruckte Karten der Lieferungen_0045	Umlaut in schlägt, läßt und wächst		\N	47	39	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
411	2018-05-23 14:05:58.565867+02	2018-05-28 15:23:52.733041+02	IV.Gedruckte Karten der Lieferungen_0046	grau		\N	47	43	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
412	2018-05-23 14:09:13.078867+02	2018-05-28 15:23:59.523599+02	IV.Gedruckte Karten der Lieferungen_0047	blau		\N	39	38	\N	\N	\N	\N	\N	\N	\N	4	\N
413	2018-05-23 14:12:19.689592+02	2018-05-28 15:24:06.710284+02	IV.Gedruckte Karten der Lieferungen_0048	-en in mähen		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
414	2018-05-23 14:14:46.004947+02	2018-05-28 15:24:13.716465+02	IV.Gedruckte Karten der Lieferungen_0049	-en in mähen		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
416	2018-05-23 15:17:04.974029+02	2018-05-28 15:24:44.019656+02	IV.Gedruckte Karten der Lieferungen_0051	schreim		\N	38	39	\N	\N	\N	\N	\N	\N	\N	4	\N
417	2018-05-23 15:27:10.043201+02	2018-05-28 15:24:51.315645+02	IV.Gedruckte Karten der Lieferungen_0052	'Kleie', Lautungen u. Sinngleiche		\N	41	39	\N	\N	\N	\N	\N	\N	\N	4	\N
418	2018-05-23 15:30:22.468034+02	2018-05-28 15:24:58.410726+02	IV.Gedruckte Karten der Lieferungen_0053	'Küssen' und Sinngleiche		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
419	2018-05-23 15:33:37.121364+02	2018-05-28 15:25:05.684989+02	IV.Gedruckte Karten der Lieferungen_0054	Küssen		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
420	2018-05-23 15:39:08.196023+02	2018-05-28 15:25:12.56375+02	IV.Gedruckte Karten der Lieferungen_0055	-lein in Gläslein		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
422	2018-05-23 15:43:19.041391+02	2018-05-28 15:25:33.046518+02	IV.Gedruckte Karten der Lieferungen_0057	-lein in Gläslein, Sing.		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
423	2018-05-23 15:45:00.719918+02	2018-05-28 15:25:39.031441+02	IV.Gedruckte Karten der Lieferungen_0058	-lein		2000000	38	41	\N	\N	\N	\N	\N	\N	\N	4	\N
424	2018-05-23 15:45:40.091962+02	2018-05-28 15:25:44.743481+02	IV.Gedruckte Karten der Lieferungen_0059	[Deckblatt]		\N	49	45	\N	\N	\N	\N	\N	\N	\N	4	\N
400	2018-05-23 13:15:31.870978+02	2018-05-28 15:20:47.98349+02	IV.Gedruckte Karten der Lieferungen_0035	ei in breit/breiter/Leiter, eu in Beunde		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
415	2018-05-23 15:15:43.19812+02	2018-05-28 15:24:20.417706+02	IV.Gedruckte Karten der Lieferungen_0050	-b- in spei(b)en und es schnei(b)t		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
232	2018-04-19 13:09:28.321918+02	2018-05-28 16:02:56.425323+02	IX.Vierte Lieferung (In Vorbereitung)_0005	Hälmlein, Herrlein, Fräulein, Fiechte		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
290	2018-05-07 12:33:41.506081+02	2018-05-29 11:43:41.689278+02	VIII.Dritte Lieferung (In Vorbereitung)_0018	zwo		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
301	2018-05-07 14:28:49.033807+02	2018-05-29 11:47:19.383668+02	VII.II.Lieferung (In Vorbereitung)_0008	Wandel von -rt- zu -r(cht), -(r)scht		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
305	2018-05-07 14:43:26.98572+02	2018-05-29 11:48:07.595655+02	VII.II.Lieferung (In Vorbereitung)_0012	-er in 'Schwagner', 'Schneider', 'Pfarrer', Kompar. 'kleiner', auslautendes -en nach verscheidenen Mitlauten, inlautendes -en- in 'tausend', 'siebenzig'		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
322	2018-05-15 14:19:04.550028+02	2018-05-29 11:51:25.287023+02	VII.II.Lieferung (In Vorbereitung)_0029	zulautend -t- und -d-		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
427	2018-05-29 13:31:40.434615+02	2018-05-29 13:31:40.43465+02	Kleine Karten Kranzmayer_0039	-en in'Ofen', 'machen'		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
429	2018-05-29 13:38:39.740692+02	2018-05-29 13:38:39.74072+02	Kleine Karten Kranzmayer_0041	Wiesel		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
430	2018-05-29 13:41:14.890293+02	2018-05-29 13:41:14.890322+02	Kleine Karten Kranzmayer_0042	Fohlen		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
431	2018-05-29 13:44:41.578063+02	2018-05-29 13:44:41.578092+02	Kleine Karten Kranzmayer_0043	Elster		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
432	2018-05-29 13:48:04.597455+02	2018-05-29 13:48:04.597481+02	Kleine Karten Kranzmayer_0044	mhd. o im Worte 'Ofen'		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
433	2018-05-29 13:51:41.152885+02	2018-05-29 13:52:46.744679+02	Kleine Karten Kranzmayer_0045	mhd. ô im Worte 'rôt'		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
434	2018-05-29 13:56:58.050865+02	2018-05-29 13:56:58.050897+02	Kleine Karten Kranzmayer_0046	Die Behandlung des alten 'kch'		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
435	2018-06-04 13:55:10.263393+02	2018-06-04 13:55:10.26342+02	Kleine Karten Kranzmayer_0047	Die Bedeutung des alten 't'		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
436	2018-06-04 13:57:48.246289+02	2018-06-04 13:57:48.246317+02	Kleine Karten Kranzmayer_0048	Synonyma für "Donnerstag"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
437	2018-06-04 14:02:25.66126+02	2018-06-04 14:02:25.661297+02	Kleine Karten Kranzmayer_0049	eh im Worte 'sehen'		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
438	2018-06-04 14:04:00.132442+02	2018-06-04 14:04:00.132469+02	Kleine Karten Kranzmayer_0050	Wespe		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
439	2018-06-04 14:08:17.84816+02	2018-06-04 14:08:17.848188+02	Kleine Karten Kranzmayer_0051	Preißelbeere		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
440	2018-06-04 14:10:29.058765+02	2018-06-04 14:10:29.058794+02	Kleine Karten Kranzmayer_0052	Erdbeere		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
441	2018-06-04 14:18:15.552195+02	2018-06-04 14:18:15.552225+02	Kleine Karten Kranzmayer_0053	Himbeere		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
442	2018-06-04 14:25:36.285184+02	2018-06-04 14:25:36.285218+02	Kleine Karten Kranzmayer_0054	Kater		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
443	2018-06-04 14:33:45.41752+02	2018-06-04 14:33:45.417547+02	Kleine Karten Kranzmayer_0055	il in 'wild', 'Bild'		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
444	2018-06-04 14:35:57.785112+02	2018-06-04 14:35:57.785141+02	Kleine Karten Kranzmayer_0056	Synonyma für "Donnerstag"		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
445	2018-06-04 14:41:20.347816+02	2018-06-04 14:41:20.347861+02	Kleine Karten Kranzmayer_0057	Eidechse		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
446	2018-06-04 14:44:20.33053+02	2018-06-04 14:44:20.330557+02	Kleine Karten Kranzmayer_0058	-er in Schwager		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
447	2018-06-04 14:47:38.494641+02	2018-06-04 14:47:38.494669+02	Kleine Karten Kranzmayer_0059	Stern		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
448	2018-06-04 14:50:58.772703+02	2018-06-04 14:50:58.772731+02	Kleine Karten Kranzmayer_0060	breiter, comp.		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
449	2018-06-04 14:54:23.578691+02	2018-06-04 14:54:23.57872+02	Kleine Karten Kranzmayer_0061	kleiner, comp.		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
450	2018-06-04 14:57:09.695484+02	2018-06-04 14:57:09.695512+02	Kleine Karten Kranzmayer_0062	Werktag		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
451	2018-06-04 14:58:51.560999+02	2018-06-04 14:58:51.561024+02	Kleine Karten Kranzmayer_0063	Sterbeglöcklein		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
452	2018-06-04 15:09:38.338718+02	2018-06-04 15:09:38.338749+02	Kleine Karten Kranzmayer_0064	Vormund		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
453	2018-06-04 15:11:08.24523+02	2018-06-04 15:11:08.245259+02	Kleine Karten Kranzmayer_0065	Dieb		\N	23	23	\N	\N	\N	\N	\N	\N	\N	4	\N
454	2018-06-04 15:13:00.750216+02	2018-06-04 15:13:00.750246+02	Kleine Karten Kranzmayer_0066	Stief-		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
455	2018-06-04 15:16:30.624531+02	2018-06-04 15:16:30.624557+02	Kleine Karten Kranzmayer_0067	in der Tiefe		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
456	2018-06-04 15:23:48.755065+02	2018-06-04 15:23:48.755098+02	Kleine Karten Kranzmayer_0068	frieren (verlieren)		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
457	2018-06-04 15:26:17.354949+02	2018-06-04 15:26:17.354978+02	Kleine Karten Kranzmayer_0069	weiß		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
458	2018-06-04 15:28:00.964671+02	2018-06-04 15:28:00.964699+02	Kleine Karten Kranzmayer_0070	Fleisch		\N	24	24	\N	\N	\N	\N	\N	\N	\N	4	\N
459	2018-06-04 15:29:27.898077+02	2018-06-04 15:29:27.898103+02	Kleine Karten Kranzmayer_0071	müde		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
460	2018-06-04 15:56:21.055287+02	2018-06-04 15:56:21.055317+02	Kleine Karten Kranzmayer_0072	gefunden		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
461	2018-06-04 15:58:25.735921+02	2018-06-04 15:58:25.735953+02	Kleine Karten Kranzmayer_0073	dürfen		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
462	2018-06-04 16:18:49.084075+02	2018-06-04 16:18:49.084104+02	Kleine Karten Kranzmayer_0074	Hund		\N	23	23	\N	\N	\N	\N	\N	\N	\N	4	\N
463	2018-06-04 16:20:04.624611+02	2018-06-04 16:20:04.624638+02	Kleine Karten Kranzmayer_0075	kann, Mann		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
464	2018-06-04 16:22:19.934238+02	2018-06-04 16:22:19.934269+02	Kleine Karten Kranzmayer_0076	ouwe in Frau		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
465	2018-06-04 16:24:37.943217+02	2018-06-04 16:24:37.943245+02	Kleine Karten Kranzmayer_0077	mähen		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
466	2018-06-04 16:25:40.804723+02	2018-06-04 16:25:40.80475+02	Kleine Karten Kranzmayer_0078	elf		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
467	2018-06-04 16:27:30.802774+02	2018-06-04 16:27:30.802802+02	Kleine Karten Kranzmayer_0079	nichts		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
468	2018-06-04 16:30:46.988653+02	2018-06-04 16:30:46.98868+02	Kleine Karten Kranzmayer_0080	sagt		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
469	2018-06-04 16:36:09.515119+02	2018-06-04 16:36:09.515156+02	Kleine Karten Kranzmayer_0081	gedörrte Pirne		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
470	2018-06-04 16:37:37.191785+02	2018-06-04 16:37:37.191811+02	Kleine Karten Kranzmayer_0082	baxsa		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
471	2018-06-04 16:39:13.142623+02	2018-06-04 16:39:13.14265+02	Kleine Karten Kranzmayer_0083	abgehackte Nadelbaumzweige		\N	24	27	\N	\N	\N	\N	\N	\N	\N	4	\N
472	2018-06-04 16:43:01.213253+02	2018-06-04 16:43:01.213283+02	Kleine Karten Kranzmayer_0084	Fichte		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
473	2018-06-04 16:44:31.993336+02	2018-06-04 16:44:31.993365+02	Kleine Karten Kranzmayer_0085	Wetterleuchten		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
474	2018-06-04 16:47:02.370902+02	2018-06-04 16:47:02.370932+02	Kleine Karten Kranzmayer_0086	Fasching		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
475	2018-06-04 16:53:06.342166+02	2018-06-04 16:53:06.342192+02	Kleine Karten Kranzmayer_0087	e(r) in Herbst		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
476	2018-06-04 16:54:12.059787+02	2018-06-04 16:54:12.059816+02	Kleine Karten Kranzmayer_0088	Frühling		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
477	2018-06-04 16:56:09.762139+02	2018-06-04 16:56:09.762165+02	Kleine Karten Kranzmayer_0089	Pate		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
478	2018-06-04 16:57:20.83699+02	2018-06-04 16:57:20.837018+02	Kleine Karten Kranzmayer_0090	Synn. f. Flachs		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
479	2018-06-04 17:00:43.644046+02	2018-06-04 17:00:43.644073+02	Kleine Karten Kranzmayer_0091	ei in breit (Leiter)		\N	24	24	\N	\N	\N	\N	\N	\N	\N	4	\N
480	2018-06-04 17:02:27.094161+02	2018-06-04 17:02:27.094206+02	Kleine Karten Kranzmayer_0092	ihr, pl.		\N	24	24	\N	\N	\N	\N	\N	\N	\N	4	\N
481	2018-06-04 17:03:37.731073+02	2018-06-04 17:03:37.731098+02	Kleine Karten Kranzmayer_0093	-rh-/-r- in Föhre		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
482	2018-06-04 17:10:03.458379+02	2018-06-04 17:10:03.458408+02	Kleine Karten Kranzmayer_0094	Umlaut in Föhre		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
483	2018-06-04 17:11:49.601446+02	2018-06-04 17:11:49.601472+02	Kleine Karten Kranzmayer_0095	neu (Keue, Ö.)		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
484	2018-06-04 17:12:54.869671+02	2018-06-04 17:12:54.869699+02	Kleine Karten Kranzmayer_0096	Feuer		\N	24	24	\N	\N	\N	\N	\N	\N	\N	4	\N
485	2018-06-04 17:15:16.75437+02	2018-06-04 17:15:16.754398+02	Kleine Karten Kranzmayer_0097	Braut		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
486	2018-06-04 17:17:07.245746+02	2018-06-04 17:17:07.245785+02	Kleine Karten Kranzmayer_0098	Vormund		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
487	2018-06-04 17:18:32.395576+02	2018-06-04 17:18:32.395602+02	Kleine Karten Kranzmayer_0099	?		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
488	2018-06-04 17:19:59.957194+02	2018-06-04 17:19:59.957222+02	Kleine Karten Kranzmayer_0100	ö in böse		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
489	2018-06-04 17:21:15.320867+02	2018-06-04 17:21:15.3209+02	Kleine Karten Kranzmayer_0101	Föhre, Synn.		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
490	2018-06-04 17:23:11.063923+02	2018-06-04 17:23:11.063952+02	Kleine Karten Kranzmayer_0102	Schnê		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
491	2018-06-04 17:24:47.322022+02	2018-06-04 17:24:47.322052+02	Kleine Karten Kranzmayer_0103	kleiner		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
492	2018-06-05 12:42:19.482106+02	2018-06-05 12:42:19.482137+02	Kleine Karten Kranzmayer_0104	Jauk		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
493	2018-06-05 12:43:25.620661+02	2018-06-05 12:43:25.620691+02	Kleine Karten Kranzmayer_0105	es donnert		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
494	2018-06-05 12:44:58.000585+02	2018-06-05 12:44:58.000628+02	Kleine Karten Kranzmayer_0106	Braut		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
495	2018-06-05 12:46:22.336997+02	2018-06-05 12:46:22.337023+02	Kleine Karten Kranzmayer_0107	-nf in Hanf		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
496	2018-06-05 12:47:32.935309+02	2018-06-05 12:47:32.935334+02	Kleine Karten Kranzmayer_0108	Herbst		\N	24	28	\N	\N	\N	\N	\N	\N	\N	4	\N
497	2018-06-05 12:49:39.77945+02	2018-06-05 12:49:39.779479+02	Kleine Karten Kranzmayer_0109	nimmer		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
498	2018-06-05 12:51:18.763749+02	2018-06-05 12:51:18.763776+02	Kleine Karten Kranzmayer_0110	-e in Tote, Gote=Patin		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
499	2018-06-05 12:52:30.179751+02	2018-06-05 12:52:30.179779+02	Kleine Karten Kranzmayer_0111	Beunde, Bedeutungen		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
500	2018-06-05 12:53:30.372671+02	2018-06-05 12:53:30.372698+02	Kleine Karten Kranzmayer_0112	tief		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
501	2018-06-05 12:54:50.328816+02	2018-06-05 12:54:50.328861+02	Kleine Karten Kranzmayer_0113	fliegen, flieg		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
502	2018-06-05 12:56:03.114151+02	2018-06-05 12:56:03.114182+02	Kleine Karten Kranzmayer_0114	Karte 14: fliegt		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
503	2018-06-05 12:57:11.764765+02	2018-06-05 12:57:11.764793+02	Kleine Karten Kranzmayer_0115	ui in ?		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
504	2018-06-05 12:58:19.800452+02	2018-06-05 12:58:19.800481+02	Kleine Karten Kranzmayer_0116	Pflugschar		\N	24	25	\N	\N	\N	\N	\N	\N	\N	4	\N
505	2018-06-05 13:32:33.836677+02	2018-06-05 13:39:53.14172+02	General- und Spezialkarten Mappe I_0001	Kirchtag, tenk, Fasching		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
506	2018-06-05 13:40:39.129784+02	2018-06-05 13:40:39.129811+02	General- und Spezialkarten Mappe I_0002	Altane am Bauernhaus		\N	45	43	\N	\N	\N	\N	\N	\N	\N	4	\N
507	2018-06-05 13:44:43.892276+02	2018-06-05 13:44:43.892303+02	General- und Spezialkarten Mappe I_0003	Altane am Bauernhaus		2000000	48	43	\N	\N	\N	\N	\N	\N	\N	4	\N
509	2018-06-05 13:47:50.853717+02	2018-06-05 13:47:50.853748+02	General- und Spezialkarten Mappe I_0005	?		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
510	2018-06-05 13:52:30.305753+02	2018-06-05 13:59:42.691614+02	General- und Spezialkarten Mappe I_0006	Drangeld, Göt(i), ein		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
532	2018-06-07 14:48:29.396336+02	2018-06-07 14:48:29.396378+02	General- und Spezialkarten Mappe I_0028	Mittwoch		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
511	2018-06-05 14:04:59.057928+02	2018-06-05 14:09:18.758566+02	General- und Spezialkarten Mappe I_0007	Grundkarte/Putzmühle		\N	42	31	1970-01-01	1970-12-31	\N	\N	\N	\N	4	4	\N
515	2018-06-07 12:32:15.01563+02	2018-06-07 12:32:15.015659+02	General- und Spezialkarten Mappe I_0011	Drangeld, Göt(i), ein		2000000	46	43	\N	\N	\N	\N	\N	\N	\N	4	\N
516	2018-06-07 12:37:31.056045+02	2018-06-07 12:37:31.056075+02	General- und Spezialkarten Mappe I_0012	Walger, Klôtze, Kuchel		2000000	41	44	\N	\N	\N	\N	\N	\N	\N	4	\N
517	2018-06-07 12:41:06.14947+02	2018-06-07 12:41:06.149497+02	General- und Spezialkarten Mappe I_0013	Walger, Klôtze, Kuchel		2000000	41	44	\N	\N	\N	\N	\N	\N	\N	4	\N
518	2018-06-07 12:50:21.627007+02	2018-06-07 12:50:21.627055+02	General- und Spezialkarten Mappe I_0014	-ck- in 'Stecken'		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
519	2018-06-07 13:44:56.91316+02	2018-06-07 13:44:56.913189+02	General- und Spezialkarten Mappe I_0015	kx, kh in Stecken		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
520	2018-06-07 13:52:53.08178+02	2018-06-07 13:52:53.081809+02	General- und Spezialkarten Mappe I_0016	Viehtrift		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
521	2018-06-07 13:57:47.510616+02	2018-06-07 13:57:47.510642+02	General- und Spezialkarten Mappe I_0017	Hundehalsband		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
522	2018-06-07 14:04:23.523269+02	2018-06-07 14:04:23.523297+02	General- und Spezialkarten Mappe I_0018	Unfertig!		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
523	2018-06-07 14:15:09.685865+02	2018-06-07 14:15:09.685892+02	General- und Spezialkarten Mappe I_0019	mhd ô in rot		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
524	2018-06-07 14:17:14.646579+02	2018-06-07 14:17:14.646608+02	General- und Spezialkarten Mappe I_0020	mhd ô in 'rote'		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
525	2018-06-07 14:19:45.683165+02	2018-06-07 14:19:45.683195+02	General- und Spezialkarten Mappe I_0021	-ck- in Buckel		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
527	2018-06-07 14:25:33.365686+02	2018-06-07 14:25:33.365712+02	General- und Spezialkarten Mappe I_0023	en in wetten		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
533	2018-06-07 14:54:08.207769+02	2018-06-07 14:54:08.207795+02	General- und Spezialkarten Mappe I_0029	-rt- Entwurf		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
534	2018-06-07 14:57:02.546673+02	2018-06-07 14:59:01.299049+02	General- und Spezialkarten Mappe I_0030	Kirchtag		\N	35	40	\N	\N	\N	\N	\N	\N	\N	4	\N
535	2018-06-07 14:59:18.338902+02	2018-06-07 14:59:18.338931+02	General- und Spezialkarten Mappe I_0031	Pfeit		\N	36	41	\N	\N	\N	\N	\N	\N	\N	4	\N
537	2018-06-07 15:11:02.24453+02	2018-06-07 15:11:02.244558+02	General- und Spezialkarten Mappe I_0033	Pfinztag		\N	47	40	\N	\N	\N	\N	\N	\N	\N	4	\N
538	2018-06-07 15:13:17.325025+02	2018-06-07 15:13:17.325052+02	General- und Spezialkarten Mappe I_0034	Sprachgrenze, Sprachinseln		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
539	2018-06-07 15:15:43.569807+02	2018-06-07 15:15:43.569863+02	General- und Spezialkarten Mappe I_0035	Synonyme für Kinn		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
540	2018-06-08 13:39:30.303903+02	2018-06-08 13:39:30.303928+02	General- und Spezialkarten Mappe I_0036	Mhd. iu im Worte "neu"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
541	2018-06-08 13:45:01.902985+02	2018-06-08 13:45:01.903016+02	General- und Spezialkarten Mappe I_0037	Synonyma für "Stirne"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
542	2018-06-08 13:46:32.123926+02	2018-06-08 13:46:32.123954+02	General- und Spezialkarten Mappe I_0038	Mhd. ô im Worte "rot"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
543	2018-06-08 13:49:04.962594+02	2018-06-08 13:49:04.962621+02	General- und Spezialkarten Mappe I_0039	Mhd. o und r im Worte "Dorf"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
544	2018-06-08 13:53:07.241055+02	2018-06-08 13:53:07.241084+02	General- und Spezialkarten Mappe I_0040	Grundkarte		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
545	2018-06-08 13:55:21.96049+02	2018-06-08 13:55:21.960516+02	General- und Spezialkarten Mappe I_0041	Fertige Kartenentwürfe		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
546	2018-06-08 14:03:41.322255+02	2018-06-08 14:03:41.322281+02	General- und Spezialkarten Mappe I_0042	Rauchfang, ent		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
547	2018-06-08 14:06:10.701454+02	2018-06-08 14:06:10.70148+02	General- und Spezialkarten Mappe I_0043	Prein, Har, Knoflauch		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
548	2018-06-08 14:10:05.658946+02	2018-06-08 14:10:05.658976+02	General- und Spezialkarten Mappe I_0044	Walger, Klôtze, Kuchel		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
549	2018-06-08 14:14:13.125316+02	2018-06-08 14:14:13.125351+02	General- und Spezialkarten Mappe I_0045	Drangeld, Göt(i), ein		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
550	2018-06-08 14:22:27.730733+02	2018-06-08 14:22:27.730759+02	General- und Spezialkarten Mappe I_0046	Lacke, Kimm, Zand		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
551	2018-06-08 14:25:01.006049+02	2018-06-08 14:25:01.006075+02	General- und Spezialkarten Mappe I_0047	einhin, stät, weu		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
552	2018-06-08 14:27:16.514149+02	2018-06-08 14:27:16.514177+02	General- und Spezialkarten Mappe I_0048	Zügenglöcklein, himmletzen, Gejaide		2000000	42	44	\N	\N	\N	\N	\N	\N	\N	4	\N
508	2018-06-05 13:46:08.771023+02	2019-04-30 13:17:27.995143+02	General- und Spezialkarten Mappe I_0004	Angeld		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
526	2018-06-07 14:21:27.82262+02	2019-04-30 13:49:35.276389+02	General- und Spezialkarten Mappe I_0022	-en in sehen		\N	46	42	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
528	2018-06-07 14:28:00.879563+02	2019-04-30 13:56:20.47403+02	General- und Spezialkarten Mappe I_0024	Pate		\N	47	42	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
529	2018-06-07 14:31:13.208227+02	2019-04-30 13:58:00.826803+02	General- und Spezialkarten Mappe I_0025	-en nach -f-		\N	47	42	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
530	2018-06-07 14:36:00.056276+02	2019-04-30 13:58:57.095183+02	General- und Spezialkarten Mappe I_0026	-en- in tausend		\N	47	42	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
531	2018-06-07 14:46:20.131371+02	2019-04-30 14:00:09.03837+02	General- und Spezialkarten Mappe I_0027	-en- in siebenzig		\N	47	42	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
536	2018-06-07 15:09:07.108927+02	2019-04-30 14:34:58.703698+02	General- und Spezialkarten Mappe I_0032	-u-/-e- in sie kommen		\N	47	43	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
553	2018-06-08 14:29:09.150995+02	2019-05-13 15:19:03.350324+02	General- und Spezialkarten Mappe I_0049	es, enk		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
106	2018-01-04 12:41:20.098988+01	2018-06-12 12:48:42.257769+02	Karten außerhalb der Lieferungen_0001	-hin in einhin		\N	50	40	\N	\N	\N	\N	\N	\N	\N	4	1
108	2018-01-23 15:56:37.853997+01	2018-06-12 12:48:47.145823+02	Karten außerhalb der Lieferungen_0002	Egerde, Lautungen		2000000	50	40	\N	\N	\N	\N	\N	\N	\N	4	2
123	2018-03-19 11:32:16.481326+01	2018-06-12 13:50:47.21267+02	Karten außerhalb der Lieferungen_0016	Weibliche Schreckgestalt um die Weihnachstzeit		\N	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
127	2018-03-19 12:26:06.842463+01	2018-06-12 13:59:09.894085+02	Karten außerhalb der Lieferungen_0020	-eln in betteln		\N	47	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
130	2018-03-19 12:45:29.06635+01	2018-06-12 14:06:26.099785+02	Karten außerhalb der Lieferungen_0023	Krieche (Pflaumenart)		\N	48	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
220	2018-04-04 13:47:18.884528+02	2018-06-12 14:34:08.298725+02	Karten außerhalb der Lieferungen_0031	-h- in Zehe		\N	47	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
200	2018-03-26 16:48:50.957164+02	2018-06-13 13:02:43.135732+02	IX.Oetztaler Arbeit_0000	Ötztal_ Ziller-Ötz		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
567	2018-06-13 14:41:22.849564+02	2018-06-13 14:41:22.849597+02	General- und Spezialkarten Mappe I_0063	[Titelblatt]	Abmessen!	\N	-3	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
710	2018-09-12 10:54:39.618923+02	2018-09-12 10:54:39.618951+02	Diverse Lade 14_0049	-bach		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
372	2018-05-22 10:03:08.542312+02	2018-06-13 14:45:41.661857+02	IV.Gedruckte Karten der Lieferungen_0007	bair. Fasching		\N	47	43	1940-04-01	1940-04-30	\N	\N	\N	\N	\N	4	\N
571	2018-06-15 11:55:34.847855+02	2018-06-15 11:55:34.847883+02	Schwarze Mappe diverse_0004	13. Rechen		\N	30	24	1923-09-11	1923-09-11	\N	\N	\N	\N	\N	4	\N
572	2018-06-15 11:58:27.337876+02	2018-06-15 11:58:27.337903+02	Schwarze Mappe diverse_0005	21. Hefe		\N	30	24	1923-09-10	1923-09-10	\N	\N	\N	\N	\N	4	\N
573	2018-06-15 12:00:32.58239+02	2018-06-15 12:00:32.582422+02	Schwarze Mappe diverse_0006	16. Klempner		\N	30	24	1923-09-14	1923-09-14	\N	\N	\N	\N	\N	4	\N
574	2018-06-15 12:02:57.469824+02	2018-06-15 12:02:57.469901+02	Schwarze Mappe diverse_0007	12. Jauche		\N	30	24	\N	\N	\N	\N	\N	\N	\N	4	\N
575	2018-06-15 12:07:13.252991+02	2018-06-15 15:14:03.262289+02	Schwarze Mappe diverse_0008	Knecht		2800000	23	28	1938-06-30	1938-06-30	\N	\N	\N	\N	\N	4	\N
576	2018-06-15 12:20:56.104688+02	2018-06-15 15:14:20.32714+02	Schwarze Mappe diverse_0009	eß/ir, enk/euch		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
577	2018-06-15 12:25:19.285625+02	2018-06-15 15:14:25.968352+02	Schwarze Mappe diverse_0010	Herbst		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
578	2018-06-15 14:24:20.073674+02	2018-06-15 15:14:36.310194+02	Schwarze Mappe diverse_0011	slawisch		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
580	2018-06-15 14:31:26.372925+02	2018-07-11 16:00:50.640841+02	Schwarze Mappe diverse_0013	Grundkarte		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
582	2018-06-15 14:37:41.470818+02	2018-07-11 16:03:52.021068+02	Schwarze Mappe diverse_0015	Schnee		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
583	2018-06-15 14:41:40.688658+02	2018-07-11 16:07:26.741283+02	Schwarze Mappe diverse_0016	Synonyme für Pate		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
584	2018-06-15 14:43:07.314404+02	2018-07-11 16:14:45.434765+02	Schwarze Mappe diverse_0017	nicht		2800000	23	28	1935-03-22	1935-03-22	\N	\N	\N	\N	\N	4	\N
585	2018-06-15 14:46:14.668125+02	2018-07-11 16:16:13.903695+02	Schwarze Mappe diverse_0018	Fichte		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
586	2018-06-15 14:50:36.543108+02	2018-07-11 16:20:29.101687+02	Schwarze Mappe diverse_0019	Wetterleuchten		2800000	23	28	1935-04-01	1935-04-01	\N	\N	\N	\N	\N	4	\N
587	2018-06-15 14:53:10.642098+02	2018-07-11 16:27:01.080718+02	Schwarze Mappe diverse_0020	die Ochsen einspannen		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
588	2018-06-15 14:55:33.612666+02	2018-07-11 16:28:22.171975+02	Schwarze Mappe diverse_0021	großer Wagen (Sternbild)		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
589	2018-06-15 14:57:37.456077+02	2018-07-11 16:38:55.270346+02	Schwarze Mappe diverse_0022	weiß		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
590	2018-06-15 15:01:38.32253+02	2018-07-11 16:40:14.129254+02	Schwarze Mappe diverse_0023	rt in Feiertag		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
591	2018-06-15 15:02:50.955173+02	2018-07-11 16:43:48.482285+02	Schwarze Mappe diverse_0024	Furche		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
592	2018-06-15 15:05:02.576506+02	2018-07-11 16:46:04.786468+02	Schwarze Mappe diverse_0025	gewesen		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
593	2018-06-15 15:09:26.680734+02	2018-07-11 16:52:32.507116+02	Schwarze Mappe diverse_0026	Birke		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
594	2018-06-15 15:10:53.067643+02	2018-07-11 16:53:31.035768+02	Schwarze Mappe diverse_0027	ich hätte		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
595	2018-06-15 15:13:12.754334+02	2018-07-11 16:54:30.850035+02	Schwarze Mappe diverse_0028	rot		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
598	2018-06-15 15:21:13.054661+02	2018-06-15 15:21:13.054688+02	Schwarze Mappe diverse_0031	Tag		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
599	2018-06-15 15:22:26.652221+02	2018-06-15 15:22:26.652248+02	Schwarze Mappe diverse_0032	Erdbeere		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
600	2018-06-15 15:26:38.036234+02	2018-06-15 15:26:38.036259+02	Schwarze Mappe diverse_0033	Griebe - Grammel		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
601	2018-06-15 15:28:03.321515+02	2018-06-15 15:28:03.321541+02	Schwarze Mappe diverse_0034	wild		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
602	2018-06-18 13:23:13.065905+02	2018-06-18 13:23:13.065932+02	Schwarze Mappe diverse_0035	Grundkarte		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
570	2018-06-15 11:43:11.912202+02	2018-07-11 14:54:17.116426+02	Schwarze Mappe diverse_0003	Grundkarte	Der Titel heißt tatsächlich "Grundkarte". Es ist die DAÖ base map 4.	2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
579	2018-06-15 14:29:38.13876+02	2018-07-11 15:56:59.846116+02	Schwarze Mappe diverse_0012	Föhre		2800000	23	28	1937-04-26	1937-04-26	\N	\N	\N	\N	\N	4	\N
581	2018-06-15 14:34:04.402894+02	2018-07-11 16:02:15.42183+02	Schwarze Mappe diverse_0014	ihr pl.		2800000	23	28	1937-04-26	1937-04-26	\N	\N	\N	\N	\N	4	\N
596	2018-06-15 15:18:29.951618+02	2018-07-11 16:55:11.750579+02	Schwarze Mappe diverse_0029	Schnê		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
597	2018-06-15 15:20:08.50824+02	2018-07-11 16:55:47.328954+02	Schwarze Mappe diverse_0030	Ofen		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
555	2018-06-08 15:10:06.962769+02	2019-05-13 15:28:26.941916+02	General- und Spezialkarten Mappe I_0051	breit, Leiter, Beunde		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
556	2018-06-12 15:11:06.805821+02	2019-05-13 15:31:41.897389+02	General- und Spezialkarten Mappe I_0052	Ergetag, Pfinztag, Pfeit		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
557	2018-06-12 15:23:07.067679+02	2019-05-13 15:32:25.880684+02	General- und Spezialkarten Mappe I_0053	tenk, Kirchtag, Fasching		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
554	2018-06-08 14:33:19.955046+02	2019-05-13 15:19:58.241372+02	General- und Spezialkarten Mappe I_0050	Walger, Klôtze, Kuchel		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
559	2018-06-12 15:29:30.870409+02	2019-05-13 15:35:42.984988+02	General- und Spezialkarten Mappe I_0055	Pfeit, tank-		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
558	2018-06-12 15:27:36.909667+02	2019-05-13 15:34:58.615519+02	General- und Spezialkarten Mappe I_0054	Ergetag Pfinztag		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
560	2018-06-12 15:33:01.110558+02	2019-05-13 15:37:37.599177+02	General- und Spezialkarten Mappe I_0056	Kirchtag, Fasching, Kuchel		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
561	2018-06-13 14:21:10.897932+02	2019-05-13 15:44:33.967063+02	General- und Spezialkarten Mappe I_0057	Rauchfang, ent		2000000	595	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
562	2018-06-13 14:22:38.891229+02	2019-05-13 15:45:25.61547+02	General- und Spezialkarten Mappe I_0058	breit, Leiter, Beunde		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
563	2018-06-13 14:24:10.152811+02	2019-05-13 15:49:43.52578+02	General- und Spezialkarten Mappe I_0059	Prein, Har, Knoflauch		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
564	2018-06-13 14:30:32.871486+02	2019-05-13 15:50:29.126849+02	General- und Spezialkarten Mappe I_0060	Walger, Klôtze		\N	\N	\N	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
566	2018-06-13 14:35:57.259983+02	2019-05-13 17:09:01.828236+02	General- und Spezialkarten Mappe I_0062	Pipe, Tähe(l)		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	4	4	\N
604	2018-06-18 13:30:44.355199+02	2018-06-18 13:32:30.248026+02	Schwarze Mappe diverse_0037	Endung		\N	23	15	\N	\N	\N	\N	\N	\N	\N	4	\N
603	2018-06-18 13:25:55.358176+02	2018-06-18 13:32:40.351442+02	Schwarze Mappe diverse_0036	?		\N	22	18	\N	\N	\N	\N	\N	\N	\N	4	\N
605	2018-06-18 13:33:26.36179+02	2018-06-18 13:33:26.361819+02	Schwarze Mappe diverse_0038	Vokal in "hätte"		\N	23	15	\N	\N	\N	\N	\N	\N	\N	4	\N
606	2018-06-18 13:34:51.943952+02	2018-06-18 13:34:51.94398+02	Schwarze Mappe diverse_0039	Grenzen bei		\N	23	15	\N	\N	\N	\N	\N	\N	\N	4	\N
607	2018-06-18 13:40:28.633861+02	2018-06-18 13:40:28.633887+02	Schwarze Mappe diverse_0040	mhd. in verschiedenen Wörtern		\N	23	15	\N	\N	\N	\N	\N	\N	\N	4	\N
608	2018-06-18 13:41:56.620878+02	2018-06-18 13:41:56.620902+02	Schwarze Mappe diverse_0041	mhd. ô in "rot"		\N	23	15	\N	\N	\N	\N	\N	\N	\N	4	\N
609	2018-06-18 13:43:19.098434+02	2018-06-18 13:43:19.098462+02	Schwarze Mappe diverse_0042	?		\N	32	24	\N	\N	\N	\N	\N	\N	\N	4	\N
618	2018-06-18 14:19:57.559198+02	2018-06-18 14:19:57.559225+02	Schwarze Mappe diverse_0051	Holz		\N	26	30	1935-03-03	1935-03-03	\N	\N	\N	\N	\N	4	\N
617	2018-06-18 14:18:01.30941+02	2018-06-18 14:20:29.055936+02	Schwarze Mappe diverse_0050	Mutterschaf		\N	26	30	1935-03-03	1935-03-03	\N	\N	\N	\N	\N	4	\N
616	2018-06-18 14:16:31.144654+02	2018-06-18 14:20:52.380267+02	Schwarze Mappe diverse_0049	[unleserlich]		\N	26	30	1935-02-20	1935-02-20	\N	\N	\N	\N	\N	4	\N
615	2018-06-18 14:14:48.080345+02	2018-06-18 14:21:04.878048+02	Schwarze Mappe diverse_0048	Großer Wagen (Sternbild)		\N	26	30	1934-12-13	1934-12-13	\N	\N	\N	\N	\N	4	\N
614	2018-06-18 14:05:55.736869+02	2018-06-18 14:21:20.798877+02	Schwarze Mappe diverse_0047	Wilde Jagd Österreich		\N	26	30	1932-04-20	1932-04-20	\N	\N	\N	\N	\N	4	\N
613	2018-06-18 14:02:07.283159+02	2018-06-18 14:21:38.730206+02	Schwarze Mappe diverse_0046	weiblicher Kinderschreck um Weihnachten		\N	26	30	1932-04-21	1932-04-21	\N	\N	\N	\N	\N	4	\N
612	2018-06-18 13:58:25.546632+02	2018-06-18 14:21:47.373725+02	Schwarze Mappe diverse_0045	sie stehen		\N	26	30	1930-02-26	1930-02-26	\N	\N	\N	\N	\N	4	\N
611	2018-06-18 13:56:32.297163+02	2018-06-18 14:21:59.13963+02	Schwarze Mappe diverse_0044	abgehackte Nadelbaumzweige		\N	26	30	1929-01-24	1929-01-24	\N	\N	\N	\N	\N	4	\N
610	2018-06-18 13:46:01.35033+02	2018-06-18 14:22:17.598377+02	Schwarze Mappe diverse_0043	Wetterleuchten		\N	26	30	1929-01-21	1929-01-21	\N	\N	\N	\N	\N	4	\N
568	2018-06-15 11:35:33.468645+02	2018-07-11 14:04:33.89428+02	Schwarze Mappe diverse_0001	Grundkarte	Als Titel steht auch tatsächlich "Grundkarte". Dabei handelt es sich um die DAÖ basemap 6.	\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
569	2018-06-15 11:41:03.86792+02	2018-07-11 15:00:20.444646+02	Schwarze Mappe diverse_0002	Grundkarte aus Zeitschrift für deutsche Mundarten 191/2	Grundkarte für Deutschland/deutschsprachiger Raum aus der Zeitschrift für deutsche Mundarten 19½, 1924, vgl. auch Teuthonista III, 1926/27 in welcher ersichtlich ist, dass die Grundkarte von F. Wrede ist. Die Karte in der ZfdM als auch in der Teuthonista scheinen identisch zu sein, weswegen Wrede der Kartenautor sein muss. Die Karte ist also im Kontext des Deutschen Sprachatlas (DSA) entstanden. \r\n\r\nHinweis: In der Teuthonista von 1926/27 sind linguistische Transparentkarten mitgeliefert, die auf die topographische Grundkarte zu legen sind.	5000000	30	24	\N	\N	\N	\N	\N	\N	\N	4	\N
620	2018-08-30 10:01:00.380621+02	2019-04-08 12:45:34.647028+02	ZuMappeITirol33-44_0001	I/40		\N	40	36	\N	\N	\N	\N	\N	\N	\N	4	\N
624	2018-08-30 10:28:31.223974+02	2019-04-08 12:45:04.179189+02	ZuMappeITirol33-44_0005	2. Herkunft der Ortsnamen		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
625	2018-08-30 10:53:51.179084+02	2019-04-08 12:44:58.193323+02	ZuMappeITirol33-44_0006	I/43 Volkstümlich-roman. Namen		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
627	2018-08-30 11:06:35.669298+02	2018-08-30 11:06:35.669326+02	ZuMappeITirol33-44_0008	I/40		\N	26	30	\N	\N	\N	\N	\N	\N	\N	4	\N
628	2018-08-30 11:11:53.277159+02	2018-08-30 11:11:53.277202+02	ZuMappeITirol33-44_0009	I/39 4. Die ing-Namen		\N	23	24	\N	\N	\N	\N	\N	\N	\N	4	\N
629	2018-08-30 11:17:28.114536+02	2018-08-30 11:17:28.114565+02	ZuMappeITirol33-44_0010	I/38 3. Vor der hochdeutschen Lautverschiebung eingedeutschte Namen		\N	23	25	\N	\N	\N	\N	\N	\N	\N	4	\N
631	2018-08-30 11:22:40.047315+02	2018-08-30 11:22:40.047343+02	ZuMappeITirol33-44_0012	I/ 36 6. Eingedeutschte Ortsnamen mit Tonverlegung		\N	23	26	\N	\N	\N	\N	\N	\N	\N	4	\N
630	2018-08-30 11:20:18.331646+02	2018-08-30 11:23:14.322103+02	ZuMappeITirol33-44_0011	Besiedlungskarte		\N	23	26	\N	\N	\N	\N	\N	\N	\N	4	\N
632	2018-08-30 11:24:49.612536+02	2018-08-30 11:24:49.612565+02	ZuMappeITirol33-44_0013	I/ 34 5. Vor 800 eingedeutschte Ortsnamen		\N	23	26	\N	\N	\N	\N	\N	\N	\N	4	\N
633	2018-08-30 11:26:12.278002+02	2018-08-30 11:26:12.278031+02	ZuMappeITirol33-44_0014	I/35		\N	25	30	\N	\N	\N	\N	\N	\N	\N	4	\N
634	2018-08-30 11:27:31.266197+02	2018-08-30 11:27:31.266227+02	ZuMappeITirol33-44_0015	Tonverlegung		\N	24	30	\N	\N	\N	\N	\N	\N	\N	4	\N
635	2018-08-30 11:30:10.401262+02	2018-08-30 11:30:10.401296+02	ZuMappeITirol33-44_0016	Titelblatt		\N	23	31	\N	\N	\N	\N	\N	\N	\N	4	\N
702	2018-09-11 17:21:45.232424+02	2018-09-11 17:21:45.232456+02	Diverse Lade 14_0041	Verteilung der Siedlungsnamen		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
725	2018-09-12 13:29:09.930088+02	2018-09-12 13:29:09.930122+02	Diverse Lade 14_0064	[ohne Titel]		\N	47	20	\N	\N	\N	\N	\N	\N	\N	4	\N
731	2018-09-13 14:04:59.571971+02	2018-09-13 14:04:59.572004+02	Diverse Lade 14_0070	[ohne Titel]		\N	48	20	\N	\N	\N	\N	\N	\N	\N	4	\N
735	2018-09-13 14:12:56.702639+02	2018-09-13 14:12:56.70267+02	Diverse Lade 14_0074	Siedlungskarte Kärntens		600000	48	20	\N	\N	1826-01-01	1828-12-31	\N	\N	\N	4	\N
748	2018-09-27 11:37:06.244831+02	2018-11-12 11:12:19.259331+01	Materialien zum Atlas von Niederösterreich_0010	Karte der Ortsgemeindegrenzen von Niederösterreich		500000	50	45	\N	\N	1948-01-01	1948-01-31	\N	\N	\N	4	\N
756	2018-10-01 11:53:57.780367+02	2018-10-01 11:53:57.780416+02	Materialien zum Atlas von Niederösterreich_0018	Wald, Grünland und Ackerland in Niederösterreich		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
759	2018-10-01 13:38:34.722825+02	2018-10-01 13:38:34.722859+02	Materialien zum Atlas von Niederösterreich_0021	Der Haferanbau in Niederösterreich		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
761	2018-10-01 13:47:48.934771+02	2018-10-01 13:47:48.934811+02	Materialien zum Atlas von Niederösterreich_0023	Die Kornhektarerträge des Maises und der Getreidearten in Niederösterreich		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
763	2018-10-01 14:16:23.873141+02	2018-10-01 14:16:23.873178+02	Materialien zum Atlas von Niederösterreich_0025	Der Runkelrübenanbau in Niederösterreich		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
765	2018-10-02 13:49:09.606375+02	2018-10-02 13:49:09.606404+02	Materialien zum Atlas von Niederösterreich_0027	Die Industrie des Wiener Beckens		200000	58	46	1951-01-01	1951-12-31	1949-01-01	1949-12-31	\N	\N	4	4	\N
751	2018-09-27 12:53:01.248063+02	2018-11-12 16:46:03.620417+01	Materialien zum Atlas von Niederösterreich_0013	Die Verwaltungsgrenzen Niederösterreichs		500000	58	46	1951-01-01	1951-12-31	1950-09-01	1950-09-30	\N	\N	\N	4	\N
623	2018-08-30 10:17:06.603805+02	2019-04-08 12:45:18.055807+02	ZuMappeITirol33-44_0004	I/42 Deutsche Hausnamen		\N	30	25	\N	\N	\N	\N	\N	\N	\N	4	\N
622	2018-08-30 10:10:18.577062+02	2019-04-08 12:45:23.440702+02	ZuMappeITirol33-44_0003	I/42		\N	50	30	\N	\N	\N	\N	\N	\N	\N	4	\N
621	2018-08-30 10:05:40.274208+02	2019-04-08 12:45:28.983693+02	ZuMappeITirol33-44_0002	I/40		\N	50	60	\N	\N	\N	\N	\N	\N	\N	4	\N
706	2018-09-12 10:38:24.293373+02	2018-09-12 10:41:20.946033+02	Diverse Lade 14_0045	Herkunft der Ortsnamen		\N	44	25	\N	\N	\N	\N	\N	\N	\N	4	\N
644	2018-09-06 12:45:45.530386+02	2018-09-06 15:30:32.748723+02	Suggestive Karten Kärnten_0008	Rumpfungarn	-) Diese Karte ist aus einem Bestand lange nicht inventarisierter Karten der Wiener Wörterbuchkanzlei und ihren Nachfolgeorganisationen. Diese Karten, allesamt Fotokopien, wurden unter dem Begriff "Suggestive Karten Kärnten" zusammengefasst. Der Hintergrund ist folgender: Fast alle dieser Karten besitzen einen eindeutigen Kärnten-Bezug, wobei die sprachliche Situation und das "Grenzlanddeutschtum" eine besondere Rolle einnimmt. Insbesondere die politisch wild umstrittene Frage nach dem "Deutschtum" und dem "Windischen" kommt dabei wiederholt als Thema auf. Die Vermutung liegt nahe, dass diese Karten aufgrund ihrer thematischen Ausrichtung aus Beständen des "Instituts für Kärntner Landesforschung" stammen, welches der Linguist Eberhard Kranzmayer ab 1942 leitete. Dieses Institut war als Unterabteilung des SS-Ahnenerbes besonders im Sinne der völkischen "Kärntner Wissenschaft" ausgerichtet und beschäftigte sich u.a. mit Fragen der Grenzlandsprachen.\r\n\r\n-) Der Begriff der suggestiven Karte trifft im Eigentlichen nicht auf jede Karte aus diesem Set zu, allerdings ist die Grenze zur Suggestivität und Geopolitik fließend. Die suggestive Kartographie, auch "suggestive Kartographik" geht auf den Kartographen A. Hillen Ziegfeld zurück, der auch in dem Set mit einer Karte vertreten ist. Es geht dabei bei der s.K. ganz allgemein um eine dezidiert (geo-)politisch intendierte Darstellungsweise durch spezifische graphische Gestaltungsmittel (Pfeile wie aus dem Bereich der Militärkartographie, starke Kontraste etc.).\r\n\r\n-) Zu der vorliegenden Karte: Diese Karte stellt einen Zuschnitt einer Karte dar, die sich mit "Rumpfungarn" und den dort vorzufindenden deutschen Siedlungen beschäftigt. Dabei wird der Frage nach einem geschlossenen "reinen" deutschen Volksgebiet ebenso nachgegangen wie den sogenannten Mischgebieten und dem Außendeutschtum. Die Karte wurde offenkundig in der geopolitischen Zeitschrift "Deutsche Erde-Deutsches Volk" publiziert. Stempel von verschiedenen Institutionen sind ebenso auf der Karte zu finden und zwar ein Originalstempel vom "Reichsministerium des Innern" sowie ein Originalstempel des "Geographischen Instituts der Universität Wien."	250000	30	21	\N	\N	\N	\N	\N	\N	\N	4	\N
703	2018-09-11 17:29:11.126512+02	2018-09-11 17:29:11.12654+02	Diverse Lade 14_0042	vor 1000		400000	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
704	2018-09-12 10:26:45.59926+02	2018-09-12 10:26:45.5993+02	Diverse Lade 14_0043	-ach, Kollektiv		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
705	2018-09-12 10:29:51.142675+02	2018-09-12 10:29:51.142705+02	Diverse Lade 14_0044	-berg, Gupf		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
707	2018-09-12 10:42:05.930761+02	2018-09-12 10:42:05.930789+02	Diverse Lade 14_0046	Ves | Dorf		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
708	2018-09-12 10:46:54.884988+02	2018-09-12 10:46:54.885012+02	Diverse Lade 14_0047	-itz		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
709	2018-09-12 10:51:51.458487+02	2018-09-12 10:51:51.458522+02	Diverse Lade 14_0048	[unleserlich]		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
711	2018-09-12 11:04:42.09274+02	2018-09-12 11:05:58.298122+02	Diverse Lade 14_0050	Germanen		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
712	2018-09-12 11:09:30.118886+02	2018-09-12 11:09:30.118915+02	Diverse Lade 14_0051	Stämme u. Völker		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
713	2018-09-12 11:14:34.521398+02	2018-09-12 11:14:34.521427+02	Diverse Lade 14_0052	vor 900		400000	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
714	2018-09-12 12:14:29.556159+02	2018-09-12 12:14:29.556187+02	Diverse Lade 14_0053	K- in vorslaw. Namen		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
715	2018-09-12 12:16:40.1675+02	2018-09-12 12:16:40.167551+02	Diverse Lade 14_0054	Awaren		\N	48	27	\N	\N	\N	\N	\N	\N	\N	4	\N
716	2018-09-12 12:18:10.723311+02	2018-09-12 12:18:10.723376+02	Diverse Lade 14_0055	-je, -jane		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
717	2018-09-12 12:19:33.505307+02	2018-09-12 12:19:33.505351+02	Diverse Lade 14_0056	ice		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
718	2018-09-12 12:22:22.20227+02	2018-09-12 12:22:22.202304+02	Diverse Lade 14_0057	[ohne Titel]		\N	62	44	\N	\N	\N	\N	\N	\N	\N	4	\N
719	2018-09-12 12:38:49.181075+02	2018-09-12 12:38:49.181102+02	Diverse Lade 14_0058	Belegorte des Sudetendeutschen Wörterbuches		\N	52	33	\N	\N	\N	\N	\N	\N	\N	4	\N
720	2018-09-12 12:45:40.064482+02	2018-09-12 12:45:40.064513+02	Diverse Lade 14_0059	Die Mundartlandschaften der Steiermark		1500000	48	56	1966-01-01	1966-12-31	\N	\N	\N	\N	\N	4	\N
721	2018-09-12 12:56:39.657602+02	2018-09-12 12:56:39.657645+02	Diverse Lade 14_0060	Die Mundartlandschaften der Steiermark		1500000	48	56	1966-01-01	1966-12-31	\N	\N	\N	\N	\N	4	\N
722	2018-09-12 13:04:44.781187+02	2018-09-12 13:04:44.781221+02	Diverse Lade 14_0061	Atlas der Steiermark		\N	50	35	\N	\N	\N	\N	\N	\N	\N	4	\N
726	2018-09-12 13:31:47.941015+02	2018-09-12 13:31:47.941058+02	Diverse Lade 14_0065	vorslawische Namen		\N	48	27	\N	\N	\N	\N	\N	\N	\N	4	\N
728	2018-09-13 13:51:55.346157+02	2018-09-13 13:51:55.346201+02	Diverse Lade 14_0067	Alpe		\N	48	27	\N	\N	\N	\N	\N	\N	\N	4	\N
732	2018-09-13 14:06:24.327482+02	2018-09-13 14:06:24.327512+02	Diverse Lade 14_0071	[ohne Titel]		\N	48	20	\N	\N	\N	\N	\N	\N	\N	4	\N
736	2018-09-13 14:16:42.379283+02	2018-09-13 14:16:42.379312+02	Diverse Lade 14_0075	Änze, Gereder, Sage		2000000	42	43	\N	\N	\N	\N	\N	\N	\N	4	\N
745	2018-09-27 11:04:42.614829+02	2018-11-12 11:07:35.793347+01	Materialien zum Atlas von Niederösterreich_0007	Karte der Ortsgemeindegrenzen von Niederösterreich		500000	50	45	\N	\N	1948-01-01	1948-01-31	\N	\N	\N	4	\N
741	2018-09-27 10:37:58.205848+02	2018-09-27 10:37:58.205882+02	Materialien zum Atlas von Niederösterreich_0003	Ortsnamen mit den Grundwörtern -hausen, -heim, -hofen(-höfen), -kirchen		200000	45	32	\N	\N	\N	\N	\N	\N	\N	4	\N
749	2018-09-27 11:53:27.532012+02	2018-09-27 11:53:27.532046+02	Materialien zum Atlas von Niederösterreich_0011	[Deckblatt]		\N	50	45	\N	\N	\N	\N	\N	\N	\N	4	\N
752	2018-10-01 10:19:34.338968+02	2018-10-01 10:19:34.338993+02	Materialien zum Atlas von Niederösterreich_0014	Verzeichnis der Gemeinden von Niederösterreich		\N	58	46	\N	\N	1950-01-01	1950-12-31	\N	\N	\N	\N	\N
754	2018-10-01 11:47:09.984495+02	2018-10-01 11:47:09.984527+02	Materialien zum Atlas von Niederösterreich_0016	Die Phänologie Niederösterreichs I		1000000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
757	2018-10-01 11:55:47.788477+02	2018-10-01 11:55:47.788516+02	Materialien zum Atlas von Niederösterreich_0019	Der Roggenanbau in Niederösterreich		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
738	2018-09-13 16:14:53.832499+02	2019-04-01 12:59:04.010029+02	HellgraueMappe_0001	Österreich | Italien | Jugoslawien		200000	61	43	\N	\N	\N	\N	\N	\N	\N	4	\N
641	2018-09-06 12:23:30.546397+02	2018-09-11 10:48:10.981728+02	Suggestive Karten Kärnten_0005	Politische Übersichtskarte von Kärnten (1923)	-) Diese Karte ist aus einem Bestand lange nicht inventarisierter Karten der Wiener Wörterbuchkanzlei und ihren Nachfolgeorganisationen. Diese Karten, allesamt Fotokopien, wurden unter dem Begriff "Suggestive Karten Kärnten" zusammengefasst. Der Hintergrund ist folgender: Fast alle dieser Karten besitzen einen eindeutigen Kärnten-Bezug, wobei die sprachliche Situation und das "Grenzlanddeutschtum" eine besondere Rolle einnimmt. Insbesondere die politisch wild umstrittene Frage nach dem "Deutschtum" und dem "Windischen" kommt dabei wiederholt als Thema auf. Die Vermutung liegt nahe, dass diese Karten aufgrund ihrer thematischen Ausrichtung aus Beständen des "Instituts für Kärntner Landesforschung" stammen, welches der Linguist Eberhard Kranzmayer ab 1942 leitete. Dieses Institut war als Unterabteilung des SS-Ahnenerbes besonders im Sinne der völkischen "Kärntner Wissenschaft" ausgerichtet und beschäftigte sich u.a. mit Fragen der Grenzlandsprachen.\r\n\r\n-) Der Begriff der suggestiven Karte trifft im Eigentlichen nicht auf jede Karte aus diesem Set zu, allerdings ist die Grenze zur Suggestivität und Geopolitik fließend. Die suggestive Kartographie, auch "suggestive Kartographik" geht auf den Kartographen A. Hillen Ziegfeld zurück, der auch in dem Set mit einer Karte vertreten ist. Es geht dabei bei der s.K. ganz allgemein um eine dezidiert (geo-)politisch intendierte Darstellungsweise durch spezifische graphische Gestaltungsmittel (Pfeile wie aus dem Bereich der Militärkartographie, starke Kontraste etc.).\r\n\r\n-) Zu der vorliegenden Karte: Im Eigentlichen handelt es sich hier um zwei Karten auf einem Blatt (Fotokopie) die, nach einer handschriftlichen Notiz aus dem Kärntner Heimatatlas des Jahres 1925 stammen dürften. Die erste Karte trägt den Titel "Politische Übersichtskarte von Kärnten (1923)".\r\n. Unterhalb der Karte findet sich eine weitere, kleinere Karte, die in einem anderen Maßstab die "Volksabstimmungszonen 1920 und Gebietsverluste 1919" visualisiert. Entworfen hat die Karte Martin Wutte.\r\nAuf der Fotokopie ist ein Originalstempel des "Geographischen Instituts der Universität Wien" zu finden.	500000	30	21	1925-01-01	1925-12-31	\N	\N	\N	\N	\N	4	\N
723	2018-09-12 13:17:30.763903+02	2018-09-12 13:17:30.763932+02	Diverse Lade 14_0062	Karte zum Wörterbuch der Bairischen Mundarten in Österreich		2000000	63	48	\N	\N	\N	\N	\N	\N	\N	4	\N
727	2018-09-12 13:35:09.855924+02	2018-09-12 13:35:09.855953+02	Diverse Lade 14_0066	-heim, -hausen, -ing, -kirchen, -hofen, -stätten		\N	48	27	\N	\N	\N	\N	\N	\N	\N	4	\N
729	2018-09-13 13:55:10.900762+02	2018-09-13 13:55:10.90079+02	Diverse Lade 14_0068	Dorf-Veß		\N	48	27	\N	\N	\N	\N	\N	\N	\N	4	\N
733	2018-09-13 14:09:12.765442+02	2018-09-13 14:09:12.765471+02	Diverse Lade 14_0072	Dorf - Ves		\N	48	27	\N	\N	\N	\N	\N	\N	\N	4	\N
737	2018-09-13 14:18:02.808351+02	2018-09-13 14:18:02.808382+02	Diverse Lade 14_0076	Kirchtag, tenk, Fasching		2000000	42	43	\N	\N	\N	\N	\N	\N	\N	4	\N
742	2018-09-27 10:43:25.449058+02	2018-11-12 10:54:27.140101+01	Materialien zum Atlas von Niederösterreich_0004	Ortsnamen mit dem Grundwort "-dorf"		200000	45	32	\N	\N	\N	\N	\N	\N	\N	4	\N
746	2018-09-27 11:09:34.159183+02	2018-09-27 11:09:34.159215+02	Materialien zum Atlas von Niederösterreich_0008	Verzeichnis zur Karte der Ortsgemeindegrenzen von Niederösterreich		\N	50	45	\N	\N	\N	\N	\N	\N	\N	4	\N
753	2018-10-01 10:24:37.396688+02	2018-10-01 10:24:37.396723+02	Materialien zum Atlas von Niederösterreich_0015	Die Landschaften Niederösterreichs		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	\N	\N
755	2018-10-01 11:51:37.878117+02	2018-10-01 11:51:37.878149+02	Materialien zum Atlas von Niederösterreich_0017	Die Phänologie Niederösterreichs II		1000000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
758	2018-10-01 13:26:44.481583+02	2018-10-01 13:26:44.481615+02	Materialien zum Atlas von Niederösterreich_0020	Der Weizenanbau in Niederösterreich		500000	85	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
760	2018-10-01 13:41:47.755812+02	2018-10-01 13:41:47.755845+02	Materialien zum Atlas von Niederösterreich_0022	Der Gerstenanbau in Niederösterreich		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
762	2018-10-01 13:59:47.453726+02	2018-10-01 14:05:31.708474+02	Materialien zum Atlas von Niederösterreich_0024	Der Kartoffelanbau in Niederösterreich		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
764	2018-10-01 14:20:00.094904+02	2018-10-01 14:20:00.094936+02	Materialien zum Atlas von Niederösterreich_0026	Die Industrie Niederösterreichs		500000	58	46	1951-01-01	1951-12-31	1949-02-01	1949-02-28	\N	\N	4	4	\N
766	2018-10-02 13:54:10.884917+02	2018-10-02 13:55:42.073452+02	Materialien zum Atlas von Niederösterreich_0028	Die Industrie Niederösterreichs südlich der Donau		500000	58	46	1951-01-01	1951-12-31	1949-01-01	1950-01-01	\N	\N	4	4	\N
767	2018-10-02 14:03:50.734312+02	2018-10-02 14:03:50.734348+02	Materialien zum Atlas von Niederösterreich_0029	Die Elektrizitätsversorgung Niederösterreichs		500000	58	46	1951-01-01	1951-12-31	1949-01-01	1949-01-31	\N	\N	4	4	\N
768	2018-10-02 14:20:48.14386+02	2018-10-02 14:20:48.143892+02	Materialien zum Atlas von Niederösterreich_0030	Die territoriale Entwicklung von Mark und Herzogtum Österreich		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	4	4	\N
769	2018-10-04 11:18:31.807713+02	2018-10-04 11:18:31.807747+02	Materialien zum Atlas von Niederösterreich_0031	[Deckblatt]		\N	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
770	2018-10-04 11:22:26.638816+02	2018-10-04 11:22:26.638848+02	Materialien zum Atlas von Niederösterreich_0032	Formen der bäuerlichen Siedlung in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
771	2018-10-04 11:27:24.570131+02	2018-10-04 11:27:24.570164+02	Materialien zum Atlas von Niederösterreich_0033	Stadt- und Marktformen in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
772	2018-10-04 11:34:30.53554+02	2018-10-04 11:34:30.535578+02	Materialien zum Atlas von Niederösterreich_0034	Industriegegenden in Niederösterreich bis 1840		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
773	2018-10-04 11:44:30.604344+02	2018-10-04 13:11:07.758723+02	Materialien zum Atlas von Niederösterreich_0035	Die Industrie Niederösterreichs 1855		500000	58	46	1952-01-01	1952-12-31	1855-01-01	1855-12-31	\N	\N	4	4	\N
774	2018-10-04 12:15:15.291025+02	2018-10-04 13:11:23.727735+02	Materialien zum Atlas von Niederösterreich_0036	Die Industrie Niederösterreichs 1928		500000	58	46	1952-01-01	1952-12-31	1928-01-01	1928-12-31	\N	\N	4	4	\N
775	2018-10-04 12:49:38.602786+02	2018-10-04 13:11:38.039222+02	Materialien zum Atlas von Niederösterreich_0037	Wahre Jahresmittel der Temperatur in Niederösterreich (1881-1950)		500000	58	46	1952-01-01	1952-12-31	1881-01-01	1950-12-31	\N	\N	4	4	\N
776	2018-10-04 12:53:08.103972+02	2018-10-04 13:11:53.045179+02	Materialien zum Atlas von Niederösterreich_0038	Die Tierwelt in Niederösterreich		1000000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
777	2018-10-04 13:06:14.471246+02	2018-10-04 13:12:04.694483+02	Materialien zum Atlas von Niederösterreich_0039	Naturgesetzliche Einheiten der Pflanzendecke in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
778	2018-10-04 13:08:47.994366+02	2018-10-04 13:12:17.906415+02	Materialien zum Atlas von Niederösterreich_0040	Der Rückzug des Weinbaues im Österreichischen Donauraum seit 1960		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
779	2018-10-04 13:15:15.558088+02	2018-10-04 13:15:15.558126+02	Materialien zum Atlas von Niederösterreich_0041	Der Weinbau in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
780	2018-10-04 13:18:15.373668+02	2018-10-04 13:18:15.373696+02	Materialien zum Atlas von Niederösterreich_0042	Formen der Bodennutzung in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
781	2018-10-04 13:21:31.770905+02	2018-10-04 13:21:31.770933+02	Materialien zum Atlas von Niederösterreich_0043	Der Kleeanbau in Niderösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
782	2018-10-04 13:24:58.982809+02	2018-10-04 13:24:58.982836+02	Materialien zum Atlas von Niederösterreich_0044	Der Luzerneanbau in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
783	2018-10-04 14:52:08.847194+02	2018-10-04 14:52:08.847227+02	Materialien zum Atlas von Niederösterreich_0045	Der Körnermaisanbau in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
784	2018-10-04 14:55:06.746048+02	2018-10-04 14:55:06.746081+02	Materialien zum Atlas von Niederösterreich_0046	Der Flachs- und Zuckerrübenanbau in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
750	2018-09-27 12:35:32.696212+02	2018-11-12 16:42:16.288454+01	Materialien zum Atlas von Niederösterreich_0012	Die Oberflächenformen Niederösterreichs		500000	58	46	1951-01-01	1951-12-31	\N	\N	\N	\N	\N	4	\N
638	2018-09-06 11:24:16.936919+02	2018-09-07 15:00:53.483481+02	Suggestive Karten Kärnten_0002	Grenze Kärnten/Slowenien (Jugoslawien)/Italien	-) Diese Karte ist aus einem Bestand lange nicht inventarisierter Karten der Wiener Wörterbuchkanzlei und ihren Nachfolgeorganisationen. Diese Karten, allesamt Fotokopien, wurden unter dem Begriff "Suggestive Karten Kärnten" zusammengefasst. Der Hintergrund ist folgender: Fast alle dieser Karten besitzen einen eindeutigen Kärnten-Bezug, wobei die sprachliche Situation und das "Grenzlanddeutschtum" eine besondere Rolle einnimmt. Insbesondere die politisch wild umstrittene Frage nach dem "Deutschtum" und dem "Windischen" kommt dabei wiederholt als Thema auf. Die Vermutung liegt nahe, dass diese Karten aufgrund ihrer thematischen Ausrichtung aus Beständen des "Instituts für Kärntner Landesforschung" stammen, welches der Linguist Eberhard Kranzmayer ab 1942 leitete. Dieses Institut war als Unterabteilung des SS-Ahnenerbes besonders im Sinne der völkischen "Kärntner Wissenschaft" ausgerichtet und beschäftigte sich u.a. mit Fragen der Grenzlandsprachen.\r\n\r\n-) Der Begriff der suggestiven Karte trifft im Eigentlichen nicht auf jede Karte aus diesem Set zu, allerdings ist die Grenze zur Suggestivität und Geopolitik fließend. Die suggestive Kartographie, auch "suggestive Kartographik" geht auf den Kartographen A. Hillen Ziegfeld zurück, der auch in dem Set mit einer Karte vertreten ist. Es geht dabei bei der s.K. ganz allgemein um eine dezidiert (geo-)politisch intendierte Darstellungsweise durch spezifische graphische Gestaltungsmittel (Pfeile wie aus dem Bereich der Militärkartographie, starke Kontraste etc.).\r\n\r\n-) Zu der vorliegenden Karte: Die Karte, eine Fotokopie, stellt  das Übergangsgebiet Kärnten/Jugoslawien/Italien dar und beinhaltet vor allem topographische Informationen (Ortspunkte). Da keine Legende beigelegt ist, ist unklar, was die Liniensignaturen und Flächensignaturen auf der Karte genau bedeuten. Auffällig ist hier abermals die kontrastreiche schwarze Einfärbung. Wer der Urheber der Karte ist, wo und in welchem Zusammenhang diese Karte publiziert wurde, ist leider nicht ersichtlich. Stempel von verschiedenen Institutionen sind auf der Karte zu finden und zwar ein Originalstempel vom "Reichsministerium des Innern", ein Originalstempel des "Geographischen Instituts der Universität Wien" sowie eine handschriftliche Aufschrift mit der Information, dass die Karte dem Institut für Grenz- und Auslandsstudien zugeordnet ist und aus dem Jahr 1937 stammt. Diese handschriftliche Notiz ist vermutlich auf dem Original der Fotokopie zu finden und wurde nicht erst auf die Fotokopie notiert.	\N	30	21	1937-01-01	1937-12-31	\N	\N	\N	\N	\N	4	\N
649	2018-09-10 15:08:11.884453+02	2018-09-10 16:25:30.424524+02	Synonymenkarten_0005	9. Verbreitung der Synonyma für "Donnerstag"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
662	2018-09-10 16:24:14.219395+02	2018-09-10 16:24:14.219429+02	Synonymenkarten2_0001	1. Verbreitung der Synonyma für "Kinn"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
645	2018-09-10 14:36:54.748859+02	2018-09-10 16:24:37.905158+02	Synonymenkarten_0001	7. Geschichte der Lautformen und des Geschlechtes von "Mittwoch"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
646	2018-09-10 15:01:36.952751+02	2018-09-10 16:24:59.39732+02	Synonymenkarten_0002	6. Lautformen von "Mittwoch"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
647	2018-09-10 15:04:05.23086+02	2018-09-10 16:25:07.169059+02	Synonymenkarten_0003	5. Mhd e im Worte "Ergetag"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
648	2018-09-10 15:05:58.402638+02	2018-09-10 16:25:13.657273+02	Synonymenkarten_0004	6. Lautformen von "Mittwoch"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
650	2018-09-10 15:15:15.833593+02	2018-09-10 16:25:49.8686+02	Synonymenkarten_0006	7. Mhd. or im Worte "Ort"		\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	\N
651	2018-09-10 15:20:31.648722+02	2018-09-10 16:25:56.155672+02	Synonymenkarten_0007	3. Mhd. iu im Worte "Keue" (Kinn)		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
652	2018-09-10 15:23:09.292701+02	2018-09-10 16:26:03.405918+02	Synonymenkarten_0008	10. Verbreitung der Synonyma und Formen für "Samstag"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
653	2018-09-10 15:24:46.805617+02	2018-09-10 16:26:09.335895+02	Synonymenkarten_0009	Verbreitung der Synonyma für "Gehirn"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
654	2018-09-10 15:30:33.577871+02	2018-09-10 16:26:27.736556+02	Synonymenkarten_0010	1. Mhd â, °a im Worte "Montag"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
655	2018-09-10 15:31:58.414546+02	2018-09-10 16:26:34.187409+02	Synonymenkarten_0011	Verbreitung der Synonyma für "Karsamstag"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
656	2018-09-10 15:54:12.918942+02	2018-09-10 16:26:41.302134+02	Synonymenkarten_0012	Grundkarte il in wild, Bild		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
657	2018-09-10 15:56:11.520879+02	2018-09-10 16:26:48.259295+02	Synonymenkarten_0013	Grundkarte (bunt)		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
658	2018-09-10 15:58:23.137725+02	2018-09-10 16:27:08.914813+02	Synonymenkarten_0014	Grundkarte (schwar und bunt)		2800000	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
659	2018-09-10 15:59:43.929244+02	2018-09-10 16:27:14.944137+02	Synonymenkarten_0015	Verbreitung der Synonyme für "Karsamstag"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
660	2018-09-10 16:00:59.812198+02	2018-09-10 16:27:20.95285+02	Synonymenkarten_0016	Grundkarte		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
661	2018-09-10 16:02:54.204002+02	2018-09-10 16:27:29.390927+02	Synonymenkarten_0017	Grundkarte (Hirn?)		\N	23	28	1925-12-19	1925-12-19	\N	\N	\N	\N	\N	4	\N
663	2018-09-10 16:28:49.309234+02	2018-09-10 16:28:49.309262+02	Synonymenkarten2_0002	2. Verbreitung der Synonyma für "Stirne"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
664	2018-09-10 16:31:39.407395+02	2018-09-10 16:31:39.407425+02	Synonymenkarten2_0003	3. Mhd. iu im Worte "Keue" (Kinn)		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
665	2018-09-10 16:32:59.386849+02	2018-09-10 16:32:59.386878+02	Synonymenkarten2_0004	4. Mhd. iu im Worte "neu"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
666	2018-09-10 16:34:55.197623+02	2018-09-10 16:34:55.197651+02	Synonymenkarten2_0005	5. Mhd. ô im Worte "rot"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
667	2018-09-10 16:36:12.05586+02	2018-09-10 16:36:12.0559+02	Synonymenkarten2_0006	6. Mhd o und r im Worte "Dorf"		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
724	2018-09-12 13:25:42.96061+02	2018-09-12 13:25:42.960637+02	Diverse Lade 14_0063	[unleserlich]		\N	47	38	\N	\N	\N	\N	\N	\N	\N	4	\N
730	2018-09-13 14:00:29.724295+02	2018-09-13 14:00:29.724324+02	Diverse Lade 14_0069	-drof = Namen		400000	52	29	\N	\N	\N	\N	\N	\N	\N	4	\N
734	2018-09-13 14:10:45.465316+02	2018-09-13 14:10:45.465358+02	Diverse Lade 14_0073	-ina, -in		\N	48	20	\N	\N	\N	\N	\N	\N	\N	4	\N
743	2018-09-27 10:50:45.91138+02	2018-09-27 10:50:45.911415+02	Materialien zum Atlas von Niederösterreich_0005	Gewässernamen als Siedlungsnamen		200000	45	32	\N	\N	\N	\N	\N	\N	\N	4	\N
637	2018-09-05 14:29:50.268765+02	2019-09-24 16:22:03.692416+02	Suggestive Karten Kärnten_0001	Sprachenkarte von Kärnten	-) Diese Karte ist aus einem Bestand lange nicht inventarisierter Karten der Wiener Wörterbuchkanzlei und ihren Nachfolgeorganisationen. Diese Karten, allesamt Fotokopien, wurden unter dem Begriff "Suggestive Karten Kärnten" zusammengefasst. Der Hintergrund ist folgender: Fast alle dieser Karten besitzen einen eindeutigen Kärnten-Bezug, wobei die sprachliche Situation und das "Grenzlanddeutschtum" eine besondere Rolle einnimmt. Insbesondere die politisch wild umstrittene Frage nach dem "Deutschtum" und dem "Windischen" kommt dabei wiederholt als Thema auf. Die Vermutung liegt nahe, dass diese Karten aufgrund ihrer thematischen Ausrichtung aus Beständen des "Instituts für Kärntner Landesforschung" stammen, welches der Linguist Eberhard Kranzmayer ab 1942 leitete. Dieses Institut war als Unterabteilung des SS-Ahnenerbes besonders im Sinne der völkischen "Kärntner Wissenschaft" ausgerichtet und beschäftigte sich u.a. mit Fragen der Grenzlandsprachen.\r\n\r\n-) Der Begriff der suggestiven Karte trifft im Eigentlichen nicht auf jede Karte aus diesem Set zu, allerdings ist die Grenze zur Suggestivität und Geopolitik fließend. Die suggestive Kartographie, auch "suggestive Kartographik" geht auf den Kartographen A. Hillen Ziegfeld zurück, der auch in dem Set mit einer Karte vertreten ist. Es geht dabei bei der s.K. ganz allgemein um eine dezidiert (geo-)politisch intendierte Darstellungsweise durch spezifische graphische Gestaltungsmittel (Pfeile wie aus dem Bereich der Militärkartographie, starke Kontraste etc.).\r\n\r\n-) Zu der vorliegenden Karte: Die Karte, eine Fotokopie, stellt eine demographisch-sprachliche Übersicht der sprachlichen Zustände in Kärnten 1919 und 1920 (Gebietsabtretungen aufgrund des Vertrages von St. Germain an Italien und Jugoslawien sowie Kärntner Volksabstimmung 1920) dar, wobei besonderes Augenmerk auf den Unterschied von "Deutsch" und "Slawisch" gelegt wird. Insbesondere "Südslawien" wird dabei sehr kontrastreich durch die schwarze Einfärbung visualisiert. Aufgrund ihrer Unübersichtlichkeit kann diese Karte zwar nicht als typische Suggestivkarte bezeichnet werden, allerdings zeichnete sich der Kartograph A. Hillen Ziegfeld für eben jene Karte verantwortlich. Interessant ist dabei auch die offenkundige Zusammenarbeit mit dem Kärntner Landeshistoriker Martin Wutte (er machte den Entwurf der Karte), ein wichtiger Vertreter der sogenannten Kärntner Wissenschaft. Eine Zusammenarbeit von Wutte mit Ziegfeld, den man aufgrund seiner suggestiven Kartographik kennt, war bis zum jetzigen Zeitpunkt nicht bekannt. Wo und in welchem Zusammenhang diese Karte publiziert wurde, ist leider nicht klar ersichtlich. Stempel von verschiedenen Institutionen sind auf der Karte zu finden und zwar ein Originalstempel vom "Reichsministerium des Innern", ein Originalstempel des "Geographischen Instituts der Universität Wien" sowie eine Markierung des "Instituts für Grenz- und Auslandsstudien e.V.", die aber vermutlich auf dem Original der Fotokopie zu finden ist und wurde nicht erst auf die Fotokopie notiert.	\N	30	21	\N	\N	1919-09-10	1920-10-10	\N	\N	4	4	\N
642	2018-09-06 12:35:35.191947+02	2018-09-11 11:48:35.001868+02	Suggestive Karten Kärnten_0006	Territoriale Entwicklung Kärntens	-) Diese Karte ist aus einem Bestand lange nicht inventarisierter Karten der Wiener Wörterbuchkanzlei und ihren Nachfolgeorganisationen. Diese Karten, allesamt Fotokopien, wurden unter dem Begriff "Suggestive Karten Kärnten" zusammengefasst. Der Hintergrund ist folgender: Fast alle dieser Karten besitzen einen eindeutigen Kärnten-Bezug, wobei die sprachliche Situation und das "Grenzlanddeutschtum" eine besondere Rolle einnimmt. Insbesondere die politisch wild umstrittene Frage nach dem "Deutschtum" und dem "Windischen" kommt dabei wiederholt als Thema auf. Die Vermutung liegt nahe, dass diese Karten aufgrund ihrer thematischen Ausrichtung aus Beständen des "Instituts für Kärntner Landesforschung" stammen, welches der Linguist Eberhard Kranzmayer ab 1942 leitete. Dieses Institut war als Unterabteilung des SS-Ahnenerbes besonders im Sinne der völkischen "Kärntner Wissenschaft" ausgerichtet und beschäftigte sich u.a. mit Fragen der Grenzlandsprachen.\r\n\r\n-) Der Begriff der suggestiven Karte trifft im Eigentlichen nicht auf jede Karte aus diesem Set zu, allerdings ist die Grenze zur Suggestivität und Geopolitik fließend. Die suggestive Kartographie, auch "suggestive Kartographik" geht auf den Kartographen A. Hillen Ziegfeld zurück, der auch in dem Set mit einer Karte vertreten ist. Es geht dabei bei der s.K. ganz allgemein um eine dezidiert (geo-)politisch intendierte Darstellungsweise durch spezifische graphische Gestaltungsmittel (Pfeile wie aus dem Bereich der Militärkartographie, starke Kontraste etc.).\r\n\r\n-)  Zu der vorliegenden Karte: Die  Karte trägt den Titel "Territoriale Entwicklung Kärntens" und stammt, nach einer handschriftlichen Notiz, aus dem Kärntner Heimatatlas des Jahres 1925.  Wie aus der Legende ersichtlich geht es um die Frage der Herzogtümer und Grafschaften im Kärnten des 10. Jahrhunderts. Entworfen hat die Karte Martin Wutte. Auf der fotokopierten Karte ist ein Originalstempel des "Geographischen Instituts der Universität Wien" zu finden.	1500000	30	21	1925-01-01	1925-12-31	\N	\N	\N	\N	\N	\N	\N
668	2018-09-11 14:59:13.794304+02	2018-09-11 15:00:47.418397+02	Diverse Lade 14_0001	Kärnten		\N	47	39	\N	\N	\N	\N	\N	\N	\N	4	\N
669	2018-09-11 15:10:08.962014+02	2018-09-11 15:11:27.273998+02	Diverse Lade 14_0002	Österreich | Italien | Jugoslawien		200000	61	43	\N	\N	\N	\N	\N	\N	\N	4	\N
670	2018-09-11 15:13:41.335687+02	2018-09-11 15:13:41.33572+02	Diverse Lade 14_0003	Österreich | Italien | Jugoslawien		200000	61	43	\N	\N	\N	\N	\N	\N	\N	4	\N
671	2018-09-11 15:20:14.734977+02	2018-09-11 15:20:26.564806+02	Diverse Lade 14_0004	hellblaue Karte		\N	61	42	\N	\N	\N	\N	\N	\N	\N	4	\N
672	2018-09-11 15:28:58.470723+02	2018-09-11 15:28:58.470753+02	Diverse Lade 14_0005	hellblaue Karte		\N	61	42	\N	\N	\N	\N	\N	\N	\N	4	\N
673	2018-09-11 15:34:20.438445+02	2018-09-11 15:34:20.438474+02	Diverse Lade 14_0010	Kornout		\N	57	42	\N	\N	1975-01-01	1975-12-31	\N	\N	\N	4	\N
674	2018-09-11 15:42:46.514516+02	2018-09-11 15:42:46.514544+02	Diverse Lade 14_0011	RAIJSKE JABLICKO		\N	57	42	\N	\N	\N	\N	\N	\N	\N	4	\N
675	2018-09-11 15:50:02.968405+02	2018-09-11 15:50:02.968438+02	Diverse Lade 14_0012	Kornout		\N	57	42	\N	\N	\N	\N	\N	\N	\N	4	\N
689	2018-09-11 16:34:14.893052+02	2018-09-11 16:34:14.89308+02	Diverse Lade 14_0026	Burgenland [Karte in Folie]		\N	21	30	\N	\N	\N	\N	\N	\N	\N	4	\N
690	2018-09-11 16:36:49.101304+02	2018-09-11 16:36:49.101354+02	Diverse Lade 14_0027	Tirol [Karte aufgeklebt]		\N	60	44	\N	\N	\N	\N	\N	\N	\N	4	\N
691	2018-09-11 16:39:09.34076+02	2018-09-11 16:39:09.340788+02	Diverse Lade 14_0028	Niederösterreich und Wien [Karte aufgeklebt]		\N	60	44	\N	\N	\N	\N	\N	\N	\N	4	\N
692	2018-09-11 16:40:40.658446+02	2018-09-11 16:40:40.658474+02	Diverse Lade 14_0029	Tirol [Karte aufgeklebt]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
676	2018-09-11 16:03:05.832494+02	2018-09-11 16:12:23.807637+02	Diverse Lade 14_0013	Salzburg [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
677	2018-09-11 16:04:22.029707+02	2018-09-11 16:12:29.472784+02	Diverse Lade 14_0014	Tirol [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
678	2018-09-11 16:06:23.031908+02	2018-09-11 16:12:35.586228+02	Diverse Lade 14_0015	Burgenland [Karte in Folie]		\N	21	30	\N	\N	\N	\N	\N	\N	\N	4	\N
679	2018-09-11 16:07:51.070403+02	2018-09-11 16:12:40.996291+02	Diverse Lade 14_0016	Niederösterreich und Wien [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
680	2018-09-11 16:11:06.671871+02	2018-09-11 16:12:57.588411+02	Diverse Lade 14_0017	Oberösterreich [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
681	2018-09-11 16:14:32.656127+02	2018-09-11 16:14:32.656156+02	Diverse Lade 14_0018	Kärnten [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
682	2018-09-11 16:15:59.090666+02	2018-09-11 16:15:59.090695+02	Diverse Lade 14_0019	Steiermark [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
683	2018-09-11 16:17:10.944583+02	2018-09-11 16:17:10.944614+02	Diverse Lade 14_0020	Salzburg [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
684	2018-09-11 16:23:02.155556+02	2018-09-11 16:23:02.155587+02	Diverse Lade 14_0021	Tirol [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
685	2018-09-11 16:24:21.764857+02	2018-09-11 16:24:21.764886+02	Diverse Lade 14_0022	Steiermark [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
686	2018-09-11 16:26:16.8207+02	2018-09-11 16:26:16.820728+02	Diverse Lade 14_0023	Kärnten [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
687	2018-09-11 16:29:11.148729+02	2018-09-11 16:29:11.148757+02	Diverse Lade 14_0024	Niederösterreich und Wien [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
688	2018-09-11 16:32:52.103679+02	2018-09-11 16:32:52.103707+02	Diverse Lade 14_0025	Oberösterreich [Karte in Folie]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
693	2018-09-11 16:43:03.485483+02	2018-09-11 16:43:03.485512+02	Diverse Lade 14_0030	Salzburg [Karte aufgeklebt]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
694	2018-09-11 16:45:06.710513+02	2018-09-11 16:45:06.71056+02	Diverse Lade 14_0031	Kärnten [Karte aufgeklebt]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
695	2018-09-11 16:52:00.418159+02	2018-09-11 16:52:00.418204+02	Diverse Lade 14_0032	Oberösterreich [Karte aufgeklebt]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
696	2018-09-11 16:55:17.58477+02	2018-09-11 16:55:17.5848+02	Diverse Lade 14_0033	Niederösterreich und Wien [Karte aufgeklebt]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
697	2018-09-11 16:56:33.529168+02	2018-09-11 16:56:33.529205+02	Diverse Lade 14_0034	Steiermark [Karte aufgeklebt]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
698	2018-09-11 16:58:55.801052+02	2018-09-11 16:58:55.801081+02	Diverse Lade 14_0035	Burgenland [Karte aufgeklebt]		\N	42	30	\N	\N	\N	\N	\N	\N	\N	4	\N
699	2018-09-11 17:02:09.468919+02	2018-09-11 17:02:09.468947+02	Diverse Lade 14_0036	Slovenia		\N	33	32	\N	\N	\N	\N	\N	\N	\N	4	\N
700	2018-09-11 17:16:54.378026+02	2018-09-11 17:19:33.963696+02	Diverse Lade 14_0039	1100		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
701	2018-09-11 17:19:54.647758+02	2018-09-11 17:19:54.647788+02	Diverse Lade 14_0040	-ern		\N	49	27	\N	\N	\N	\N	\N	\N	\N	4	\N
785	2018-10-04 14:56:59.372743+02	2018-10-04 14:56:59.372783+02	Materialien zum Atlas von Niederösterreich_0047	Der Wurzel- und Knollenfrüchteanbau in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
786	2018-10-04 14:58:44.748857+02	2018-10-04 14:58:44.74889+02	Materialien zum Atlas von Niederösterreich_0048	Hektarerträge der Hackfrüchte und des Feld- und Rauhfutters in Niederösterreich		1350000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
787	2018-10-04 15:01:56.786965+02	2018-10-04 15:01:56.786997+02	Materialien zum Atlas von Niederösterreich_0049	Quaden und Markomannen in Niederösterreich; Fundortkarte		1000000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
788	2018-10-04 15:14:55.97409+02	2018-10-04 15:14:55.974121+02	Materialien zum Atlas von Niederösterreich_0050	Säuglings- und Jugendfürsorgestellen in Niederösterreich		500000	58	46	1952-01-01	1952-12-31	\N	\N	\N	\N	4	4	\N
789	2018-10-22 12:36:28.639736+02	2018-10-22 12:37:17.801483+02	Bearbeitungszustand der Kartenbilder für die erste Lieferung_0001	[Deckblatt]		\N	26	30	\N	\N	\N	\N	\N	\N	\N	4	\N
790	2018-10-22 12:38:26.681519+02	2018-10-22 12:38:26.681552+02	Bearbeitungszustand der Kartenbilder für die erste Lieferung_0002	Seite 1		\N	26	30	\N	\N	\N	\N	\N	\N	\N	4	\N
791	2018-10-22 12:39:44.004647+02	2018-10-22 12:39:44.004681+02	Bearbeitungszustand der Kartenbilder für die erste Lieferung_0003	Seite 2		\N	26	30	\N	\N	\N	\N	\N	\N	\N	4	\N
792	2018-10-22 12:41:03.529415+02	2018-10-22 12:41:03.529448+02	Bearbeitungszustand der Kartenbilder für die erste Lieferung_0004	Seite 3		\N	26	30	\N	\N	\N	\N	\N	\N	\N	4	\N
794	2018-10-22 14:17:40.230811+02	2018-10-22 14:17:40.230844+02	Diverse_0002	Karte des östlichen Zentralladinien		600000	24	26	\N	\N	\N	\N	\N	\N	\N	4	\N
795	2018-10-22 14:25:52.237109+02	2018-10-22 14:25:52.237138+02	Diverse_0005	Die Mundarten-Geographie in Westböhmen		\N	41	30	\N	\N	\N	\N	\N	\N	\N	4	\N
796	2018-10-23 11:53:10.809271+02	2018-10-23 11:53:10.809302+02	Diverse_0007	Deutschmährische Heimat, Brünn		75000	63	47	\N	\N	\N	\N	\N	\N	\N	4	\N
798	2018-10-29 11:41:45.973521+01	2018-10-29 11:41:45.973559+01	Zu Mappe I Kärnten 25-32,47_0001	Grundkarte		\N	23	28	\N	\N	\N	\N	\N	\N	\N	4	\N
799	2018-10-29 11:47:26.412072+01	2018-10-29 11:47:26.412108+01	Zu Mappe I Kärnten 25-32,47_0002	Legende		\N	11	29	\N	\N	\N	\N	\N	\N	\N	4	\N
800	2018-10-29 11:51:09.403962+01	2018-10-29 11:51:51.640185+01	Zu Mappe I Kärnten 25-32,47_0003	I 47 Linien		\N	34.5	16	\N	\N	\N	\N	\N	\N	\N	4	\N
801	2018-10-29 11:53:16.635971+01	2018-10-29 11:53:16.636003+01	Zu Mappe I Kärnten 25-32,47_0004	I 32		\N	23	27.5	\N	\N	\N	\N	\N	\N	\N	4	\N
802	2018-10-29 12:14:51.94833+01	2018-10-29 12:14:51.948369+01	Zu Mappe I Kärnten 25-32,47_0005	Deutsches Rodungsgebiet		\N	52	28.5	\N	\N	\N	\N	\N	\N	\N	4	\N
803	2018-10-29 12:18:32.875863+01	2018-10-29 12:18:32.875895+01	Zu Mappe I Kärnten 25-32,47_0006	I 25		\N	44	21	\N	\N	\N	\N	\N	\N	\N	4	\N
804	2018-10-29 12:34:10.619742+01	2018-10-29 12:34:10.619775+01	Zu Mappe I Kärnten 25-32,47_0007	I 30		\N	52	29	\N	\N	\N	\N	\N	\N	\N	4	\N
805	2018-10-29 12:37:20.832243+01	2018-10-29 12:37:20.832274+01	Zu Mappe I Kärnten 25-32,47_0008	I 26		\N	44	21	\N	\N	\N	\N	\N	\N	\N	4	\N
806	2018-10-29 12:39:09.798674+01	2018-10-29 12:39:09.798719+01	Zu Mappe I Kärnten 25-32,47_0009	I 29		\N	44	21	\N	\N	\N	\N	\N	\N	\N	4	\N
807	2018-10-29 12:44:29.228613+01	2018-10-29 12:44:29.228646+01	Zu Mappe I Kärnten 25-32,47_0010	I 27 (-ing Namen)		\N	51	29	\N	\N	\N	\N	\N	\N	\N	4	\N
808	2018-10-29 12:47:43.080456+01	2018-10-29 12:47:43.080488+01	Zu Mappe I Kärnten 25-32,47_0011	I 28 (Tonverlegung)		\N	52	28	\N	\N	\N	\N	\N	\N	\N	4	\N
809	2018-10-29 12:49:06.500291+01	2018-10-29 12:49:06.500323+01	Zu Mappe I Kärnten 25-32,47_0012	[Deckblatt]		\N	21	30	\N	\N	\N	\N	\N	\N	\N	4	\N
739	2018-09-19 16:10:33.446712+02	2018-11-12 10:48:34.151088+01	Materialien zum Atlas von Niederösterreich_0001	Im 13. Jahrhundert erstmalig urkundlich belegte Ortsnamen		200000	45	32	\N	\N	\N	\N	\N	\N	\N	4	\N
740	2018-09-19 16:27:33.588632+02	2018-11-12 10:48:46.139686+01	Materialien zum Atlas von Niederösterreich_0002	Im 13. Jahrhundert erstmalig urkundlich belegte Ortsnamen		200000	45	32	\N	\N	\N	\N	\N	\N	\N	4	\N
744	2018-09-27 10:58:32.587901+02	2018-11-12 11:06:51.532993+01	Materialien zum Atlas von Niederösterreich_0006	Karte der Ortsgemeindegrenzen von Niederösterreich		500000	50	45	\N	\N	1948-01-01	1948-01-31	\N	\N	\N	4	\N
747	2018-09-27 11:29:21.715616+02	2018-11-12 11:07:59.270223+01	Materialien zum Atlas von Niederösterreich_0009	Karte der Ortsgemeindegrenzen von Niederösterreich		500000	50	45	\N	\N	1948-01-01	1948-01-31	\N	\N	\N	4	\N
793	2018-10-22 12:56:41.423352+02	2019-11-04 15:57:24.392982+01	Diverse_0001	Aufbau und Verfall der niederösterreichischen Dialektlandschaft		1000000	58	56	1955-01-01	1955-12-31	\N	\N	\N	\N	4	4	\N
797	2018-10-23 11:55:50.428343+02	2019-01-04 15:33:22.286771+01	Diverse_0008	Sprachenkarte der Tschechoslowakischen Republik	Mit einem Vorwort des Bevölkerungswissenschaftlers Dr. Albin Oberschall.	1000000	55	40	\N	\N	\N	\N	\N	\N	\N	\N	\N
810	2018-11-26 12:07:45.611652+01	2018-11-26 12:42:28.06749+01	Karten in grauem Heft_0001	Kals		100000	22	29	\N	\N	1962-01-01	1962-12-31	\N	\N	\N	4	\N
811	2018-11-26 12:18:48.246622+01	2018-11-26 12:42:42.53329+01	Karten in grauem Heft_0002	Innervillgraten		75000	24	27	\N	\N	1968-01-01	1968-12-31	\N	\N	\N	4	\N
812	2018-11-26 12:21:26.085917+01	2018-11-26 12:43:03.701309+01	Karten in grauem Heft_0003	Obertilliach		50000	24	30	\N	\N	1969-01-01	1969-12-31	\N	\N	\N	4	\N
813	2018-11-26 12:23:21.549998+01	2018-11-26 12:43:24.405015+01	Karten in grauem Heft_0004	Görtschach-Grödnach		35000	28	22	\N	\N	1961-01-01	1961-12-31	\N	\N	\N	4	\N
814	2018-11-26 12:25:42.863223+01	2018-11-26 12:43:41.31513+01	Karten in grauem Heft_0005	Amlach		60000	26	22	\N	\N	1959-01-01	1959-12-31	\N	\N	\N	4	\N
815	2018-11-26 12:28:58.917631+01	2018-11-26 12:44:03.375909+01	Karten in grauem Heft_0006	Anras		70000	23	21	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
816	2018-11-26 12:33:01.423129+01	2018-11-26 12:44:18.478603+01	Karten in grauem Heft_0007	Asch mit Winkl		70000	29	22	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
817	2018-11-26 12:38:43.083402+01	2018-11-26 12:44:38.489317+01	Karten in grauem Heft_0008	Bannberg		2880	18	22	\N	\N	\N	\N	\N	\N	\N	4	\N
819	2018-11-26 12:46:54.68476+01	2018-11-26 12:46:54.684797+01	Karten in grauem Heft_0010	Dölsach		20000	19	24	\N	\N	1969-01-01	1969-12-31	\N	\N	\N	4	\N
820	2018-11-26 12:52:34.798559+01	2018-11-26 12:58:33.481204+01	Karten in grauem Heft_0011	Iselsberg		2880	21	24	\N	\N	1959-01-01	1959-12-31	\N	\N	\N	4	\N
822	2018-11-26 13:11:23.221796+01	2018-11-26 13:11:23.221829+01	Karten in grauem Heft_0013	Lienz		25000	26	22	\N	\N	\N	\N	\N	\N	\N	4	\N
823	2018-11-26 13:36:22.376357+01	2018-11-26 13:36:22.376385+01	Karten in grauem Heft_0014	Oberaßling		50000	22	25	\N	\N	1965-01-01	1965-12-31	\N	\N	\N	4	\N
824	2018-11-26 13:46:20.328224+01	2018-11-26 13:46:20.328257+01	Karten in grauem Heft_0015	Oberdrum		40000	22	26	\N	\N	1967-01-01	1967-12-31	\N	\N	\N	4	\N
825	2018-11-26 14:19:15.004643+01	2018-11-26 14:19:15.004678+01	Karten in grauem Heft_0016	Obergaimberg		50000	19	19	\N	\N	1963-01-01	1963-12-31	\N	\N	\N	4	\N
828	2018-11-26 14:26:55.751051+01	2018-11-26 14:26:55.751079+01	Karten in grauem Heft_0019	Patriasdorf		50000	19	22	\N	\N	1967-01-01	1967-12-31	\N	\N	\N	4	\N
829	2018-11-26 14:29:10.145405+01	2018-11-26 14:29:10.145454+01	Karten in grauem Heft_0020	St. Johann im Walde		60000	23	25	\N	\N	1963-01-01	1963-12-31	\N	\N	\N	4	\N
831	2018-11-26 14:35:07.824783+01	2018-11-26 14:35:07.82483+01	Karten in grauem Heft_0022	Stribach		25000	29	22	\N	\N	1961-01-01	1960-12-31	\N	\N	\N	4	\N
833	2018-11-26 14:42:46.192542+01	2018-11-26 14:42:46.192575+01	Karten in grauem Heft_0024	Thurn		50000	19	25	\N	\N	1964-01-01	1964-12-31	\N	\N	\N	4	\N
834	2018-11-26 14:48:51.589071+01	2018-11-26 14:48:51.589098+01	Karten in grauem Heft_0025	Tristach		50000	22	26	\N	\N	1962-01-01	1962-12-31	\N	\N	\N	4	\N
818	2018-11-26 12:41:31.254995+01	2018-11-26 14:51:20.421245+01	Karten in grauem Heft_0009	Burgfrieden		30000	23	25	\N	\N	1965-01-01	1965-12-31	\N	\N	\N	4	\N
821	2018-11-26 13:00:04.087506+01	2018-11-26 14:51:49.414549+01	Karten in grauem Heft_0012	Iselsberg		70000	25	22	\N	\N	1961-01-01	1961-12-31	\N	\N	\N	4	\N
826	2018-11-26 14:21:45.022621+01	2018-11-26 14:52:17.570555+01	Karten in grauem Heft_0017	Oberlienz		50000	25	21	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
827	2018-11-26 14:24:22.237076+01	2018-11-26 14:52:36.787914+01	Karten in grauem Heft_0018	Obernußdorf		100000	22	25	\N	\N	1964-01-01	1964-12-31	\N	\N	\N	4	\N
830	2018-11-26 14:31:39.042245+01	2018-11-26 14:53:11.761139+01	Karten in grauem Heft_0021	Schlaiten		60000	30	21	\N	\N	1961-01-01	1961-12-31	\N	\N	\N	4	\N
832	2018-11-26 14:38:28.111235+01	2018-11-26 14:53:32.142109+01	Karten in grauem Heft_0023	Stronach		25000	29	22	\N	\N	1959-01-01	1959-12-31	\N	\N	\N	4	\N
835	2018-11-26 15:09:18.718836+01	2018-11-26 15:09:18.718867+01	Karten in grauem Heft_0026	Unteraßling		40000	21	23	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
836	2018-11-26 15:13:01.700456+01	2018-11-26 15:13:01.700488+01	Karten in grauem Heft_0027	Untergaimberg		50000	15	19	\N	\N	1964-01-01	1964-12-31	\N	\N	\N	4	\N
837	2018-11-26 15:14:48.303199+01	2018-11-26 15:14:48.303227+01	Karten in grauem Heft_0028	Unternußdorf		20000	19	26	\N	\N	1969-01-01	1969-12-31	\N	\N	\N	4	\N
838	2018-11-26 15:23:16.027751+01	2018-11-26 15:23:16.027786+01	Karten in grauem Heft_0029	Hopfgarten in Defreggen		70000	27	24	\N	\N	1963-01-01	1963-12-31	\N	\N	\N	4	\N
839	2018-11-26 15:24:52.761404+01	2018-11-26 15:24:52.761449+01	Karten in grauem Heft_0030	Prägraten		100000	24	23	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
840	2018-11-26 15:26:54.92285+01	2018-11-26 15:26:54.922877+01	Karten in grauem Heft_0031	St. Jakob in Defreggen		100000	27	24	\N	\N	1961-01-01	1961-12-31	\N	\N	\N	4	\N
841	2018-11-26 15:28:42.747258+01	2018-11-26 15:28:42.747295+01	Karten in grauem Heft_0032	St. Veit in Defreggen		70000	31	22	\N	\N	1957-01-01	1957-12-31	\N	\N	\N	4	\N
842	2018-11-26 15:31:32.579429+01	2018-11-26 15:31:32.579473+01	Karten in grauem Heft_0033	Virgen		70000	28	24	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
843	2018-11-26 15:33:26.20145+01	2018-11-26 15:33:26.20149+01	Karten in grauem Heft_0034	Tirol		\N	22	23	\N	\N	\N	\N	\N	\N	\N	4	\N
844	2018-11-26 15:35:04.082689+01	2018-11-26 15:35:04.082732+01	Karten in grauem Heft_0035	Hollbruck		50000	22	23	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
845	2018-11-26 15:36:39.028314+01	2018-11-26 15:36:39.028349+01	Karten in grauem Heft_0036	Kartitsch		50000	31	23	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
846	2018-11-26 15:39:53.123482+01	2018-11-26 15:39:53.123519+01	Karten in grauem Heft_0037	Panzendorf		2880	28	22	\N	\N	\N	\N	\N	\N	\N	4	\N
847	2018-11-26 15:41:31.2348+01	2018-11-26 15:41:31.23483+01	Karten in grauem Heft_0038	Sillian		50000	22	25	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
849	2018-11-26 15:44:47.609155+01	2018-11-26 15:44:47.609184+01	Karten in grauem Heft_0040	Strassen		40000	20	24	\N	\N	1962-01-01	1962-12-31	\N	\N	\N	4	\N
850	2018-11-26 15:46:13.695033+01	2018-11-26 15:46:13.69508+01	Karten in grauem Heft_0041	Tessenberg		35000	24	20	\N	\N	1960-01-01	1960-12-31	\N	\N	\N	4	\N
852	2018-12-05 16:41:03.351327+01	2018-12-05 16:41:03.351355+01	Karte zum WBÖ2			2000000	63	48	\N	\N	\N	\N	\N	\N	4	4	\N
851	2018-12-05 16:37:40.615876+01	2018-12-05 16:41:07.612589+01	Karte zum WBÖ1			2000000	44	35	\N	\N	\N	\N	\N	\N	4	4	\N
853	2018-12-05 16:44:31.289607+01	2018-12-05 16:44:31.289637+01	Karte zum WBÖ3			2000000	63	48	\N	\N	\N	\N	\N	\N	4	4	\N
854	2019-01-04 12:59:29.217597+01	2019-01-04 12:59:29.217624+01	Königreich Böhmen7789	Das Königreich Böhmen		\N	63	51	1838-01-01	1838-12-31	\N	\N	\N	\N	\N	\N	\N
855	2019-01-04 13:19:42.043072+01	2019-01-04 13:19:42.043099+01	Königreich Böhmen7790	Deutsche Sprachinseln in Südosteuropa		2000000	63	47	\N	\N	1930-01-01	1930-12-31	\N	\N	\N	4	\N
856	2019-01-04 13:22:59.095127+01	2019-01-04 13:22:59.095153+01	Königreich Böhmen7791	Volksbodenkarte der Slowakei		750000	73	54	\N	\N	1930-01-01	1930-12-31	\N	\N	\N	4	\N
857	2019-01-04 13:28:59.958978+01	2019-01-04 13:28:59.959006+01	Königreich Böhmen7793	Nationalitätenkarte der Sudetenländer		750000	72	51	1936-01-01	1936-12-31	\N	\N	\N	\N	\N	4	\N
858	2019-01-04 13:35:30.303678+01	2019-01-04 13:35:30.303706+01	Lautlehre7797	1. Lautlehre: Raumdarstellungen		2000000	63	62	\N	\N	\N	\N	\N	\N	\N	4	\N
859	2019-01-04 13:43:59.64343+01	2019-01-04 13:43:59.643468+01	Lautlehre7798	2. Lautlehre: Ortsdarstellungen		2000000	63	62	\N	\N	\N	\N	\N	\N	\N	4	\N
860	2019-01-04 13:46:31.371444+01	2019-01-04 13:46:31.371494+01	Lautlehre7799	3. Formenlehre: Raum- und Ortsdarstellungen		2000000	63	62	\N	\N	\N	\N	\N	\N	\N	4	\N
861	2019-01-04 13:48:44.311353+01	2019-01-04 13:48:44.311396+01	Lautlehre7800	4. Wortbildungs- und Satzlehre: Raum- und Ortsdarstellungen		2000000	63	62	\N	\N	\N	\N	\N	\N	\N	4	\N
327	2018-05-15 16:26:15.667476+02	2019-01-10 12:16:15.328979+01	Kleine Karten Kranzmayer_0001	Grundkarte		2000000	21	30	\N	\N	\N	\N	\N	\N	\N	4	\N
259	2018-05-04 14:31:02.734473+02	2019-01-10 12:39:25.243692+01	V.Beiblaetter Fuer Den Atlastext_0011	ei in Steine		2000000	40	40	\N	\N	\N	\N	\N	\N	\N	4	\N
848	2018-11-26 15:42:43.841148+01	2019-04-08 10:59:02.038369+02	Karten in grauem Heft_0039	Sillianberg		2880	18	22	\N	\N	\N	\N	\N	\N	\N	4	\N
636	2018-09-05 13:29:09.562659+02	2019-04-30 13:13:54.301248+02	Kirchtag/Kirchweih - Fasching/Fastnacht - tenk-/link-	Kirchtag/Kirchweih - Fasching/Fastnacht - tenk-/link-	Probedruck DAÖ	2000000	40	40	\N	\N	\N	\N	\N	\N	\N	4	\N
639	2018-09-06 11:35:22.571872+02	2019-03-18 14:46:11.470869+01	Suggestive Karten Kärnten_0003	Das Kärntner Unterland nach der Volkszählung vom Mai 1939	-) Diese Karte ist aus einem Bestand lange nicht inventarisierter Karten der Wiener Wörterbuchkanzlei und ihren Nachfolgeorganisationen. Diese Karten, allesamt Fotokopien, wurden unter dem Begriff "Suggestive Karten Kärnten" zusammengefasst. Der Hintergrund ist folgender: Fast alle dieser Karten besitzen einen eindeutigen Kärnten-Bezug, wobei die sprachliche Situation und das "Grenzlanddeutschtum" eine besondere Rolle einnimmt. Insbesondere die politisch wild umstrittene Frage nach dem "Deutschtum" und dem "Windischen" kommt dabei wiederholt als Thema auf. Die Vermutung liegt nahe, dass diese Karten aufgrund ihrer thematischen Ausrichtung aus Beständen des "Instituts für Kärntner Landesforschung" stammen, welches der Linguist Eberhard Kranzmayer ab 1942 leitete. Dieses Institut war als Unterabteilung des SS-Ahnenerbes besonders im Sinne der völkischen "Kärntner Wissenschaft" ausgerichtet und beschäftigte sich u.a. mit Fragen der Grenzlandsprachen.\r\n\r\n-) Der Begriff der suggestiven Karte trifft im Eigentlichen nicht auf jede Karte aus diesem Set zu, allerdings ist die Grenze zur Suggestivität und Geopolitik fließend. Die suggestive Kartographie, auch "suggestive Kartographik" geht auf den Kartographen A. Hillen Ziegfeld zurück, der auch in dem Set mit einer Karte vertreten ist. Es geht dabei bei der s.K. ganz allgemein um eine dezidiert (geo-)politisch intendierte Darstellungsweise durch spezifische graphische Gestaltungsmittel (Pfeile wie aus dem Bereich der Militärkartographie, starke Kontraste etc.).\r\n\r\n-) Zu der vorliegenden Karte: Die Karte, eine Fotokopie, stellt  dem Titel nach "Das Kärntner Unterland nach der Volkszählung vom Mai 1939" dar. Dabei wird, wie in der Legende ersichtlich, zwischen Deutschen, Windischen, Slowenen und Koraten unterschieden und der Kartenausschnitt reicht bis nach Jugoslawien (dem heutigen Slowenien).\r\nMan hat es also offenkundig mit einer demographisch ("volklich")-sprachlichen Übersicht der sprachlichen Zustände in Kärnten/Jugoslawien im Jahre 1939 zu tun. Der Urheber und Kontext dieser mit der Hand gezeichneten Karte ist nicht ersichlich. \r\nStempel von verschiedenen Institutionen sind auf der Karte zu finden und zwar ein Originalstempel vom "Reichsministerium des Innern", ein Originalstempel des "Geographischen Instituts der Universität Wien" (auf der Rückseite der Karte) sowie einen Stempel des "Instituts für Grenz- und Auslandsstudien e.V.", der aber vermutlich auf dem Original der Fotokopie zu finden ist und nicht erst auf die Fotokopie notiert wurde.	\N	30	21	\N	\N	\N	\N	\N	\N	\N	\N	\N
872	2019-03-25 13:33:51.652128+01	2019-03-25 13:33:51.652159+01	Karten zu Bessarabien_0001	Die deutschen Siedlungen in Bessarabien		300000	\N	\N	\N	\N	1939-11-01	1939-11-01	\N	\N	\N	4	\N
873	2019-03-25 13:39:43.359873+01	2019-03-25 13:39:43.359907+01	Karten zu Bessarabien_0002	Buchenland		200000	70	61	1940-07-01	1940-07-30	\N	\N	\N	\N	\N	4	\N
869	2019-02-11 12:38:02.427981+01	2019-02-11 12:38:02.428011+01	Transparentkarten-Rolle_0013	2. Traggestell für Brennholz		\N	62	50	\N	\N	\N	\N	\N	\N	\N	4	\N
870	2019-02-11 12:40:55.221778+01	2019-02-11 12:40:55.221806+01	Transparentkarten-Rolle_0014	1. Ort für Brennholz		\N	62	50	\N	\N	\N	\N	\N	\N	\N	4	\N
868	2019-02-11 12:33:47.218943+01	2019-02-11 12:41:32.997624+01	Transparentkarten-Rolle_0012	3. Ofenkrücke		\N	62	50	\N	\N	\N	\N	\N	\N	\N	4	\N
867	2019-01-22 14:50:27.985007+01	2019-02-11 12:41:41.324917+01	Transparentkarten-Rolle_0009	4. Mauerkasten		\N	62	50	\N	\N	\N	\N	\N	\N	\N	4	\N
866	2019-01-22 14:49:16.673237+01	2019-02-11 12:41:54.234072+01	Transparentkarten-Rolle_0008	5. Hausflur im ersten Stock des Bauernhauses		\N	62	48	\N	\N	\N	\N	\N	\N	\N	4	\N
865	2019-01-22 14:46:38.692358+01	2019-02-11 12:42:00.563543+01	Transparentkarten-Rolle_0007	7. Seitenräume der Scheune zum Einlagern der Garben oder des Heus		\N	62	48	\N	\N	\N	\N	\N	\N	\N	4	\N
864	2019-01-22 14:44:21.981707+01	2019-02-11 12:42:06.967502+01	Transparentkarten-Rolle_0006	8. Wurfloch von der Hochtenne in den Stall		\N	62	48	\N	\N	\N	\N	\N	\N	\N	4	\N
863	2019-01-22 14:41:01.391378+01	2019-02-11 12:42:13.471718+01	Transparentkarten-Rolle_0005	7. Abteilende Bretterwand in der Scheune		\N	62	50	\N	\N	\N	\N	\N	\N	\N	4	\N
862	2019-01-22 13:29:02.215394+01	2019-02-11 12:42:20.519996+01	Transparentkarten-Rolle_0004	9. Getreidekasten (als freistehender Bau)		\N	62	50	\N	\N	\N	\N	\N	\N	\N	4	\N
643	2018-09-06 12:41:15.823293+02	2019-02-19 14:48:10.53933+01	Suggestive Karten Kärnten_0007	Verteilung der Bevölkerung Kärntens nach der Umgangssprache auf Grund der Volkszählung von 1910 (ohne Militär)	-) Diese Karte ist aus einem Bestand lange nicht inventarisierter Karten der Wiener Wörterbuchkanzlei und ihren Nachfolgeorganisationen. Diese Karten, allesamt Fotokopien, wurden unter dem Begriff "Suggestive Karten Kärnten" zusammengefasst. Der Hintergrund ist folgender: Fast alle dieser Karten besitzen einen eindeutigen Kärnten-Bezug, wobei die sprachliche Situation und das "Grenzlanddeutschtum" eine besondere Rolle einnimmt. Insbesondere die politisch wild umstrittene Frage nach dem "Deutschtum" und dem "Windischen" kommt dabei wiederholt als Thema auf. Die Vermutung liegt nahe, dass diese Karten aufgrund ihrer thematischen Ausrichtung aus Beständen des "Instituts für Kärntner Landesforschung" stammen, welches der Linguist Eberhard Kranzmayer ab 1942 leitete. Dieses Institut war als Unterabteilung des SS-Ahnenerbes besonders im Sinne der völkischen "Kärntner Wissenschaft" ausgerichtet und beschäftigte sich u.a. mit Fragen der Grenzlandsprachen.\r\n\r\n-) Der Begriff der suggestiven Karte trifft im Eigentlichen nicht auf jede Karte aus diesem Set zu, allerdings ist die Grenze zur Suggestivität und Geopolitik fließend. Die suggestive Kartographie, auch "suggestive Kartographik" geht auf den Kartographen A. Hillen Ziegfeld zurück, der auch in dem Set mit einer Karte vertreten ist. Es geht dabei bei der s.K. ganz allgemein um eine dezidiert (geo-)politisch intendierte Darstellungsweise durch spezifische graphische Gestaltungsmittel (Pfeile wie aus dem Bereich der Militärkartographie, starke Kontraste etc.).\r\n\r\n-) Die vorliegende Karte stellt die Fotokopie einer 1919 in der "Kartographischen und schulgeographischen Zeitschrift" vorkommenden farbigen Karte dar, die in dem Aufsatz von Martin Wutte "Die sprachlichen Verhältnisse in Kärnten auf Grundlage der Volkszählung von 1910" publiziert wurde. Die Karte wurde zudem im selben Jahr in der Zeitschrift "Carinthia I"  abermals abgedruckt, dort in dem Aufsatz Wuttes "Deutsche und Slowenen in Kärnten". In der Carinthia besitzt die Karte die Maße 48.5 cm x 35cm.	400000	30	21	1919-01-01	1919-12-31	1910-01-01	1910-12-31	\N	\N	\N	\N	\N
874	2019-03-25 13:50:24.096478+01	2019-03-25 13:50:24.096509+01	Karten zu Bessarabien_0003	Volkstumskarte von Rumänien		200000	46	71	\N	\N	1930-01-01	1930-12-31	\N	\N	\N	4	\N
875	2019-03-25 14:05:06.752484+01	2019-03-25 14:05:06.752516+01	Karten zu Bessarabien_0034	Karte		\N	19	13	\N	\N	\N	\N	\N	\N	\N	\N	\N
876	2019-03-25 14:09:24.725042+01	2019-03-25 14:09:24.725103+01	Karten zu Bessarabien_0035	4+6 Karten		\N	19	13	\N	\N	\N	\N	\N	\N	\N	4	\N
877	2019-03-25 14:13:01.050969+01	2019-03-25 14:13:01.050998+01	Karten zu Bessarabien_0036	9+10 Karten		\N	19	13	\N	\N	\N	\N	\N	\N	\N	4	\N
878	2019-03-25 14:41:46.308177+01	2019-03-25 14:41:46.308217+01	Karten zu Bessarabien_0037	8+12 Karten		\N	19	13	\N	\N	\N	\N	\N	\N	\N	4	\N
879	2019-03-25 14:45:10.566992+01	2019-03-25 14:45:10.56702+01	Karten zu Bessarabien_0038	11+15 Karten		\N	19	13	\N	\N	\N	\N	\N	\N	\N	4	\N
880	2019-03-25 14:49:24.069589+01	2019-03-25 14:49:24.069618+01	Karten zu Bessarabien_0039	18+5 Karten		\N	19	13	\N	\N	\N	\N	\N	\N	\N	4	\N
881	2019-03-25 14:51:39.462003+01	2019-03-25 14:51:39.462064+01	Karten zu Bessarabien_0040	16+17 Karten		\N	19	13	\N	\N	\N	\N	\N	\N	\N	4	\N
882	2019-03-25 14:53:57.210619+01	2019-03-25 14:53:57.210666+01	Karten zu Bessarabien_0041	1+2 Karten		\N	19	13	\N	\N	\N	\N	\N	\N	\N	4	\N
883	2019-03-25 15:01:14.863635+01	2019-03-25 15:01:14.863672+01	Karten zu Bessarabien_0042	3+7 Karten		\N	19	13	\N	\N	\N	\N	\N	\N	\N	4	\N
884	2019-03-25 15:03:43.984932+01	2019-03-25 15:03:43.984982+01	Karten zu Bessarabien_0043	13+14 Karten		\N	19	13	\N	\N	\N	\N	\N	\N	\N	4	\N
886	2019-03-29 13:23:41.577035+01	2019-03-29 13:23:41.577071+01	HellgraueMappe_0002	Slovenia		\N	33	32	\N	\N	\N	\N	\N	\N	\N	4	\N
887	2019-03-29 13:28:55.73552+01	2019-03-29 13:28:55.735556+01	HellgraueMappe_0005	Die Herkunft der steirischen Siedlungs- und Flurnamen		\N	71	56	\N	\N	\N	\N	\N	\N	\N	4	\N
888	2019-04-01 11:58:55.854059+02	2019-04-01 11:58:55.854096+02	HellgraueMappe_0006	Belegorte des Sudentendeutschen Wörterbuches		\N	51	33	\N	\N	\N	\N	\N	\N	\N	4	\N
889	2019-04-01 12:05:34.474602+02	2019-04-01 12:05:34.474654+02	HellgraueMappe_0009	Deckblatt "Atlas der Steiermark"		\N	50	35	\N	\N	\N	\N	\N	\N	\N	4	\N
890	2019-04-01 12:16:22.626454+02	2019-04-01 12:16:22.626495+02	HellgraueMappe_0010	Siedlungskarte Kärntens		600000	46	24	\N	\N	1826-01-01	1828-12-31	\N	\N	\N	4	\N
891	2019-04-01 12:21:37.903299+02	2019-04-01 12:21:37.903334+02	HellgraueMappe_0011	Änze (DAÖ Probedruck)		2000000	40	40	\N	\N	1910-01-01	1910-12-31	\N	\N	\N	4	\N
892	2019-04-01 12:32:57.055574+02	2019-04-01 12:32:57.055633+02	HellgraueMappe_0012	Kirchtag Fasching (DAÖ Probedruck)		2000000	40	40	\N	\N	1910-01-01	1910-12-31	\N	\N	\N	4	\N
885	2019-03-28 10:23:43.649851+01	2019-09-14 14:31:07.540968+02	Lautlehre7806	1. Atlas der österreichischen Volkskunde		600000	98	55	1955-01-01	1955-12-31	1948-01-01	1948-12-31	\N	\N	\N	4	\N
894	2019-04-01 12:37:16.625634+02	2019-04-01 12:37:16.625694+02	HellgraueMappe_0014	Kalk (DAÖ Probedruck)		2000000	40	40	\N	\N	\N	\N	\N	\N	\N	4	\N
895	2019-04-01 12:39:05.925823+02	2019-04-01 12:39:05.92586+02	HellgraueMappe_0015	Kalk (DAÖ Probedruck)		2000000	40	40	\N	\N	\N	\N	\N	\N	\N	4	\N
896	2019-04-01 12:41:00.075703+02	2019-04-01 12:41:00.075762+02	HellgraueMappe_0016	Orte mit -heim		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
897	2019-04-01 12:42:32.260007+02	2019-04-01 12:42:32.260038+02	HellgraueMappe_0017	Römerstraßen		2000000	47	43	\N	\N	\N	\N	\N	\N	\N	4	\N
893	2019-04-01 12:35:15.854414+02	2019-04-30 13:00:48.247509+02	HellgraueMappe_0013	Ertag, Pfinztag, es, enk, Pfeit (DAÖ Probedruck)		\N	40	40	\N	\N	\N	\N	\N	\N	\N	4	\N
513	2018-06-05 14:18:56.730223+02	2019-04-30 13:30:43.125616+02	General- und Spezialkarten Mappe I_0009	-en nach -ch-		\N	47	43	1939-12-01	1939-12-31	\N	\N	\N	\N	\N	4	\N
899	2019-05-09 11:31:30.634521+02	2019-05-09 11:31:30.63457+02	Diverse_0304	Volksbodenkarte der Slowakei		750000	73	54	\N	\N	1930-01-01	1930-12-31	\N	\N	\N	4	\N
900	2019-05-09 11:37:56.29463+02	2019-05-09 11:37:56.29466+02	Diverse_0910	Nationalitätenkarte der Sudetenländer		750000	71	50	1936-01-01	1936-12-31	1935-01-01	1935-12-31	\N	\N	\N	4	\N
901	2019-05-09 11:51:04.953585+02	2019-05-09 11:51:04.953616+02	DiverseLade14_3738	Die Herkunft der steirischen Siedlungs- und Flurnamen		300000	72	56	1975-01-01	1975-12-31	\N	\N	\N	\N	\N	4	\N
902	2019-05-09 12:18:00.999249+02	2019-05-09 12:18:00.999279+02	HellgraueMappe_0708	Die Mundartlandschaften der Steiermark		1500000	48	54	1966-01-01	1966-12-31	\N	\N	\N	\N	\N	4	\N
903	2019-05-10 12:04:13.593475+02	2019-05-10 12:04:13.593508+02	Lautlehre7803_7804	Sprachenkarte von Mitteleuropa		500000	115	85	1921-01-01	1921-12-31	\N	\N	\N	\N	4	4	\N
904	2019-05-10 12:10:33.622137+02	2019-05-10 12:10:33.622172+02	Transparentkarten-Rolle_0203	III. Abteilende Bretterwand in der Scheune		\N	62	50	\N	\N	\N	\N	\N	\N	\N	4	\N
905	2019-05-10 12:14:08.757167+02	2019-05-10 12:14:08.757206+02	Transparentkarten-Rolle_1011	I. Aufbewahrungsort für Brennholz		\N	62	50	\N	\N	\N	\N	\N	\N	\N	4	\N
565	2018-06-13 14:32:20.422157+02	2019-05-13 17:08:31.174428+02	General- und Spezialkarten Mappe I_0061	Drangeld, Göt(i), ein		2000000	59	53	1970-01-01	1970-12-31	1930-01-01	1930-12-31	\N	\N	\N	4	\N
640	2018-09-06 11:44:53.659693+02	2019-09-25 14:24:27.91077+02	Suggestive Karten Kärnten_0004	Die Kärntner Abwehrkämpfe in den Jahren 1918 und 1919	-) Diese Karte ist aus einem Bestand lange nicht inventarisierter Karten der Wiener Wörterbuchkanzlei und ihren Nachfolgeorganisationen. Diese Karten, allesamt Fotokopien, wurden unter dem Begriff "Suggestive Karten Kärnten" zusammengefasst. Der Hintergrund ist folgender: Fast alle dieser Karten besitzen einen eindeutigen Kärnten-Bezug, wobei die sprachliche Situation und das "Grenzlanddeutschtum" eine besondere Rolle einnimmt. Insbesondere die politisch umstrittene Frage nach dem "Deutschtum" und dem "Windischen" kommt dabei wiederholt als Thema auf. Die Vermutung liegt nahe, dass diese Karten aufgrund ihrer thematischen Ausrichtung aus Beständen des "Instituts für Kärntner Landesforschung" stammen, welches der Linguist Eberhard Kranzmayer ab 1942 leitete. Dieses Institut war als Unterabteilung des SS-Ahnenerbes besonders im Sinne der völkischen "Kärntner Wissenschaft" ausgerichtet, war im Kontext der Annexion Jugoslawiens installiert worden und beschäftigte sich mit Fragen der Grenzlandsprachen ebenso wie mit Germanisierungspolitik.\r\n\r\n-) Der Begriff der suggestiven Karte trifft im Eigentlichen nicht auf jede Karte aus diesem Set zu, allerdings ist die Grenze zur Suggestivität und Geopolitik fließend. Die suggestive Kartographie, auch "suggestive Kartographik" geht auf den Kartographen A. Hillen Ziegfeld zurück, der auch in dem Set mit einer Karte vertreten ist. Es geht dabei bei der s.K. ganz allgemein um eine dezidiert (geo-)politisch intendierte Darstellungsweise durch spezifische graphische Gestaltungsmittel (Pfeile wie aus dem Bereich der Militärkartographie, starke Kontraste etc.).\r\n\r\n-) Zu der vorliegenden Karte: Die Karte, eine Fotokopie, stellt dem Titel nach "Die Kärntner Abwehrkämpfe in den Jahren 1918 und 1919" dar. Diese Karte ist militärkartographisch und symbolisiert mit Zeichen verschiedener Art (Pfeile, Frontlinien) die Kampfhandlungen zwischen dem SHS-Staat und den Kärntnern. \r\nMartin Wutte scheint als derjenige auf, nach dessen Entwurf diese Karte gezeichnet wurde. Der kartographische Urheber und der weitere Kontext dieser Karte ist jedoch nicht ersichtlich.\r\nStempel von zwei verschiedenen Institutionen sind auf der Karte zu finden und zwar ein Originalstempel vom "Reichsministerium des Innern" und ein Originalstempel des "Geographischen Instituts der Universität Wien".	\N	30	21	\N	\N	\N	\N	\N	\N	\N	4	\N
\.


--
-- Data for Name: maps_map_map_file; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_map_map_file (id, map_id, file_id) FROM stdin;
\.


--
-- Data for Name: maps_map_map_institute; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_map_map_institute (id, map_id, institute_id) FROM stdin;
21	33	7
55	512	2
56	511	2
57	553	2
58	554	2
59	555	2
60	556	2
61	557	2
62	558	2
63	559	2
64	560	2
65	561	2
66	562	2
67	563	2
68	564	2
69	565	2
70	566	2
71	569	21
83	643	5
84	722	24
85	723	2
86	851	5
87	852	5
88	853	5
89	793	5
\.


--
-- Data for Name: maps_map_map_persons; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_map_map_persons (id, map_id, person_id) FROM stdin;
39	123	6
30	110	6
31	112	6
32	113	6
33	114	6
34	115	6
35	116	6
37	120	6
38	121	6
40	127	6
41	130	6
42	129	6
43	131	6
44	132	6
45	133	6
46	134	6
47	135	6
48	136	6
49	158	6
50	170	6
51	184	6
52	220	6
53	221	6
54	315	6
55	317	6
56	318	6
57	319	6
58	321	6
59	368	6
60	370	6
61	371	6
62	372	6
63	384	6
64	386	6
65	402	6
66	403	6
67	408	6
68	410	6
69	411	6
70	485	6
71	505	6
72	511	6
73	512	6
74	513	6
75	516	6
76	526	6
77	529	6
78	528	6
79	530	6
80	531	6
81	532	6
82	536	6
83	538	6
84	549	6
85	553	6
86	554	6
87	555	6
88	111	6
89	556	6
90	557	6
91	558	6
92	559	6
93	560	6
94	561	6
95	562	6
96	563	6
97	564	6
98	565	6
99	610	6
100	611	6
101	612	6
102	613	6
103	614	6
104	615	6
105	616	6
106	617	6
107	618	6
108	569	9
109	637	12
110	637	21
111	640	12
112	641	12
113	642	12
114	720	6
115	721	6
116	722	6
117	752	22
118	753	23
119	754	24
120	755	24
121	756	22
122	757	22
123	758	22
124	759	22
125	760	22
126	761	22
127	762	22
128	763	22
129	764	25
130	765	25
131	765	26
132	766	25
133	766	26
134	767	25
135	768	27
136	769	22
137	770	28
138	771	28
139	772	28
140	773	29
141	774	30
142	775	31
143	776	32
144	777	33
145	778	33
146	779	22
147	782	22
148	783	22
149	784	22
150	785	22
151	786	22
152	787	34
153	788	35
154	788	36
155	793	6
156	750	37
157	750	38
158	751	22
159	851	22
160	852	22
161	853	22
162	643	12
163	885	14
164	889	6
165	902	6
166	903	39
\.


--
-- Data for Name: maps_map_map_places; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_map_map_places (id, map_id, place_id) FROM stdin;
\.


--
-- Data for Name: maps_map_map_references; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_map_map_references (id, map_id, reference_id) FROM stdin;
101	138	18
102	139	18
103	140	18
104	142	18
105	141	18
106	143	18
107	144	18
108	145	18
109	146	18
110	147	18
111	148	18
112	149	18
113	150	18
114	151	18
115	152	18
116	153	18
117	154	18
118	155	18
119	156	18
120	157	18
121	158	19
122	159	19
123	160	19
124	161	19
125	162	19
126	163	19
127	164	19
128	165	19
129	166	19
130	167	19
131	168	19
132	169	19
133	170	19
134	171	19
135	172	19
137	174	19
138	175	19
139	176	19
140	177	19
141	178	19
142	179	19
143	180	19
144	181	19
145	182	19
146	183	19
147	184	19
148	185	19
149	186	19
150	187	19
151	188	19
152	189	19
153	190	19
154	191	19
155	192	19
156	193	19
157	194	19
158	195	19
159	196	19
160	197	19
161	198	19
162	227	20
163	228	20
164	230	20
165	229	20
166	231	20
167	232	20
168	233	20
169	234	20
170	235	20
171	236	20
172	237	20
173	238	20
174	239	20
175	240	20
176	242	20
177	243	20
178	244	20
179	245	20
180	246	20
181	247	20
182	241	20
183	248	21
184	249	21
185	250	21
186	251	21
187	252	21
188	253	21
189	254	21
190	255	21
191	256	21
192	257	21
193	258	21
194	259	21
195	260	21
196	261	21
197	262	21
198	263	21
199	264	21
200	265	21
201	266	21
202	267	21
203	268	21
204	269	21
205	270	21
206	271	21
207	272	22
208	273	22
209	274	22
210	275	22
211	276	22
212	277	22
213	278	22
214	279	22
215	280	22
216	281	22
217	282	22
218	283	22
219	284	22
220	285	22
221	286	22
222	287	22
223	288	22
224	289	22
225	290	22
226	291	22
227	292	22
228	293	22
229	294	23
230	295	23
231	296	23
232	297	23
233	298	23
234	299	23
235	300	23
236	301	23
237	302	23
238	303	23
239	304	23
240	305	23
241	306	23
242	307	23
243	308	23
244	309	23
245	310	23
246	311	23
247	312	23
248	313	23
249	314	23
250	315	23
251	316	23
252	317	23
253	318	23
254	319	23
255	320	23
256	321	23
257	322	23
258	323	23
259	324	23
260	325	23
261	326	23
262	327	26
263	328	26
264	329	26
265	330	26
266	331	26
267	332	26
268	333	26
269	334	26
270	335	26
271	336	26
272	338	26
273	339	26
274	340	26
275	341	26
276	342	26
277	343	26
278	344	26
279	345	26
280	346	26
281	347	26
282	348	26
283	349	26
284	350	26
285	351	26
286	352	26
287	353	26
288	354	26
289	355	26
290	356	26
291	357	26
292	358	26
293	359	26
294	360	26
295	361	26
296	362	26
297	363	26
298	337	26
299	365	27
300	367	27
301	368	27
302	370	27
303	371	27
305	373	27
306	366	27
307	369	27
308	374	27
309	375	27
310	376	27
311	377	27
312	378	27
313	379	27
314	380	27
315	381	27
316	382	27
317	383	27
318	384	27
319	385	27
320	386	27
321	387	27
322	388	27
323	389	27
324	390	27
325	391	27
326	392	27
327	393	27
328	394	27
329	395	27
330	396	27
331	397	27
332	398	27
333	399	27
334	400	27
335	401	27
336	402	27
337	403	27
338	404	27
339	405	27
340	406	27
341	407	27
342	408	27
343	409	27
344	410	27
345	411	27
346	412	27
347	413	27
348	414	27
349	415	27
350	416	27
351	417	27
352	418	27
353	419	27
354	420	27
355	421	27
356	422	27
357	423	27
358	424	27
359	425	19
361	427	26
362	428	26
363	429	26
364	430	26
365	431	26
366	432	26
367	433	26
368	434	26
369	435	26
370	436	26
371	437	26
372	438	26
373	439	26
374	440	26
375	441	26
376	442	26
377	443	26
378	444	26
379	445	26
380	446	26
381	447	26
382	448	26
383	449	26
384	450	26
385	451	26
386	452	26
387	453	26
388	454	26
389	455	26
390	456	26
391	457	26
392	458	26
393	459	26
394	460	26
395	461	26
396	462	26
397	463	26
398	464	26
399	465	26
400	466	26
401	467	26
402	468	26
403	469	26
404	470	26
405	471	26
406	472	26
407	473	26
408	474	26
409	475	26
410	476	26
411	477	26
412	478	26
413	479	26
414	480	26
415	481	26
416	482	26
417	483	26
418	484	26
419	485	26
420	486	26
421	487	26
422	488	26
423	489	26
424	490	26
425	491	26
426	492	26
427	493	26
428	494	26
429	495	26
430	496	26
431	497	26
432	498	26
433	499	26
434	500	26
435	501	26
436	502	26
437	503	26
438	504	26
439	505	28
440	506	28
441	507	28
442	508	28
443	509	28
444	510	28
445	511	28
446	512	28
447	513	28
448	514	28
449	515	28
450	516	28
451	517	28
452	518	28
453	519	28
454	520	28
455	521	28
456	522	28
457	523	28
458	524	28
459	525	28
460	526	28
461	527	28
462	528	28
463	529	28
464	530	28
465	531	28
466	532	28
467	533	28
468	534	28
469	535	28
470	536	28
471	537	28
472	538	28
473	539	28
474	540	28
475	541	28
476	542	28
477	543	28
478	544	28
479	545	28
480	546	28
481	547	28
482	548	28
483	549	28
484	550	28
485	551	28
486	552	28
487	553	28
488	554	28
489	555	28
490	106	29
491	108	29
492	109	29
493	110	29
494	111	29
495	112	29
497	114	29
498	115	29
499	116	29
500	117	29
501	118	29
502	119	29
503	120	29
504	121	29
505	123	29
506	124	29
509	127	29
510	128	29
511	129	29
512	130	29
513	131	29
514	132	29
515	133	29
516	134	29
517	135	29
519	137	29
520	220	29
521	221	29
522	222	29
523	223	29
525	125	29
526	126	29
527	136	29
528	556	28
530	558	28
531	559	28
532	560	28
533	200	30
534	201	30
535	202	30
536	203	30
537	204	30
538	205	30
539	206	30
540	207	30
541	208	30
542	209	30
543	210	30
544	211	30
545	212	30
546	213	30
547	214	30
548	215	30
549	216	30
550	217	30
551	218	30
552	219	30
553	561	28
554	562	28
555	563	28
556	564	28
557	565	28
558	566	28
559	567	28
560	113	29
561	557	28
562	372	27
563	568	31
564	569	31
565	570	31
566	571	31
567	572	31
568	573	31
569	574	31
570	575	31
571	576	31
572	577	31
573	578	31
574	579	31
575	580	31
576	581	31
577	582	31
578	583	31
579	584	31
580	585	31
581	586	31
582	587	31
583	588	31
584	589	31
585	590	31
586	591	31
587	592	31
588	593	31
589	594	31
590	595	31
591	596	31
592	597	31
593	598	31
594	599	31
595	600	31
596	601	31
597	602	31
598	603	31
599	604	31
600	605	31
601	606	31
602	607	31
603	608	31
604	609	31
605	610	31
606	611	31
607	612	31
608	613	31
609	614	31
610	615	31
611	616	31
612	617	31
613	618	31
614	620	32
615	621	32
616	622	32
617	623	32
618	624	32
619	625	32
621	627	32
622	628	32
623	629	32
624	630	32
625	631	32
626	632	32
627	633	32
628	634	32
629	635	32
630	636	25
631	637	33
632	638	33
633	639	33
634	641	33
635	642	33
636	643	33
637	644	33
638	645	34
639	646	34
640	647	34
641	648	34
642	649	34
643	650	34
644	651	34
645	652	34
646	653	34
647	654	34
648	655	34
649	656	34
650	657	34
651	658	34
652	659	34
653	660	34
654	661	34
655	662	35
656	663	35
657	664	35
658	665	35
659	666	35
660	667	35
661	668	36
662	669	36
663	670	36
664	671	36
665	672	36
666	673	36
667	674	36
668	675	36
669	676	36
670	677	36
671	678	36
672	679	36
673	680	36
674	681	36
675	682	36
676	683	36
677	684	36
678	685	36
679	686	36
680	687	36
681	688	36
682	689	36
683	690	36
684	691	36
685	692	36
686	693	36
687	694	36
688	695	36
689	696	36
690	697	36
691	698	36
692	699	36
693	700	36
694	701	36
695	702	36
696	703	36
697	704	36
698	705	36
699	706	36
700	707	36
701	708	36
702	709	36
703	710	36
704	711	36
705	712	36
706	713	36
707	714	36
708	715	36
709	716	36
710	717	36
711	718	36
712	719	36
713	720	36
714	721	36
715	722	36
716	723	36
717	724	36
718	725	36
719	726	36
720	727	36
721	728	36
722	729	36
723	730	36
724	731	36
725	732	36
726	733	36
727	734	36
728	735	36
729	736	25
730	736	36
731	737	25
732	737	36
733	738	37
734	739	38
735	740	38
736	741	38
737	742	38
738	743	38
739	744	38
740	745	38
741	746	38
742	747	38
743	748	38
744	749	38
745	750	38
746	751	38
747	752	38
748	753	38
749	754	38
750	755	38
751	756	38
752	757	38
753	758	38
754	759	38
755	760	38
756	761	38
757	762	38
758	763	38
759	764	38
760	765	38
761	766	38
762	767	38
763	768	38
764	769	38
765	770	38
766	771	38
767	772	38
768	773	38
769	774	38
770	775	38
771	776	38
772	777	38
773	778	38
774	779	38
775	780	38
776	781	38
777	782	38
778	783	38
779	784	38
780	785	38
781	786	38
782	787	38
783	788	38
784	789	39
785	790	39
786	791	39
787	792	39
788	793	40
789	794	40
790	795	40
791	796	40
792	798	42
793	799	42
794	800	42
795	801	42
796	802	42
797	803	42
798	804	42
799	805	42
800	806	42
801	807	42
802	808	42
803	809	42
804	640	33
805	810	44
806	811	44
807	812	44
808	813	44
809	814	44
810	815	44
811	816	44
812	797	40
813	817	44
814	818	44
815	819	44
816	820	44
817	821	44
818	822	44
819	823	44
820	824	44
821	825	44
822	826	44
823	827	44
824	828	44
825	829	44
826	830	44
827	831	44
828	832	44
829	833	44
830	834	44
831	835	44
832	836	44
833	837	44
834	838	44
835	839	44
836	840	44
837	841	44
838	842	44
839	843	44
840	844	44
841	845	44
842	846	44
843	847	44
844	849	44
845	850	44
846	854	46
847	858	47
848	859	47
849	860	47
850	861	47
851	862	45
852	863	45
853	864	45
854	865	45
855	866	45
856	867	45
857	868	45
858	869	45
859	870	45
860	872	48
861	873	48
862	874	48
863	875	48
864	876	48
865	877	48
866	878	48
867	879	48
868	880	48
869	881	48
870	882	48
871	883	48
872	884	48
873	885	47
874	886	37
875	887	37
876	888	37
877	889	37
878	890	37
879	891	25
880	891	37
881	892	25
882	892	37
883	893	25
884	893	37
885	894	25
886	894	37
887	895	25
888	895	37
889	896	25
890	896	37
891	897	37
892	848	44
893	899	40
894	900	40
895	901	36
896	902	37
897	903	47
898	904	45
899	905	45
\.


--
-- Data for Name: maps_map_map_scan; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_map_map_scan (id, map_id, scan_id) FROM stdin;
\.


--
-- Data for Name: maps_map_map_type; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_map_map_type (id, map_id, type_id) FROM stdin;
494	123	34
86	33	27
87	33	11
495	123	7
89	33	38
496	123	44
497	123	79
498	123	48
499	123	83
500	123	52
501	124	33
502	124	70
503	124	7
505	124	47
506	124	79
507	124	17
508	124	83
509	124	52
510	124	22
546	128	33
340	33	100
369	106	97
370	106	34
371	106	7
372	106	44
547	128	130
373	106	48
374	106	83
375	106	52
376	106	22
377	106	61
378	108	97
379	108	70
380	108	7
381	108	9
382	108	11
383	108	48
384	108	52
385	108	22
386	109	97
387	109	70
388	109	7
389	109	9
390	109	11
391	109	48
392	109	17
393	109	83
394	109	52
395	109	22
396	108	17
397	108	83
398	110	48
399	110	97
400	110	34
401	110	22
402	110	7
403	110	44
404	111	97
405	111	70
406	111	7
407	111	11
408	111	47
409	111	17
410	111	83
411	111	52
412	111	22
413	112	48
414	112	97
415	112	34
416	112	22
417	112	7
418	112	44
419	113	48
420	113	97
421	113	34
422	113	22
423	113	7
424	113	44
425	114	48
426	114	97
427	114	34
428	114	22
429	114	7
430	114	44
431	115	97
432	115	70
433	115	7
434	115	11
435	115	47
436	115	17
437	115	83
438	115	52
439	115	22
440	116	48
441	116	97
442	116	34
443	116	22
444	116	7
445	116	44
446	117	97
447	117	70
448	117	7
449	117	11
450	117	17
511	124	129
452	117	83
453	117	52
454	117	22
455	118	97
456	118	70
457	118	7
458	118	11
459	118	17
512	124	130
461	118	83
462	118	52
463	118	22
464	119	97
465	119	70
466	119	7
467	119	11
468	119	47
469	119	17
470	119	83
471	119	52
472	119	22
473	119	27
474	120	48
475	120	97
476	120	34
477	120	44
478	120	22
479	117	49
480	118	49
481	121	48
482	121	97
483	121	34
484	121	22
485	121	7
486	121	44
513	125	33
514	125	130
515	125	129
516	125	70
517	125	7
518	125	11
519	125	47
520	125	79
521	125	17
522	125	83
523	125	52
524	125	22
525	126	33
526	126	130
527	126	129
528	126	70
529	126	7
530	126	11
531	126	47
532	126	79
533	126	83
534	126	52
535	126	22
536	126	27
537	127	34
538	127	37
539	127	7
540	127	44
541	127	79
542	127	47
543	127	52
544	127	22
545	127	60
548	128	129
549	128	70
550	128	7
551	128	11
552	128	47
553	128	79
554	128	17
555	128	83
556	128	52
557	128	22
558	130	34
559	130	37
560	130	7
561	130	44
562	130	79
563	130	48
564	130	83
565	130	52
566	130	22
567	130	60
568	131	34
569	131	37
570	131	7
571	131	44
572	131	79
573	131	48
574	131	83
575	131	52
576	131	22
577	131	60
578	132	34
579	132	37
580	132	7
581	132	44
582	132	79
583	132	47
584	132	83
585	132	52
586	132	22
587	132	60
588	133	34
589	133	37
590	133	7
591	133	44
592	133	79
593	133	48
594	133	83
595	133	52
596	133	22
597	133	60
598	134	34
599	134	37
600	134	7
601	134	44
602	134	79
603	134	48
604	134	83
605	134	52
606	134	22
607	134	60
608	135	33
609	135	130
610	135	129
611	135	37
612	135	70
613	135	7
614	135	11
615	135	79
616	135	48
617	135	17
618	135	83
619	135	52
620	135	22
621	136	34
622	136	37
623	136	7
624	136	44
625	136	79
626	136	48
627	136	83
628	136	52
629	136	22
630	136	60
631	137	33
632	137	130
633	137	129
634	137	70
635	137	7
636	137	11
637	137	47
638	137	79
639	137	17
640	137	83
641	137	52
642	137	22
643	138	34
644	138	37
645	138	7
646	138	44
647	138	79
648	138	48
649	138	83
650	138	22
651	138	60
652	139	34
653	139	37
654	139	7
655	139	44
656	139	79
657	139	48
658	139	83
659	139	22
660	139	60
661	140	33
662	140	129
663	140	70
664	140	7
665	140	11
666	140	47
667	140	79
668	140	17
669	140	83
670	140	52
671	140	22
672	140	133
673	141	34
674	141	44
675	141	79
676	141	48
677	141	17
678	141	83
679	141	52
680	141	60
681	142	34
682	142	7
683	142	44
684	142	79
685	142	48
686	142	83
687	142	52
688	142	60
689	143	33
690	143	130
691	143	129
692	143	37
693	143	70
694	143	7
695	143	11
696	143	79
697	143	48
698	143	17
699	143	83
700	143	52
701	143	22
702	144	33
703	144	130
704	144	129
705	144	70
706	144	7
707	144	11
708	144	79
709	144	48
710	144	17
711	144	83
712	144	52
713	144	22
714	145	34
715	145	44
716	145	79
717	145	48
718	145	83
719	145	60
720	146	33
721	146	130
722	146	129
723	146	37
724	146	70
725	146	7
726	146	11
727	146	79
728	146	48
729	146	17
730	146	83
731	146	52
732	146	22
733	147	33
734	147	130
735	147	129
736	147	70
737	147	7
738	147	11
739	147	79
740	147	48
741	147	17
742	147	83
743	147	52
744	147	22
745	148	33
746	148	130
747	148	129
748	148	70
749	148	7
750	148	11
751	148	47
752	148	79
753	148	17
754	148	83
755	148	52
756	148	22
757	149	33
758	149	130
759	149	129
760	149	70
761	149	7
762	149	11
763	149	79
764	149	48
765	149	17
766	149	83
767	149	52
768	149	22
769	150	33
770	150	130
771	150	129
772	150	70
773	150	7
774	150	11
775	150	47
776	150	79
777	150	17
778	150	83
779	150	52
780	150	22
781	151	33
782	151	129
783	151	131
784	151	70
785	151	7
786	151	11
787	151	47
788	151	79
789	151	17
790	151	83
791	151	52
792	151	22
793	152	33
794	152	129
795	152	131
796	152	70
797	152	7
798	152	11
799	152	47
800	152	79
801	152	17
802	152	83
803	152	52
804	152	22
805	153	34
806	153	37
807	153	7
808	153	44
809	153	79
810	153	48
811	153	83
812	153	52
813	153	22
814	153	60
815	154	34
816	154	37
817	154	7
818	154	44
819	154	79
820	154	48
821	154	83
822	154	52
823	154	22
824	154	60
825	155	33
826	155	130
827	155	129
828	155	37
829	155	70
830	155	7
831	155	11
832	155	79
833	155	48
834	155	17
835	155	83
836	155	52
837	155	22
838	156	33
839	156	130
840	156	129
841	156	70
842	156	7
843	156	11
844	156	79
845	156	48
846	156	17
847	156	83
848	156	52
849	156	22
850	158	34
851	158	37
852	158	7
853	158	44
854	158	79
855	158	48
856	158	83
857	158	52
858	158	22
859	158	60
860	159	33
861	159	130
862	159	129
863	159	70
864	159	7
865	159	11
866	159	79
867	159	48
868	159	17
869	159	83
870	159	52
871	159	22
872	160	34
873	160	37
874	160	7
875	160	44
876	160	79
877	160	48
878	160	83
879	160	52
880	160	22
881	160	60
882	161	34
883	161	37
884	161	7
885	161	44
886	161	79
887	161	48
888	161	83
889	161	52
890	161	22
891	161	60
892	162	33
893	162	130
894	162	129
895	162	37
896	162	70
897	162	7
898	162	11
899	162	79
900	162	48
901	162	17
902	162	83
903	162	52
904	162	22
905	163	34
906	163	37
907	163	7
908	163	44
909	163	79
910	163	47
911	163	83
912	163	52
913	163	22
914	163	60
915	164	129
916	164	70
917	164	7
918	164	9
919	164	11
920	164	79
921	164	48
922	164	17
923	164	52
924	164	22
925	165	34
926	165	37
927	165	7
928	165	44
929	165	79
930	165	47
931	165	83
932	165	52
933	165	60
934	166	129
935	166	70
936	166	134
937	166	7
938	166	9
939	166	11
940	166	79
941	166	47
942	166	17
943	166	52
944	166	22
945	164	134
946	167	129
947	167	70
948	167	134
949	167	7
950	167	9
951	167	11
952	167	79
953	167	48
954	167	17
955	167	52
956	167	22
957	168	34
958	168	37
959	168	7
960	168	44
961	168	79
962	168	47
963	168	83
964	168	52
965	168	22
966	168	60
967	169	129
968	169	70
969	169	134
970	169	7
971	169	9
972	169	11
973	169	79
974	169	48
975	169	17
976	169	52
977	169	22
978	170	34
979	170	37
980	170	7
981	170	44
982	170	79
983	170	48
984	170	83
985	170	52
986	170	22
987	170	60
988	171	33
989	171	130
990	171	129
991	171	37
992	171	70
993	171	7
994	171	11
995	171	79
996	171	48
997	171	17
998	171	83
999	171	52
1000	171	22
1001	172	34
1002	172	37
1003	172	7
1004	172	44
1005	172	79
1006	172	49
1007	172	83
1008	172	52
1009	172	22
1010	172	60
1024	174	34
1025	174	7
1026	174	44
1027	174	79
1028	174	47
1029	174	83
1030	174	52
1031	174	60
1032	175	33
1033	175	130
1034	175	129
1035	175	70
1036	175	11
1037	175	79
1038	175	48
1039	175	17
1040	175	83
1041	175	52
1042	175	22
1043	176	34
1044	176	37
1045	176	7
1046	176	44
1047	176	79
1048	176	49
1049	176	83
1050	176	52
1051	176	22
1052	176	60
1053	177	34
1054	177	37
1055	177	7
1056	177	44
1057	177	79
1058	177	48
1059	177	83
1060	177	52
1061	177	60
1062	178	33
1063	178	130
1064	178	129
1065	178	37
1066	178	70
1067	178	7
1068	178	11
1069	178	79
1070	178	48
1071	178	17
1072	178	83
1073	178	52
1074	178	22
1075	179	129
1076	179	70
1077	179	134
1078	179	7
1079	179	9
1080	179	11
1081	179	79
1082	179	48
1083	179	17
1084	179	52
1085	179	22
1086	180	33
1087	180	130
1088	180	129
1089	180	37
1090	180	70
1091	180	7
1092	180	11
1093	180	47
1094	180	79
1095	180	17
1096	180	83
1097	180	52
1098	180	22
1100	181	34
1101	181	37
1102	181	7
1103	181	44
1104	181	79
1105	181	48
1106	181	83
1107	181	52
1108	181	22
1109	181	60
1110	182	33
1111	182	130
1112	182	129
1113	182	70
1114	182	7
1115	182	11
1116	182	47
1117	182	79
1118	182	17
1119	182	83
1120	182	52
1121	182	22
1122	183	34
1123	183	7
1124	183	44
1125	183	79
1126	183	48
1127	183	83
1128	183	52
1129	183	60
1130	184	34
1131	184	37
1132	184	7
1133	184	44
1134	184	79
1135	184	48
1136	184	83
1137	184	52
1138	184	22
1139	184	60
1140	185	33
1141	185	130
1142	185	129
1143	185	70
1144	185	7
1145	185	11
1146	185	79
1147	185	48
1148	185	17
1149	185	83
1150	185	52
1151	185	22
1152	186	129
1153	186	70
1154	186	134
1155	186	7
1156	186	9
1157	186	11
1158	186	79
1159	186	48
1160	186	17
1161	186	52
1162	186	22
1163	187	33
1164	187	129
1165	187	131
1166	187	70
1167	187	11
1168	187	47
1169	187	79
1170	187	17
1171	187	83
1172	187	52
1173	187	22
1174	188	33
1175	188	129
1176	188	131
1177	188	37
1178	188	70
1179	188	7
1180	188	11
1181	188	47
1182	188	79
1183	188	17
1184	188	83
1185	188	52
1186	188	22
1187	189	34
1188	189	37
1189	189	7
1190	189	44
1191	189	79
1192	189	49
1193	189	83
1194	189	52
1195	189	22
1196	189	60
1197	190	33
1198	190	129
1199	190	131
1200	190	37
1201	190	70
1202	190	7
1203	190	11
1204	190	47
1205	190	79
1206	190	17
1207	190	83
1208	190	52
1209	190	22
1210	191	34
1211	191	37
1212	191	7
1213	191	44
1214	191	79
1215	191	48
1216	191	83
1217	191	52
1218	191	22
1219	191	60
1220	192	129
1221	192	34
1222	192	70
1223	192	134
1224	192	7
1225	192	9
1226	192	79
1227	192	48
1228	192	17
1229	192	52
1230	192	22
1231	193	34
1232	193	7
1233	193	44
1234	193	79
1235	193	47
1236	193	83
1237	193	52
1238	193	60
1239	194	33
1240	194	129
1241	194	70
1242	194	134
1243	194	7
1244	194	11
1245	194	79
1246	194	48
1247	194	17
1248	194	52
1249	194	22
1250	195	34
1251	195	37
1252	195	7
1253	195	44
1254	195	79
1255	195	48
1256	195	83
1257	195	52
1258	195	22
1259	195	60
1260	196	34
1261	196	37
1262	196	7
1263	196	44
1264	196	79
1265	196	47
1266	196	83
1267	196	52
1268	196	22
1269	196	60
1270	197	33
1271	197	130
1272	197	129
1273	197	37
1274	197	70
1275	197	7
1276	197	11
1277	197	79
1278	197	48
1279	197	17
1280	197	83
1281	197	52
1282	197	22
1293	200	34
1294	200	37
1295	200	7
1296	200	44
1297	200	79
1298	200	47
1299	200	83
1300	200	52
1301	200	22
1302	200	60
1303	201	34
1304	201	37
1305	201	7
1306	201	44
1307	201	79
1308	201	47
1309	201	83
1310	201	52
1311	201	22
1312	201	60
1313	202	34
1314	202	37
1315	202	7
1316	202	44
1317	202	79
1318	202	47
1319	202	83
1320	202	52
1321	202	22
1322	202	60
1323	203	34
1324	203	37
1325	203	7
1326	203	44
1327	203	79
1328	203	47
1329	203	83
1330	203	52
1331	203	22
1332	203	60
1333	204	34
1334	204	37
1335	204	7
1336	204	44
1337	204	79
1338	204	47
1339	204	83
1340	204	52
1341	204	22
1342	204	60
1343	205	34
1344	205	7
1345	205	44
1346	205	79
1347	205	47
1348	205	83
1349	205	52
1350	205	84
1351	205	22
1352	205	60
1353	206	34
1354	206	37
1355	206	7
1356	206	44
1357	206	79
1358	206	47
1359	206	83
1360	206	52
1361	206	22
1362	206	60
1363	207	34
1364	207	37
1365	207	7
1366	207	44
1367	207	79
1368	207	47
1369	207	83
1370	207	52
1371	207	22
1372	207	60
1373	208	34
1374	208	37
1375	208	7
1376	208	44
1377	208	79
1378	208	47
1379	208	83
1380	208	52
1381	208	22
1382	208	60
1383	209	34
1384	209	37
1385	209	7
1386	209	44
1387	209	79
1388	209	47
1389	209	83
1390	209	52
1391	209	22
1392	209	60
1393	210	34
1394	210	37
1395	210	7
1396	210	44
1397	210	79
1398	210	47
1399	210	83
1400	210	52
1401	210	22
1402	210	60
1403	211	34
1404	211	37
1405	211	7
1406	211	44
1407	211	79
1408	211	47
1409	211	83
1410	211	52
1411	211	22
1412	211	60
1413	212	34
1414	212	37
1415	212	7
1416	212	44
1417	212	79
1418	212	47
1419	212	83
1420	212	52
1421	212	22
1422	212	60
1423	213	34
1424	213	37
1425	213	7
1426	213	44
1427	213	79
1428	213	47
1429	213	83
1430	213	52
1431	213	22
1432	213	60
1433	214	34
1434	214	37
1435	214	7
1436	214	44
1437	214	79
1438	214	47
1439	214	83
1440	214	52
1441	214	22
1442	214	60
1443	215	34
1444	215	37
1445	215	7
1446	215	44
1447	215	79
1448	215	47
1449	215	83
1450	215	52
1451	215	22
1452	215	60
1453	216	34
1454	216	37
1455	216	7
1456	216	9
1457	216	79
1458	216	47
1459	216	83
1460	216	52
1461	216	22
1462	216	60
1463	217	34
1464	217	37
1465	217	7
1466	217	44
1467	217	79
1468	217	47
1469	217	83
1470	217	52
1471	217	22
1472	217	60
1473	218	33
1474	218	130
1475	218	129
1476	218	70
1477	218	7
1478	218	11
1479	218	47
1480	218	79
1481	218	17
1482	218	83
1483	218	52
1484	218	22
1485	220	34
1486	220	37
1487	220	7
1488	220	44
1489	220	79
1490	220	48
1491	220	83
1492	220	52
1493	220	22
1494	220	60
1495	221	34
1496	221	37
1497	221	7
1498	221	44
1499	221	79
1500	221	48
1501	221	83
1502	221	52
1503	221	22
1504	221	60
1505	222	33
1506	222	130
1507	222	129
1508	222	70
1509	222	7
1510	222	11
1511	222	47
1512	222	79
1513	222	17
1514	222	83
1515	222	52
1516	222	22
1537	227	96
1538	227	33
1539	227	130
1540	227	129
1541	227	37
1542	227	70
1543	227	7
1544	227	11
1545	227	47
1546	227	79
1547	227	17
1548	227	83
1549	227	52
1550	227	53
1551	227	22
1552	228	96
1553	228	33
1554	228	130
1555	228	129
1556	228	37
1557	228	70
1558	228	7
1559	228	11
1560	228	47
1561	228	79
1562	228	17
1563	228	83
1564	228	52
1565	228	53
1566	228	22
1567	229	96
1568	229	33
1569	229	130
1570	229	129
1571	229	37
1572	229	70
1573	229	7
1574	229	11
1575	229	47
1576	229	79
1577	229	17
1578	229	83
1579	229	52
1580	229	53
1581	229	22
1582	230	96
1583	230	33
1584	230	130
1585	230	129
1586	230	37
1587	230	70
1588	230	7
1589	230	11
1590	230	47
1591	230	79
1592	230	17
1593	230	83
1594	230	52
1595	230	53
1596	230	22
1597	231	96
1598	231	129
1599	231	130
1600	231	37
1601	231	70
1602	231	7
1603	231	11
1604	231	44
1605	231	47
1606	231	79
1607	231	17
1608	231	83
1609	231	52
1610	231	53
1611	231	22
1612	232	96
1613	232	33
1614	232	130
1615	232	129
1616	232	37
1617	232	70
1618	232	7
1619	232	11
1620	232	47
1621	232	79
1622	232	17
1623	232	83
1624	232	52
1625	232	53
1626	232	22
1627	233	96
1628	233	33
1629	233	130
1630	233	129
1631	233	37
1632	233	70
1633	233	7
1634	233	11
1635	233	47
1636	233	79
1637	233	17
1638	233	83
1639	233	52
1640	233	53
1641	233	22
1642	234	96
1643	234	33
1644	234	130
1645	234	129
1646	234	37
1647	234	70
1648	234	7
1649	234	11
1650	234	47
1651	234	79
1652	234	17
1653	234	83
1654	234	52
1655	234	53
1656	234	22
1657	235	96
1658	235	33
1659	235	130
1660	235	129
1661	235	37
1662	235	70
1663	235	7
1664	235	11
1665	235	47
1666	235	79
1667	235	17
1668	235	83
1669	235	52
1670	235	53
1671	235	22
1672	236	96
1673	236	33
1674	236	130
1675	236	129
1676	236	37
1677	236	70
1678	236	7
1679	236	11
1680	236	47
1681	236	79
1682	236	17
1683	236	83
1684	236	52
1685	236	53
1686	236	22
1687	237	96
1688	237	33
1689	237	130
1690	237	129
1691	237	37
1692	237	70
1693	237	7
1694	237	11
1695	237	47
1696	237	79
1697	237	17
1698	237	83
1699	237	52
1700	237	53
1701	237	22
1702	238	96
1703	238	129
1704	238	130
1705	238	37
1706	238	70
1707	238	7
1708	238	11
1709	238	44
1710	238	47
1711	238	79
1712	238	17
1713	238	83
1714	238	52
1715	238	53
1716	238	22
1717	239	96
1718	239	33
1719	239	129
1720	239	131
1721	239	70
1722	239	7
1723	239	11
1724	239	79
1725	239	48
1726	239	17
1727	239	83
1728	239	52
1729	239	22
1730	240	96
1731	240	33
1732	240	130
1733	240	129
1734	240	37
1735	240	70
1736	240	7
1737	240	11
1738	240	47
1739	240	79
1740	240	17
1741	240	83
1742	240	52
1743	240	53
1744	240	22
1745	241	96
1746	241	33
1747	241	130
1748	241	129
1749	241	37
1750	241	70
1751	241	7
1752	241	11
1753	241	47
1754	241	79
1755	241	17
1756	241	83
1757	241	52
1758	241	53
1759	241	22
1760	242	96
1761	242	33
1762	242	130
1763	242	129
1764	242	37
1765	242	70
1766	242	7
1767	242	11
1768	242	47
1769	242	79
1770	242	17
1771	242	83
1772	242	52
1773	242	53
1774	242	22
1775	243	96
1776	243	33
1777	243	130
1778	243	129
1779	243	37
1780	243	70
1781	243	7
1782	243	11
1783	243	47
1784	243	79
1785	243	17
1786	243	83
1787	243	52
1788	243	53
1789	243	22
1790	244	96
1791	244	33
1792	244	130
1793	244	129
1794	244	37
1795	244	70
1796	244	7
1797	244	11
1798	244	47
1799	244	79
1800	244	17
1801	244	83
1802	244	52
1803	244	53
1804	244	22
1805	245	96
1806	245	33
1807	245	130
1808	245	129
1809	245	37
1810	245	70
1811	245	7
1812	245	11
1813	245	47
1814	245	79
1815	245	17
1816	245	83
1817	245	52
1818	245	53
1819	245	22
1820	246	96
1821	246	33
1822	246	130
1823	246	129
1824	246	37
1825	246	70
1826	246	7
1827	246	11
1828	246	47
1829	246	79
1830	246	17
1831	246	83
1832	246	52
1833	246	53
1834	246	22
1835	248	97
1836	248	34
1837	248	7
1838	248	44
1839	248	79
1840	248	47
1841	248	83
1842	248	52
1843	248	53
1844	248	60
1845	249	97
1846	249	33
1847	249	129
1848	249	7
1849	249	11
1850	249	79
1851	249	47
1852	249	17
1853	249	83
1854	249	52
1855	249	53
1856	249	61
1857	250	97
1858	250	34
1859	250	37
1860	250	7
1861	250	44
1862	250	79
1863	250	49
1864	250	83
1865	250	52
1866	250	22
1867	250	60
1868	251	97
1869	251	34
1870	251	33
1871	251	129
1872	251	7
1873	251	79
1874	251	48
1875	251	83
1876	251	52
1877	251	22
1878	251	61
1879	252	97
1880	252	34
1881	252	7
1882	252	44
1883	252	79
1884	252	47
1885	252	83
1886	252	52
1887	252	22
1888	252	60
1889	253	97
1890	253	34
1891	253	7
1892	253	44
1893	253	79
1894	253	48
1895	253	83
1896	253	52
1897	253	22
1898	253	60
1899	254	97
1900	254	34
1901	254	7
1902	254	44
1903	254	79
1904	254	48
1905	254	83
1906	254	52
1907	254	60
1908	255	97
1909	255	34
1910	255	37
1911	255	7
1912	255	79
1913	255	48
1914	255	83
1915	255	52
1916	255	53
1917	255	22
1918	255	60
1919	256	97
1920	256	34
1921	256	37
1922	256	7
1923	256	44
1924	256	79
1925	256	48
1926	256	83
1927	256	52
1928	256	22
1929	256	60
1930	257	97
1931	257	33
1932	257	131
1933	257	129
1934	257	70
1935	257	7
1936	257	11
1937	257	47
1938	257	79
1939	257	17
1940	257	83
1941	257	52
1942	257	53
1943	257	22
1944	258	97
1945	258	33
1946	258	131
1947	258	129
1948	258	37
1949	258	70
1950	258	7
1951	258	11
1952	258	47
1953	258	79
1954	258	17
1955	258	83
1956	258	52
1957	258	22
1958	259	97
1959	259	33
1960	259	129
1961	259	70
1962	259	7
1963	259	11
1965	259	79
1966	259	48
1967	259	17
1968	259	83
1969	259	52
1970	259	53
1971	259	22
1972	260	97
1973	260	34
1974	260	37
1975	260	7
1976	260	44
1977	260	79
1978	260	48
1979	260	83
1980	260	52
1981	260	53
1982	260	22
1983	260	60
1984	261	97
1985	261	130
1986	261	33
1987	261	129
1988	261	37
1989	261	70
1990	261	7
1991	261	11
1992	261	79
1993	261	48
1994	261	17
1995	261	83
1996	261	52
1997	261	53
1998	261	22
1999	262	97
2000	262	34
2001	262	37
2002	262	7
2003	262	44
2004	262	79
2005	262	48
2006	262	83
2007	262	52
2008	262	53
2009	262	22
2010	262	60
2011	263	97
2012	263	130
2013	263	33
2014	263	37
2015	263	70
2016	263	11
2017	263	79
2018	263	48
2019	263	17
2020	263	83
2021	263	52
2022	263	53
2023	263	22
2024	264	97
2025	264	33
2026	264	131
2027	264	129
2028	264	70
2029	264	7
2030	264	11
2031	264	47
2032	264	79
2033	264	17
2034	264	83
2035	264	52
2036	264	53
2037	264	22
2038	265	97
2039	265	34
2040	265	37
2041	265	7
2042	265	44
2043	265	79
2044	265	48
2045	265	83
2046	265	52
2047	265	53
2048	265	22
2049	265	60
2050	266	97
2051	266	130
2052	266	33
2053	266	129
2054	266	37
2055	266	70
2056	266	7
2057	266	11
2058	266	79
2059	266	48
2060	266	17
2061	266	83
2062	266	52
2063	266	53
2064	266	22
2065	267	97
2066	267	130
2067	267	33
2068	267	129
2069	267	37
2070	267	70
2071	267	7
2072	267	11
2073	267	79
2074	267	48
2075	267	17
2076	267	83
2077	267	52
2078	267	53
2079	267	22
2080	268	97
2081	268	34
2082	268	37
2083	268	7
2084	268	44
2085	268	79
2086	268	48
2087	268	83
2088	268	52
2089	268	53
2090	268	22
2091	268	60
2092	269	97
2093	269	130
2094	269	33
2095	269	129
2096	269	37
2097	269	70
2098	269	7
2099	269	11
2100	269	79
2101	269	48
2102	269	17
2103	269	83
2104	269	52
2105	269	53
2106	269	22
2107	270	97
2108	270	34
2109	270	37
2110	270	7
2111	270	44
2112	270	79
2113	270	48
2114	270	83
2115	270	52
2116	270	53
2117	270	22
2118	270	60
2119	272	96
2120	272	33
2121	272	130
2122	272	129
2123	272	37
2124	272	7
2125	272	11
2126	272	48
2127	272	17
2128	272	83
2129	272	52
2130	272	53
2131	272	22
2132	273	96
2133	273	34
2134	273	37
2135	273	7
2136	273	44
2137	273	79
2138	273	48
2139	273	83
2140	273	52
2141	273	22
2142	273	60
2143	274	96
2144	274	33
2145	274	130
2146	274	129
2147	274	37
2148	274	70
2149	274	7
2150	274	11
2151	274	47
2152	274	79
2153	274	17
2154	274	83
2155	274	52
2156	274	53
2157	274	22
2158	275	96
2159	275	33
2160	275	130
2161	275	129
2162	275	37
2163	275	70
2164	275	7
2165	275	11
2166	275	47
2167	275	79
2168	275	17
2169	275	83
2170	275	52
2171	275	53
2172	275	22
2173	276	96
2174	276	33
2175	276	130
2176	276	129
2177	276	37
2178	276	70
2179	276	7
2180	276	11
2181	276	47
2182	276	79
2183	276	17
2184	276	83
2185	276	52
2186	276	53
2187	276	22
2188	277	96
2189	277	33
2190	277	130
2191	277	129
2192	277	37
2193	277	70
2194	277	7
2195	277	11
2196	277	47
2197	277	79
2198	277	17
2199	277	83
2200	277	52
2201	277	53
2202	277	22
2203	278	96
2204	278	33
2205	278	130
2206	278	129
2207	278	37
2208	278	70
2209	278	7
2210	278	11
2211	278	47
2212	278	79
2213	278	17
2214	278	83
2215	278	52
2216	278	53
2217	278	22
2218	279	96
2219	279	33
2220	279	130
2221	279	129
2222	279	37
2223	279	70
2224	279	7
2225	279	11
2226	279	47
2227	279	79
2228	279	17
2229	279	83
2230	279	52
2231	279	53
2232	279	22
2233	280	96
2234	280	33
2235	280	130
2236	280	129
2237	280	37
2238	280	70
2239	280	7
2240	280	11
2241	280	47
2242	280	79
2243	280	17
2244	280	83
2245	280	52
2246	280	53
2247	280	22
2248	281	96
2249	281	33
2250	281	130
2251	281	129
2252	281	37
2253	281	70
2254	281	7
2255	281	11
2256	281	47
2257	281	79
2258	281	17
2259	281	83
2260	281	52
2261	281	53
2262	281	22
2263	282	96
2264	282	33
2265	282	130
2266	282	129
2267	282	37
2268	282	70
2269	282	7
2270	282	11
2271	282	47
2272	282	79
2273	282	17
2274	282	83
2275	282	52
2276	282	53
2277	282	22
2278	283	96
2279	283	33
2280	283	130
2281	283	129
2282	283	37
2283	283	70
2284	283	7
2285	283	11
2286	283	47
2287	283	79
2288	283	17
2289	283	83
2290	283	52
2291	283	53
2292	283	22
2293	284	96
2294	284	33
2295	284	130
2296	284	129
2297	284	37
2298	284	70
2299	284	7
2300	284	11
2301	284	47
2302	284	79
2303	284	17
2304	284	83
2305	284	52
2306	284	53
2307	284	22
2308	285	96
2309	285	33
2310	285	130
2311	285	129
2312	285	37
2313	285	70
2314	285	7
2315	285	11
2316	285	47
2317	285	79
2318	285	17
2319	285	83
2320	285	52
2321	285	53
2322	285	22
2323	286	96
2324	286	33
2325	286	130
2326	286	129
2327	286	37
2328	286	70
2329	286	7
2330	286	11
2331	286	47
2332	286	79
2333	286	17
2334	286	83
2335	286	52
2336	286	53
2337	286	22
2338	287	96
2339	287	33
2340	287	130
2341	287	129
2342	287	70
2343	287	7
2344	287	11
2345	287	47
2346	287	79
2347	287	17
2348	287	83
2349	287	52
2350	287	53
2351	287	22
2352	288	96
2353	288	33
2354	288	130
2355	288	129
2356	288	37
2357	288	70
2358	288	7
2359	288	11
2360	288	47
2361	288	79
2362	288	17
2363	288	83
2364	288	52
2365	288	53
2366	288	22
2367	289	96
2368	289	33
2369	289	130
2370	289	129
2371	289	37
2372	289	70
2373	289	7
2374	289	11
2375	289	47
2376	289	79
2377	289	17
2378	289	83
2379	289	52
2380	289	53
2381	289	22
2382	290	96
2383	290	33
2384	290	130
2385	290	129
2386	290	37
2387	290	70
2388	290	7
2389	290	11
2390	290	79
2391	290	48
2392	290	17
2393	290	83
2394	290	52
2395	290	53
2396	290	22
2397	291	96
2398	291	33
2399	291	130
2400	291	129
2401	291	70
2402	291	7
2403	291	11
2404	291	47
2405	291	79
2406	291	17
2407	291	83
2408	291	52
2409	291	53
2410	291	22
2411	292	96
2412	292	33
2413	292	130
2414	292	129
2415	292	37
2416	292	70
2417	292	7
2418	292	11
2419	292	79
2420	292	48
2421	292	17
2422	292	83
2423	292	52
2424	292	53
2425	292	22
2426	293	96
2427	293	79
2428	294	97
2429	294	34
2430	294	37
2431	294	7
2432	294	44
2433	294	79
2434	294	49
2435	294	83
2436	294	52
2437	294	22
2438	294	60
2439	295	97
2440	295	130
2441	295	33
2442	295	129
2443	295	37
2444	295	70
2445	295	7
2446	295	11
2447	295	79
2448	295	48
2449	295	17
2450	295	83
2451	295	52
2452	295	53
2453	295	22
2454	296	97
2455	296	130
2456	296	33
2457	296	129
2458	296	37
2459	296	70
2460	296	7
2461	296	11
2462	296	79
2463	296	48
2464	296	17
2465	296	83
2466	296	52
2467	296	53
2468	296	22
2469	297	97
2470	297	130
2471	297	33
2472	297	129
2473	297	37
2474	297	70
2475	297	7
2476	297	11
2477	297	79
2478	297	48
2479	297	17
2480	297	83
2481	297	52
2482	297	53
2483	297	22
2484	298	97
2485	298	130
2486	298	33
2487	298	129
2488	298	37
2489	298	70
2490	298	7
2491	298	11
2492	298	47
2493	298	79
2494	298	17
2495	298	83
2496	298	52
2497	298	53
2498	298	22
2499	299	97
2500	299	130
2501	299	33
2502	299	129
2503	299	37
2504	299	70
2505	299	7
2506	299	11
2507	299	79
2508	299	48
2509	299	17
2510	299	83
2511	299	52
2512	299	53
2513	299	22
2514	300	97
2515	300	130
2516	300	33
2517	300	129
2518	300	37
2519	300	70
2520	300	7
2521	300	11
2522	300	79
2523	300	48
2524	300	17
2525	300	83
2526	300	52
2527	300	53
2528	300	22
2529	301	97
2530	301	130
2531	301	33
2532	301	129
2533	301	37
2534	301	70
2535	301	7
2536	301	11
2537	301	79
2538	301	49
2539	301	17
2540	301	83
2541	301	52
2542	301	53
2543	301	22
2544	302	97
2545	302	130
2546	302	33
2547	302	129
2548	302	37
2549	302	70
2550	302	7
2551	302	11
2552	302	47
2553	302	79
2554	302	17
2555	302	83
2556	302	52
2557	302	53
2558	302	22
2559	303	97
2560	303	130
2561	303	33
2562	303	129
2563	303	37
2564	303	70
2565	303	7
2566	303	11
2567	303	47
2568	303	79
2569	303	17
2570	303	83
2571	303	52
2572	303	53
2573	303	22
2574	304	97
2575	304	130
2576	304	33
2577	304	129
2578	304	37
2579	304	70
2580	304	7
2581	304	11
2582	304	47
2583	304	79
2584	304	17
2585	304	83
2586	304	52
2587	304	53
2588	304	22
2589	305	97
2590	305	130
2591	305	33
2592	305	129
2593	305	37
2594	305	70
2595	305	7
2596	305	11
2597	305	79
2598	305	48
2599	305	17
2600	305	83
2601	305	52
2602	305	53
2603	305	22
2604	306	97
2605	306	130
2606	306	33
2607	306	129
2608	306	37
2609	306	70
2610	306	7
2611	306	11
2612	306	79
2613	306	48
2614	306	17
2615	306	83
2616	306	52
2617	306	53
2618	306	22
2619	307	97
2620	307	130
2621	307	33
2622	307	129
2623	307	37
2624	307	70
2625	307	7
2626	307	11
2627	307	79
2628	307	48
2629	307	17
2630	307	83
2631	307	52
2632	307	53
2633	307	22
2634	308	97
2635	308	130
2636	308	33
2637	308	129
2638	308	37
2639	308	70
2640	308	7
2641	308	11
2642	308	79
2643	308	48
2644	308	83
2645	308	52
2646	308	53
2647	308	22
2648	309	97
2649	309	130
2650	309	33
2651	309	129
2652	309	37
2653	309	70
2654	309	7
2655	309	11
2656	309	79
2657	309	48
2658	309	17
2659	309	83
2660	309	52
2661	309	53
2662	309	22
2663	310	97
2664	310	33
2665	310	131
2666	310	129
2667	310	37
2668	310	70
2669	310	7
2670	310	11
2671	310	47
2672	310	79
2673	310	17
2674	310	83
2675	310	52
2676	310	53
2677	310	22
2678	311	97
2679	311	33
2680	311	131
2681	311	129
2682	311	37
2683	311	70
2684	311	7
2685	311	11
2686	311	79
2687	311	48
2688	311	17
2689	311	83
2690	311	52
2691	311	53
2692	311	22
2693	312	97
2694	312	130
2695	312	33
2696	312	129
2697	312	70
2698	312	7
2699	312	11
2700	312	79
2701	312	48
2702	312	17
2703	312	83
2704	312	148
2705	312	52
2706	312	53
2707	312	22
2708	313	97
2709	313	130
2710	313	33
2711	313	129
2712	313	37
2713	313	70
2714	313	7
2715	313	11
2716	313	79
2717	313	48
2718	313	17
2719	313	83
2720	313	148
2721	313	52
2722	313	53
2723	313	22
2724	314	97
2725	314	34
2726	314	7
2727	314	44
2728	314	79
2729	314	49
2730	314	83
2731	314	148
2732	314	52
2733	314	53
2734	314	60
2735	315	97
2736	315	34
2737	315	37
2738	315	7
2739	315	44
2740	315	79
2741	315	49
2742	315	83
2743	315	148
2744	315	52
2745	315	53
2746	315	60
2747	316	97
2748	316	34
2749	316	37
2750	316	7
2751	316	44
2752	316	79
2753	316	48
2754	316	83
2755	316	148
2756	316	52
2757	316	53
2758	316	60
2759	317	97
2760	317	130
2761	317	33
2762	317	129
2763	317	37
2764	317	70
2765	317	7
2766	317	11
2767	317	79
2768	317	48
2769	317	17
2770	317	83
2771	317	148
2772	317	52
2773	317	53
2774	317	22
2775	318	97
2776	318	130
2777	318	33
2778	318	129
2779	318	37
2780	318	70
2781	318	7
2782	318	11
2783	318	47
2784	318	79
2785	318	17
2786	318	83
2787	318	148
2788	318	52
2789	318	53
2790	318	22
2791	319	97
2792	319	34
2793	319	37
2794	319	7
2795	319	44
2796	319	79
2797	319	49
2798	319	83
2799	319	148
2800	319	52
2801	319	53
2802	319	22
2803	319	60
2804	320	97
2805	320	130
2806	320	33
2807	320	129
2808	320	37
2809	320	70
2810	320	7
2811	320	11
2812	320	79
2813	320	48
2814	320	17
2815	320	83
2816	320	148
2817	320	52
2818	320	53
2819	320	22
2820	321	97
2821	321	130
2822	321	33
2823	321	129
2824	321	37
2825	321	70
2826	321	7
2827	321	11
2828	321	47
2829	321	79
2830	321	17
2831	321	83
2832	321	148
2833	321	52
2834	321	53
2835	321	22
2836	322	97
2837	322	130
2838	322	33
2839	322	129
2840	322	70
2841	322	7
2842	322	11
2843	322	47
2844	322	79
2845	322	17
2846	322	83
2847	322	148
2848	322	52
2849	322	53
2850	322	22
2851	323	97
2852	323	130
2853	323	33
2854	323	129
2855	323	70
2856	323	7
2857	323	11
2858	323	47
2859	323	79
2860	323	17
2861	323	83
2862	323	148
2863	323	52
2864	323	53
2865	323	22
2866	324	97
2867	324	130
2868	324	33
2869	324	129
2870	324	37
2871	324	70
2872	324	7
2873	324	11
2874	324	47
2875	324	79
2876	324	17
2877	324	83
2878	324	148
2879	324	52
2880	324	53
2881	324	22
2882	325	97
2883	325	130
2884	325	33
2885	325	129
2886	325	37
2887	325	70
2888	325	7
2889	325	11
2890	325	47
2891	325	79
2892	325	17
2893	325	83
2894	325	148
2895	325	52
2896	325	53
2897	325	22
2898	327	97
2899	327	33
2900	327	129
2901	327	69
2903	327	79
2904	327	47
2905	327	148
2906	327	52
2907	327	53
2908	327	22
2909	328	128
2910	328	97
2911	328	34
2912	328	7
2913	328	9
2914	328	79
2915	328	47
2916	328	148
2917	328	52
2918	328	53
2919	328	22
2920	329	128
2921	329	97
2922	329	34
2923	329	7
2924	329	9
2925	329	79
2926	329	47
2927	329	148
2928	329	52
2929	329	53
2930	329	22
2931	330	128
2932	330	97
2933	330	34
2934	330	7
2935	330	9
2936	330	79
2937	330	47
2938	330	148
2939	330	52
2940	330	53
2941	330	22
2942	331	97
2943	331	34
2944	331	7
2945	331	44
2946	331	79
2947	331	47
2948	331	83
2949	331	52
2950	331	53
2951	331	60
2952	332	97
2953	332	34
2954	332	7
2955	332	44
2956	332	79
2957	332	47
2958	332	83
2959	332	52
2960	332	53
2961	332	60
2962	333	97
2963	333	34
2964	333	7
2965	333	44
2966	333	79
2967	333	47
2968	333	83
2969	333	148
2970	333	52
2971	333	53
2972	333	60
2973	334	97
2974	334	34
2975	334	7
2976	334	44
2977	334	79
2978	334	47
2979	334	83
2980	334	148
2981	334	52
2982	334	53
2983	334	60
2984	335	128
2985	335	97
2986	335	11
2987	335	79
2988	335	47
2989	336	97
2990	336	11
2991	336	79
2992	336	47
2993	337	97
2994	337	11
2995	337	79
2996	337	47
2997	338	128
2998	338	97
2999	338	129
3000	338	7
3001	338	9
3002	338	11
3003	338	79
3004	338	47
3005	338	148
3006	338	52
3007	338	53
3008	339	97
3009	339	34
3010	339	37
3011	339	7
3012	339	44
3013	339	79
3014	339	47
3015	339	83
3016	339	22
3017	339	60
3018	340	97
3019	340	34
3020	340	37
3021	340	7
3022	340	44
3023	340	79
3024	340	48
3025	340	83
3026	340	52
3027	340	53
3028	340	22
3029	340	60
3030	341	97
3031	341	34
3032	341	37
3033	341	7
3034	341	44
3035	341	79
3036	341	47
3037	341	83
3038	341	22
3039	341	60
3040	342	97
3041	342	34
3042	342	44
3043	342	79
3044	342	48
3045	342	60
3046	343	97
3047	343	34
3048	343	37
3049	343	7
3050	343	44
3051	343	79
3052	343	48
3053	343	83
3054	343	148
3055	343	52
3056	343	53
3057	343	22
3058	343	60
3059	344	97
3060	344	34
3061	344	37
3062	344	7
3063	344	44
3064	344	79
3065	344	49
3066	344	83
3067	344	148
3068	344	52
3069	344	53
3070	344	22
3071	344	60
3072	345	97
3073	345	34
3074	345	37
3075	345	7
3076	345	44
3077	345	79
3078	345	48
3079	345	83
3080	345	148
3081	345	52
3082	345	53
3083	345	22
3084	345	60
3085	346	128
3086	346	97
3087	346	34
3088	346	7
3089	346	9
3090	346	79
3091	346	48
3092	346	148
3093	346	52
3094	346	53
3095	347	128
3096	347	97
3097	347	34
3098	347	7
3099	347	9
3100	347	79
3101	347	48
3102	347	148
3103	347	52
3104	347	53
3105	347	22
3106	348	128
3107	348	97
3108	348	34
3109	348	7
3110	348	9
3111	348	79
3112	348	48
3113	348	148
3114	348	52
3115	348	53
3116	348	22
3117	349	128
3118	349	97
3119	349	34
3120	349	7
3121	349	9
3122	349	79
3123	349	48
3124	349	148
3125	349	52
3126	349	53
3127	350	128
3128	350	97
3129	350	34
3130	350	7
3131	350	9
3132	350	79
3133	350	48
3134	350	148
3135	350	52
3136	350	53
3137	350	22
3138	351	128
3139	351	97
3140	351	34
3141	351	7
3142	351	9
3143	351	79
3144	351	48
3145	351	148
3146	351	52
3147	351	53
3148	351	22
3149	352	128
3150	352	97
3151	352	34
3152	352	7
3153	352	9
3154	352	79
3155	352	48
3156	352	148
3157	352	52
3158	352	53
3159	352	22
3160	353	128
3161	353	97
3162	353	34
3163	353	7
3164	353	9
3165	353	79
3166	353	48
3167	353	148
3168	353	52
3169	353	53
3170	353	22
3171	354	128
3172	354	97
3173	354	34
3174	354	7
3175	354	9
3176	354	79
3177	354	48
3178	354	148
3179	354	52
3180	354	53
3181	355	128
3182	355	97
3183	355	34
3184	355	7
3185	355	9
3186	355	79
3187	355	47
3188	355	148
3189	355	52
3190	355	53
3191	355	22
3192	356	128
3193	356	97
3194	356	34
3195	356	7
3196	356	9
3197	356	79
3198	356	49
3199	356	148
3200	356	52
3201	356	53
3202	356	22
3203	357	128
3204	357	97
3205	357	34
3206	357	7
3207	357	9
3208	357	79
3209	357	47
3210	357	148
3211	357	52
3212	357	53
3213	357	22
3214	358	128
3215	358	97
3216	358	34
3217	358	7
3218	358	9
3219	358	79
3220	358	48
3221	358	148
3222	358	52
3223	358	53
3224	358	22
3225	359	128
3226	359	97
3227	359	34
3228	359	7
3229	359	9
3230	359	79
3231	359	48
3232	359	148
3233	359	52
3234	359	53
3235	359	22
3236	360	128
3237	360	97
3238	360	34
3239	360	7
3240	360	9
3241	360	79
3242	360	48
3243	360	148
3244	360	52
3245	360	53
3246	360	22
3247	361	128
3248	361	97
3249	361	34
3250	361	7
3251	361	9
3252	361	79
3253	361	48
3254	361	148
3255	361	52
3256	361	53
3257	361	22
3258	362	128
3259	362	97
3260	362	34
3261	362	7
3262	362	9
3263	362	79
3264	362	48
3265	362	148
3266	362	52
3267	362	53
3268	362	22
3269	363	128
3270	363	97
3271	363	34
3272	363	7
3273	363	9
3274	363	79
3275	363	48
3276	363	148
3277	363	52
3278	363	53
3279	363	22
3280	365	96
3281	365	128
3282	365	34
3283	365	7
3284	365	9
3285	365	79
3286	365	48
3287	365	83
3288	365	148
3289	365	52
3290	365	53
3291	366	96
3292	366	33
3293	366	129
3294	366	70
3295	366	7
3296	366	11
3297	366	47
3298	366	79
3299	366	17
3300	366	83
3301	366	148
3302	366	52
3303	366	53
3304	366	22
3306	367	96
3307	367	33
3308	367	129
3309	367	11
3310	367	79
3311	367	47
3312	367	148
3313	367	52
3314	367	53
3315	367	22
3316	367	150
3317	368	96
3318	368	129
3319	368	70
3320	368	134
3321	368	7
3322	368	9
3323	368	11
3324	368	47
3325	368	79
3326	368	17
3327	368	148
3328	368	52
3329	368	22
3330	368	53
3331	368	27
3332	369	96
3333	369	33
3334	369	129
3335	369	131
3336	369	37
3337	369	70
3338	369	7
3339	369	11
3340	369	47
3341	369	79
3342	369	17
3343	369	83
3344	369	148
3345	369	52
3346	369	53
3347	369	22
3348	370	96
3349	370	34
3350	370	37
3351	370	7
3352	370	44
3353	370	47
3354	370	79
3355	370	83
3356	370	148
3357	370	52
3358	370	53
3359	370	22
3360	370	60
3361	371	96
3362	371	34
3363	371	37
3364	371	7
3365	371	44
3366	371	79
3367	371	49
3368	371	83
3369	371	148
3370	371	52
3371	371	53
3372	371	22
3373	371	60
3374	372	96
3375	372	34
3376	372	37
3377	372	7
3378	372	44
3379	372	79
3380	372	49
3381	372	83
3382	372	52
3383	372	53
3384	372	22
3385	372	60
3386	373	96
3387	373	129
3388	373	70
3389	373	134
3390	373	7
3391	373	9
3392	373	11
3393	373	79
3394	373	48
3395	373	17
3396	373	148
3397	373	52
3398	373	53
3399	373	22
3400	374	96
3401	374	33
3402	374	129
3403	374	131
3404	374	70
3405	374	7
3406	374	11
3407	374	79
3408	374	49
3409	374	83
3410	374	52
3411	374	53
3412	374	22
3413	375	96
3414	375	129
3415	375	70
3416	375	134
3417	375	7
3418	375	9
3419	375	11
3420	375	79
3421	375	48
3422	375	17
3423	375	148
3424	375	52
3425	375	53
3426	375	22
3427	366	133
3428	376	96
3429	376	129
3430	376	37
3431	376	70
3432	376	134
3433	376	7
3434	376	9
3435	376	11
3436	376	79
3437	376	49
3438	376	17
3439	376	83
3440	376	148
3441	376	52
3442	376	53
3443	376	22
3444	377	96
3445	377	129
3446	377	131
3447	377	70
3448	377	7
3449	377	9
3450	377	11
3451	377	47
3452	377	79
3453	377	17
3454	377	148
3455	377	52
3456	377	22
3457	377	53
3458	377	83
3459	378	96
3460	378	129
3461	378	130
3462	378	37
3463	378	70
3464	378	7
3466	378	11
3467	378	47
3468	378	79
3469	378	17
3470	378	83
3471	378	52
3472	378	53
3473	378	22
3474	379	96
3475	379	33
3476	379	130
3477	379	129
3478	379	37
3479	379	70
3480	379	7
3481	379	11
3482	379	47
3483	379	79
3484	379	17
3485	379	83
3486	379	148
3487	379	52
3488	379	53
3489	379	22
3490	378	33
3491	380	96
3492	380	33
3493	380	130
3494	380	129
3495	380	37
3496	380	70
3497	380	7
3498	380	11
3499	380	79
3500	380	48
3501	380	17
3502	380	83
3503	380	148
3504	380	52
3505	380	53
3506	380	22
3507	381	96
3508	381	129
3509	381	70
3510	381	134
3511	381	7
3512	381	9
3513	381	11
3514	381	79
3515	381	48
3516	381	17
3517	381	148
3518	381	52
3519	381	53
3520	381	22
3521	382	96
3522	382	37
3523	382	69
3524	382	7
3525	382	44
3526	382	79
3527	382	48
3528	382	83
3529	382	148
3530	382	52
3531	382	53
3532	382	22
3533	382	60
3534	383	96
3535	383	33
3536	383	130
3537	383	129
3538	383	37
3539	383	70
3540	383	7
3541	383	11
3542	383	47
3543	383	79
3544	383	17
3545	383	83
3546	383	148
3547	383	52
3548	383	53
3549	383	22
3550	384	96
3551	384	129
3552	384	70
3553	384	134
3554	384	7
3555	384	9
3556	384	11
3557	384	79
3558	384	48
3559	384	17
3560	384	148
3561	384	52
3562	384	53
3563	384	22
3564	385	96
3565	385	33
3566	385	129
3567	385	131
3568	385	70
3569	385	7
3570	385	11
3571	385	47
3572	385	79
3573	385	17
3574	385	83
3575	385	148
3576	385	52
3577	385	53
3578	385	22
3579	384	27
3580	386	96
3581	386	129
3582	386	70
3583	386	134
3584	386	7
3585	386	9
3586	386	11
3587	386	79
3588	386	48
3589	386	17
3590	386	148
3591	386	52
3592	386	53
3593	386	22
3594	387	96
3595	387	129
3596	387	70
3598	387	7
3599	387	9
3600	387	11
3601	387	47
3602	387	79
3603	387	17
3604	387	148
3605	387	52
3606	387	22
3607	387	53
3608	388	96
3609	388	129
3610	388	70
3612	388	7
3613	388	9
3614	388	11
3615	388	47
3616	388	79
3617	388	17
3618	388	83
3619	388	148
3620	388	52
3621	388	53
3622	388	22
3623	389	96
3624	389	129
3625	389	131
3626	389	70
3627	389	7
3628	389	9
3629	389	11
3630	389	47
3631	389	79
3632	389	17
3633	389	148
3634	389	52
3635	389	22
3636	389	53
3637	387	131
3638	388	131
3639	390	96
3640	390	129
3641	390	131
3642	390	70
3643	390	7
3644	390	9
3645	390	11
3646	390	79
3647	390	48
3648	390	17
3649	390	148
3650	390	52
3651	390	53
3652	390	22
3653	391	96
3654	391	129
3655	391	70
3656	391	134
3657	391	7
3658	391	9
3659	391	11
3660	391	79
3661	391	48
3662	391	17
3663	391	83
3664	391	148
3665	391	52
3666	391	53
3667	391	22
3668	392	96
3669	392	128
3670	392	34
3671	392	7
3672	392	9
3673	392	79
3674	392	48
3675	392	148
3676	392	52
3677	392	53
3678	392	22
3679	393	96
3680	393	129
3681	393	131
3682	393	70
3683	393	7
3684	393	9
3685	393	11
3686	393	47
3687	393	79
3688	393	17
3689	393	83
3690	393	148
3691	393	52
3692	393	53
3693	393	22
3694	394	96
3695	394	129
3696	394	70
3697	394	134
3698	394	7
3699	394	9
3700	394	11
3701	394	47
3702	394	79
3703	394	17
3704	394	148
3705	394	52
3706	394	22
3707	394	53
3708	395	96
3709	395	129
3710	395	70
3711	395	134
3712	395	7
3713	395	9
3714	395	11
3715	395	47
3716	395	79
3717	395	17
3718	395	148
3719	395	52
3720	395	22
3721	395	53
3722	396	96
3723	396	129
3724	396	70
3725	396	134
3726	396	7
3727	396	9
3728	396	11
3729	396	47
3730	396	79
3731	396	17
3732	396	148
3733	396	52
3734	396	22
3735	396	53
3736	397	96
3737	397	129
3738	397	70
3739	397	134
3740	397	7
3741	397	9
3742	397	11
3743	397	47
3744	397	79
3745	397	17
3746	397	148
3747	397	52
3748	397	22
3749	397	53
3750	398	96
3751	398	129
3752	398	131
3753	398	70
3754	398	7
3755	398	9
3756	398	11
3757	398	79
3758	398	48
3759	398	17
3760	398	148
3761	398	52
3762	398	53
3763	398	22
3764	399	96
3765	399	129
3766	399	131
3767	399	70
3768	399	7
3769	399	9
3770	399	11
3771	399	47
3772	399	79
3773	399	17
3774	399	148
3775	399	52
3776	399	22
3777	399	53
3778	400	96
3779	400	129
3780	400	131
3781	400	70
3782	400	7
3783	400	9
3784	400	11
3785	400	47
3786	400	79
3787	400	17
3788	400	148
3789	400	52
3790	400	22
3791	400	53
3792	400	27
3793	401	96
3794	401	129
3795	401	131
3796	401	70
3797	401	7
3798	401	9
3799	401	11
3800	401	47
3801	401	79
3802	401	17
3803	401	148
3804	401	52
3805	401	22
3806	401	53
3807	402	96
3808	402	129
3809	402	70
3810	402	134
3811	402	7
3812	402	9
3813	402	11
3814	402	47
3815	402	79
3816	402	17
3817	402	148
3818	402	52
3819	402	22
3820	402	53
3821	403	96
3822	403	129
3823	403	70
3824	403	134
3825	403	7
3826	403	9
3827	403	11
3828	403	79
3829	403	48
3830	403	17
3831	403	148
3832	403	52
3833	403	53
3834	403	22
3835	403	27
3836	402	27
3837	404	96
3838	404	129
3839	404	70
3840	404	134
3841	404	7
3842	404	9
3843	404	11
3844	404	47
3845	404	79
3846	404	17
3847	404	148
3848	404	52
3849	404	22
3850	404	53
3851	405	96
3852	405	129
3853	405	70
3854	405	134
3855	405	7
3856	405	9
3857	405	11
3858	405	79
3859	405	48
3860	405	17
3861	405	148
3862	405	52
3863	405	53
3864	405	22
3865	406	96
3866	406	129
3867	406	70
3868	406	134
3869	406	7
3870	406	9
3871	406	11
3872	406	79
3873	406	48
3874	406	17
3875	406	148
3876	406	52
3877	406	53
3878	406	22
3879	407	96
3880	407	128
3881	407	34
3882	407	7
3883	407	9
3884	407	79
3885	407	47
3886	407	148
3887	407	52
3888	407	53
3889	407	22
3890	408	96
3891	408	34
3892	408	7
3893	408	44
3894	408	79
3895	408	48
3896	408	83
3897	408	148
3898	408	52
3899	408	53
3900	408	22
3901	408	60
3902	409	96
3903	409	33
3904	409	130
3905	409	129
3906	409	37
3907	409	70
3908	409	7
3909	409	11
3910	409	47
3911	409	79
3912	409	17
3913	409	83
3914	409	148
3915	409	52
3916	409	53
3917	409	22
3918	410	96
3919	410	34
3920	410	37
3921	410	7
3922	410	44
3923	410	79
3924	410	49
3925	410	83
3926	410	148
3927	410	52
3928	410	53
3929	410	22
3930	410	60
3931	411	96
3932	411	34
3933	411	37
3934	411	7
3935	411	44
3936	411	79
3937	411	49
3938	411	83
3939	411	148
3940	411	52
3941	411	53
3942	411	22
3943	411	60
3944	412	96
3945	412	34
3946	412	7
3947	412	44
3948	412	79
3949	412	47
3950	412	83
3951	412	148
3952	412	52
3953	412	53
3954	412	60
3955	413	96
3956	413	34
3957	413	37
3958	413	7
3959	413	44
3960	413	79
3961	413	48
3962	413	83
3963	413	148
3964	413	52
3965	413	53
3966	413	22
3967	413	60
3968	414	96
3969	414	33
3970	414	130
3971	414	129
3972	414	37
3973	414	70
3974	414	7
3975	414	11
3976	414	79
3977	414	48
3978	414	17
3979	414	83
3980	414	148
3981	414	52
3982	414	53
3983	414	22
3984	415	96
3985	415	34
3986	415	37
3987	415	7
3988	415	44
3989	415	79
3990	415	48
3991	415	83
3992	415	148
3993	415	52
3994	415	53
3995	415	60
3996	416	96
3997	416	34
3998	416	37
3999	416	7
4000	416	44
4001	416	47
4002	416	79
4003	416	83
4004	416	148
4005	416	52
4006	416	53
4007	416	22
4008	416	60
4009	417	96
4010	417	34
4011	417	37
4012	417	7
4013	417	44
4014	417	79
4015	417	49
4016	417	83
4017	417	148
4018	417	52
4019	417	53
4020	417	22
4021	417	60
4022	418	96
4023	418	34
4024	418	37
4025	418	7
4026	418	44
4027	418	47
4028	418	79
4029	418	83
4030	418	148
4031	418	52
4032	418	53
4033	418	22
4034	418	60
4035	419	96
4036	419	33
4037	419	129
4038	419	131
4039	419	70
4040	419	7
4041	419	11
4042	419	47
4043	419	79
4044	419	17
4045	419	83
4046	419	148
4047	419	52
4048	419	53
4049	419	22
4050	420	96
4051	420	34
4053	420	7
4055	420	47
4056	420	79
4058	420	148
4059	420	52
4060	420	53
4061	420	22
4063	420	128
4064	420	9
4065	421	96
4066	421	34
4067	421	37
4068	421	7
4069	421	44
4070	421	79
4071	421	48
4072	421	83
4073	421	148
4074	421	52
4075	421	53
4076	421	22
4077	421	60
4078	422	96
4079	422	34
4080	422	44
4081	422	79
4082	422	47
4083	422	83
4084	422	148
4085	422	52
4086	422	53
4087	422	60
4088	423	96
4089	423	33
4090	423	129
4091	423	131
4092	423	37
4093	423	70
4094	423	7
4095	423	11
4096	423	47
4097	423	79
4098	423	17
4099	423	83
4100	423	148
4101	423	52
4102	423	53
4103	423	22
4104	138	148
4105	138	52
4106	138	53
4107	139	148
4108	139	52
4109	139	53
4110	140	148
4111	140	53
4112	141	148
4113	141	53
4114	142	148
4115	142	53
4116	143	148
4117	143	53
4118	145	148
4119	145	52
4120	145	53
4121	146	148
4122	146	53
4123	147	148
4124	147	53
4125	148	148
4126	148	53
4127	149	148
4128	149	53
4129	150	148
4130	150	53
4131	151	97
4132	151	148
4133	151	53
4134	152	97
4135	152	148
4136	152	53
4137	153	97
4138	153	148
4139	153	53
4140	154	97
4141	154	148
4142	154	53
4143	155	97
4144	155	148
4145	155	53
4146	156	97
4147	156	148
4148	156	53
4149	157	97
4150	157	79
4151	138	97
4152	139	97
4153	140	97
4154	141	97
4155	142	97
4156	144	97
4157	145	97
4158	146	97
4159	147	97
4160	143	97
4161	148	97
4162	149	97
4163	150	97
4164	158	97
4165	158	148
4166	158	53
4167	159	97
4168	159	148
4169	159	53
4170	160	97
4171	160	148
4172	160	53
4173	161	97
4174	161	148
4175	161	53
4176	162	97
4177	162	148
4178	162	53
4179	163	97
4180	163	148
4181	163	53
4182	164	97
4183	164	148
4184	164	53
4185	165	97
4186	165	148
4187	165	53
4188	166	97
4189	166	148
4190	166	53
4191	167	97
4192	167	148
4193	167	53
4194	168	97
4195	168	148
4196	168	53
4197	425	97
4198	425	129
4199	425	70
4200	425	134
4201	425	7
4202	425	9
4203	425	11
4204	425	47
4205	425	79
4206	425	17
4207	425	148
4208	425	52
4209	425	22
4210	425	53
4211	169	97
4212	169	148
4213	169	53
4214	170	97
4215	170	148
4216	170	53
4217	171	97
4218	171	148
4219	171	53
4220	172	97
4221	172	148
4222	172	53
4226	174	97
4227	174	148
4228	174	53
4229	175	97
4230	175	148
4231	175	53
4232	176	97
4233	176	148
4234	176	53
4235	177	97
4236	177	148
4237	177	53
4238	178	97
4239	178	148
4240	178	53
4241	179	97
4242	179	148
4243	179	53
4244	180	97
4245	180	148
4246	180	53
4247	181	97
4248	181	148
4249	181	53
4250	182	97
4251	182	148
4252	182	53
4253	183	97
4254	183	148
4255	183	53
4256	184	97
4257	184	148
4258	184	53
4259	185	97
4260	185	148
4261	185	53
4262	186	97
4263	186	148
4264	186	53
4265	187	97
4266	187	148
4267	187	53
4268	188	97
4269	188	148
4270	188	53
4271	189	97
4272	189	148
4273	189	53
4274	190	97
4275	190	148
4276	190	53
4277	191	97
4278	191	148
4279	191	53
4280	192	97
4281	192	148
4282	192	53
4283	193	97
4284	193	148
4285	193	53
4286	194	97
4287	194	148
4288	194	53
4289	195	97
4290	195	148
4291	195	53
4292	196	97
4293	196	148
4294	196	53
4295	197	97
4296	197	148
4297	197	53
4298	198	97
4299	198	79
4300	374	148
4301	227	148
4302	228	148
4303	229	148
4304	230	148
4305	231	148
4306	232	148
4307	233	148
4308	234	148
4309	235	148
4310	236	148
4311	237	148
4312	238	148
4313	239	148
4314	239	53
4315	240	148
4316	241	148
4317	242	148
4318	243	148
4319	244	148
4320	245	148
4321	246	148
4322	247	96
4323	247	79
4324	337	128
4325	336	128
4326	339	148
4327	339	52
4328	339	53
4329	340	148
4330	341	148
4331	341	52
4332	341	53
4333	342	148
4334	342	52
4335	342	53
4347	248	148
4348	249	148
4349	250	148
4350	250	53
4351	251	148
4352	251	53
4353	252	148
4354	252	53
4355	253	148
4356	253	53
4357	254	148
4358	254	53
4359	255	148
4360	256	148
4361	256	53
4362	257	148
4363	258	148
4364	258	53
4365	259	148
4366	260	148
4367	261	148
4368	262	148
4369	263	148
4370	264	148
4371	265	148
4372	266	148
4373	267	148
4374	268	148
4375	269	148
4376	270	148
4377	271	97
4378	271	79
4379	272	148
4380	273	148
4381	273	53
4382	274	148
4383	275	148
4384	276	148
4385	277	148
4386	278	148
4387	279	148
4388	280	148
4389	281	148
4390	282	148
4391	283	148
4392	284	148
4393	285	148
4394	286	148
4395	287	148
4396	288	148
4397	289	148
4398	290	148
4399	291	148
4400	292	148
4401	294	148
4402	294	53
4403	295	148
4404	296	148
4405	297	148
4406	298	148
4407	299	148
4408	300	148
4409	301	148
4410	302	148
4411	303	148
4412	304	148
4413	305	148
4414	306	148
4415	307	148
4416	308	148
4417	309	148
4418	310	148
4419	311	148
4420	427	97
4421	427	34
4422	427	37
4423	427	7
4424	427	44
4425	427	47
4426	427	79
4427	427	83
4428	427	148
4429	427	52
4430	427	53
4431	427	22
4432	427	60
4433	428	97
4434	428	34
4435	428	7
4436	428	44
4437	428	79
4438	428	47
4439	428	83
4440	428	148
4441	428	52
4442	428	53
4443	428	60
4444	429	97
4445	429	34
4446	429	37
4447	429	7
4448	429	44
4449	429	47
4450	429	79
4451	429	83
4452	429	148
4453	429	52
4454	429	53
4455	429	22
4456	429	60
4457	430	97
4458	430	34
4459	430	37
4460	430	7
4461	430	44
4462	430	47
4463	430	79
4464	430	83
4465	430	148
4466	430	52
4467	430	53
4468	430	22
4469	430	60
4470	431	97
4471	431	34
4472	431	37
4473	431	7
4474	431	44
4475	431	47
4476	431	79
4477	431	83
4478	431	148
4479	431	52
4480	431	53
4481	431	22
4482	431	60
4483	432	97
4484	432	34
4485	432	7
4486	432	44
4487	432	79
4488	432	47
4489	432	83
4490	432	148
4491	432	52
4492	432	53
4493	432	60
4494	433	97
4495	433	34
4496	433	7
4497	433	44
4498	433	79
4499	433	47
4500	433	83
4501	433	148
4502	433	52
4503	433	53
4504	433	60
4505	434	97
4506	434	34
4507	434	7
4508	434	44
4509	434	79
4510	434	47
4511	434	83
4512	434	148
4513	434	52
4514	434	53
4515	434	60
4516	435	97
4517	435	34
4518	435	37
4519	435	7
4520	435	44
4521	435	79
4522	435	48
4523	435	83
4524	435	148
4525	435	52
4526	435	53
4527	435	22
4528	435	60
4529	436	128
4530	436	97
4531	436	34
4532	436	7
4533	436	9
4534	436	79
4535	436	48
4536	436	148
4537	436	52
4538	436	53
4539	437	97
4540	437	34
4541	437	7
4542	437	44
4543	437	79
4544	437	47
4545	437	83
4546	437	148
4547	437	52
4548	437	53
4549	437	60
4550	438	97
4551	438	34
4552	438	37
4553	438	7
4554	438	44
4555	438	79
4556	438	48
4557	438	83
4558	438	148
4559	438	52
4560	438	53
4561	438	22
4562	438	60
4563	439	97
4564	439	34
4565	439	37
4566	439	7
4567	439	44
4568	439	47
4569	439	79
4570	439	83
4571	439	148
4572	439	52
4573	439	53
4574	439	22
4575	439	60
4576	440	97
4577	440	34
4578	440	37
4579	440	7
4580	440	44
4581	440	79
4582	440	48
4583	440	83
4584	440	148
4585	440	52
4586	440	53
4587	440	22
4588	440	60
4589	441	97
4590	441	34
4591	441	37
4592	441	7
4593	441	44
4594	441	79
4595	441	48
4596	441	83
4597	441	148
4598	441	52
4599	441	53
4600	441	22
4601	441	60
4602	442	97
4603	442	34
4604	442	37
4605	442	7
4606	442	44
4607	442	79
4608	442	48
4609	442	83
4610	442	148
4611	442	52
4612	442	53
4613	442	22
4614	442	60
4615	443	97
4616	443	34
4617	443	7
4618	443	44
4619	443	79
4620	443	47
4621	443	83
4622	443	148
4623	443	52
4624	443	53
4625	443	60
4626	444	128
4627	444	97
4628	444	34
4629	444	7
4630	444	9
4631	444	79
4632	444	47
4633	444	148
4634	444	52
4635	444	53
4636	444	22
4637	445	97
4638	445	34
4639	445	7
4640	445	44
4641	445	79
4642	445	47
4643	445	83
4644	445	148
4645	445	52
4646	445	53
4647	445	60
4648	446	97
4649	446	34
4650	446	7
4651	446	44
4652	446	79
4653	446	47
4654	446	83
4655	446	148
4656	446	52
4657	446	53
4658	446	60
4659	447	97
4660	447	34
4661	447	7
4662	447	44
4663	447	79
4664	447	48
4665	447	83
4666	447	148
4667	447	52
4668	447	53
4669	447	60
4670	448	97
4671	448	34
4672	448	7
4673	448	44
4674	448	79
4675	448	47
4676	448	83
4677	448	148
4678	448	52
4679	448	53
4680	448	60
4681	449	97
4682	449	34
4683	449	7
4684	449	44
4685	449	79
4686	449	47
4687	449	83
4688	449	148
4689	449	52
4690	449	53
4691	449	60
4692	450	97
4693	450	34
4694	450	7
4695	450	44
4696	450	79
4697	450	48
4698	450	83
4699	450	148
4700	450	52
4701	450	53
4702	450	60
4703	451	97
4704	451	34
4705	451	37
4706	451	7
4707	451	44
4708	451	47
4709	451	79
4710	451	83
4711	451	148
4712	451	52
4713	451	53
4714	451	22
4715	451	60
4716	452	97
4717	452	34
4718	452	37
4719	452	7
4720	452	44
4721	452	47
4722	452	79
4723	452	83
4724	452	148
4725	452	52
4726	452	53
4727	452	22
4728	452	60
4729	453	97
4730	453	34
4731	453	7
4732	453	44
4733	453	79
4734	453	47
4735	453	83
4736	453	148
4737	453	52
4738	453	53
4739	453	60
4740	454	97
4741	454	34
4742	454	7
4743	454	44
4744	454	79
4745	454	47
4746	454	83
4747	454	148
4748	454	52
4749	454	53
4750	454	60
4751	455	97
4752	455	34
4753	455	7
4754	455	44
4755	455	79
4756	455	47
4757	455	83
4758	455	148
4759	455	52
4760	455	53
4761	455	60
4762	456	97
4763	456	34
4764	456	7
4765	456	44
4766	456	79
4767	456	47
4768	456	83
4769	456	148
4770	456	52
4771	456	53
4772	456	60
4773	457	97
4774	457	34
4775	457	7
4776	457	44
4777	457	79
4778	457	47
4779	457	83
4780	457	148
4781	457	52
4782	457	53
4783	457	60
4784	458	97
4785	458	34
4786	458	7
4787	458	44
4788	458	79
4789	458	48
4790	458	83
4791	458	148
4792	458	52
4793	458	53
4794	458	60
4795	459	97
4796	459	34
4797	459	7
4798	459	44
4799	459	79
4800	459	47
4801	459	83
4802	459	148
4803	459	52
4804	459	53
4805	459	60
4806	460	97
4807	460	34
4808	460	7
4809	460	44
4810	460	79
4811	460	47
4812	460	83
4813	460	148
4814	460	52
4815	460	53
4816	460	60
4817	461	97
4818	461	34
4819	461	7
4820	461	44
4821	461	79
4822	461	47
4823	461	83
4824	461	148
4825	461	52
4826	461	53
4827	461	60
4828	462	97
4829	462	34
4830	462	7
4831	462	44
4832	462	79
4833	462	47
4834	462	83
4835	462	148
4836	462	52
4837	462	53
4838	462	60
4839	463	97
4840	463	34
4841	463	7
4842	463	44
4843	463	79
4844	463	47
4845	463	83
4846	463	148
4847	463	52
4848	463	53
4849	463	60
4850	464	97
4851	464	34
4852	464	7
4853	464	44
4854	464	79
4855	464	47
4856	464	83
4857	464	148
4858	464	52
4859	464	53
4860	464	60
4861	465	97
4862	465	34
4863	465	7
4864	465	44
4865	465	79
4866	465	47
4867	465	83
4868	465	148
4869	465	52
4870	465	53
4871	465	60
4872	466	97
4873	466	34
4874	466	7
4875	466	44
4876	466	79
4877	466	47
4878	466	83
4879	466	148
4880	466	52
4881	466	53
4882	466	60
4883	467	97
4884	467	34
4885	467	7
4886	467	44
4887	467	79
4888	467	47
4889	467	83
4890	467	148
4891	467	52
4892	467	53
4893	467	60
4894	468	97
4895	468	34
4896	468	7
4897	468	44
4898	468	79
4899	468	47
4900	468	83
4901	468	148
4902	468	52
4903	468	53
4904	468	60
4905	469	97
4906	469	34
4907	469	7
4908	469	44
4909	469	79
4910	469	47
4911	469	83
4912	469	148
4913	469	52
4914	469	53
4915	469	60
4916	470	97
4917	470	34
4918	470	7
4919	470	44
4920	470	79
4921	470	47
4922	470	83
4923	470	148
4924	470	52
4925	470	53
4926	470	60
4927	471	97
4928	471	34
4929	471	7
4930	471	44
4931	471	79
4932	471	47
4933	471	83
4934	471	148
4935	471	52
4936	471	53
4937	471	60
4938	472	97
4939	472	34
4940	472	7
4941	472	44
4942	472	79
4943	472	47
4944	472	83
4945	472	148
4946	472	52
4947	472	53
4948	472	60
4949	473	97
4950	473	34
4951	473	37
4952	473	7
4953	473	44
4954	473	47
4955	473	79
4956	473	83
4957	473	148
4958	473	52
4959	473	53
4960	473	22
4961	473	60
4962	474	97
4963	474	34
4964	474	7
4965	474	44
4966	474	79
4967	474	48
4968	474	83
4969	474	148
4970	474	52
4971	474	53
4972	474	60
4973	475	97
4974	475	34
4975	475	7
4976	475	44
4977	475	79
4978	475	48
4979	475	83
4980	475	148
4981	475	52
4982	475	53
4983	475	60
4984	476	97
4985	476	34
4986	476	7
4987	476	44
4988	476	79
4989	476	48
4990	476	83
4991	476	148
4992	476	52
4993	476	53
4994	476	60
4995	477	97
4996	477	34
4997	477	7
4998	477	44
4999	477	79
5000	477	48
5001	477	83
5002	477	148
5003	477	52
5004	477	53
5005	477	60
5006	478	97
5007	478	34
5008	478	7
5009	478	44
5010	478	79
5011	478	48
5012	478	83
5013	478	148
5014	478	52
5015	478	53
5016	478	60
5017	479	97
5018	479	34
5019	479	7
5020	479	44
5021	479	79
5022	479	47
5023	479	83
5024	479	148
5025	479	52
5026	479	53
5027	479	60
5028	480	97
5029	480	34
5030	480	7
5031	480	44
5032	480	79
5033	480	47
5034	480	83
5035	480	148
5036	480	52
5037	480	53
5038	480	60
5039	481	97
5040	481	34
5041	481	7
5042	481	44
5043	481	79
5044	481	47
5045	481	83
5046	481	148
5047	481	52
5048	481	53
5049	481	60
5050	482	97
5051	482	34
5052	482	7
5053	482	44
5054	482	79
5055	482	47
5056	482	83
5057	482	148
5058	482	52
5059	482	53
5060	482	60
5061	483	97
5062	483	34
5063	483	7
5064	483	44
5065	483	79
5066	483	47
5067	483	83
5068	483	148
5069	483	52
5070	483	53
5071	483	60
5072	484	97
5073	484	34
5074	484	7
5075	484	44
5076	484	79
5077	484	47
5078	484	83
5079	484	148
5080	484	52
5081	484	53
5082	484	60
5083	485	97
5084	485	34
5085	485	7
5086	485	44
5087	485	47
5088	485	79
5089	485	83
5090	485	148
5091	485	52
5092	485	53
5093	485	27
5094	485	60
5095	486	97
5096	486	34
5097	486	37
5098	486	7
5099	486	44
5100	486	79
5101	486	48
5102	486	83
5103	486	148
5104	486	52
5105	486	53
5106	486	22
5107	486	60
5108	487	97
5109	487	34
5110	487	37
5111	487	7
5112	487	44
5113	487	79
5114	487	48
5115	487	83
5116	487	148
5117	487	52
5118	487	53
5119	487	22
5120	487	60
5121	488	97
5122	488	34
5123	488	7
5124	488	44
5125	488	79
5126	488	48
5127	488	83
5128	488	148
5129	488	52
5130	488	53
5131	488	60
5132	489	97
5133	489	34
5134	489	7
5135	489	44
5136	489	79
5137	489	48
5138	489	83
5139	489	148
5140	489	52
5141	489	53
5142	489	60
5143	490	97
5144	490	34
5145	490	7
5146	490	44
5147	490	79
5148	490	47
5149	490	83
5150	490	148
5151	490	52
5152	490	53
5153	490	60
5154	491	97
5155	491	34
5156	491	7
5157	491	44
5158	491	79
5159	491	47
5160	491	83
5161	491	148
5162	491	52
5163	491	53
5164	491	60
5165	492	97
5166	492	34
5167	492	7
5168	492	44
5169	492	79
5170	492	47
5171	492	83
5172	492	148
5173	492	52
5174	492	53
5175	492	60
5176	493	97
5177	493	34
5178	493	7
5179	493	44
5180	493	79
5181	493	47
5182	493	83
5183	493	148
5184	493	52
5185	493	53
5186	493	60
5187	494	97
5188	494	34
5189	494	7
5190	494	44
5191	494	79
5192	494	47
5193	494	83
5194	494	148
5195	494	52
5196	494	53
5197	494	60
5198	495	97
5199	495	34
5200	495	7
5201	495	44
5202	495	79
5203	495	47
5204	495	83
5205	495	148
5206	495	52
5207	495	53
5208	495	60
5209	496	97
5210	496	34
5211	496	7
5212	496	44
5213	496	79
5214	496	48
5215	496	83
5216	496	148
5217	496	52
5218	496	53
5219	496	60
5220	497	97
5221	497	34
5222	497	7
5223	497	44
5224	497	79
5225	497	48
5226	497	83
5227	497	148
5228	497	52
5229	497	53
5230	497	60
5231	498	97
5232	498	34
5233	498	7
5234	498	44
5235	498	79
5236	498	49
5237	498	83
5238	498	148
5239	498	52
5240	498	53
5241	498	60
5242	499	97
5243	499	34
5244	499	7
5245	499	44
5246	499	79
5247	499	47
5248	499	83
5249	499	148
5250	499	52
5251	499	53
5252	499	60
5253	500	97
5254	500	34
5255	500	7
5256	500	44
5257	500	79
5258	500	47
5259	500	83
5260	500	148
5261	500	52
5262	500	53
5263	500	60
5264	501	97
5265	501	34
5266	501	7
5267	501	44
5268	501	79
5269	501	47
5270	501	83
5271	501	148
5272	501	52
5273	501	53
5274	501	60
5275	502	97
5276	502	34
5277	502	37
5278	502	7
5279	502	44
5280	502	79
5281	502	48
5282	502	83
5283	502	148
5284	502	52
5285	502	53
5286	502	22
5287	502	60
5288	503	97
5289	503	34
5290	503	7
5291	503	44
5292	503	79
5293	503	47
5294	503	83
5295	503	148
5296	503	52
5297	503	53
5298	503	60
5299	504	97
5300	504	34
5301	504	7
5302	504	44
5303	504	79
5304	504	48
5305	504	83
5306	504	148
5307	504	52
5308	504	53
5309	504	60
5310	505	96
5311	505	129
5312	505	70
5313	505	134
5314	505	7
5315	505	9
5316	505	11
5317	505	79
5318	505	48
5319	505	17
5320	505	148
5321	505	52
5322	505	53
5323	505	22
5324	505	27
5325	506	96
5326	506	34
5327	506	37
5328	506	7
5329	506	44
5330	506	79
5331	506	48
5332	506	83
5333	506	148
5334	506	52
5335	506	53
5336	506	22
5337	506	60
5338	507	96
5339	507	33
5340	507	130
5341	507	129
5342	507	70
5343	507	7
5344	507	11
5345	507	47
5346	507	79
5347	507	17
5348	507	83
5349	507	148
5350	507	52
5351	507	53
5352	507	22
5353	508	96
5354	508	34
5355	508	37
5356	508	7
5357	508	44
5358	508	47
5359	508	79
5360	508	83
5361	508	148
5362	508	52
5363	508	53
5364	508	22
5365	508	60
5366	509	96
5367	509	33
5368	509	130
5369	509	129
5370	509	70
5371	509	7
5372	509	11
5373	509	47
5374	509	79
5375	509	17
5376	509	83
5377	509	148
5378	509	52
5379	509	53
5380	509	22
5381	510	96
5382	510	129
5383	510	134
5384	510	7
5385	510	9
5386	510	11
5387	510	79
5388	510	48
5389	510	17
5390	510	148
5391	510	52
5392	510	53
5393	510	22
5394	510	84
5395	510	27
5396	511	96
5397	511	129
5398	511	37
5399	511	70
5400	511	7
5401	511	9
5402	511	11
5403	511	47
5404	511	79
5405	511	17
5406	511	83
5407	511	148
5408	511	52
5409	511	53
5410	511	22
5411	511	151
5412	512	96
5413	512	129
5414	512	70
5415	512	7
5416	512	9
5417	512	11
5418	512	47
5419	512	79
5420	512	17
5421	512	83
5422	512	148
5423	512	52
5424	512	53
5425	512	22
5426	512	151
5427	513	96
5428	513	34
5429	513	37
5430	513	7
5431	513	44
5432	513	79
5433	513	48
5434	513	83
5435	513	148
5436	513	52
5437	513	53
5438	513	22
5439	513	60
5440	514	96
5441	514	33
5442	514	130
5443	514	129
5444	514	37
5445	514	70
5446	514	7
5447	514	11
5448	514	47
5449	514	79
5450	514	17
5451	514	83
5452	514	148
5453	514	52
5454	514	53
5455	514	22
5456	515	96
5457	515	129
5458	515	70
5459	515	134
5460	515	7
5461	515	9
5462	515	11
5463	515	47
5464	515	79
5465	515	17
5466	515	148
5467	515	52
5468	515	22
5469	515	53
5470	516	96
5471	516	129
5472	516	70
5473	516	134
5474	516	7
5475	516	9
5476	516	11
5477	516	47
5478	516	79
5479	516	17
5480	516	83
5481	516	148
5482	516	52
5483	516	53
5484	516	22
5485	516	27
5486	517	96
5487	517	129
5488	517	70
5489	517	134
5490	517	7
5491	517	9
5492	517	11
5493	517	47
5494	517	79
5495	517	17
5496	517	148
5497	517	52
5498	517	22
5499	517	53
5500	517	27
5501	518	96
5502	518	129
5503	518	37
5504	518	70
5505	518	134
5506	518	7
5507	518	9
5508	518	11
5509	518	47
5510	518	79
5511	518	17
5512	518	83
5513	518	148
5514	518	52
5515	518	53
5516	518	22
5517	519	96
5518	519	33
5519	519	130
5520	519	129
5521	519	70
5522	519	7
5523	519	11
5524	519	47
5525	519	79
5526	519	17
5527	519	83
5528	519	148
5529	519	52
5530	519	53
5531	519	22
5532	520	96
5533	520	33
5534	520	130
5535	520	129
5536	520	37
5537	520	70
5538	520	7
5539	520	11
5540	520	79
5541	520	48
5542	520	17
5543	520	83
5544	520	148
5545	520	52
5546	520	53
5547	520	22
5548	521	96
5549	521	33
5550	521	130
5551	521	129
5552	521	37
5553	521	70
5554	521	7
5555	521	11
5556	521	79
5557	521	48
5558	521	17
5559	521	83
5560	521	148
5561	521	52
5562	521	53
5563	521	22
5564	522	96
5565	522	33
5566	522	130
5567	522	129
5568	522	70
5569	522	7
5570	522	11
5571	522	47
5572	522	79
5573	522	17
5574	522	83
5575	522	148
5576	522	52
5577	522	53
5578	522	22
5579	523	96
5580	523	33
5581	523	130
5582	523	129
5583	523	37
5584	523	70
5585	523	7
5586	523	11
5587	523	47
5588	523	79
5589	523	17
5590	523	83
5591	523	148
5592	523	52
5593	523	53
5594	523	22
5595	524	96
5596	524	33
5597	524	130
5598	524	129
5599	524	37
5600	524	70
5601	524	7
5602	524	11
5603	524	79
5604	524	48
5605	524	17
5606	524	83
5607	524	148
5608	524	52
5609	524	53
5610	524	22
5611	525	96
5612	525	33
5613	525	130
5614	525	129
5615	525	70
5616	525	7
5617	525	11
5618	525	47
5619	525	79
5620	525	17
5621	525	83
5622	525	148
5623	525	52
5624	525	53
5625	525	22
5626	526	96
5627	526	34
5628	526	7
5629	526	44
5630	526	79
5631	526	48
5632	526	83
5633	526	148
5634	526	52
5635	526	53
5636	526	60
5637	527	96
5638	527	33
5639	527	130
5640	527	129
5641	527	37
5642	527	70
5643	527	7
5644	527	11
5645	527	47
5646	527	79
5647	527	17
5648	527	83
5649	527	148
5650	527	52
5651	527	53
5652	527	22
5653	528	96
5654	528	34
5655	528	37
5656	528	7
5657	528	44
5658	528	79
5659	528	48
5660	528	83
5661	528	148
5662	528	52
5663	528	53
5664	528	22
5665	528	60
5666	529	96
5667	529	34
5668	529	37
5669	529	7
5670	529	44
5671	529	79
5672	529	48
5673	529	83
5674	529	148
5675	529	52
5676	529	53
5677	529	22
5678	529	60
5679	530	96
5680	530	130
5681	530	34
5682	530	37
5683	530	7
5684	530	44
5685	530	79
5686	530	48
5687	530	83
5688	530	148
5689	530	52
5690	530	53
5691	530	22
5692	531	96
5693	531	34
5694	531	37
5695	531	7
5696	531	44
5697	531	79
5698	531	48
5699	531	83
5700	531	148
5701	531	52
5702	531	53
5703	531	22
5704	531	60
5705	532	96
5706	532	33
5707	532	130
5708	532	129
5709	532	70
5710	532	7
5711	532	11
5712	532	79
5713	532	48
5714	532	17
5715	532	83
5716	532	148
5717	532	52
5718	532	53
5719	532	22
5720	533	96
5721	533	33
5722	533	130
5723	533	129
5724	533	37
5725	533	70
5726	533	7
5727	533	11
5728	533	79
5729	533	49
5730	533	17
5731	533	83
5732	533	148
5733	533	52
5734	533	53
5735	533	22
5736	534	96
5737	534	34
5738	534	37
5740	534	7
5741	534	44
5742	534	79
5743	534	49
5744	534	83
5745	534	148
5746	534	52
5747	534	53
5748	534	22
5749	534	60
5750	535	96
5751	535	34
5752	535	37
5753	535	7
5754	535	44
5755	535	79
5756	535	49
5757	535	83
5758	535	148
5759	535	52
5760	535	53
5761	535	22
5762	535	60
5763	536	96
5764	536	34
5765	536	37
5766	536	7
5767	536	44
5768	536	79
5769	536	48
5770	536	83
5771	536	148
5772	536	52
5773	536	53
5774	536	22
5775	536	60
5776	537	96
5777	537	34
5778	537	37
5779	537	7
5780	537	44
5781	537	47
5782	537	79
5783	537	83
5784	537	148
5785	537	52
5786	537	53
5787	537	22
5788	537	60
5789	538	96
5790	538	33
5791	538	130
5792	538	129
5793	538	37
5794	538	70
5795	538	7
5796	538	11
5797	538	47
5798	538	79
5799	538	17
5800	538	83
5801	538	148
5802	538	52
5803	538	53
5804	538	22
5805	539	96
5806	539	128
5807	539	34
5808	539	7
5809	539	9
5810	539	79
5811	539	47
5812	539	148
5813	539	52
5814	539	53
5815	539	22
5816	540	96
5817	540	128
5818	540	34
5819	540	7
5820	540	9
5821	540	79
5822	540	48
5823	540	148
5824	540	52
5825	540	53
5826	540	22
5827	541	96
5828	541	128
5829	541	34
5830	541	7
5831	541	9
5832	541	79
5833	541	47
5834	541	148
5835	541	52
5836	541	53
5837	541	22
5838	542	96
5839	542	128
5840	542	34
5841	542	7
5842	542	9
5843	542	79
5844	542	47
5845	542	148
5846	542	52
5847	542	53
5848	542	22
5849	543	96
5850	543	128
5851	543	34
5852	543	7
5853	543	9
5854	543	79
5855	543	47
5856	543	148
5857	543	52
5858	543	53
5859	543	22
5860	544	96
5861	544	33
5862	544	129
5863	544	133
5864	544	70
5865	544	7
5866	544	11
5867	544	47
5868	544	79
5869	544	17
5870	544	148
5871	544	52
5872	544	22
5873	544	53
5874	545	96
5875	545	11
5876	545	79
5877	545	47
5878	546	96
5879	546	33
5880	546	129
5881	546	70
5882	546	134
5883	546	7
5884	546	11
5885	546	47
5886	546	79
5887	546	17
5888	546	148
5889	546	52
5890	546	22
5891	546	53
5892	547	96
5893	547	129
5894	547	70
5895	547	134
5896	547	7
5897	547	9
5898	547	11
5899	547	47
5900	547	79
5901	547	17
5902	547	148
5903	547	52
5904	547	22
5905	547	53
5906	548	96
5907	548	129
5908	548	70
5909	548	134
5910	548	7
5911	548	9
5912	548	11
5913	548	47
5914	548	79
5915	548	17
5916	548	148
5917	548	52
5918	548	22
5919	548	53
5920	549	96
5921	549	129
5922	549	70
5923	549	134
5924	549	7
5925	549	9
5926	549	11
5927	549	47
5928	549	79
5929	549	17
5930	549	148
5931	549	52
5932	549	22
5933	549	53
5934	549	27
5935	550	96
5936	550	129
5937	550	70
5938	550	134
5939	550	7
5940	550	9
5941	550	11
5942	550	79
5943	550	48
5944	550	17
5945	550	148
5946	550	52
5947	550	53
5948	550	22
5949	551	96
5950	551	129
5951	551	70
5952	551	134
5953	551	7
5954	551	9
5955	551	11
5956	551	47
5957	551	79
5958	551	17
5959	551	148
5960	551	52
5961	551	22
5962	551	53
5963	552	96
5964	552	129
5965	552	70
5966	552	134
5967	552	7
5968	552	9
5969	552	11
5970	552	79
5971	552	48
5972	552	17
5973	552	148
5974	552	52
5975	552	53
5976	552	22
5977	553	96
5978	553	129
5979	553	37
5980	553	70
5981	553	7
5982	553	9
5983	553	11
5984	553	79
5985	553	48
5986	553	17
5987	553	83
5988	553	148
5989	553	52
5990	553	53
5991	553	22
5992	553	151
5993	554	96
5994	554	129
5995	554	70
5996	554	7
5997	554	9
5998	554	11
5999	554	47
6000	554	79
6001	554	17
6002	554	83
6003	554	148
6004	554	52
6005	554	53
6006	554	22
6007	554	151
6008	555	96
6009	555	129
6010	555	70
6011	555	7
6012	555	9
6013	555	11
6014	555	47
6015	555	79
6016	555	17
6017	555	83
6018	555	148
6019	555	52
6020	555	53
6021	555	22
6022	555	151
6023	106	148
6024	106	53
6025	106	79
6026	108	130
6027	108	148
6028	108	53
6029	108	79
6030	109	129
6031	109	130
6032	109	37
6033	109	148
6034	109	53
6035	110	37
6036	110	79
6037	110	83
6038	110	148
6039	110	52
6040	110	53
6041	110	60
6042	111	33
6043	111	130
6044	111	129
6045	111	37
6046	111	79
6047	111	148
6048	111	53
6049	112	37
6050	112	79
6051	112	83
6052	112	148
6053	112	52
6054	112	53
6055	112	60
6056	113	37
6057	113	79
6058	113	83
6059	113	148
6060	113	52
6061	113	53
6062	113	60
6063	114	37
6064	114	79
6065	114	83
6066	114	148
6067	114	52
6068	114	53
6069	114	60
6070	115	33
6071	115	130
6072	115	37
6073	115	79
6074	115	148
6075	115	53
6076	116	37
6077	116	83
6078	116	148
6079	116	52
6080	116	53
6081	116	60
6082	117	33
6083	117	131
6084	117	37
6085	117	79
6086	117	148
6087	117	53
6088	118	33
6089	118	130
6090	118	37
6091	118	79
6092	119	33
6093	119	130
6094	119	148
6095	119	53
6096	119	79
6097	120	148
6098	120	52
6099	120	53
6100	120	60
6101	120	7
6102	121	37
6103	121	79
6104	121	83
6105	121	148
6106	121	52
6107	121	53
6108	121	60
6109	123	97
6110	123	148
6111	123	53
6112	123	60
6113	124	11
6114	124	148
6115	124	53
6116	125	97
6117	125	148
6118	125	53
6119	126	97
6120	126	148
6121	126	53
6122	127	97
6123	127	83
6124	127	148
6125	127	53
6126	128	148
6127	128	53
6128	129	97
6129	129	34
6130	129	37
6131	129	7
6132	129	44
6133	129	79
6134	129	48
6135	129	83
6136	129	148
6137	129	52
6138	129	53
6139	129	22
6140	129	60
6141	130	97
6142	130	148
6143	130	53
6144	131	97
6145	131	148
6146	131	53
6147	132	97
6148	132	148
6149	132	53
6150	133	97
6151	133	148
6152	133	53
6153	134	97
6154	134	148
6155	134	53
6156	135	97
6157	135	148
6158	135	53
6159	136	97
6160	136	148
6161	136	53
6162	220	97
6163	220	148
6164	220	53
6165	221	97
6166	221	148
6167	221	53
6168	222	97
6169	222	148
6170	222	53
6171	223	97
6172	223	79
6173	556	96
6174	556	33
6175	556	129
6176	556	70
6177	556	7
6178	556	11
6179	556	47
6180	556	79
6181	556	17
6182	556	83
6183	556	148
6184	556	52
6185	556	53
6186	556	22
6187	556	151
6188	557	96
6189	557	33
6190	557	129
6191	557	70
6192	557	7
6193	557	11
6194	557	47
6195	557	79
6196	557	17
6197	557	83
6198	557	148
6199	557	52
6200	557	53
6201	557	22
6202	557	151
6203	558	96
6204	558	33
6205	558	129
6206	558	37
6207	558	70
6208	558	7
6209	558	11
6210	558	47
6211	558	79
6212	558	17
6213	558	83
6214	558	148
6215	558	52
6216	558	53
6217	558	22
6218	558	151
6219	559	96
6220	559	33
6221	559	129
6222	559	37
6223	559	70
6224	559	7
6225	559	11
6226	559	47
6227	559	79
6228	559	17
6229	559	83
6230	559	148
6231	559	52
6232	559	53
6233	559	22
6234	559	151
6235	560	96
6236	560	33
6237	560	129
6238	560	37
6239	560	70
6240	560	7
6241	560	11
6242	560	47
6243	560	79
6244	560	17
6245	560	83
6246	560	148
6247	560	52
6248	560	53
6249	560	22
6250	560	151
6251	200	97
6252	200	148
6253	200	53
6254	201	97
6255	201	148
6256	201	53
6257	202	97
6258	202	148
6259	202	53
6260	203	97
6261	203	148
6262	203	53
6263	204	97
6264	204	148
6265	204	53
6266	205	97
6267	205	148
6268	205	53
6269	206	97
6270	206	148
6271	206	53
6272	207	97
6273	207	148
6274	207	53
6275	208	97
6276	208	148
6277	208	53
6278	209	97
6279	209	148
6280	209	53
6281	210	97
6282	210	148
6283	210	53
6284	211	97
6285	211	148
6286	211	53
6287	212	97
6288	212	148
6289	212	53
6290	213	97
6291	213	148
6292	213	53
6293	214	97
6294	214	148
6295	214	53
6296	215	97
6297	215	148
6298	215	53
6299	216	97
6300	216	148
6301	216	53
6302	217	97
6303	217	148
6304	217	53
6305	218	97
6306	219	97
6307	219	79
6308	561	96
6309	561	33
6310	561	129
6311	561	37
6312	561	70
6313	561	7
6314	561	11
6315	561	47
6316	561	79
6317	561	17
6318	561	83
6319	561	148
6320	561	52
6321	561	53
6322	561	22
6323	561	151
6324	562	96
6325	562	33
6326	562	129
6327	562	37
6328	562	70
6329	562	7
6330	562	11
6331	562	47
6332	562	79
6333	562	17
6334	562	83
6335	562	148
6336	562	52
6337	562	53
6338	562	22
6339	562	151
6340	563	96
6341	563	33
6342	563	129
6343	563	37
6344	563	70
6345	563	7
6346	563	11
6347	563	47
6348	563	79
6349	563	17
6350	563	83
6351	563	148
6352	563	52
6353	563	53
6354	563	22
6355	563	151
6356	564	96
6357	564	33
6358	564	129
6359	564	37
6360	564	70
6361	564	7
6362	564	11
6363	564	47
6364	564	79
6365	564	17
6366	564	83
6367	564	148
6368	564	52
6369	564	53
6370	564	22
6371	564	151
6372	565	96
6373	565	33
6374	565	129
6375	565	70
6376	565	7
6377	565	11
6378	565	47
6379	565	79
6380	565	17
6381	565	83
6382	565	148
6383	565	52
6384	565	53
6385	565	22
6386	565	151
6387	566	96
6388	566	33
6389	566	129
6390	566	70
6391	566	7
6392	566	11
6393	566	47
6394	566	79
6395	566	17
6396	566	83
6397	566	148
6398	566	52
6399	566	53
6400	566	22
6401	566	151
6402	567	96
6403	567	79
6404	568	129
6405	568	7
6406	568	11
6407	568	79
6408	568	47
6409	568	82
6410	568	148
6411	568	52
6412	568	53
6413	568	22
6414	568	150
6415	569	128
6416	569	129
6417	569	70
6418	569	11
6419	569	47
6420	569	79
6421	569	17
6422	569	82
6423	569	148
6424	569	52
6425	569	53
6426	570	129
6427	570	133
6428	570	70
6429	570	7
6430	570	11
6431	570	47
6432	570	79
6433	570	17
6434	570	82
6435	570	148
6436	570	52
6437	570	22
6438	570	53
6439	571	34
6440	571	37
6441	571	7
6442	571	44
6443	571	79
6444	571	47
6445	571	82
6446	571	83
6447	571	22
6448	571	60
6449	572	34
6450	572	37
6451	572	7
6452	572	44
6453	572	79
6454	572	48
6455	572	82
6456	572	83
6457	572	22
6458	572	60
6459	573	34
6460	573	37
6461	573	7
6462	573	44
6463	573	79
6464	573	48
6465	573	82
6466	573	83
6467	573	22
6468	573	60
6469	574	34
6470	574	37
6471	574	7
6472	574	44
6473	574	79
6474	574	48
6475	574	82
6476	574	83
6477	574	22
6478	574	60
6479	575	33
6480	575	129
6481	575	133
6482	575	70
6483	575	7
6484	575	11
6485	575	47
6486	575	79
6487	575	17
6488	575	82
6489	575	83
6490	575	148
6491	575	52
6492	575	53
6493	575	22
6494	576	33
6495	576	129
6496	576	133
6497	576	70
6498	576	7
6499	576	11
6500	576	47
6501	576	79
6502	576	17
6503	576	82
6504	576	83
6505	576	148
6506	576	52
6507	576	53
6508	576	22
6509	577	33
6510	577	129
6511	577	133
6512	577	70
6513	577	7
6514	577	11
6515	577	47
6516	577	79
6517	577	17
6518	577	82
6519	577	83
6520	577	148
6521	577	52
6522	577	53
6523	577	22
6524	578	33
6525	578	129
6526	578	133
6527	578	70
6528	578	7
6529	578	11
6530	578	47
6531	578	79
6532	578	17
6533	578	82
6534	578	83
6535	578	148
6536	578	52
6537	578	53
6538	578	22
6539	579	33
6540	579	129
6541	579	37
6542	579	70
6544	579	7
6545	579	11
6546	579	47
6547	579	79
6548	579	17
6549	579	82
6550	579	83
6551	579	148
6552	579	52
6553	579	53
6554	579	22
6555	580	33
6556	580	129
6557	580	70
6559	580	7
6560	580	11
6561	580	47
6562	580	79
6563	580	17
6564	580	82
6565	580	83
6566	580	148
6567	580	52
6568	580	53
6569	580	22
6570	581	33
6571	581	129
6572	581	37
6573	581	70
6575	581	7
6576	581	11
6577	581	47
6578	581	79
6579	581	17
6580	581	82
6581	581	83
6582	581	148
6583	581	52
6584	581	53
6585	581	22
6586	582	33
6587	582	129
6588	582	37
6589	582	70
6591	582	7
6592	582	11
6593	582	47
6594	582	79
6595	582	17
6596	582	82
6597	582	83
6598	582	148
6599	582	52
6600	582	53
6601	582	22
6602	583	33
6603	583	129
6604	583	37
6605	583	70
6607	583	7
6608	583	11
6609	583	47
6610	583	79
6611	583	17
6612	583	82
6613	583	83
6614	583	148
6615	583	52
6616	583	53
6617	583	22
6618	584	33
6619	584	129
6620	584	37
6621	584	70
6623	584	7
6624	584	11
6625	584	47
6626	584	79
6627	584	17
6628	584	82
6629	584	83
6630	584	148
6631	584	52
6632	584	53
6633	584	22
6634	585	33
6635	585	129
6636	585	37
6637	585	70
6639	585	7
6640	585	11
6641	585	47
6642	585	79
6643	585	17
6644	585	82
6645	585	83
6646	585	148
6647	585	52
6648	585	53
6649	585	22
6650	586	33
6651	586	129
6652	586	37
6653	586	70
6655	586	7
6656	586	11
6657	586	47
6658	586	79
6659	586	17
6660	586	82
6661	586	83
6662	586	148
6663	586	52
6664	586	53
6665	586	22
6666	587	33
6667	587	129
6668	587	37
6669	587	70
6671	587	7
6672	587	11
6673	587	47
6674	587	79
6675	587	17
6676	587	82
6677	587	83
6678	587	148
6679	587	52
6680	587	53
6681	587	22
6682	588	33
6683	588	129
6684	588	37
6685	588	70
6687	588	7
6688	588	11
6689	588	47
6690	588	79
6691	588	17
6692	588	82
6693	588	83
6694	588	148
6695	588	52
6696	588	53
6697	588	22
6698	589	33
6699	589	129
6700	589	37
6701	589	70
6702	589	134
6703	589	7
6704	589	11
6705	589	47
6706	589	79
6707	589	17
6708	589	82
6709	589	83
6710	589	148
6711	589	52
6712	589	53
6713	589	22
6714	590	33
6715	590	129
6716	590	37
6717	590	70
6719	590	7
6720	590	11
6721	590	47
6722	590	79
6723	590	17
6724	590	82
6725	590	83
6726	590	148
6727	590	52
6728	590	53
6729	590	22
6730	591	33
6731	591	129
6732	591	37
6733	591	70
6735	591	7
6736	591	11
6737	591	47
6738	591	79
6739	591	17
6740	591	82
6741	591	83
6742	591	148
6743	591	52
6744	591	53
6745	591	22
6746	592	33
6747	592	129
6748	592	70
6750	592	7
6751	592	11
6752	592	47
6753	592	79
6754	592	17
6755	592	82
6756	592	83
6757	592	148
6758	592	52
6759	592	53
6760	592	22
6761	593	33
6762	593	129
6763	593	70
6765	593	7
6766	593	11
6767	593	47
6768	593	79
6769	593	17
6770	593	82
6771	593	83
6772	593	148
6773	593	52
6774	593	53
6775	593	22
6776	594	33
6777	594	129
6778	594	70
6780	594	7
6781	594	11
6782	594	47
6783	594	79
6784	594	17
6785	594	82
6786	594	83
6787	594	148
6788	594	52
6789	594	53
6790	594	22
6791	595	33
6792	595	129
6793	595	70
6795	595	7
6796	595	11
6797	595	47
6798	595	79
6799	595	17
6800	595	82
6801	595	83
6802	595	148
6803	595	52
6804	595	53
6805	595	22
6806	596	33
6807	596	129
6808	596	70
6810	596	7
6811	596	11
6812	596	47
6813	596	79
6814	596	17
6815	596	82
6816	596	83
6817	596	148
6818	596	52
6819	596	53
6820	596	22
6821	597	33
6822	597	129
6823	597	70
6825	597	7
6826	597	11
6827	597	47
6828	597	79
6829	597	17
6830	597	82
6831	597	83
6832	597	148
6833	597	52
6834	597	53
6835	597	22
6836	598	33
6837	598	129
6838	598	70
6839	598	134
6840	598	7
6841	598	11
6842	598	47
6843	598	79
6844	598	17
6845	598	82
6846	598	83
6847	598	148
6848	598	52
6849	598	53
6850	598	22
6851	599	33
6852	599	129
6853	599	70
6854	599	134
6855	599	7
6856	599	11
6857	599	47
6858	599	79
6859	599	17
6860	599	82
6861	599	83
6862	599	148
6863	599	52
6864	599	53
6865	599	22
6866	600	33
6867	600	129
6868	600	70
6869	600	134
6870	600	7
6871	600	11
6872	600	47
6873	600	79
6874	600	17
6875	600	82
6876	600	83
6877	600	148
6878	600	52
6879	600	53
6880	600	22
6881	601	33
6882	601	129
6883	601	70
6884	601	134
6885	601	7
6886	601	11
6887	601	47
6888	601	79
6889	601	17
6890	601	82
6891	601	83
6892	601	148
6893	601	52
6894	601	53
6895	601	22
6896	602	33
6897	602	129
6898	602	7
6899	602	11
6900	602	79
6901	602	47
6902	602	82
6903	602	148
6904	602	52
6905	602	53
6906	602	22
6907	602	150
6908	603	128
6909	603	33
6910	603	129
6912	603	11
6913	603	47
6914	603	79
6915	603	17
6916	603	82
6917	603	148
6918	603	52
6919	603	22
6920	603	53
6921	604	128
6922	604	33
6923	604	129
6924	604	37
6926	604	7
6927	604	11
6928	604	47
6929	604	79
6930	604	17
6931	604	82
6932	604	83
6933	604	148
6934	604	52
6935	604	53
6936	604	22
6937	605	128
6938	605	33
6939	605	129
6940	605	7
6941	605	11
6942	605	47
6943	605	79
6944	605	17
6945	605	82
6946	605	83
6947	605	148
6948	605	52
6949	605	53
6950	606	128
6951	606	33
6952	606	129
6953	606	37
6954	606	7
6955	606	11
6956	606	79
6957	606	48
6958	606	17
6959	606	82
6960	606	83
6961	606	148
6962	606	52
6963	606	53
6964	606	22
6965	607	128
6966	607	33
6967	607	129
6968	607	7
6969	607	11
6970	607	47
6971	607	79
6972	607	17
6973	607	82
6974	607	83
6975	607	148
6976	607	52
6977	607	53
6978	608	128
6979	608	33
6980	608	129
6981	608	7
6982	608	11
6983	608	47
6984	608	79
6985	608	17
6986	608	82
6987	608	83
6988	608	148
6989	608	52
6990	608	53
6991	609	128
6992	609	34
6993	609	44
6994	609	79
6995	609	49
6996	609	82
6997	609	83
6999	610	34
7000	610	44
7001	610	79
7002	610	49
7003	610	82
7004	610	83
7006	611	34
7007	611	7
7008	611	44
7009	611	79
7010	611	48
7011	611	82
7012	611	83
7014	612	34
7015	612	7
7016	612	44
7017	612	79
7018	612	48
7019	612	82
7020	612	83
7021	613	128
7022	613	34
7023	613	7
7024	613	44
7025	613	79
7026	613	48
7027	613	82
7028	613	83
7030	614	34
7031	614	7
7032	614	44
7033	614	79
7034	614	48
7035	614	82
7036	614	83
7038	615	34
7039	615	7
7040	615	44
7041	615	79
7042	615	48
7043	615	82
7044	615	83
7045	616	128
7046	616	34
7047	616	7
7048	616	44
7049	616	79
7050	616	48
7051	616	82
7052	616	83
7054	617	34
7055	617	7
7056	617	44
7057	617	79
7058	617	48
7059	617	82
7060	617	83
7061	618	34
7062	618	7
7063	618	44
7064	618	79
7065	618	49
7066	618	82
7067	618	83
7068	618	60
7069	617	60
7070	615	60
7071	614	60
7072	612	60
7073	611	60
7074	610	60
7077	579	133
7078	580	133
7079	581	133
7080	582	133
7081	583	133
7082	584	133
7083	585	133
7084	586	133
7085	587	133
7086	588	133
7087	590	133
7088	591	133
7089	592	133
7090	593	133
7091	594	133
7092	595	133
7093	596	133
7094	597	133
7095	620	96
7096	620	34
7097	620	44
7098	620	79
7099	620	47
7100	620	83
7101	621	96
7102	621	34
7103	621	71
7104	621	44
7105	621	79
7106	621	48
7107	621	83
7108	621	22
7109	621	63
7110	622	96
7111	622	34
7112	622	44
7113	622	79
7114	622	49
7115	622	83
7116	621	148
7117	621	52
7118	623	96
7119	623	34
7120	623	7
7121	623	44
7122	623	79
7123	623	48
7124	623	83
7125	623	63
7126	624	96
7127	624	34
7128	624	7
7129	624	44
7130	624	79
7131	624	47
7132	624	83
7133	624	22
7134	625	96
7135	625	34
7136	625	7
7137	625	44
7138	625	79
7139	625	47
7140	625	83
7141	625	22
7149	627	96
7150	627	34
7151	627	44
7152	627	79
7153	627	47
7154	627	83
7155	628	96
7156	628	34
7157	628	7
7158	628	44
7159	628	79
7160	628	47
7161	628	83
7162	628	148
7163	628	52
7164	629	96
7165	629	34
7166	629	7
7167	629	44
7168	629	79
7169	629	47
7170	629	83
7171	629	148
7172	629	52
7173	630	96
7174	630	34
7175	630	7
7176	630	44
7177	630	79
7178	630	47
7179	630	83
7180	630	52
7181	631	96
7182	631	34
7183	631	7
7184	631	44
7185	631	79
7186	631	48
7187	631	83
7188	631	52
7189	630	22
7190	632	96
7191	632	34
7192	632	7
7193	632	44
7194	632	79
7195	632	48
7196	632	83
7197	632	52
7198	633	96
7199	633	34
7200	633	7
7201	633	44
7202	633	79
7203	633	48
7204	633	83
7205	634	96
7206	634	34
7207	634	7
7208	634	44
7209	634	79
7210	634	48
7211	634	83
7212	634	52
7213	635	18
7214	635	7
7215	635	37
7216	635	47
7217	636	33
7218	636	37
7219	636	70
7220	636	7
7221	636	11
7222	636	47
7223	636	80
7224	636	17
7225	636	83
7226	636	148
7227	636	52
7228	636	53
7229	636	22
7230	636	57
7231	636	58
7233	637	129
7234	637	100
7235	637	69
7236	637	70
7237	637	71
7238	637	38
7239	637	47
7240	637	79
7241	637	52
7242	637	53
7243	637	84
7244	637	22
7245	637	57
7246	637	58
7247	637	27
7248	637	61
7249	637	62
7250	637	63
7251	638	129
7252	638	100
7253	638	37
7254	638	69
7255	638	47
7256	638	79
7257	638	52
7258	638	53
7259	638	57
7260	638	58
7261	638	27
7262	638	61
7263	638	62
7264	639	100
7265	639	69
7266	639	71
7267	639	47
7268	639	79
7269	639	83
7270	639	148
7271	639	52
7272	639	53
7273	639	84
7274	639	22
7275	639	57
7276	639	58
7277	639	27
7278	639	63
7279	640	162
7280	640	100
7281	640	69
7282	640	154
7283	640	42
7284	640	47
7285	640	79
7286	640	84
7287	640	53
7288	640	22
7289	640	58
7290	640	27
7291	640	61
7292	641	162
7293	641	100
7294	641	69
7295	641	38
7296	641	47
7297	641	79
7298	641	84
7299	641	52
7300	641	53
7301	641	61
7302	643	162
7303	643	100
7304	643	69
7305	643	71
7306	643	7
7307	643	47
7308	643	79
7309	643	17
7310	643	84
7311	643	52
7312	643	53
7313	643	22
7314	643	27
7315	643	63
7316	644	100
7317	644	69
7318	644	70
7319	644	71
7320	644	7
7321	644	47
7322	644	79
7323	644	17
7324	644	148
7325	644	52
7326	644	84
7327	644	22
7328	644	27
7329	644	61
7330	644	63
7331	644	163
7332	638	84
7333	642	162
7334	642	100
7335	642	37
7336	642	69
7337	642	38
7338	642	47
7339	642	79
7340	642	52
7341	642	53
7342	642	84
7343	642	22
7344	642	27
7345	642	61
7346	645	128
7347	645	97
7348	645	34
7349	645	7
7350	645	9
7351	645	79
7352	645	48
7353	645	148
7354	645	52
7355	645	22
7356	646	128
7357	646	97
7358	646	34
7359	646	7
7360	646	9
7361	646	79
7362	646	48
7363	646	83
7364	646	148
7365	646	52
7366	646	53
7367	646	22
7368	645	53
7369	647	128
7370	647	97
7371	647	34
7372	647	7
7373	647	9
7374	647	79
7375	647	48
7376	647	83
7377	647	148
7378	647	52
7379	647	53
7380	648	128
7381	648	97
7382	648	34
7383	648	7
7384	648	9
7385	648	79
7386	648	48
7387	648	83
7388	648	148
7389	648	52
7390	648	53
7391	648	22
7392	649	128
7393	649	97
7394	649	34
7395	649	7
7396	649	9
7397	649	79
7398	649	49
7399	649	148
7400	649	52
7401	649	53
7402	650	128
7403	650	97
7404	650	34
7405	650	7
7406	650	9
7407	650	79
7408	650	49
7409	650	148
7410	650	52
7411	650	53
7412	650	22
7413	651	128
7414	651	97
7415	651	34
7416	651	7
7417	651	9
7418	651	47
7419	651	79
7420	651	148
7421	651	52
7422	651	53
7423	651	22
7424	652	128
7425	652	97
7426	652	34
7427	652	7
7428	652	9
7429	652	47
7430	652	79
7431	652	148
7432	652	52
7433	652	53
7434	652	22
7435	653	97
7436	653	34
7437	653	37
7438	653	7
7439	653	44
7440	653	47
7441	653	79
7442	653	83
7443	653	148
7444	653	52
7445	653	53
7446	653	22
7447	653	60
7448	654	128
7449	654	97
7450	654	34
7451	654	7
7452	654	9
7453	654	47
7454	654	79
7455	654	83
7456	654	148
7457	654	52
7458	654	53
7459	654	22
7460	655	97
7461	655	34
7462	655	37
7463	655	7
7464	655	44
7465	655	47
7466	655	79
7467	655	83
7468	655	148
7469	655	52
7470	655	53
7471	655	22
7472	655	60
7473	656	97
7474	656	33
7475	656	129
7476	656	69
7477	656	7
7478	656	47
7479	656	79
7480	656	83
7481	656	148
7482	656	84
7483	656	52
7484	656	53
7485	656	22
7486	656	150
7487	657	97
7488	657	33
7489	657	129
7490	657	37
7491	657	7
7492	657	11
7493	657	47
7494	657	79
7495	657	83
7496	657	148
7497	657	52
7498	657	53
7499	657	22
7500	657	150
7501	658	97
7502	658	33
7503	658	129
7504	658	37
7505	658	70
7506	658	133
7507	658	7
7508	658	11
7509	658	47
7510	658	79
7511	658	17
7512	658	83
7513	658	148
7514	658	52
7515	658	53
7516	658	22
7517	659	97
7518	659	33
7519	659	129
7520	659	37
7521	659	7
7522	659	11
7523	659	47
7524	659	79
7525	659	83
7526	659	148
7527	659	52
7528	659	53
7529	659	22
7530	659	150
7531	660	97
7532	660	33
7533	660	129
7534	660	37
7535	660	7
7536	660	11
7537	660	47
7538	660	79
7539	660	83
7540	660	148
7541	660	52
7542	660	53
7543	660	22
7544	660	150
7545	661	97
7546	661	33
7547	661	129
7548	661	37
7549	661	7
7550	661	11
7551	661	47
7552	661	79
7553	661	83
7554	661	148
7555	661	52
7556	661	53
7557	661	22
7558	661	150
7559	662	128
7560	662	97
7561	662	34
7562	662	7
7563	662	9
7564	662	47
7565	662	79
7566	662	148
7567	662	52
7568	662	53
7569	662	22
7570	663	128
7571	663	97
7572	663	34
7573	663	7
7574	663	9
7575	663	47
7576	663	79
7577	663	148
7578	663	52
7579	663	53
7580	663	22
7581	664	128
7582	664	97
7583	664	34
7584	664	7
7585	664	9
7586	664	79
7587	664	48
7588	664	148
7589	664	52
7590	664	53
7591	664	22
7592	665	128
7593	665	97
7594	665	34
7595	665	7
7596	665	9
7597	665	47
7598	665	79
7599	665	148
7600	665	52
7601	665	53
7602	665	22
7603	666	128
7604	666	97
7605	666	34
7606	666	7
7607	666	9
7608	666	47
7609	666	79
7610	666	148
7611	666	52
7612	666	53
7613	666	22
7614	667	128
7615	667	97
7616	667	34
7617	667	7
7618	667	9
7619	667	47
7620	667	79
7621	667	52
7622	667	53
7623	667	22
7624	667	153
7625	668	34
7626	668	100
7627	668	44
7628	668	79
7629	668	48
7630	668	83
7631	668	148
7632	668	52
7633	668	53
7634	668	60
7635	668	164
7636	669	128
7637	669	100
7638	669	164
7639	669	11
7640	669	47
7641	669	79
7642	669	148
7643	669	52
7644	669	53
7645	669	22
7646	669	57
7647	669	58
7648	669	165
7649	670	128
7650	670	100
7651	670	165
7652	670	164
7653	670	11
7654	670	47
7655	670	79
7656	670	148
7657	670	52
7658	670	53
7659	670	22
7660	670	57
7661	670	58
7662	671	128
7663	671	33
7664	671	129
7665	671	100
7666	671	37
7667	671	70
7668	671	7
7669	671	11
7670	671	79
7671	671	83
7672	671	52
7673	671	22
7674	671	166
7675	671	47
7676	672	128
7677	672	129
7678	672	100
7679	672	165
7680	672	166
7681	672	11
7682	672	79
7683	672	47
7684	672	52
7685	673	128
7686	673	33
7687	673	129
7688	673	100
7689	673	37
7690	673	166
7691	673	70
7692	673	7
7693	673	11
7694	673	47
7695	673	79
7696	673	83
7697	673	84
7698	673	52
7699	673	22
7700	674	128
7701	674	33
7702	674	129
7703	674	100
7704	674	37
7705	674	166
7706	674	7
7707	674	11
7708	674	79
7709	674	48
7710	674	83
7711	674	52
7712	674	84
7713	674	22
7714	675	128
7715	675	33
7716	675	129
7717	675	100
7718	675	37
7719	675	166
7720	675	7
7721	675	11
7722	675	79
7723	675	48
7724	675	83
7725	675	52
7726	675	84
7727	675	22
7728	676	128
7729	676	33
7731	676	100
7732	676	11
7733	676	79
7734	676	47
7735	676	83
7736	676	52
7737	676	53
7738	677	128
7739	677	129
7740	677	100
7741	677	9
7742	677	11
7743	677	79
7744	677	47
7745	677	83
7746	677	52
7747	677	53
7748	678	128
7749	678	33
7751	678	100
7752	678	11
7753	678	79
7754	678	47
7755	678	83
7756	678	52
7757	678	53
7758	679	128
7759	679	33
7761	679	100
7762	679	11
7763	679	79
7764	679	47
7765	679	83
7766	679	52
7767	679	53
7768	680	128
7769	680	33
7770	680	100
7771	680	38
7772	680	11
7773	680	79
7774	680	47
7775	680	83
7776	680	52
7777	680	53
7778	676	38
7779	678	38
7780	679	38
7781	676	129
7782	677	38
7783	678	129
7784	679	129
7785	680	129
7786	681	128
7787	681	33
7788	681	129
7789	681	100
7790	681	38
7791	681	11
7792	681	79
7793	681	47
7794	681	83
7795	681	52
7796	681	53
7797	682	128
7798	682	33
7799	682	129
7800	682	100
7801	682	38
7802	682	11
7803	682	79
7804	682	47
7805	682	83
7806	682	52
7807	682	53
7808	683	128
7809	683	33
7810	683	129
7811	683	100
7812	683	38
7813	683	11
7814	683	79
7815	683	47
7816	683	83
7817	683	52
7818	683	53
7819	684	128
7820	684	33
7821	684	129
7822	684	100
7823	684	38
7824	684	11
7825	684	79
7826	684	47
7827	684	83
7828	684	52
7829	684	53
7830	685	128
7831	685	33
7832	685	129
7833	685	100
7834	685	38
7835	685	11
7836	685	79
7837	685	47
7838	685	83
7839	685	52
7840	685	53
7841	686	128
7842	686	33
7843	686	129
7844	686	100
7845	686	38
7846	686	11
7847	686	79
7848	686	47
7849	686	83
7850	686	52
7851	686	53
7852	687	128
7853	687	33
7854	687	129
7855	687	100
7856	687	38
7857	687	11
7858	687	79
7859	687	47
7860	687	83
7861	687	52
7862	687	53
7863	688	128
7864	688	33
7865	688	129
7866	688	100
7867	688	38
7868	688	11
7869	688	79
7870	688	48
7871	688	83
7872	688	52
7873	688	53
7874	689	128
7875	689	33
7876	689	129
7877	689	100
7878	689	38
7879	689	11
7880	689	79
7881	689	47
7882	689	83
7883	689	52
7884	689	53
7885	690	128
7886	690	33
7887	690	129
7888	690	100
7889	690	38
7890	690	11
7891	690	79
7892	690	47
7893	690	83
7894	690	52
7895	690	53
7896	691	128
7897	691	33
7898	691	129
7899	691	100
7900	691	38
7901	691	11
7902	691	79
7903	691	47
7904	691	83
7905	691	52
7906	691	53
7907	692	128
7908	692	33
7909	692	129
7910	692	100
7911	692	38
7912	692	11
7913	692	79
7914	692	47
7915	692	83
7916	692	52
7917	692	53
7918	693	128
7919	693	33
7920	693	129
7921	693	100
7922	693	38
7923	693	11
7924	693	79
7925	693	47
7926	693	83
7927	693	52
7928	693	53
7929	694	128
7930	694	33
7931	694	129
7932	694	100
7933	694	38
7934	694	11
7935	694	79
7936	694	47
7937	694	83
7938	694	52
7939	694	53
7940	695	128
7941	695	33
7942	695	129
7943	695	100
7944	695	38
7945	695	11
7946	695	79
7947	695	47
7948	695	83
7949	695	52
7950	695	53
7951	696	128
7952	696	33
7953	696	129
7954	696	100
7955	696	38
7956	696	11
7957	696	79
7958	696	47
7959	696	83
7960	696	52
7961	696	53
7962	697	128
7963	697	33
7964	697	129
7965	697	100
7966	697	38
7967	697	11
7968	697	79
7969	697	47
7970	697	83
7971	697	52
7972	697	53
7973	698	128
7974	698	33
7975	698	129
7976	698	100
7977	698	38
7978	698	11
7979	698	79
7980	698	47
7981	698	83
7982	698	52
7983	698	53
7984	699	128
7985	699	129
7986	699	100
7987	699	165
7988	699	71
7989	699	11
7990	699	47
7991	699	79
7992	699	52
7993	699	53
7994	699	22
7995	699	59
7996	699	63
7998	700	34
7999	700	100
8000	700	164
8001	700	7
8002	700	44
8003	700	79
8004	700	47
8005	700	83
8006	700	60
8007	701	34
8008	701	100
8009	701	37
8010	701	7
8011	701	44
8012	701	79
8013	701	47
8014	701	83
8015	701	22
8016	701	60
8017	702	34
8018	702	100
8019	702	37
8020	702	7
8021	702	44
8022	702	79
8023	702	47
8024	702	83
8025	702	22
8026	702	60
8027	703	34
8028	703	100
8029	703	164
8030	703	7
8031	703	44
8032	703	79
8033	703	47
8034	703	83
8035	703	60
8036	704	34
8037	704	100
8038	704	37
8039	704	164
8040	704	7
8041	704	44
8042	704	79
8043	704	47
8044	704	83
8045	704	22
8046	704	60
8047	705	34
8048	705	100
8049	705	37
8050	705	7
8051	705	44
8052	705	79
8053	705	47
8054	705	83
8055	705	22
8056	705	60
8057	706	34
8058	706	100
8059	706	164
8060	706	7
8061	706	44
8062	706	79
8063	706	48
8064	706	83
8065	706	60
8066	707	34
8067	707	100
8068	707	164
8069	707	7
8070	707	44
8071	707	79
8072	707	48
8073	707	83
8074	707	60
8075	708	34
8076	708	100
8077	708	37
8078	708	164
8079	708	7
8080	708	44
8081	708	79
8082	708	47
8083	708	83
8084	708	22
8085	708	60
8086	709	34
8087	709	100
8088	709	37
8089	709	164
8090	709	7
8091	709	44
8092	709	79
8093	709	47
8094	709	83
8095	709	22
8096	709	60
8097	710	34
8098	710	100
8099	710	37
8100	710	164
8101	710	7
8102	710	44
8103	710	79
8104	710	48
8105	710	83
8106	710	22
8107	710	60
8108	711	34
8109	711	100
8110	711	164
8112	711	44
8113	711	79
8114	711	47
8115	711	83
8116	711	60
8117	711	63
8118	712	34
8119	712	100
8120	712	37
8121	712	164
8122	712	44
8123	712	79
8124	712	48
8125	712	83
8126	712	22
8127	712	60
8128	712	63
8129	713	34
8130	713	100
8131	713	37
8132	713	164
8133	713	44
8134	713	79
8135	713	47
8136	713	83
8137	713	22
8138	713	60
8139	714	34
8140	714	100
8141	714	164
8142	714	7
8143	714	44
8144	714	79
8145	714	47
8146	714	83
8147	714	60
8148	715	34
8149	715	100
8150	715	164
8151	715	44
8152	715	79
8153	715	47
8154	715	83
8155	715	60
8156	715	63
8157	716	34
8158	716	100
8159	716	37
8160	716	7
8161	716	44
8162	716	79
8163	716	47
8164	716	83
8165	716	22
8166	716	60
8167	717	34
8168	717	100
8169	717	37
8170	717	164
8171	717	7
8172	717	44
8173	717	79
8174	717	47
8175	717	83
8176	717	22
8177	717	60
8178	718	34
8179	718	100
8180	718	164
8181	718	44
8182	718	79
8183	718	47
8184	718	83
8185	718	52
8186	718	60
8187	719	128
8188	719	100
8189	719	165
8190	719	70
8191	719	166
8192	719	7
8193	719	164
8194	719	11
8195	719	79
8196	719	48
8197	719	52
8198	720	128
8199	720	129
8200	720	100
8201	720	165
8202	720	7
8203	720	11
8204	720	79
8205	720	47
8206	720	52
8207	720	53
8208	720	22
8209	721	128
8210	721	129
8211	721	100
8212	721	165
8213	721	7
8214	721	11
8215	721	79
8216	721	47
8217	721	52
8218	721	53
8219	721	22
8220	722	128
8221	722	100
8222	722	11
8223	722	79
8224	722	47
8225	723	128
8226	723	129
8227	723	100
8228	723	165
8229	723	70
8230	723	7
8231	723	11
8232	723	47
8233	723	79
8234	723	17
8235	723	148
8236	723	52
8237	723	53
8238	723	22
8239	724	34
8240	724	100
8241	724	37
8242	724	164
8243	724	7
8244	724	44
8245	724	79
8246	724	49
8247	724	83
8248	724	22
8249	724	60
8250	725	34
8251	725	100
8252	725	164
8253	725	44
8254	725	79
8255	725	47
8256	725	83
8257	725	60
8258	726	34
8259	726	100
8260	726	164
8261	726	7
8262	726	44
8263	726	79
8264	726	47
8265	726	83
8266	726	60
8267	727	34
8268	727	100
8269	727	7
8270	727	44
8271	727	79
8272	727	48
8273	727	83
8274	727	60
8275	728	34
8276	728	100
8277	728	37
8278	728	164
8279	728	7
8280	728	44
8281	728	79
8282	728	47
8283	728	83
8284	728	22
8285	728	60
8286	729	34
8287	729	100
8288	729	164
8289	729	7
8290	729	44
8291	729	79
8292	729	47
8293	729	83
8294	729	52
8295	729	59
8296	729	60
8297	730	162
8298	730	34
8299	730	100
8300	730	37
8301	730	7
8302	730	44
8303	730	47
8304	730	79
8305	730	83
8306	730	52
8307	730	53
8308	730	22
8309	730	60
8310	731	162
8311	731	34
8312	731	100
8313	731	164
8314	731	44
8315	731	47
8316	731	79
8317	731	83
8318	731	52
8319	731	53
8320	731	60
8321	732	34
8322	732	100
8323	732	164
8324	732	44
8325	732	79
8326	732	48
8327	732	83
8328	732	60
8329	733	162
8330	733	34
8331	733	100
8332	733	37
8333	733	7
8334	733	44
8335	733	47
8336	733	79
8337	733	83
8338	733	52
8339	733	53
8340	733	22
8341	733	60
8342	734	34
8343	734	100
8344	734	37
8345	734	164
8346	734	7
8347	734	44
8348	734	79
8349	734	47
8350	734	83
8351	734	22
8352	734	60
8353	735	128
8354	735	129
8355	735	162
8356	735	100
8357	735	165
8358	735	71
8359	735	11
8360	735	47
8361	735	79
8362	735	52
8363	735	53
8364	735	22
8365	736	129
8366	736	100
8367	736	70
8368	736	134
8369	736	7
8370	736	9
8371	736	11
8372	736	47
8373	736	79
8374	736	17
8375	736	148
8376	736	52
8377	736	53
8378	736	22
8379	737	129
8380	737	100
8381	737	70
8382	737	134
8383	737	7
8384	737	9
8385	737	11
8386	737	47
8387	737	79
8388	737	17
8389	737	148
8390	737	52
8391	737	53
8392	737	22
8393	738	128
8394	738	129
8395	738	100
8396	738	165
8397	738	38
8398	738	11
8399	738	47
8400	738	79
8401	738	52
8402	738	53
8403	738	57
8404	738	58
8405	739	128
8406	739	33
8407	739	99
8408	739	37
8409	739	70
8410	739	7
8411	739	168
8412	739	169
8413	739	170
8414	739	171
8415	739	11
8416	739	38
8417	739	47
8418	739	79
8419	739	17
8420	739	83
8421	739	52
8422	739	53
8423	739	22
8424	740	128
8425	740	33
8426	740	99
8427	740	37
8428	740	70
8429	740	7
8430	740	168
8431	740	169
8432	740	170
8433	740	171
8434	740	11
8435	740	38
8436	740	47
8437	740	79
8438	740	17
8439	740	83
8440	740	52
8441	740	53
8442	740	22
8443	740	172
8444	741	128
8445	741	33
8446	741	99
8447	741	37
8448	741	70
8449	741	7
8450	741	38
8451	741	169
8452	741	170
8453	741	171
8454	741	11
8455	741	174
8456	741	47
8457	741	79
8458	741	17
8459	741	83
8460	741	52
8461	741	53
8462	741	22
8463	742	128
8464	742	7
8465	742	11
8466	742	17
8467	742	22
8468	742	33
8469	742	37
8470	742	38
8472	742	169
8473	742	170
8474	742	171
8475	742	172
8476	742	174
8477	742	47
8478	742	52
8479	742	53
8480	742	70
8481	742	79
8482	742	83
8483	742	99
8484	743	128
8485	743	7
8486	743	11
8487	743	17
8488	743	22
8489	743	33
8490	743	37
8491	743	38
8492	743	168
8493	743	169
8494	743	170
8495	743	171
8496	743	172
8497	743	174
8498	743	47
8499	743	52
8500	743	53
8501	743	70
8502	743	79
8503	743	83
8504	743	99
8505	744	128
8506	744	99
8507	744	165
8508	744	38
8509	744	11
8510	744	174
8511	744	79
8512	744	176
8513	744	48
8514	744	52
8515	744	53
8516	744	22
8517	745	128
8518	745	33
8519	745	99
8520	745	38
8521	745	7
8522	745	168
8523	745	169
8524	745	11
8525	745	174
8526	745	47
8527	745	176
8528	745	79
8529	745	83
8530	745	52
8531	745	53
8532	745	22
8533	746	128
8534	746	99
8535	746	11
8536	746	79
8537	746	47
8538	746	20
8539	747	128
8540	747	99
8541	747	165
8542	747	38
8543	747	11
8544	747	174
8545	747	79
8546	747	176
8547	747	48
8548	747	52
8549	747	53
8550	747	22
8551	748	128
8553	748	129
8554	748	99
8555	748	38
8556	748	11
8557	748	174
8558	748	47
8559	748	176
8560	748	79
8562	748	52
8563	748	53
8564	748	22
8565	749	99
8566	749	11
8567	749	27
8568	749	79
8569	750	128
8570	750	129
8571	750	99
8572	750	165
8573	750	11
8574	750	174
8575	750	47
8576	750	79
8577	750	52
8578	750	53
8579	750	22
8580	750	27
8581	751	128
8582	751	99
8583	751	165
8584	751	38
8585	751	11
8586	751	174
8587	751	47
8588	751	176
8589	751	79
8590	751	52
8591	751	53
8592	751	22
8593	751	27
8594	752	99
8595	752	165
8596	752	38
8597	752	11
8598	752	174
8599	752	47
8600	752	79
8601	752	52
8602	752	53
8603	752	20
8604	752	27
8605	753	128
8606	753	129
8607	753	99
8608	753	165
8609	753	38
8610	753	11
8611	753	174
8612	753	47
8613	753	176
8614	753	79
8615	753	52
8616	753	53
8617	753	22
8618	753	27
8619	754	128
8620	754	99
8621	754	164
8622	754	165
8623	754	38
8624	754	11
8625	754	174
8626	754	47
8627	754	176
8628	754	79
8629	754	52
8630	754	53
8631	754	22
8632	754	27
8633	755	128
8634	755	99
8635	755	164
8636	755	165
8637	755	38
8638	755	11
8639	755	174
8640	755	47
8641	755	176
8642	755	79
8643	755	52
8644	755	53
8645	755	22
8646	755	27
8647	756	128
8648	756	129
8649	756	99
8650	756	164
8651	756	165
8652	756	38
8653	756	11
8654	756	174
8655	756	47
8656	756	176
8657	756	79
8658	756	52
8659	756	53
8660	756	22
8661	756	27
8662	757	128
8663	757	129
8664	757	99
8665	757	164
8666	757	165
8667	757	38
8668	757	11
8669	757	174
8670	757	47
8671	757	176
8672	757	79
8673	757	52
8674	757	53
8675	757	22
8676	758	128
8677	758	129
8678	758	99
8679	758	164
8680	758	165
8681	758	38
8682	758	11
8683	758	174
8684	758	47
8685	758	176
8686	758	79
8687	758	52
8688	758	53
8689	758	22
8690	758	27
8691	759	128
8692	759	129
8693	759	99
8694	759	164
8695	759	165
8696	759	38
8697	759	11
8698	759	174
8699	759	47
8700	759	176
8701	759	79
8702	759	52
8703	759	53
8704	759	22
8705	759	27
8706	760	128
8707	760	129
8708	760	99
8709	760	164
8710	760	165
8711	760	38
8712	760	11
8713	760	174
8714	760	47
8715	760	176
8716	760	79
8717	760	52
8718	760	53
8719	760	22
8720	760	27
8721	761	128
8722	761	129
8723	761	99
8724	761	164
8725	761	165
8726	761	38
8727	761	11
8728	761	174
8729	761	47
8730	761	176
8731	761	79
8732	761	52
8733	761	53
8734	761	22
8735	761	27
8736	762	128
8737	762	129
8738	762	99
8739	762	164
8740	762	165
8741	762	38
8742	762	11
8743	762	174
8744	762	47
8745	762	176
8746	762	79
8747	762	52
8748	762	53
8749	762	22
8750	762	27
8751	763	128
8752	763	129
8753	763	99
8754	763	164
8755	763	165
8756	763	38
8757	763	11
8758	763	174
8759	763	47
8760	763	176
8761	763	79
8762	763	52
8763	763	53
8764	763	22
8765	763	27
8766	764	128
8767	764	129
8768	764	99
8769	764	164
8770	764	165
8771	764	38
8772	764	11
8773	764	174
8774	764	47
8775	764	176
8776	764	79
8777	764	52
8778	764	53
8779	764	22
8780	764	27
8781	765	128
8782	765	129
8783	765	99
8784	765	164
8785	765	165
8786	765	38
8787	765	11
8788	765	174
8789	765	47
8790	765	176
8791	765	79
8792	765	52
8793	765	53
8794	765	22
8795	765	27
8796	766	128
8797	766	129
8798	766	99
8799	766	164
8800	766	165
8801	766	38
8802	766	11
8803	766	174
8804	766	47
8805	766	176
8806	766	79
8807	766	52
8808	766	53
8809	766	22
8810	766	27
8811	767	128
8812	767	129
8813	767	99
8814	767	164
8815	767	165
8816	767	38
8817	767	11
8818	767	174
8819	767	47
8820	767	176
8821	767	79
8822	767	52
8823	767	53
8824	767	22
8825	767	27
8826	768	128
8827	768	129
8828	768	99
8829	768	165
8830	768	38
8831	768	11
8832	768	174
8833	768	47
8834	768	176
8835	768	79
8836	768	52
8837	768	53
8838	768	22
8839	768	27
8840	769	128
8841	769	99
8842	769	164
8843	769	165
8844	769	11
8845	769	174
8846	769	47
8847	769	79
8848	769	52
8849	769	53
8850	769	27
8851	770	128
8852	770	129
8853	770	99
8854	770	164
8855	770	37
8856	770	165
8857	770	71
8858	770	38
8859	770	169
8860	770	11
8861	770	174
8862	770	47
8863	770	176
8864	770	79
8865	770	52
8866	770	53
8867	770	22
8868	770	27
8869	771	128
8870	771	129
8871	771	99
8872	771	37
8873	771	165
8874	771	38
8875	771	169
8876	771	11
8877	771	174
8878	771	47
8879	771	176
8880	771	79
8881	771	52
8882	771	53
8883	771	22
8884	771	27
8885	772	128
8886	772	129
8887	772	99
8888	772	164
8889	772	37
8890	772	165
8891	772	169
8892	772	11
8893	772	174
8894	772	47
8895	772	176
8896	772	79
8897	772	52
8898	772	53
8899	773	128
8900	773	129
8901	773	99
8902	773	164
8903	773	37
8904	773	165
8905	773	169
8906	773	11
8907	773	174
8908	773	47
8909	773	176
8910	773	79
8911	773	52
8912	773	53
8913	773	22
8914	773	27
8915	774	128
8916	774	129
8917	774	99
8918	774	164
8919	774	37
8920	774	165
8921	774	169
8922	774	11
8923	774	174
8924	774	47
8925	774	176
8926	774	79
8927	774	52
8928	774	53
8929	774	22
8930	774	27
8931	775	128
8932	775	129
8933	775	99
8934	775	164
8935	775	37
8936	775	165
8937	775	38
8938	775	169
8939	775	11
8940	775	174
8941	775	47
8942	775	176
8943	775	79
8944	775	52
8945	775	53
8946	776	128
8947	776	129
8948	776	99
8949	776	164
8950	776	37
8951	776	165
8952	776	38
8953	776	169
8954	776	11
8955	776	174
8956	776	47
8957	776	176
8958	776	79
8959	776	52
8960	776	53
8961	776	22
8962	776	27
8963	777	128
8964	777	129
8965	777	99
8966	777	164
8967	777	37
8968	777	165
8969	777	38
8970	777	169
8971	777	11
8972	777	174
8973	777	47
8974	777	176
8975	777	79
8976	777	52
8977	777	53
8978	778	128
8979	778	129
8980	778	99
8981	778	164
8982	778	37
8983	778	165
8984	778	38
8985	778	169
8986	778	11
8987	778	174
8988	778	47
8989	778	176
8990	778	79
8991	778	52
8992	778	53
8993	778	22
8994	778	27
8995	779	128
8996	779	129
8997	779	99
8998	779	164
8999	779	37
9000	779	165
9001	779	38
9002	779	169
9003	779	11
9004	779	174
9005	779	47
9006	779	176
9007	779	79
9008	779	52
9009	779	53
9010	779	22
9011	779	27
9012	780	128
9013	780	129
9014	780	99
9015	780	164
9016	780	37
9017	780	165
9018	780	38
9019	780	169
9020	780	11
9021	780	174
9022	780	47
9023	780	176
9024	780	79
9025	780	52
9026	780	53
9027	780	22
9028	780	27
9029	781	128
9030	781	129
9031	781	99
9032	781	164
9033	781	37
9034	781	165
9035	781	38
9036	781	169
9037	781	11
9038	781	174
9039	781	47
9040	781	176
9041	781	79
9042	781	52
9043	781	53
9044	781	22
9045	781	27
9046	782	128
9047	782	129
9048	782	99
9049	782	164
9050	782	37
9051	782	165
9052	782	38
9053	782	169
9054	782	11
9055	782	174
9056	782	47
9057	782	176
9058	782	79
9059	782	52
9060	782	53
9061	782	22
9062	782	27
9063	783	128
9064	783	129
9065	783	99
9066	783	164
9067	783	37
9068	783	165
9069	783	38
9070	783	169
9071	783	11
9072	783	174
9073	783	47
9074	783	176
9075	783	79
9076	783	52
9077	783	53
9078	783	22
9079	783	27
9080	784	128
9081	784	129
9082	784	99
9083	784	164
9084	784	37
9085	784	165
9086	784	38
9087	784	169
9088	784	11
9089	784	174
9090	784	47
9091	784	176
9092	784	79
9093	784	52
9094	784	53
9095	784	22
9096	784	27
9097	785	128
9098	785	129
9099	785	99
9100	785	164
9101	785	37
9102	785	165
9103	785	38
9104	785	169
9105	785	11
9106	785	174
9107	785	47
9108	785	176
9109	785	79
9110	785	52
9111	785	53
9112	786	128
9113	786	129
9114	786	99
9115	786	164
9116	786	37
9117	786	69
9118	786	165
9119	786	38
9120	786	169
9121	786	174
9122	786	47
9123	786	176
9124	786	79
9125	786	52
9126	786	53
9127	786	22
9128	786	27
9129	787	128
9130	787	129
9131	787	99
9132	787	37
9133	787	165
9134	787	38
9135	787	169
9136	787	11
9137	787	174
9138	787	47
9139	787	176
9140	787	79
9141	787	52
9142	787	53
9143	787	22
9144	787	27
9145	787	63
9146	788	128
9147	788	97
9148	788	129
9149	788	164
9150	788	37
9151	788	165
9152	788	38
9153	788	169
9154	788	11
9155	788	174
9156	788	47
9157	788	176
9158	788	79
9159	788	52
9160	788	53
9161	788	22
9162	788	27
9163	789	97
9164	789	11
9165	789	79
9166	789	49
9167	789	20
9168	790	97
9169	790	37
9170	790	169
9171	790	11
9172	790	172
9173	790	79
9174	790	48
9175	790	20
9176	791	97
9177	791	37
9178	791	169
9179	791	11
9180	791	172
9181	791	79
9182	791	48
9183	791	20
9184	792	97
9185	792	37
9186	792	169
9187	792	11
9188	792	172
9189	792	79
9190	792	48
9191	792	20
9192	793	128
9193	793	129
9194	793	99
9195	793	165
9196	793	7
9197	793	11
9198	793	174
9199	793	47
9200	793	176
9201	793	79
9202	793	52
9203	793	53
9204	793	22
9205	794	128
9206	794	129
9207	794	99
9208	794	37
9209	794	38
9210	794	7
9211	794	168
9212	794	169
9213	794	11
9214	794	44
9215	794	47
9216	794	79
9217	794	15
9218	794	83
9219	794	148
9220	794	52
9221	794	22
9222	794	57
9223	795	99
9224	795	164
9225	795	37
9226	795	7
9227	795	168
9228	795	169
9229	795	11
9230	795	44
9231	795	79
9232	795	48
9233	795	17
9234	795	83
9235	795	52
9236	795	22
9237	795	60
9238	796	129
9239	796	99
9240	796	165
9241	796	70
9242	796	166
9243	796	171
9244	796	11
9245	796	79
9246	796	48
9247	796	17
9248	796	15
9249	796	52
9250	796	22
9251	797	128
9252	797	33
9253	797	99
9254	797	38
9255	797	7
9256	797	11
9257	797	79
9258	797	49
9259	797	52
9260	797	84
9261	797	22
9262	797	153
9263	797	27
9264	798	96
9265	798	129
9266	798	37
9267	798	165
9268	798	38
9269	798	169
9270	798	11
9271	798	47
9272	798	79
9273	798	83
9274	798	148
9275	798	52
9276	798	53
9277	798	22
9278	798	150
9279	799	96
9280	799	128
9281	799	164
9282	799	37
9283	799	7
9284	799	168
9285	799	11
9286	799	44
9287	799	47
9288	799	79
9289	799	83
9290	799	20
9291	799	22
9292	800	96
9293	800	128
9294	800	34
9295	800	164
9296	800	37
9297	800	169
9298	800	44
9299	800	79
9300	800	48
9301	800	83
9302	801	96
9303	801	128
9304	801	34
9305	801	37
9306	801	7
9307	801	168
9308	801	169
9309	801	44
9310	801	79
9311	801	48
9312	801	83
9313	801	22
9314	802	96
9315	802	34
9316	802	164
9317	802	37
9318	802	169
9319	802	44
9320	802	79
9321	802	48
9322	802	83
9323	802	60
9324	803	96
9325	803	128
9326	803	34
9327	803	164
9328	803	37
9329	803	169
9330	803	44
9331	803	79
9332	803	47
9333	803	83
9334	804	96
9335	804	34
9336	804	164
9337	804	37
9338	804	169
9339	804	44
9340	804	47
9341	804	79
9342	804	83
9343	804	52
9344	804	53
9345	804	60
9346	805	96
9347	805	34
9348	805	164
9349	805	37
9350	805	169
9351	805	44
9352	805	79
9353	805	47
9354	805	83
9355	805	60
9356	806	96
9357	806	34
9358	806	164
9359	806	37
9360	806	169
9361	806	44
9362	806	79
9363	806	47
9364	806	60
9365	807	96
9366	807	34
9367	807	37
9368	807	7
9369	807	169
9370	807	44
9371	807	79
9372	807	48
9373	807	83
9374	807	52
9375	807	53
9376	807	60
9377	808	96
9378	808	162
9379	808	34
9380	808	164
9381	808	37
9382	808	169
9383	808	44
9384	808	79
9385	808	48
9386	808	83
9387	808	52
9388	808	53
9389	808	60
9390	809	96
9391	809	37
9392	809	169
9393	809	11
9394	809	79
9395	809	48
9396	739	174
9397	740	174
9398	748	165
9399	810	128
9400	810	165
9401	810	11
9402	810	47
9403	810	17
9404	810	82
9405	810	179
9406	810	52
9407	810	53
9408	810	61
9409	810	181
9410	811	128
9411	811	165
9412	811	11
9413	811	47
9414	811	79
9415	811	17
9416	811	82
9417	811	179
9418	811	52
9419	811	53
9420	811	22
9421	811	181
9422	811	61
9423	812	128
9424	812	165
9425	812	11
9426	812	47
9427	812	79
9428	812	17
9429	812	82
9430	812	179
9431	812	52
9432	812	53
9433	812	22
9434	812	181
9435	812	61
9436	813	128
9437	813	165
9438	813	11
9439	813	47
9440	813	79
9441	813	17
9442	813	82
9443	813	179
9444	813	52
9445	813	53
9446	813	22
9448	813	61
9449	814	128
9450	814	165
9451	814	11
9452	814	47
9453	814	79
9454	814	17
9455	814	82
9456	814	179
9457	814	52
9458	814	53
9459	814	22
9461	814	61
9462	814	169
9463	814	37
9464	815	128
9465	815	165
9466	815	11
9467	815	47
9468	815	79
9469	815	17
9470	815	82
9471	815	179
9472	815	52
9473	815	53
9475	815	61
9476	816	128
9477	816	165
9479	816	11
9480	816	47
9481	816	79
9482	816	17
9483	816	82
9484	816	179
9485	816	52
9486	816	53
9487	816	22
9489	816	61
9490	813	164
9491	814	164
9492	815	164
9493	816	164
9494	817	128
9495	817	164
9496	817	165
9497	817	11
9498	817	47
9499	817	79
9500	817	17
9501	817	82
9502	817	179
9503	817	52
9504	817	53
9505	817	61
9506	818	128
9507	818	164
9508	818	165
9509	818	38
9510	818	11
9511	818	47
9512	818	79
9513	818	17
9514	818	82
9515	818	179
9516	818	52
9517	818	53
9518	810	38
9519	811	38
9520	812	38
9521	813	38
9522	814	38
9523	815	38
9524	816	38
9525	817	38
9526	819	128
9527	819	165
9528	819	38
9529	819	11
9530	819	47
9531	819	79
9532	819	17
9533	819	82
9534	819	179
9535	819	52
9536	819	53
9537	819	181
9538	820	164
9539	820	165
9540	820	38
9541	820	11
9542	820	47
9543	820	79
9544	820	17
9545	820	82
9546	820	179
9547	820	52
9548	820	53
9549	820	61
9550	820	169
9551	820	37
9552	821	100
9553	821	37
9554	821	165
9555	821	38
9556	821	164
9557	821	169
9558	821	11
9559	821	47
9560	821	79
9561	821	17
9562	821	179
9563	821	52
9564	821	53
9565	821	22
9566	821	61
9567	822	37
9568	822	165
9569	822	38
9570	822	169
9571	822	11
9572	822	47
9573	822	79
9574	822	17
9575	822	82
9576	822	179
9577	822	52
9578	822	53
9579	822	181
9580	822	61
9581	823	165
9582	823	38
9583	823	11
9584	823	47
9585	823	79
9586	823	17
9587	823	82
9588	823	179
9589	823	52
9590	823	53
9591	823	181
9592	823	61
9593	824	165
9594	824	38
9595	824	11
9596	824	47
9597	824	79
9598	824	17
9599	824	82
9600	824	179
9601	824	52
9602	824	53
9603	824	181
9604	824	61
9605	825	165
9606	825	38
9607	825	11
9608	825	47
9609	825	79
9610	825	17
9611	825	82
9612	825	179
9613	825	52
9614	825	53
9615	825	181
9616	825	61
9617	826	165
9618	826	38
9619	826	11
9620	826	47
9621	826	79
9622	826	17
9623	826	82
9624	826	179
9625	826	52
9626	826	53
9627	826	61
9628	827	37
9629	827	165
9630	827	38
9631	827	169
9632	827	11
9633	827	47
9634	827	79
9635	827	17
9636	827	82
9637	827	179
9638	827	52
9639	827	53
9640	827	22
9641	827	61
9642	828	165
9643	828	38
9644	828	11
9645	828	47
9646	828	79
9647	828	17
9648	828	82
9649	828	179
9650	828	52
9651	828	53
9652	828	22
9653	828	181
9654	828	61
9655	829	37
9656	829	165
9657	829	38
9658	829	169
9659	829	11
9660	829	47
9661	829	79
9662	829	17
9663	829	82
9664	829	179
9665	829	52
9666	829	53
9667	829	181
9668	829	61
9669	830	37
9670	830	165
9671	830	38
9672	830	169
9673	830	11
9674	830	47
9675	830	79
9676	830	17
9677	830	82
9678	830	179
9679	830	52
9680	830	53
9681	830	22
9682	830	61
9683	831	99
9684	831	165
9685	831	38
9686	831	11
9687	831	47
9688	831	79
9689	831	17
9690	831	179
9691	831	52
9692	831	53
9693	831	181
9694	831	61
9695	832	37
9696	832	165
9697	832	38
9698	832	169
9699	832	11
9700	832	47
9701	832	79
9702	832	17
9703	832	82
9704	832	179
9705	832	52
9706	832	53
9707	832	22
9708	832	61
9709	833	165
9710	833	38
9711	833	11
9712	833	47
9713	833	79
9714	833	17
9715	833	82
9716	833	179
9717	833	52
9718	833	53
9719	833	181
9720	833	61
9721	834	165
9722	834	38
9723	834	11
9724	834	47
9725	834	79
9726	834	17
9727	834	82
9728	834	179
9729	834	52
9730	834	53
9731	834	61
9732	835	165
9733	835	38
9734	835	11
9735	835	47
9736	835	79
9737	835	17
9738	835	82
9739	835	179
9740	835	52
9741	835	53
9742	835	22
9743	835	61
9744	836	165
9745	836	38
9746	836	11
9747	836	47
9748	836	79
9749	836	17
9750	836	82
9751	836	179
9752	836	52
9753	836	53
9754	836	181
9755	836	61
9756	837	165
9757	837	38
9758	837	11
9759	837	47
9760	837	79
9761	837	17
9762	837	82
9763	837	179
9764	837	52
9765	837	53
9766	837	22
9767	837	181
9768	837	61
9769	838	37
9770	838	165
9771	838	38
9772	838	169
9773	838	11
9774	838	47
9775	838	79
9776	838	17
9777	838	82
9778	838	179
9779	838	52
9780	838	53
9781	838	22
9782	838	61
9783	839	165
9784	839	38
9785	839	11
9786	839	47
9787	839	79
9788	839	17
9789	839	82
9790	839	179
9791	839	52
9792	839	53
9793	839	61
9794	840	165
9795	840	38
9796	840	11
9797	840	47
9798	840	79
9799	840	17
9800	840	82
9801	840	179
9802	840	52
9803	840	53
9804	840	181
9805	840	61
9806	841	37
9807	841	165
9808	841	38
9809	841	169
9810	841	11
9811	841	47
9812	841	79
9813	841	17
9814	841	82
9815	841	179
9816	841	52
9817	841	53
9818	841	22
9819	841	61
9820	842	37
9821	842	165
9822	842	38
9823	842	169
9824	842	11
9825	842	47
9826	842	79
9827	842	17
9828	842	82
9829	842	179
9830	842	52
9831	842	53
9832	842	22
9833	842	61
9834	843	164
9835	843	37
9836	843	165
9837	843	169
9838	843	11
9839	843	47
9840	843	79
9841	843	17
9842	843	82
9843	843	179
9844	843	52
9845	843	53
9846	843	61
9847	844	165
9848	844	38
9849	844	11
9850	844	47
9851	844	79
9852	844	17
9853	844	82
9854	844	179
9855	844	52
9856	844	53
9857	844	61
9858	845	165
9859	845	38
9860	845	11
9861	845	47
9862	845	79
9863	845	17
9864	845	82
9865	845	179
9866	845	52
9867	845	53
9868	845	61
9869	846	37
9870	846	165
9871	846	38
9872	846	169
9873	846	11
9874	846	47
9875	846	79
9876	846	17
9877	846	82
9878	846	179
9879	846	52
9880	846	53
9881	846	83
9882	846	61
9883	847	165
9884	847	38
9885	847	11
9886	847	47
9887	847	79
9888	847	17
9889	847	82
9890	847	179
9891	847	52
9892	847	53
9893	847	61
9894	848	37
9895	848	165
9896	848	38
9897	848	11
9898	848	47
9899	848	79
9900	848	17
9901	848	82
9902	848	179
9903	848	52
9904	848	53
9905	848	61
9906	849	165
9907	849	38
9908	849	11
9909	849	47
9910	849	79
9911	849	17
9912	849	82
9913	849	179
9914	849	52
9915	849	53
9916	849	61
9917	850	165
9918	850	38
9919	850	11
9920	850	47
9921	850	79
9922	850	17
9923	850	82
9924	850	179
9925	850	52
9926	850	53
9927	850	61
9928	851	98
9929	851	165
9930	851	70
9931	851	71
9932	851	7
9933	851	47
9934	851	15
9935	851	17
9936	851	18
9937	851	53
9938	851	22
9939	852	129
9940	852	98
9941	852	37
9942	852	70
9943	852	165
9944	852	7
9945	852	169
9946	852	11
9947	852	47
9948	852	15
9949	852	17
9950	852	83
9951	852	53
9952	852	22
9953	853	129
9954	853	98
9955	853	165
9956	853	70
9957	853	7
9958	853	11
9959	853	47
9960	853	15
9961	853	17
9962	853	52
9963	853	53
9964	853	22
9965	854	128
9966	854	129
9967	854	165
9968	854	70
9969	854	71
9970	854	38
9971	854	171
9972	854	11
9973	854	79
9974	854	48
9975	854	15
9976	854	82
9977	854	52
9978	854	22
9979	854	61
9980	855	128
9981	855	129
9982	855	99
9983	855	165
9984	855	70
9985	855	7
9986	855	11
9987	855	47
9988	855	79
9989	855	17
9990	855	52
9991	855	22
9992	855	152
9993	855	61
9994	856	128
9995	856	129
9996	856	99
9997	856	165
9998	856	70
9999	856	71
10000	856	38
10001	856	11
10002	856	47
10003	856	79
10004	856	52
10005	856	22
10006	856	153
10007	856	61
10008	856	63
10009	857	128
10010	857	99
10011	857	165
10012	857	38
10013	857	71
10014	857	7
10015	857	11
10016	857	79
10017	857	49
10018	857	17
10019	857	148
10020	857	52
10021	857	84
10022	857	22
10023	857	61
10024	857	63
10025	858	128
10026	858	129
10027	858	98
10028	858	165
10029	858	70
10030	858	7
10031	858	38
10032	858	11
10033	858	47
10034	858	79
10035	858	17
10036	858	148
10037	858	52
10038	858	22
10039	858	61
10040	859	128
10041	859	129
10042	859	98
10043	859	165
10044	859	70
10045	859	7
10046	859	11
10047	859	47
10048	859	79
10049	859	17
10050	859	148
10051	859	52
10052	859	22
10053	859	61
10054	860	128
10055	860	129
10056	860	98
10057	860	165
10058	860	70
10059	860	7
10060	860	38
10061	860	11
10062	860	47
10063	860	79
10064	860	17
10065	860	148
10066	860	52
10067	860	22
10068	860	61
10069	861	128
10070	861	129
10071	861	98
10072	861	165
10073	861	70
10074	861	7
10075	861	38
10076	861	11
10077	861	47
10078	861	79
10079	861	17
10080	861	148
10081	861	52
10082	861	22
10083	861	61
10084	636	132
10085	327	150
10086	259	183
10087	862	34
10088	862	37
10089	862	7
10090	862	168
10091	862	169
10092	862	44
10093	862	48
10094	862	83
10095	862	52
10096	862	22
10097	862	60
10098	863	34
10099	863	37
10100	863	7
10101	863	168
10102	863	169
10103	863	44
10104	863	48
10105	863	83
10106	863	52
10107	863	22
10108	863	60
10109	864	34
10110	864	37
10111	864	7
10112	864	168
10113	864	169
10114	864	44
10115	864	48
10116	864	83
10117	864	52
10118	864	22
10119	864	60
10120	865	34
10121	865	37
10122	865	7
10123	865	168
10124	865	169
10125	865	44
10126	865	47
10127	865	83
10128	865	52
10129	865	22
10130	865	60
10131	866	34
10132	866	37
10133	866	7
10134	866	168
10135	866	169
10136	866	44
10137	866	47
10138	866	83
10139	866	52
10140	866	22
10141	866	60
10142	867	34
10143	867	37
10144	867	7
10145	867	168
10146	867	169
10147	867	44
10148	867	47
10149	867	83
10150	867	52
10151	867	22
10152	867	60
10153	868	34
10154	868	37
10155	868	7
10156	868	168
10157	868	169
10158	868	44
10159	868	47
10160	868	83
10161	868	52
10162	868	22
10163	868	60
10164	869	34
10165	869	37
10166	869	135
10167	869	168
10168	869	169
10169	869	7
10170	869	44
10171	869	48
10172	869	83
10173	869	52
10174	869	22
10175	869	60
10176	870	34
10177	870	37
10178	870	135
10179	870	168
10180	870	169
10181	870	7
10182	870	44
10183	870	48
10184	870	83
10185	870	52
10186	870	22
10187	870	60
10188	868	135
10189	867	135
10190	866	135
10191	865	135
10192	864	135
10193	863	135
10194	862	135
10195	872	129
10196	872	165
10197	872	38
10198	872	71
10199	872	11
10200	872	79
10201	872	47
10202	872	82
10203	872	52
10204	872	61
10205	872	63
10206	873	129
10207	873	37
10208	873	38
10209	873	71
10210	873	168
10211	873	169
10212	873	11
10213	873	44
10214	873	47
10215	873	79
10216	873	82
10217	873	83
10218	873	52
10219	873	22
10220	873	60
10221	873	63
10222	874	33
10223	874	129
10224	874	37
10225	874	70
10226	874	71
10227	874	38
10228	874	169
10229	874	11
10230	874	47
10231	874	79
10232	874	17
10233	874	82
10234	874	83
10235	874	52
10236	874	15
10237	874	22
10238	874	61
10239	874	63
10240	875	33
10241	875	129
10242	875	11
10243	875	79
10244	875	47
10245	875	15
10246	875	82
10247	875	52
10248	875	22
10249	875	61
10250	876	33
10251	876	129
10252	876	7
10253	876	11
10254	876	79
10255	876	47
10256	876	82
10257	876	52
10258	876	22
10259	876	61
10260	877	33
10261	877	129
10262	877	7
10263	877	11
10264	877	79
10265	877	47
10266	877	15
10267	877	82
10268	877	52
10269	877	61
10270	878	33
10271	878	129
10272	878	7
10273	878	11
10274	878	79
10275	878	47
10276	878	82
10277	878	52
10278	878	61
10279	879	33
10280	879	129
10281	879	7
10282	879	11
10283	879	79
10284	879	47
10285	879	82
10286	879	52
10287	879	61
10288	880	33
10289	880	129
10290	880	7
10291	880	11
10292	880	79
10293	880	47
10294	880	82
10295	880	52
10296	880	22
10297	880	61
10298	881	33
10299	881	129
10300	881	7
10301	881	11
10302	881	79
10303	881	47
10304	881	82
10305	881	52
10306	881	61
10307	882	33
10308	882	129
10309	882	7
10310	882	11
10311	882	79
10312	882	47
10313	882	82
10314	882	52
10315	882	61
10316	883	33
10317	883	129
10318	883	7
10319	883	11
10320	883	79
10321	883	47
10322	883	82
10323	883	52
10324	883	61
10325	884	33
10326	884	129
10327	884	7
10328	884	11
10329	884	79
10330	884	47
10331	884	82
10332	884	52
10333	884	61
10335	885	129
10336	885	99
10337	885	165
10338	885	70
10339	885	11
10340	885	47
10341	885	79
10342	885	52
10343	885	53
10344	885	22
10345	885	63
10346	886	128
10347	886	129
10348	886	100
10349	886	165
10350	886	71
10351	886	11
10352	886	79
10353	886	48
10354	886	52
10355	886	22
10356	886	59
10357	886	61
10358	886	63
10359	887	128
10360	887	100
10361	887	165
10362	887	164
10363	887	11
10364	887	79
10365	887	48
10366	888	100
10367	888	165
10368	888	70
10369	888	7
10370	888	11
10371	888	79
10372	888	48
10373	888	52
10374	888	61
10375	889	128
10376	889	100
10377	889	37
10378	889	165
10379	889	164
10380	889	169
10381	889	79
10382	889	47
10383	889	18
10384	891	129
10385	891	100
10386	891	70
10387	891	7
10388	891	9
10389	891	11
10390	891	79
10391	891	48
10392	891	17
10393	891	52
10394	891	53
10395	891	22
10396	892	129
10397	892	100
10398	892	70
10399	892	7
10400	892	9
10401	892	11
10402	892	79
10403	892	48
10404	892	17
10405	892	148
10406	892	52
10407	892	53
10408	892	22
10409	893	129
10410	893	100
10411	893	37
10412	893	70
10413	893	7
10414	893	169
10415	893	9
10416	893	11
10417	893	79
10418	893	48
10419	893	17
10420	893	83
10421	893	148
10422	893	52
10423	893	53
10424	893	22
10425	894	129
10426	894	100
10427	894	37
10428	894	70
10429	894	7
10430	894	169
10431	894	9
10432	894	11
10433	894	79
10434	894	49
10435	894	17
10436	894	83
10437	894	148
10438	894	52
10439	894	53
10440	894	22
10441	895	129
10442	895	100
10443	895	37
10444	895	70
10445	895	7
10446	895	169
10447	895	9
10448	895	11
10449	895	47
10450	895	79
10451	895	17
10452	895	83
10453	895	148
10454	895	52
10455	895	53
10456	895	22
10457	896	33
10458	896	129
10459	896	100
10460	896	37
10461	896	70
10462	896	7
10463	896	169
10464	896	11
10465	896	79
10466	896	48
10467	896	17
10468	896	83
10469	896	148
10470	896	52
10471	896	53
10472	896	22
10473	897	33
10474	897	129
10475	897	100
10476	897	37
10477	897	70
10478	897	164
10479	897	168
10480	897	169
10481	897	11
10482	897	79
10483	897	48
10484	897	17
10485	897	83
10486	897	148
10487	897	52
10488	897	53
10489	897	22
10490	897	63
10491	893	158
10492	636	158
10493	508	158
10494	513	158
10495	526	158
10496	528	158
10497	529	158
10498	530	158
10499	531	158
10500	536	158
10501	899	129
10502	899	99
10503	899	165
10504	899	70
10505	899	71
10506	899	11
10507	899	47
10508	899	79
10509	899	148
10510	899	52
10511	899	22
10512	899	27
10513	899	61
10514	899	63
10515	900	99
10516	900	165
10517	900	38
10518	900	71
10519	900	11
10520	900	79
10521	900	49
10522	900	17
10523	900	148
10524	900	52
10525	900	84
10526	900	22
10527	900	61
10528	900	63
10529	901	129
10530	901	100
10531	901	165
10532	901	70
10533	901	7
10534	901	38
10535	901	11
10536	901	47
10537	901	175
10538	901	79
10539	901	52
10540	901	53
10541	901	22
10542	901	27
10543	901	61
10544	902	129
10545	902	100
10546	902	165
10547	902	38
10548	902	7
10549	902	11
10550	902	47
10551	902	175
10552	902	79
10553	902	52
10554	902	53
10555	902	22
10556	902	61
10557	903	185
10558	903	99
10559	903	165
10560	903	70
10561	903	7
10562	903	38
10563	903	11
10564	903	79
10565	903	48
10566	903	17
10567	903	61
10568	903	148
10569	903	52
10570	903	22
10571	903	153
10572	903	154
10573	903	157
10574	904	34
10575	904	37
10576	904	135
10577	904	168
10578	904	169
10579	904	7
10580	904	44
10581	904	48
10582	904	52
10583	904	53
10584	904	22
10585	904	60
10586	905	34
10587	905	37
10588	905	135
10589	905	168
10590	905	169
10591	905	7
10592	905	44
10593	905	48
10594	905	83
10595	905	52
10596	905	53
10597	905	22
10598	905	60
10599	885	43
\.


--
-- Data for Name: maps_person; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_person (id, created_date, modified_date, name, info, person_location_id, date_begin, date_end, gnd_id) FROM stdin;
13	2017-09-04 15:55:49.251828+02	2017-09-04 15:55:49.251866+02	H. Weigl		\N	\N	\N	\N
16	2017-09-12 14:21:09.429263+02	2017-09-12 14:21:09.429291+02	O.A.Isbert		\N	\N	\N	\N
20	2018-02-07 12:37:45.909457+01	2018-02-07 12:37:45.909503+01	Dr. C. Wolf u. Sohn		2	\N	\N	\N
35	2018-10-04 15:13:46.7917+02	2019-03-15 12:21:41.937945+01	Trimmel, Hubert	Hubert Trimmel contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
23	2018-10-01 10:23:31.336602+02	2019-03-15 12:22:08.776969+01	Hassinger, Hugo	Hugo Hassinger contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
28	2018-10-04 11:20:54.501073+02	2019-03-15 12:15:14.469891+01	Klaar, Adalbert	Adalbert Klaar contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
8	2017-08-25 11:06:11.933374+02	2019-03-15 12:16:22.347601+01	Oberschall, Albin		\N	\N	\N	\N
3	2017-08-25 10:34:30.759657+02	2019-03-15 12:16:35.661257+01	Pfalz, Anton		\N	\N	\N	\N
21	2018-09-05 14:21:11.861485+02	2019-03-15 12:16:51.374543+01	Ziegfeld, Arnold Hillen		\N	\N	\N	\N
4	2017-08-25 10:34:56.957149+02	2019-03-15 12:17:29.062353+01	Weiland, Carl Ferdinand		\N	\N	\N	\N
18	2018-01-23 16:44:10.17641+01	2019-03-15 12:17:41.997071+01	Hackl, Claudia		4	\N	\N	\N
15	2017-09-11 15:44:04.655779+02	2019-03-15 12:18:02.091488+01	Eichhorn, Otto		\N	\N	\N	\N
6	2017-08-25 10:36:19.165928+02	2019-03-15 12:18:14.582523+01	Kranzmayer, Eberhard	Eberhard Kranzmayer war ein österreichischer Sprachwissenschaftler, Dialektologe und Namenforscher.	\N	1897-05-15	1975-09-13	118715488
22	2018-10-01 10:18:09.046862+02	2019-03-15 12:18:30.23051+01	Arnberger, Erika	Erik Arnberger contributed to the work on the Atlas von Niederösterreich.	\N	\N	\N	\N
36	2018-10-04 15:14:38.086313+02	2019-03-15 12:18:48.967186+01	Weber, Erika	Erika Weber contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
7	2017-08-25 11:06:03.157894+02	2019-03-15 12:19:02.265534+01	Winkler, Erwin		\N	\N	\N	\N
31	2018-10-04 12:48:42.634556+02	2019-03-15 12:19:25.030221+01	Steinhauser, Ferdinand	Ferdinand Steinhauser contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
9	2017-08-31 11:50:13.091569+02	2019-03-15 12:19:39.354455+01	Wrede, Ferdinand		3	\N	\N	\N
33	2018-10-04 13:04:51.126689+02	2019-03-15 12:20:27.703556+01	Werneck, Heinrich L.	Heinrich L. Werneck contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
26	2018-10-02 13:47:59.308428+02	2019-03-15 12:20:42.395617+01	Bona, Helmut	Helmut Bona contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
24	2018-10-01 11:45:42.749215+02	2019-03-15 12:20:56.826234+01	Rosenkranz, Friedrich	Friedrich Rosenkranz contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
34	2018-10-04 15:00:29.148943+02	2019-03-15 12:21:14.915911+01	Mitscha-Märheim, Herbert	Herbert Mitscha-Mährheim contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
30	2018-10-04 12:02:32.528814+02	2019-03-15 12:21:29.610926+01	Firnberg, Hertha	Hertha Firnberg contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
19	2018-01-23 16:44:37.806278+01	2019-03-15 12:22:29.717108+01	Zimmermann, Jan David		4	\N	\N	\N
14	2017-09-05 11:02:11.328204+02	2019-03-15 12:22:46.378823+01	Zimmermann, Johann Anton		\N	\N	\N	\N
37	2018-11-12 16:41:26.767039+01	2019-03-15 12:23:07.275684+01	Hawranek, Karl	Karl Hawranek contributed to the work on the Atlas von Niederösterreich.	\N	\N	\N	\N
27	2018-10-02 14:19:36.268858+02	2019-03-15 12:23:22.64118+01	Lechner, Karl	Karl Lechner contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
17	2018-01-23 16:43:37.880378+01	2019-03-15 12:23:38.449168+01	Wagner, Klemens		4	\N	\N	\N
38	2018-11-12 16:42:08.267153+01	2019-03-15 12:23:51.468735+01	Wiche, Konrad	Konrad Wiche contributed to the work on the Atlas von Niederösterreich.	\N	\N	\N	\N
25	2018-10-01 14:19:08.935797+02	2019-03-15 12:24:04.501085+01	Brunbauer, Kurt	Kurt Brunbauer contributed to the work on the Atlas von Niederösterreich.	\N	\N	\N	\N
29	2018-10-04 11:43:40.792613+02	2019-03-15 12:24:26.404205+01	Rutschka, Ludwig Siegfrid	Ludwig Siegrif Rutschka contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
12	2017-09-04 15:52:23.43058+02	2019-03-15 12:24:43.068459+01	Wutte, Martin		\N	\N	\N	\N
10	2017-09-04 11:15:15.582682+02	2019-03-15 12:24:57.286337+01	Anich, Peter		\N	\N	\N	\N
5	2017-08-25 10:36:08.818108+02	2019-03-15 12:25:09.727136+01	Wiesinger, Peter		\N	\N	\N	120278944
32	2018-10-04 12:51:50.073826+02	2019-03-15 12:25:39.976583+01	Kühnelt, Wilhelm	Wilhelm Kühnelt contributed to the work on the Atlas von Niederösterreich.	4	\N	\N	\N
11	2017-09-04 13:42:46.183344+02	2019-03-15 12:26:30.69937+01	von Hüttenbach, F. Frh. Lochner		\N	\N	\N	\N
39	2019-05-10 12:01:42.895416+02	2019-05-10 12:01:42.895451+02	Winkler, Wilhelm		4	\N	\N	\N
\.


--
-- Data for Name: maps_person_person_institutes; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_person_person_institutes (id, person_id, institute_id) FROM stdin;
1	17	2
2	18	2
3	19	2
\.


--
-- Data for Name: maps_person_person_type; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_person_person_type (id, person_id, type_id) FROM stdin;
1	3	26
3	10	26
4	14	26
5	15	26
6	6	26
7	6	90
8	17	90
9	17	26
10	18	25
11	18	90
12	19	90
13	19	26
14	21	26
15	22	26
16	23	26
17	24	26
18	26	26
19	27	26
20	28	26
21	29	26
22	30	25
23	31	26
24	32	26
25	33	26
26	34	26
27	35	26
28	36	25
\.


--
-- Data for Name: maps_place; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_place (id, created_date, modified_date, name, info, modern_name, geonames_id) FROM stdin;
3	2017-08-31 11:50:22.58271+02	2018-04-11 12:16:48.701009+02	Marburg			2873759
2	2017-08-30 15:11:25.211532+02	2018-04-12 13:09:41.737282+02	München			2867714
4	2017-09-04 11:18:57.517677+02	2018-06-20 10:23:46.859104+02	Wien			2761369
6	2018-06-26 11:03:42.740928+02	2018-06-26 11:03:42.740954+02	Berlin			2950159
\.


--
-- Data for Name: maps_place_place_type; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_place_place_type (id, place_id, type_id) FROM stdin;
1	4	41
2	2	41
\.


--
-- Data for Name: maps_reference; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_reference (id, created_date, modified_date, name, info, super_id) FROM stdin;
18	2018-04-17 10:55:48.778036+02	2018-05-15 10:30:22.961676+02	I. Entwürfe außerhalb der Lieferungen		25
19	2018-04-17 14:08:42.698428+02	2018-05-15 10:30:34.005356+02	III. Entwürfe für reingezeichnete Karten der Lieferungen		25
20	2018-04-19 12:46:55.546765+02	2018-05-15 10:30:40.857075+02	IX. Vierte Lieferung (In Vorbereitung)		25
21	2018-04-23 12:30:57.060478+02	2018-05-15 10:30:48.024027+02	V. Beiblätter für den Atlastext		25
22	2018-05-04 15:52:31.779125+02	2018-05-15 10:30:56.457406+02	VIII. Dritte Lieferung (In Vorbereitung)		25
23	2018-05-07 12:42:18.974513+02	2018-05-15 10:31:03.550796+02	VII. II.Lieferung (In Vorbereitung)		25
26	2018-05-15 16:17:02.625481+02	2018-05-15 16:17:02.625508+02	Kleine Karten Kranzmayer		25
27	2018-05-18 15:25:02.874944+02	2018-05-18 15:47:49.06366+02	IV. Gedruckte Karten der Lieferungen		25
28	2018-05-23 16:05:21.455108+02	2018-05-23 16:05:21.455134+02	General- und Spezialkarten Mappe I		25
29	2018-06-12 12:44:38.07125+02	2018-06-12 12:44:38.071274+02	Karten außerhalb der Lieferungen		25
30	2018-06-13 12:52:18.583105+02	2018-06-13 12:52:23.913092+02	IX. Ötztaler Arbeit		25
31	2018-06-14 12:55:22.404482+02	2018-06-14 12:55:22.404513+02	Schwarze Mappe diverse		\N
34	2018-09-10 14:32:36.125567+02	2018-09-10 15:06:44.594604+02	Synonymenkarten		\N
35	2018-09-10 16:22:31.58201+02	2018-09-10 16:22:31.582039+02	Synonymenkarten 2		\N
37	2018-09-13 15:44:11.521823+02	2018-09-13 15:44:11.521849+02	Hellgraue Mappe		\N
44	2018-11-26 11:51:59.819114+01	2018-11-26 11:51:59.819143+01	Karten in grauem Heft		\N
45	2019-01-04 12:53:42.886675+01	2019-01-04 12:53:42.886705+01	Transparentkarten-Rolle		\N
47	2019-01-04 12:54:14.785412+01	2019-01-04 12:54:14.785605+01	Lautlehre		\N
48	2019-03-25 12:01:12.553002+01	2019-03-25 14:31:24.634257+01	Karten zu Bessarabien	Die Scans, auf denen zwei Karten vorhanden sind, wurden folgendermaßen behandelt:\r\nDie Informationen im Map-Datenbankeintrag beziehen sich auf das gesamte Blatt, also beide Karten. Zur besseren Ansicht wurden die betroffenen Scans auch geteilt und die einzelnen Bestandteile jeweils extra hochgeladen.\r\nEs gibt also je Mapeintrag drei Scans: Den gesamten Scan plus die beiden darauf enthaltenen Karten jeweils einzeln.	\N
49	2019-03-28 10:32:11.937849+01	2019-03-28 10:32:11.937908+01	Verzeichnis der Karten des Sprachatlasses		\N
41	2018-10-23 14:00:56.650839+02	2019-10-11 13:02:24.705649+02	DAÖ Kommentar zur ersten Lieferung	Unter dieser Referenz findet sich ein umfangreicher textlicher Kommentar Kranzmayers zu der ersten Lieferung seines projektierten Atlaswerkes. Dabei geht er im Detail auf die sprachlichen (lexikalischen, lautlichen, etc.) Phänomene (und deren sprachhistorischen Hintergrund) ein, die in seinen diversen Kartenbildern zur Darstellung kommen.	25
39	2018-10-22 12:34:07.744481+02	2019-10-11 12:56:02.123533+02	Bearbeitungszustand der Kartenbilder für die erste Lieferung	Diese Archivalie zeigt in Heftform einen von Eberhard Kranzmayer zusammengestellten Bearbeitungszustand der Kartenbilder für die projektierte erste Lieferung seines Atlaswerkes. KollegInnen und Bearbeiter der Kartenblätter tauchen dabei ebenso auf wie Kartennummer, Inhalt der Karte und die Information, ob es sich dabei um einen bloßen Entwurf, oder bereits um einen Probedruck handelt.	25
40	2018-10-22 12:44:48.600788+02	2019-10-11 13:26:05.971038+02	Diverse	Hierbei handelt es sich um ein Konvolut an Karten hauptsächlich zur heutigen Slowakei bzw. Tschechien, wobei insbesondere eine Karte besonders hervorsticht: nämlich die "Volksbodenkarte der Slowakei nach dem Stand von 1930 mit besonderer Berücksichtigung des Deutschtums", herausgegeben von Deutschen Ausland-Institut (DAI). Diese Karte aus dem Jahr 1940 kann als suggestive Karte im Sinne des Paradigmas der Volks- und Kulturbodenforschung bezeichnet werden und trägt den Dateinamen Diverse_0304.\r\nAndere Karten aus diesem Set beschäftigen sich (sprach-)statistisch mit dem Thema, so wie  die "Nationalitätenkarte der Sudetenländer" (Dateiname: Diverse_0910) von Erwin Winkler aus dem Jahr 1936.	\N
36	2018-09-11 14:44:21.096086+02	2019-10-14 12:04:53.207502+02	Diverse Lade 14	In diesem Konvolut finden sich weitgehend Karten, die sich lexematisch und phonetisch-phonologisch mit linguistischen Phänomenen auseinandersetzen. Es handelt sich dabei hauptsächlich um Karten, die für die Wörterbucharbeit verwendet wurden oder mit Wörterbucharbeit(en) für das Bayerisch-Österreichische Wörterbuch (später Wörterbuch der bairischen Mundarten - WBÖ genannt) zu tun haben. Vereinzelt finden sich auch Karten zu linguistischen Phänomenen aus dem Slawischen sowie Karten aus Kranzmayers Dialektatlas (DAÖ). Da diese Karten jedoch nicht in den Sets zu den Lieferungen (vgl. Super DAÖ) zu finden waren und daher eine spätere Nachnutzung in anderen Kontexten nicht ausgeschlossen werden kann, wurde eine klare Zuordnung zum DAÖ in diesen Fällen nicht vorgenommen.	\N
46	2019-01-04 12:54:00.075769+01	2019-11-05 16:18:27.269548+01	Königreich Böhmen	Unter dieser Referenz findet sich nur eine Karte, die gleichzeitig die älteste vorgefundene Originalkarte aus dem Bestand ist. Es handelt sich um "Das Königreich Böhmen" aus dem Jahr 1838, entworfen und gezeichnet von dem Kartograph Carl Ferdinand Weiland. Die Karte wurde vom Verlag des geographischen Instituts in Weimar herausgegeben.	\N
32	2018-08-30 09:57:51.279472+02	2019-11-05 16:27:56.324517+01	Zu Mappe I Tirol 33-44	Diverse z.T. onomastische und sprachhistorische Karten zu Tirol.	\N
42	2018-10-23 14:25:13.819295+02	2019-11-05 16:39:44.413724+01	Zu Mappe I Kärnten 25-32, 47	Diverse z.T. onomastische und sprachhistorische Karten zu Kärnten.	\N
33	2018-09-05 14:29:38.443619+02	2019-10-14 12:31:30.358813+02	Suggestive Karten Kärnten	Bei diesem Set von Karten handelt es sich ausschließlich um Fotokopien im selben Format und sie wurden aus folgendem Grund unter dem Begriff "Suggestive Karten Kärnten" zusammengefasst: Fast alle dieser Karten besitzen einen klaren Kärnten-Bezug, wobei dabei die sprachliche Situation und das "Grenzlanddeutschtum" beziehungsweise die (politisch-territorial-sprachlichen) Grenzgebiete Slowenien/Kärnten/Italien eine besondere Rolle einnehmen. \r\nInsbesondere die politisch höchst umstrittene Frage nach dem "Deutschtum" und dem "Windischen" im Kontext der sogeannnten Kärntner Wissenschaft und ihrer Protagonisten (Z.B. Martin Wutte) kommt dabei wiederholt als Thema auf. Mit an Sicherheit grenzender Wahrscheinlichkeit kann man davon ausgehen, dass diese Karten aufgrund ihrer thematischen Ausrichtung aus Beständen des "Instituts für Kärntner Landesforschung" stammen, welches der Dialektologe Eberhard Kranzmayer ab 1942 leitete. Dieses Institut war als Unterabteilung des SS-Ahnenerbes besonders im Sinne völkischer Wissenschaft ausgerichtet und wurde im  Zuge der Annexion Jugoslawiens und aggressiver NS-Umsiedlungspolitik installiert.	\N
38	2018-09-19 15:57:23.475651+02	2019-10-16 14:16:19.453504+02	Materialien zum Atlas von Niederösterreich	In diesem Set finden sich sowohl die fertig gedruckten Atlasblätter des 1951 publizierten "Atlas von Niederösterreich", als auch Entwürfe, die sich z.B. in ortsnamenkundlicher Weise mit dem niederösterreichischen Raum beschäftigen.\r\nDer Atlas von Niederösterreich wurde bereits in den 1920er jahren konzipiert, firmierte dann im Nationalsozialismus unter dem Namen "Gauatlas Niederdonau", konnte aber erst nach 1945 wieder bearbeitet und schließlich Anfang der 1950er Jahre veröffentlicht werden.\r\nHerausgeber des Atlas waren die Geographen Hugo Hassinger und Erik Arnberger im Rahmen der Kommission für Raumforschung und Wiederaufbau der ÖAW.\r\nDa der "Gauatlas Niederdonau" als wissenschaftliche Gemeinschaftsforschung konzipiert war und unter Fritz Bodo und Hugo Hassinger noch 1941 der sogenannte Burgenlandatlas unter Mitwirkung einiger Volkskundler und Linguisten veröffentlicht wurde, zu einer Zeit also, als das Burgenland bereits auf die NS-Gaue Niederdonau und Steiermark aufgeteilt wurde, ist die Verbindung zum Burgenlandatlas nicht unwesentlich. (Vgl. Petra Svatek: "Der Burgenlandatlas": Ein interdisziplinäres Atlasprojekt zwischen Erster Republik und NS-Zeit. Interdisziplinarität - Methodik - Politischer Konnex. In: Burgenländische Heimatblätter 71/2 (2009), S. 120-133.	\N
25	2018-05-15 10:30:12.181311+02	2019-10-16 14:44:09.503028+02	DAÖ	Unter der Referenz DAÖ finden sich alle (kartographischen) Materialien, die mit Eberhard Kranzmayers "Dialektatlas Österreichs und seiner Nachbarländer", kurz: DAÖ genannt, zu tun haben. Dieser Atlas wurde von den 1920er Jahren bis in die 1970er Jahre produziert, jedoch niemals veröffentlicht. Allerdings wurden in den späten 1930er Jahren und in den 1940er Jahren, also in jener Zeit des "Anschlusses" und zu Kriegszeiten, Probedruckserien angefertigt, ebenso wie später erneut in den 1970er Jahren.\r\nDer Atlas hatte die bairischen Dialekte zum Gegenstand und kann als Komplementärwerk zum "Bayerisch-Österreichischen Wörterbuch (später: Wörterbuch der bairischen Mundarten in Österreich" - WBÖ) gesehen werden. Zu betonen ist, dass der historische Kontext der Produktion des Atlaswerkes unbedingt berücksichtigt werden muss: Nicht nur firmierte der Atlas unter verschiedenen Namen, die die Bezeichnung Österreichs aus politischen Gründen vermieden, insbesondere die Involvierung Kranzmayers (und viele seiner Kollegen) in den Nationalsozialismus verdeutlicht die Notwendigkeit einer kritischen Betrachtung der Materialbasis auf der Kranzmayers Kartenwerk basiert sowie eine generelle Reflexion über die sprachgeographisch-kartographischen Praxen völkischer Wissenschaften.\r\nDer Atlas sollte in Form mehrerer Lieferungen publiziert werden, was auch die Sub-Kategorien der DAÖ-Referenz verdeutlichen: Sie beziehen sich auf die verschiedene Sets von DAÖ-Karten, die unter diesen diversen Lieferungen subsummiert waren.\r\nWeitere Details zu Kranzmayers Atlas finden sich auf dieser Homepage auf der About-Seite unter dem Punkt "Zur Auswahl der Sprachkarten der Diauma-Datenbank" werden aber insbesondere in der Dissertation von Jan David Zimmermann zu lesen sein. Letztere befindet sich derzeit in der Fertigstellung.	\N
\.


--
-- Data for Name: maps_reference_reference_type; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_reference_reference_type (id, reference_id, type_id) FROM stdin;
1	18	142
2	19	143
\.


--
-- Data for Name: maps_scan; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_scan (id, created_date, modified_date, name, file, info, scan_date) FROM stdin;
80	2018-03-21 15:01:54.317503+01	2018-07-03 13:05:38.766377+02	I.Entwürfe ausserhalb der Lieferungen_0002	scan/I.EntwrfeAuerhalbDerLieferungen_0002.tif		\N
83	2018-03-21 15:03:20.644125+01	2018-07-03 15:33:18.475543+02	I.Entwürfe ausserhalb der Lieferungen_0005	scan/I.EntwrfeAuerhalbDerLieferungen_0005.tif		\N
82	2018-03-21 15:03:00.12206+01	2018-07-03 13:07:01.135895+02	I.Entwürfe ausserhalb der Lieferungen_0004	scan/I.EntwrfeAuerhalbDerLieferungen_0004.tif		\N
84	2018-03-21 15:03:44.760642+01	2018-07-03 15:33:32.526903+02	I.Entwürfe ausserhalb der Lieferungen_0006	scan/I.EntwrfeAuerhalbDerLieferungen_0006.tif		\N
44	2018-01-23 16:12:56.071349+01	2018-07-09 13:12:41.952625+02	Karten außerhalb der Lieferungen_0003	scan/KartenAusserhalbDerLieferungen_0003.tif		\N
85	2018-03-21 15:04:13.967787+01	2018-07-03 13:21:54.927594+02	I.Entwürfe ausserhalb der Lieferungen_0007	scan/I.EntwrfeAuerhalbDerLieferungen_0007.tif		\N
87	2018-03-21 16:06:32.791719+01	2018-07-03 13:22:56.626523+02	I.Entwürfe ausserhalb der Lieferungen_0009	scan/I.EntwrfeAuerhalbDerLieferungen_0009.tif		\N
86	2018-03-21 16:04:46.730095+01	2018-07-03 13:22:32.89275+02	I.Entwürfe ausserhalb der Lieferungen_0008	scan/I.EntwrfeAuerhalbDerLieferungen_0008.tif		\N
88	2018-03-21 16:08:27.30171+01	2018-07-03 13:23:15.73978+02	I.Entwürfe ausserhalb der Lieferungen_0010	scan/I.EntwrfeAuerhalbDerLieferungen_0010.tif		\N
89	2018-03-21 16:10:01.716718+01	2018-07-03 13:23:42.947286+02	I.Entwürfe ausserhalb der Lieferungen_0011	scan/I.EntwrfeAuerhalbDerLieferungen_0011.tif		\N
93	2018-03-21 16:16:44.200301+01	2018-07-03 13:25:41.897927+02	I.Entwürfe ausserhalb der Lieferungen_0015	scan/I.EntwrfeAuerhalbDerLieferungen_0015.tif		\N
90	2018-03-21 16:11:20.446312+01	2018-07-03 13:24:23.944068+02	I.Entwürfe ausserhalb der Lieferungen_0012	scan/I.EntwrfeAuerhalbDerLieferungen_0012.tif		\N
91	2018-03-21 16:13:03.355806+01	2018-07-03 13:25:00.143877+02	I.Entwürfe ausserhalb der Lieferungen_0013	scan/I.EntwrfeAuerhalbDerLieferungen_0013.tif		\N
92	2018-03-21 16:14:52.417984+01	2018-07-03 13:25:27.05262+02	I.Entwürfe ausserhalb der Lieferungen_0014	scan/I.EntwrfeAuerhalbDerLieferungen_0014.tif		\N
94	2018-03-21 16:19:56.169083+01	2018-07-03 13:26:00.092638+02	I.Entwürfe ausserhalb der Lieferungen_0016	scan/I.EntwrfeAuerhalbDerLieferungen_0016.tif		\N
95	2018-03-21 16:21:17.659172+01	2018-07-03 13:26:27.780375+02	I.Entwürfe ausserhalb der Lieferungen_0017	scan/I.EntwrfeAuerhalbDerLieferungen_0017.tif		\N
96	2018-03-21 16:22:56.055026+01	2018-07-03 13:26:47.592108+02	I.Entwürfe ausserhalb der Lieferungen_0018	scan/I.EntwrfeAuerhalbDerLieferungen_0018.tif		\N
97	2018-03-21 16:24:57.105805+01	2018-07-03 13:27:16.314983+02	I.Entwürfe ausserhalb der Lieferungen_0019	scan/I.EntwrfeAuerhalbDerLieferungen_0019.tif		\N
102	2018-03-22 12:53:32.280246+01	2019-04-08 10:40:58.334778+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0002	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0002.tif		\N
100	2018-03-22 12:19:46.817598+01	2018-07-03 13:31:54.189273+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0001	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0001.tif		\N
81	2018-03-21 15:02:12.9201+01	2018-07-03 15:32:57.212526+02	I.Entwürfe ausserhalb der Lieferungen_0003	scan/I.EntwrfeAuerhalbDerLieferungen_0003.tif		\N
103	2018-03-22 13:40:41.919974+01	2018-07-03 15:37:41.717541+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0003	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0003.tif		\N
104	2018-03-22 13:45:03.400547+01	2018-07-04 15:53:51.549719+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0005	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0005.tif		\N
46	2018-02-07 11:38:36.936242+01	2018-07-09 13:13:40.609196+02	Karten außerhalb der Lieferungen_0005	scan/KartenAusserhalbDerLieferungen_0005.tif		\N
49	2018-02-07 11:59:09.728613+01	2018-07-09 13:15:34.483221+02	Karten außerhalb der Lieferungen_0008	scan/KartenAusserhalbDerLieferungen_0008.tif		\N
47	2018-02-07 11:49:06.962412+01	2018-07-09 13:14:59.660473+02	Karten außerhalb der Lieferungen_0006	scan/KartenAusserhalbDerLieferungen_0006.tif		\N
54	2018-02-07 12:47:57.263913+01	2018-07-09 13:17:48.711743+02	Karten außerhalb der Lieferungen_0013	scan/KartenAusserhalbDerLieferungen_0013.tif		\N
55	2018-02-07 12:59:07.552788+01	2018-07-09 13:18:34.278394+02	Karten außerhalb der Lieferungen_0014	scan/KartenAusserhalbDerLieferungen_0014.tif		\N
56	2018-02-07 13:04:38.661404+01	2018-07-09 13:19:27.265138+02	Karten außerhalb der Lieferungen_0015	scan/KartenAusserhalbDerLieferungen_0015.tif		\N
64	2018-03-19 11:34:44.364677+01	2018-07-09 13:19:46.958547+02	Karten außerhalb der Lieferungen_0016	scan/KartenAuerhalbDerLieferungen_0016.tif		\N
65	2018-03-19 11:43:15.828444+01	2018-07-09 13:20:02.606986+02	Karten außerhalb der Lieferungen_0017	scan/KartenAuerhalbDerLieferungen_0017.tif		\N
66	2018-03-19 12:14:46.569199+01	2018-07-09 13:20:25.5027+02	Karten außerhalb der Lieferungen_0018	scan/KartenAuerhalbDerLieferungen_0018.tif		\N
67	2018-03-19 12:19:29.913357+01	2018-07-09 13:20:54.446637+02	Karten außerhalb der Lieferungen_0019	scan/KartenAuerhalbDerLieferungen_0019.tif		\N
68	2018-03-19 12:31:36.099115+01	2018-07-09 13:21:42.198083+02	Karten außerhalb der Lieferungen_0020	scan/KartenAuerhalbDerLieferungen_0020.tif		\N
69	2018-03-19 12:35:58.345892+01	2018-07-09 13:23:59.92717+02	Karten außerhalb der Lieferungen_0021	scan/KartenAuerhalbDerLieferungen_0021.tif		\N
70	2018-03-19 12:42:36.511237+01	2018-07-09 13:24:51.412954+02	Karten außerhalb der Lieferungen_0022	scan/KartenAuerhalbDerLieferungen_0022.tif		\N
73	2018-03-19 12:54:50.837251+01	2018-07-09 13:26:28.22673+02	Karten außerhalb der Lieferungen_0025	scan/KartenAuerhalbDerLieferungen_0025.tif		\N
72	2018-03-19 12:51:19.567658+01	2018-07-09 13:25:57.890673+02	Karten außerhalb der Lieferungen_0024	scan/KartenAuerhalbDerLieferungen_0024.tif		\N
71	2018-03-19 12:45:58.239377+01	2018-07-09 13:26:14.246604+02	Karten außerhalb der Lieferungen_0023	scan/KartenAuerhalbDerLieferungen_0023.tif		\N
75	2018-03-19 13:06:01.350538+01	2018-07-09 13:29:59.145808+02	Karten außerhalb der Lieferungen_0027	scan/KartenAuerhalbDerLieferungen_0027.tif		\N
74	2018-03-19 13:00:05.466131+01	2018-07-09 13:29:45.666154+02	Karten außerhalb der Lieferungen_0026	scan/KartenAuerhalbDerLieferungen_0026.tif		\N
76	2018-03-19 13:11:51.396878+01	2018-07-09 13:30:15.597808+02	Karten außerhalb der Lieferungen_0028	scan/KartenAuerhalbDerLieferungen_0028.tif		\N
98	2018-03-21 16:26:26.195056+01	2019-04-08 10:38:32.484899+02	I.Entwürfe ausserhalb der Lieferungen_0020	scan/I.EntwrfeAuerhalbDerLieferungen_0020.tif		\N
121	2018-03-22 15:38:05.279852+01	2019-04-01 12:53:34.341544+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0025	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0025.tif		\N
107	2018-03-22 14:05:51.4811+01	2018-07-04 15:54:20.503053+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0008	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0008.tif		\N
108	2018-03-22 14:13:50.430284+01	2018-07-04 15:54:54.553877+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0009	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0009.tif		\N
109	2018-03-22 14:20:26.48393+01	2018-07-04 16:00:18.736953+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0010	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0010.tif		\N
111	2018-03-22 14:29:13.785041+01	2018-07-04 16:01:48.17768+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0014	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0014.tif		\N
112	2018-03-22 14:36:41.379562+01	2018-07-04 16:08:38.902235+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0015	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0015.tif		\N
118	2018-03-22 15:17:05.50681+01	2018-07-04 16:10:18.251975+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0021	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0021.tif		\N
116	2018-03-22 15:12:05.169044+01	2018-07-04 16:09:28.341699+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0019	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0019.tif		\N
117	2018-03-22 15:15:38.392101+01	2018-07-04 16:09:44.893548+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0020	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0020.tif		\N
685	2018-09-12 13:31:58.623598+02	2019-04-05 13:16:00.380045+02	DiverseLade14_0065	scan/DiverseLade14_0065.tif		\N
114	2018-03-22 14:46:25.225978+01	2018-07-04 16:10:02.558858+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0017	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0017.tif		\N
119	2018-03-22 15:19:25.570706+01	2018-07-04 16:16:42.101026+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0022	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0022.tif		\N
120	2018-03-22 15:34:04.121052+01	2018-07-04 16:17:11.22161+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0023	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0016_gHBqBqk.tif		\N
122	2018-03-22 15:39:35.375036+01	2018-07-04 16:18:47.413301+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0026	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0026.tif		\N
115	2018-03-22 15:09:22.58618+01	2019-04-08 10:40:48.913379+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0018	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0018.tif		\N
124	2018-03-22 15:53:25.432893+01	2018-07-04 16:19:13.67189+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0028	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0028.tif		\N
129	2018-03-22 16:11:35.858612+01	2018-07-04 16:23:55.974477+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0033	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0033.tif		\N
125	2018-03-22 15:54:59.739348+01	2018-07-04 16:21:09.892579+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0029	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0029.tif		\N
126	2018-03-22 15:59:28.628823+01	2018-07-04 16:21:41.144921+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0030	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0030.tif		\N
127	2018-03-22 16:01:09.309145+01	2018-07-04 16:22:24.097624+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0031	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0031.tif		\N
128	2018-03-22 16:03:48.803234+01	2018-07-04 16:23:42.151951+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0032	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0032.tif		\N
130	2018-03-22 16:15:56.512615+01	2018-07-04 16:24:18.191031+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0034	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0034.tif		\N
132	2018-03-22 16:20:03.918861+01	2018-07-04 16:25:06.06522+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0036	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0036.tif		\N
131	2018-03-22 16:18:25.012522+01	2018-07-04 16:24:51.970154+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0035	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0035.tif		\N
133	2018-03-22 16:22:55.242101+01	2018-07-04 16:25:22.152035+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0037	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0037.tif		\N
136	2018-03-22 16:29:03.958423+01	2018-07-04 16:29:37.757614+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0041	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0041.tif		\N
134	2018-03-22 16:24:09.937363+01	2018-07-04 16:26:29.750566+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0038	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0038.tif		\N
150	2018-04-04 12:00:29.30607+02	2018-07-05 16:01:10.918893+02	IX.Oetztaler Arbeit_0000	scan/IX.OetztalerArbeit_0000.tif		\N
135	2018-03-22 16:25:33.832156+01	2018-07-04 16:56:20.479862+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0039	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0039.tif		\N
149	2018-03-27 13:36:49.381191+02	2018-07-05 16:01:27.89928+02	IX.Oetztaler Arbeit_0001	scan/IX.OetztalerArbeit_0001_without_colorprofile.tif		\N
152	2018-04-04 12:03:35.781982+02	2018-07-05 16:02:16.322335+02	IX.Oetztaler Arbeit_0003	scan/IX.OetztalerArbeit_0003.tif		\N
151	2018-04-04 12:02:02.056183+02	2018-07-05 16:02:00.619255+02	IX.Oetztaler Arbeit_0002	scan/IX.OetztalerArbeit_0002.tif		\N
153	2018-04-04 12:05:46.515032+02	2018-07-05 16:02:35.550885+02	IX.Oetztaler Arbeit_0004	scan/IX.OetztalerArbeit_0004.tif		\N
154	2018-04-04 12:06:18.399013+02	2018-07-05 16:02:55.428984+02	IX.Oetztaler Arbeit_0005	scan/IX.OetztalerArbeit_0005.tif		\N
155	2018-04-04 12:06:55.302194+02	2018-07-05 16:03:12.692546+02	IX.Oetztaler Arbeit_0006	scan/IX.OetztalerArbeit_0006.tif		\N
186	2018-04-19 13:29:52.95362+02	2018-07-09 12:58:40.12821+02	IX.Vierte Lieferung (In Vorbereitung)_0010	scan/IX.VierteLieferungInVorbereitung_0010.tif		\N
185	2018-04-19 13:28:33.618551+02	2018-07-09 12:58:10.478548+02	IX.Vierte Lieferung (In Vorbereitung)_0009	scan/IX.VierteLieferungInVorbereitung_0009.tif		\N
187	2018-04-19 13:32:46.309207+02	2018-07-09 12:59:20.820292+02	IX.Vierte Lieferung (In Vorbereitung)_0011	scan/IX.VierteLieferungInVorbereitung_0011.tif		\N
188	2018-04-19 13:35:27.492519+02	2018-07-09 13:05:12.385662+02	IX.Vierte Lieferung (In Vorbereitung)_0012	scan/IX.VierteLieferungInVorbereitung_0012.tif		\N
189	2018-04-19 13:37:54.483691+02	2018-07-09 13:05:30.146954+02	IX.Vierte Lieferung (In Vorbereitung)_0013	scan/IX.VierteLieferungInVorbereitung_0013.tif		\N
190	2018-04-19 13:39:17.007282+02	2018-07-09 13:06:01.575327+02	IX.Vierte Lieferung (In Vorbereitung)_0014	scan/IX.VierteLieferungInVorbereitung_0014.tif		\N
192	2018-04-19 13:42:52.882778+02	2018-07-09 13:06:57.862614+02	IX.Vierte Lieferung (In Vorbereitung)_0016	scan/IX.VierteLieferungInVorbereitung_0016.tif		\N
191	2018-04-19 13:41:14.632027+02	2018-07-09 13:06:39.273414+02	IX.Vierte Lieferung (In Vorbereitung)_0015	scan/IX.VierteLieferungInVorbereitung_0015.tif		\N
106	2018-03-22 13:55:09.066212+01	2019-04-01 12:52:43.936102+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0007	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0007.tif		\N
159	2018-04-04 12:09:13.130235+02	2018-07-05 16:17:24.398498+02	IX.Oetztaler Arbeit_0009	scan/IX.OetztalerArbeit_0009.tif		\N
158	2018-04-04 12:08:38.506381+02	2018-07-05 16:16:57.423856+02	IX.Oetztaler Arbeit_0008	scan/IX.OetztalerArbeit_0008.tif		\N
160	2018-04-04 12:10:12.45417+02	2018-07-05 16:18:00.700918+02	IX.Oetztaler Arbeit_0010	scan/IX.OetztalerArbeit_0010_ynlLVQY.tif		\N
161	2018-04-04 12:12:18.58919+02	2018-07-05 16:18:15.181718+02	IX.Oetztaler Arbeit_0011	scan/IX.OetztalerArbeit_0011.tif		\N
162	2018-04-04 12:15:21.501842+02	2018-07-05 16:18:30.403724+02	IX.Oetztaler Arbeit_0012	scan/IX.OetztalerArbeit_0012.tif		\N
163	2018-04-04 12:19:05.446701+02	2018-07-05 16:18:47.152044+02	IX.Oetztaler Arbeit_0013	scan/IX.OetztalerArbeit_0013.tif		\N
164	2018-04-04 12:20:14.908663+02	2018-07-05 16:19:03.030952+02	IX.Oetztaler Arbeit_0014	scan/IX.OetztalerArbeit_0014.tif		\N
165	2018-04-04 12:22:01.554718+02	2018-07-05 16:19:21.13087+02	IX.Oetztaler Arbeit_0015	scan/IX.OetztalerArbeit_0015.tif		\N
166	2018-04-04 12:23:24.456804+02	2018-07-05 16:19:34.780965+02	IX.Oetztaler Arbeit_0016	scan/IX.OetztalerArbeit_0016.tif		\N
167	2018-04-04 12:24:44.30161+02	2018-07-05 16:19:50.0053+02	IX.Oetztaler Arbeit_0017	scan/IX.OetztalerArbeit_0017.tif		\N
168	2018-04-04 12:26:47.095336+02	2018-07-05 16:20:03.850538+02	IX.Oetztaler Arbeit_0018	scan/IX.OetztalerArbeit_0018.tif		\N
169	2018-04-04 12:27:54.258223+02	2018-07-05 16:20:18.411943+02	IX.Oetztaler Arbeit_0019	scan/IX.OetztalerArbeit_0019.tif		\N
177	2018-04-19 12:55:00.496446+02	2018-07-09 12:36:27.23035+02	IX.Vierte Lieferung (In Vorbereitung)_0001	scan/IX.VierteLieferungInVorbereitung_0001.tif		\N
179	2018-04-19 13:01:55.84767+02	2018-07-09 12:41:25.803744+02	IX.Vierte Lieferung (In Vorbereitung)_0003	scan/IX.VierteLieferungInVorbereitung_0003.tif		\N
178	2018-04-19 12:57:43.675948+02	2018-07-09 12:40:52.408888+02	IX.Vierte Lieferung (In Vorbereitung)_0002	scan/IX.VierteLieferungInVorbereitung_0002.tif		\N
180	2018-04-19 13:04:52.799604+02	2018-07-09 12:42:19.787531+02	IX.Vierte Lieferung (In Vorbereitung)_0004	scan/IX.VierteLieferungInVorbereitung_0004.tif		\N
181	2018-04-19 13:09:45.37021+02	2018-07-09 12:42:38.629836+02	IX.Vierte Lieferung (In Vorbereitung)_0005	scan/IX.VierteLieferungInVorbereitung_0005.tif		\N
182	2018-04-19 13:16:29.927114+02	2018-07-09 12:52:54.225283+02	IX.Vierte Lieferung (In Vorbereitung)_0006	scan/IX.VierteLieferungInVorbereitung_0006.tif		\N
183	2018-04-19 13:19:47.69544+02	2018-07-09 12:53:12.987621+02	IX.Vierte Lieferung (In Vorbereitung)_0007	scan/IX.VierteLieferungInVorbereitung_0007.tif		\N
369	2018-05-29 13:32:09.431513+02	2018-07-09 14:57:21.68188+02	Kleine Karten Kranzmayer_0039	scan/Kleine_Karten_Kranzmayer_0039.tif		\N
184	2018-04-19 13:26:51.422246+02	2018-07-09 12:53:36.786617+02	IX.Vierte Lieferung (In Vorbereitung)_0008	scan/IX.VierteLieferungInVorbereitung_0008.tif		\N
193	2018-04-19 13:44:47.708436+02	2018-07-09 13:07:18.958943+02	IX.Vierte Lieferung (In Vorbereitung)_0017	scan/IX.VierteLieferungInVorbereitung_0017.tif		\N
194	2018-04-19 13:46:15.917129+02	2018-07-09 13:07:39.135452+02	IX.Vierte Lieferung (In Vorbereitung)_0018	scan/IX.VierteLieferungInVorbereitung_0018.tif		\N
195	2018-04-19 13:47:39.467873+02	2018-07-09 13:07:58.076629+02	IX.Vierte Lieferung (In Vorbereitung)_0019	scan/IX.VierteLieferungInVorbereitung_0019.tif		\N
196	2018-04-19 13:48:28.124308+02	2018-07-09 13:08:34.965147+02	IX.Vierte Lieferung (In Vorbereitung)_0020	scan/IX.VierteLieferungInVorbereitung_0020.tif		\N
171	2018-04-04 13:47:37.218038+02	2018-07-09 13:31:12.030669+02	Karten außerhalb der Lieferungen_0031	scan/KartenAuerhalbDerLieferungen_0031.tif		\N
172	2018-04-04 13:51:58.177461+02	2018-07-09 13:31:40.802639+02	Karten außerhalb der Lieferungen_0032	scan/KartenAuerhalbDerLieferungen_0032.tif		\N
204	2018-04-23 14:08:22.497385+02	2019-04-08 12:36:59.483168+02	V.Beiblaetter Fuer Den Atlastext_0008	scan/V.BeiblaetterFuerDenAtlastext_0008.tif		\N
197	2018-04-23 12:34:45.879009+02	2018-07-10 14:10:53.86729+02	V.Beiblaetter Fuer Den Atlastext_0000	scan/V.BeiblaetterFuerDenAtlastext_0000_6yC7q2Z.tif		\N
198	2018-04-23 12:36:51.604335+02	2018-07-10 14:18:10.873089+02	V.Beiblaetter Fuer Den Atlastext_0001	scan/V.BeiblaetterFuerDenAtlastext_0001.tif		\N
199	2018-04-23 12:38:30.078393+02	2018-07-10 14:17:53.02933+02	V.Beiblaetter Fuer Den Atlastext_0002	scan/V.BeiblaetterFuerDenAtlastext_0002.tif		\N
200	2018-04-23 12:40:50.787373+02	2018-07-10 14:18:44.266524+02	V.Beiblaetter Fuer Den Atlastext_0003	scan/V.BeiblaetterFuerDenAtlastext_0003.tif		\N
202	2018-04-23 14:04:03.420913+02	2018-07-10 14:22:35.258189+02	V.Beiblaetter Fuer Den Atlastext_0006	scan/V.BeiblaetterFuerDenAtlastext_0006.tif		\N
201	2018-04-23 12:42:22.353607+02	2018-07-10 14:20:22.072177+02	V.Beiblaetter Fuer Den Atlastext_0004	scan/V.BeiblaetterFuerDenAtlastext_0004.tif		\N
203	2018-04-23 14:05:39.332812+02	2018-07-10 14:23:12.586408+02	V.Beiblaetter Fuer Den Atlastext_0007	scan/V.BeiblaetterFuerDenAtlastext_0007.tif		\N
206	2018-04-23 14:11:36.631704+02	2018-07-10 14:33:25.538487+02	V.Beiblaetter Fuer Den Atlastext_0010	scan/V.BeiblaetterFuerDenAtlastext_0010.tif		\N
205	2018-04-23 14:10:02.781671+02	2018-07-10 14:25:37.788508+02	V.Beiblaetter Fuer Den Atlastext_0009	scan/V.BeiblaetterFuerDenAtlastext_0009.tif		\N
207	2018-05-04 14:31:35.860136+02	2018-07-10 14:34:08.153023+02	V.Beiblaetter Fuer Den Atlastext_0011	scan/V.BeiblaetterFuerDenAtlastext_0011.tif		\N
209	2018-05-04 14:43:54.448951+02	2018-07-10 14:36:05.825373+02	V.Beiblaetter Fuer Den Atlastext_0013	scan/V.BeiblaetterFuerDenAtlastext_0013.tif		\N
208	2018-05-04 14:36:09.513282+02	2018-07-10 14:35:17.503305+02	V.Beiblaetter Fuer Den Atlastext_0012	scan/V.BeiblaetterFuerDenAtlastext_0012.tif		\N
210	2018-05-04 14:49:12.641503+02	2018-07-10 14:36:43.891243+02	V.Beiblaetter Fuer Den Atlastext_0014	scan/V.BeiblaetterFuerDenAtlastext_0014.tif		\N
211	2018-05-04 14:53:02.268119+02	2018-07-10 14:37:12.218316+02	V.Beiblaetter Fuer Den Atlastext_0015	scan/V.BeiblaetterFuerDenAtlastext_0015.tif		\N
213	2018-05-04 15:06:54.938962+02	2018-07-10 14:38:15.53549+02	V.Beiblaetter Fuer Den Atlastext_0017	scan/V.BeiblaetterFuerDenAtlastext_0017.tif		\N
214	2018-05-04 15:11:13.462942+02	2018-07-10 14:38:34.895847+02	V.Beiblaetter Fuer Den Atlastext_0018	scan/V.BeiblaetterFuerDenAtlastext_0018.tif		\N
215	2018-05-04 15:27:03.178649+02	2018-07-10 14:39:31.057733+02	V.Beiblaetter Fuer Den Atlastext_0020	scan/V.BeiblaetterFuerDenAtlastext_0020.tif		\N
216	2018-05-04 15:29:21.471884+02	2018-07-10 14:40:20.58028+02	V.Beiblaetter Fuer Den Atlastext_0021	scan/V.BeiblaetterFuerDenAtlastext_0021.tif		\N
217	2018-05-04 15:30:33.834487+02	2018-07-10 14:41:09.765685+02	V.Beiblaetter Fuer Den Atlastext_0022	scan/V.BeiblaetterFuerDenAtlastext_0022.tif		\N
218	2018-05-04 15:31:17.579048+02	2018-07-10 14:41:53.475264+02	V.Beiblaetter Fuer Den Atlastext_0023	scan/V.BeiblaetterFuerDenAtlastext_0023.tif		\N
219	2018-05-07 11:54:32.51025+02	2018-07-10 15:12:53.864393+02	VIII.Dritte Lieferung (In Vorbereitung)_0000	scan/VIII.DritteLieferungInVorbereitung_0000.tif		\N
220	2018-05-07 11:56:15.693056+02	2018-07-10 15:14:40.499832+02	VIII.Dritte Lieferung (In Vorbereitung)_0001	scan/VIII.DritteLieferungInVorbereitung_0001.tif		\N
221	2018-05-07 11:59:55.620337+02	2018-07-10 15:15:26.527959+02	VIII.Dritte Lieferung (In Vorbereitung)_0002	scan/VIII.DritteLieferungInVorbereitung_0002.tif		\N
223	2018-05-07 12:05:10.269009+02	2018-07-10 15:16:42.125414+02	VIII.Dritte Lieferung (In Vorbereitung)_0004	scan/VIII.DritteLieferungInVorbereitung_0004.tif		\N
222	2018-05-07 12:03:39.628045+02	2018-07-10 15:16:20.005514+02	VIII.Dritte Lieferung (In Vorbereitung)_0003	scan/VIII.DritteLieferungInVorbereitung_0003.tif		\N
224	2018-05-07 12:07:06.841436+02	2018-07-10 15:26:54.950273+02	VIII.Dritte Lieferung (In Vorbereitung)_0005	scan/VIII.DritteLieferungInVorbereitung_0005.tif		\N
225	2018-05-07 12:09:28.144823+02	2018-07-10 15:27:52.213402+02	VIII.Dritte Lieferung (In Vorbereitung)_0006	scan/VIII.DritteLieferungInVorbereitung_0006.tif		\N
173	2018-04-04 13:56:29.056678+02	2019-04-08 10:44:21.272677+02	Karten außerhalb der Lieferungen_0034	scan/KartenAuerhalbDerLieferungen_0034.tif		\N
271	2018-05-16 14:33:52.898565+02	2018-07-09 14:02:46.403824+02	Kleine Karten Kranzmayer_0002	scan/Kleine_Karten_Kranzmayer_0002.tif		\N
272	2018-05-16 14:36:55.227888+02	2018-07-09 14:05:09.153521+02	Kleine Karten Kranzmayer_0003	scan/Kleine_Karten_Kranzmayer_0003.tif		\N
273	2018-05-16 14:38:07.456507+02	2018-07-09 14:05:54.118888+02	Kleine Karten Kranzmayer_0004	scan/Kleine_Karten_Kranzmayer_0004.tif		\N
274	2018-05-16 14:41:52.280853+02	2018-07-09 14:06:47.964861+02	Kleine Karten Kranzmayer_0005	scan/Kleine_Karten_Kranzmayer_0005.tif		\N
275	2018-05-16 14:43:58.418054+02	2018-07-09 14:07:31.670898+02	Kleine Karten Kranzmayer_0006	scan/Kleine_Karten_Kranzmayer_0006.tif		\N
276	2018-05-16 14:45:41.414137+02	2018-07-09 14:10:59.006246+02	Kleine Karten Kranzmayer_0007	scan/Kleine_Karten_Kranzmayer_0007.tif		\N
278	2018-05-16 14:50:25.744539+02	2018-07-09 14:13:59.821673+02	Kleine Karten Kranzmayer_0009	scan/Kleine_Karten_Kranzmayer_0009.tif		\N
277	2018-05-16 14:47:50.839253+02	2018-07-09 14:13:26.604961+02	Kleine Karten Kranzmayer_0008	scan/Kleine_Karten_Kranzmayer_0008.tif		\N
279	2018-05-16 15:39:13.854482+02	2018-07-09 14:14:47.02677+02	Kleine Karten Kranzmayer_0010	scan/Kleine_Karten_Kranzmayer_0010.tif		\N
282	2018-05-16 15:44:27.532502+02	2018-07-09 14:18:43.509753+02	Kleine Karten Kranzmayer_0013	scan/Kleine_Karten_Kranzmayer_0013.tif		\N
281	2018-05-16 15:42:47.616269+02	2018-07-09 14:18:22.002395+02	Kleine Karten Kranzmayer_0012	scan/Kleine_Karten_Kranzmayer_0012.tif		\N
284	2018-05-16 15:50:33.240968+02	2018-07-09 14:20:08.248712+02	Kleine Karten Kranzmayer_0015	scan/Kleine_Karten_Kranzmayer_0015.tif		\N
283	2018-05-16 15:45:41.744588+02	2018-07-09 14:19:45.264974+02	Kleine Karten Kranzmayer_0014	scan/Kleine_Karten_Kranzmayer_0014.tif		\N
227	2018-05-07 12:13:00.000341+02	2018-07-10 15:28:37.460235+02	VIII.Dritte Lieferung (In Vorbereitung)_0008	scan/VIII.DritteLieferungInVorbereitung_0008.tif		\N
248	2018-05-07 14:30:59.796676+02	2018-07-10 16:04:03.795158+02	VII.II.Lieferung (In Vorbereitung)_0009	scan/VII.II.LieferungInVorbereitung_0009.tif		\N
229	2018-05-07 12:17:55.963691+02	2018-07-10 15:29:46.887889+02	VIII.Dritte Lieferung (In Vorbereitung)_0010	scan/VIII.DritteLieferungInVorbereitung_0010.tif		\N
230	2018-05-07 12:19:37.133864+02	2018-07-10 15:30:33.487715+02	VIII.Dritte Lieferung (In Vorbereitung)_0011	scan/VIII.DritteLieferungInVorbereitung_0011.tif		\N
231	2018-05-07 12:21:39.333015+02	2018-07-10 15:31:05.324361+02	VIII.Dritte Lieferung (In Vorbereitung)_0012	scan/VIII.DritteLieferungInVorbereitung_0012.tif		\N
232	2018-05-07 12:25:10.620131+02	2018-07-10 15:31:43.672783+02	VIII.Dritte Lieferung (In Vorbereitung)_0013	scan/VIII.DritteLieferungInVorbereitung_0013.tif		\N
234	2018-05-07 12:29:06.428043+02	2018-07-10 15:34:00.547637+02	VIII.Dritte Lieferung (In Vorbereitung)_0015	scan/VIII.DritteLieferungInVorbereitung_0015.tif		\N
233	2018-05-07 12:27:08.711285+02	2018-07-10 15:33:10.423898+02	VIII.Dritte Lieferung (In Vorbereitung)_0014	scan/VIII.DritteLieferungInVorbereitung_0014.tif		\N
237	2018-05-07 12:35:21.334949+02	2018-07-10 15:51:31.240611+02	VIII.Dritte Lieferung (In Vorbereitung)_0019	scan/VIII.DritteLieferungInVorbereitung_0019.tif		\N
235	2018-05-07 12:30:58.190139+02	2018-07-10 15:49:37.976178+02	VIII.Dritte Lieferung (In Vorbereitung)_0016	scan/VIII.DritteLieferungInVorbereitung_0016.tif		\N
226	2018-05-07 12:11:14.729528+02	2019-04-08 12:41:42.355673+02	VIII.Dritte Lieferung (In Vorbereitung)_0007	scan/VIII.DritteLieferungInVorbereitung_0007.tif		\N
238	2018-05-07 12:36:50.237078+02	2018-07-10 15:55:04.953328+02	VIII.Dritte Lieferung (In Vorbereitung)_0020	scan/VIII.DritteLieferungInVorbereitung_0020.tif		\N
239	2018-05-07 12:37:50.497085+02	2018-07-10 15:55:34.34063+02	VIII.Dritte Lieferung (In Vorbereitung)_0021	scan/VIII.DritteLieferungInVorbereitung_0021.tif		\N
240	2018-05-07 13:44:03.074424+02	2018-07-10 15:59:15.925387+02	VII.II.Lieferung (In Vorbereitung)_0001	scan/VII.II.LieferungInVorbereitung_0001.tif		\N
241	2018-05-07 13:52:35.492299+02	2018-07-10 15:59:45.833149+02	VII.II.Lieferung (In Vorbereitung)_0002	scan/VII.II.LieferungInVorbereitung_0002.tif		\N
242	2018-05-07 14:06:03.298705+02	2018-07-10 16:00:16.86412+02	VII.II.Lieferung (In Vorbereitung)_0003	scan/VII.II.LieferungInVorbereitung_0003.tif		\N
243	2018-05-07 14:09:51.149238+02	2018-07-10 16:00:46.405021+02	VII.II.Lieferung (In Vorbereitung)_0004	scan/VII.II.LieferungInVorbereitung_0004.tif		\N
244	2018-05-07 14:12:43.641997+02	2018-07-10 16:01:12.544102+02	VII.II.Lieferung (In Vorbereitung)_0005	scan/VII.II.LieferungInVorbereitung_0005.tif		\N
245	2018-05-07 14:15:06.154284+02	2018-07-10 16:01:41.154726+02	VII.II.Lieferung (In Vorbereitung)_0006	scan/VII.II.LieferungInVorbereitung_0006.tif		\N
247	2018-05-07 14:29:08.226311+02	2018-07-10 16:03:15.197495+02	VII.II.Lieferung (In Vorbereitung)_0008	scan/VII.II.LieferungInVorbereitung_0008.tif		\N
246	2018-05-07 14:18:11.61625+02	2018-07-10 16:02:47.699915+02	VII.II.Lieferung (In Vorbereitung)_0007	scan/VII.II.LieferungInVorbereitung_0007.tif		\N
250	2018-05-07 14:38:32.926962+02	2018-07-10 16:05:32.982266+02	VII.II.Lieferung (In Vorbereitung)_0011	scan/VII.II.LieferungInVorbereitung_0011.tif		\N
249	2018-05-07 14:35:48.348405+02	2018-07-10 16:05:11.548975+02	VII.II.Lieferung (In Vorbereitung)_0010	scan/VII.II.LieferungInVorbereitung_0010.tif		\N
252	2018-05-07 14:48:34.7553+02	2018-07-10 16:07:47.47041+02	VII.II.Lieferung (In Vorbereitung)_0013	scan/VII.II.LieferungInVorbereitung_0013.tif		\N
253	2018-05-07 14:50:13.927249+02	2018-07-10 16:08:11.283367+02	VII.II.Lieferung (In Vorbereitung)_0014	scan/VII.II.LieferungInVorbereitung_0014.tif		\N
251	2018-05-07 14:43:45.240124+02	2018-07-10 16:07:33.747165+02	VII.II.Lieferung (In Vorbereitung)_0012	scan/VII.II.LieferungInVorbereitung_0012.tif		\N
255	2018-05-15 11:37:45.517355+02	2018-07-10 16:14:36.365169+02	VII.II.Lieferung (In Vorbereitung)_0017	scan/VII.II.LieferungInVorbereitung_0017.tif		\N
254	2018-05-07 14:54:13.13027+02	2018-07-10 16:14:10.712116+02	VII.II.Lieferung (In Vorbereitung)_0016	scan/VII.II.LieferungInVorbereitung_0016.tif		\N
256	2018-05-15 12:25:37.471203+02	2018-07-10 16:15:43.680472+02	VII.II.Lieferung (In Vorbereitung)_0018	scan/VII.II.LieferungInVorbereitung_0018.tif		\N
257	2018-05-15 12:27:36.120332+02	2018-07-10 16:28:17.344085+02	VII.II.Lieferung (In Vorbereitung)_0019	scan/VII.II.LieferungInVorbereitung_0019.tif		\N
259	2018-05-15 12:35:16.490295+02	2018-07-10 16:29:42.020166+02	VII.II.Lieferung (In Vorbereitung)_0021	scan/VII.II.LieferungInVorbereitung_0021.tif		\N
258	2018-05-15 12:30:35.850397+02	2018-07-10 16:29:24.93097+02	VII.II.Lieferung (In Vorbereitung)_0020	scan/VII.II.LieferungInVorbereitung_0020.tif		\N
260	2018-05-15 13:01:54.90608+02	2018-07-10 16:30:04.459739+02	VII.II.Lieferung (In Vorbereitung)_0022	scan/VII.II.LieferungInVorbereitung_0022.tif		\N
261	2018-05-15 14:03:17.302071+02	2018-07-10 16:33:41.260729+02	VII.II.Lieferung (In Vorbereitung)_0024	scan/VII.II.LieferungInVorbereitung_0024.tif		\N
262	2018-05-15 14:06:56.15376+02	2018-07-10 16:34:44.987966+02	VII.II.Lieferung (In Vorbereitung)_0025	scan/VII.II.LieferungInVorbereitung_0025.tif		\N
264	2018-05-15 14:13:46.819905+02	2018-07-10 16:38:43.141707+02	VII.II.Lieferung (In Vorbereitung)_0027	scan/VII.II.LieferungInVorbereitung_0027.tif		\N
263	2018-05-15 14:10:49.65905+02	2018-07-10 16:36:47.482655+02	VII.II.Lieferung (In Vorbereitung)_0026	scan/VII.II.LieferungInVorbereitung_0026.tif		\N
265	2018-05-15 14:20:00.585258+02	2018-07-10 16:39:01.974493+02	VII.II.Lieferung (In Vorbereitung)_0029	scan/VII.II.LieferungInVorbereitung_0029.tif		\N
266	2018-05-15 14:23:24.060273+02	2018-07-10 16:39:25.77666+02	VII.II.Lieferung (In Vorbereitung)_0030	scan/VII.II.LieferungInVorbereitung_0030.tif		\N
267	2018-05-15 14:26:18.30166+02	2018-07-10 16:40:03.188012+02	VII.II.Lieferung (In Vorbereitung)_0031	scan/VII.II.LieferungInVorbereitung_0031.tif		\N
268	2018-05-15 14:27:46.169127+02	2018-07-10 16:40:41.190395+02	VII.II.Lieferung (In Vorbereitung)_0032	scan/VII.II.LieferungInVorbereitung_0032.tif		\N
236	2018-05-07 12:32:27.371547+02	2019-04-08 12:40:51.290539+02	VIII.Dritte Lieferung (In Vorbereitung)_0017	scan/VIII.DritteLieferungInVorbereitung_0017.tif		\N
269	2018-05-15 14:29:10.525444+02	2019-04-08 12:43:00.855254+02	VII.II.Lieferung (In Vorbereitung)_0033	scan/VII.II.LieferungInVorbereitung_0033.tif		\N
308	2018-05-18 17:43:15.722329+02	2018-07-05 12:35:55.15618+02	IV.Gedruckte Karten der Lieferungen_0001	scan/IV.GedruckteKartenDerLieferungen0001.tif		\N
309	2018-05-18 17:46:50.87573+02	2018-07-05 12:36:29.432515+02	IV.Gedruckte Karten der Lieferungen_0002	scan/IV.GedruckteKartenDerLieferungen_0002.tif		\N
310	2018-05-22 09:29:40.301195+02	2018-07-05 12:36:53.169139+02	IV.Gedruckte Karten der Lieferungen_0003	scan/IV.GedruckteKartenDerLieferungen_0003.tif		\N
311	2018-05-22 09:53:00.719265+02	2018-07-05 12:37:35.506398+02	IV.Gedruckte Karten der Lieferungen_0004	scan/IV.GedruckteKartenDerLieferungen_0004.tif		\N
312	2018-05-22 09:55:19.895964+02	2018-07-05 12:37:55.350249+02	IV.Gedruckte Karten der Lieferungen_0005	scan/IV.GedruckteKartenDerLieferungen_0005.tif		\N
313	2018-05-22 09:59:35.003929+02	2018-07-05 12:38:21.297396+02	IV.Gedruckte Karten der Lieferungen_0006	scan/IV.GedruckteKartenDerLieferungen_0006.tif		\N
315	2018-05-22 10:06:57.948431+02	2018-07-05 12:41:09.057939+02	IV.Gedruckte Karten der Lieferungen_0008	scan/IV.GedruckteKartenDerLieferungen_0008.tif		\N
314	2018-05-22 10:03:28.180838+02	2018-07-05 12:40:53.100968+02	IV.Gedruckte Karten der Lieferungen_0007	scan/IV.GedruckteKartenDerLieferungen_0007.tif		\N
316	2018-05-22 10:41:15.854273+02	2018-07-05 12:41:40.997149+02	IV.Gedruckte Karten der Lieferungen_0009	scan/IV.GedruckteKartenDerLieferungen_0009.tif		\N
317	2018-05-22 10:46:01.832862+02	2018-07-05 12:42:01.872483+02	IV.Gedruckte Karten der Lieferungen_0010	scan/IV.GedruckteKartenDerLieferungen_0010.tif		\N
319	2018-05-22 11:41:21.607456+02	2018-07-05 12:45:54.430174+02	IV.Gedruckte Karten der Lieferungen_0012	scan/IV.GedruckteKartenDerLieferungen_0012.tif		\N
318	2018-05-22 11:35:28.080277+02	2018-07-05 12:44:53.592783+02	IV.Gedruckte Karten der Lieferungen_0011	scan/IV.GedruckteKartenDerLieferungen_0011.tif		\N
322	2018-05-22 11:49:44.412388+02	2018-07-05 12:47:32.856242+02	IV.Gedruckte Karten der Lieferungen_0015	scan/IV.GedruckteKartenDerLieferungen_0015.tif		\N
320	2018-05-22 11:45:08.238254+02	2018-07-05 12:46:33.582086+02	IV.Gedruckte Karten der Lieferungen_0013	scan/IV.GedruckteKartenDerLieferungen_0013.tif		\N
321	2018-05-22 11:47:13.551421+02	2018-07-05 12:47:18.733678+02	IV.Gedruckte Karten der Lieferungen_0014	scan/IV.GedruckteKartenDerLieferungen_0014.tif		\N
323	2018-05-22 11:52:23.232392+02	2018-07-05 12:47:50.512475+02	IV.Gedruckte Karten der Lieferungen_0016	scan/IV.GedruckteKartenDerLieferungen_0016.tif		\N
324	2018-05-22 11:56:18.489694+02	2018-07-05 12:48:07.236626+02	IV.Gedruckte Karten der Lieferungen_0017	scan/IV.GedruckteKartenDerLieferungen_0017.tif		\N
325	2018-05-22 11:58:22.497324+02	2018-07-05 12:48:24.734012+02	IV.Gedruckte Karten der Lieferungen_0018	scan/IV.GedruckteKartenDerLieferungen_0018.tif		\N
326	2018-05-22 12:02:14.251362+02	2018-07-05 12:48:52.640757+02	IV.Gedruckte Karten der Lieferungen_0019	scan/IV.GedruckteKartenDerLieferungen_0019.tif		\N
327	2018-05-22 12:06:07.949071+02	2018-07-05 12:49:07.068819+02	IV.Gedruckte Karten der Lieferungen_0020	scan/IV.GedruckteKartenDerLieferungen_0020.tif		\N
328	2018-05-22 12:12:21.675168+02	2018-07-05 12:49:34.713015+02	IV.Gedruckte Karten der Lieferungen_0021	scan/IV.GedruckteKartenDerLieferungen_0021.tif		\N
330	2018-05-22 12:18:04.083175+02	2018-07-05 12:51:30.793021+02	IV.Gedruckte Karten der Lieferungen_0023	scan/IV.GedruckteKartenDerLieferungen_0023.tif		\N
683	2018-09-12 13:25:56.266485+02	2019-04-05 13:15:45.767152+02	DiverseLade14_0063	scan/DiverseLade14_0063.tif		\N
329	2018-05-22 12:14:05.918947+02	2018-07-05 12:50:51.346348+02	IV.Gedruckte Karten der Lieferungen_0022	scan/IV.GedruckteKartenDerLieferungen_0022.tif		\N
331	2018-05-22 12:25:04.407065+02	2018-07-05 12:51:45.606883+02	IV.Gedruckte Karten der Lieferungen_0024	scan/IV.GedruckteKartenDerLieferungen_0024.tif		\N
332	2018-05-22 12:28:31.819342+02	2018-07-05 12:52:04.040432+02	IV.Gedruckte Karten der Lieferungen_0025	scan/IV.GedruckteKartenDerLieferungen_0025.tif		\N
333	2018-05-22 12:30:43.185055+02	2018-07-05 12:52:27.970333+02	IV.Gedruckte Karten der Lieferungen_0026	scan/IV.GedruckteKartenDerLieferungen_0026.tif		\N
334	2018-05-22 12:32:22.408765+02	2018-07-05 14:29:01.898806+02	IV.Gedruckte Karten der Lieferungen_0027	scan/IV.GedruckteKartenDerLieferungen_0027.tif		\N
335	2018-05-22 12:39:58.615849+02	2018-07-05 14:29:39.313925+02	IV.Gedruckte Karten der Lieferungen_0028	scan/IV.GedruckteKartenDerLieferungen_0028.tif		\N
336	2018-05-22 12:43:05.728856+02	2018-07-05 14:30:10.231542+02	IV.Gedruckte Karten der Lieferungen_0029	scan/IV.GedruckteKartenDerLieferungen_0029.tif		\N
340	2018-05-23 13:11:10.300572+02	2018-07-05 14:36:46.68+02	IV.Gedruckte Karten der Lieferungen_0033	scan/IV.GedruckteKartenDerLieferungen_0033.tif		\N
338	2018-05-22 12:52:26.44244+02	2018-07-05 14:36:01.455439+02	IV.Gedruckte Karten der Lieferungen_0031	scan/IV.GedruckteKartenDerLieferungen_0031.tif		\N
339	2018-05-22 12:54:32.70782+02	2018-07-05 14:36:34.348125+02	IV.Gedruckte Karten der Lieferungen_0032	scan/IV.GedruckteKartenDerLieferungen_0032.tif		\N
341	2018-05-23 13:14:01.754529+02	2018-07-05 14:39:21.993584+02	IV.Gedruckte Karten der Lieferungen_0034	scan/IV.GedruckteKartenDerLieferungen_0034.tif		\N
342	2018-05-23 13:15:48.005559+02	2018-07-05 14:41:06.642869+02	IV.Gedruckte Karten der Lieferungen_0035	scan/IV.GedruckteKartenDerLieferungen_0035.tif		\N
285	2018-05-18 13:47:42.572667+02	2018-07-09 14:21:06.182466+02	Kleine Karten Kranzmayer_0016	scan/Kleine_Karten_Kranzmayer_0016.tif		\N
286	2018-05-18 13:50:03.935552+02	2018-07-09 14:21:51.348447+02	Kleine Karten Kranzmayer_0017	scan/Kleine_Karten_Kranzmayer_0017.tif		\N
287	2018-05-18 13:52:45.86561+02	2018-07-09 14:22:09.628864+02	Kleine Karten Kranzmayer_0018	scan/Kleine_Karten_Kranzmayer_0018.tif		\N
290	2018-05-18 14:15:00.653316+02	2018-07-09 14:37:43.060116+02	Kleine Karten Kranzmayer_0021	scan/Kleine_Karten_Kranzmayer_0021.tif		\N
288	2018-05-18 14:06:30.892632+02	2018-07-09 14:22:52.364066+02	Kleine Karten Kranzmayer_0019	scan/Kleine_Karten_Kranzmayer_0019.tif		\N
289	2018-05-18 14:13:20.011316+02	2018-07-09 14:37:23.648138+02	Kleine Karten Kranzmayer_0020	scan/Kleine_Karten_Kranzmayer_0020.tif		\N
291	2018-05-18 14:17:11.667629+02	2018-07-09 14:38:03.958965+02	Kleine Karten Kranzmayer_0022	scan/Kleine_Karten_Kranzmayer_0022.tif		\N
294	2018-05-18 14:28:13.245273+02	2018-07-09 14:45:57.769092+02	Kleine Karten Kranzmayer_0025	scan/Kleine_Karten_Kranzmayer_0025.tif		\N
292	2018-05-18 14:23:46.791067+02	2018-07-09 14:38:39.06866+02	Kleine Karten Kranzmayer_0023	scan/Kleine_Karten_Kranzmayer_0023.tif		\N
293	2018-05-18 14:26:01.329425+02	2018-07-09 14:45:38.536844+02	Kleine Karten Kranzmayer_0024	scan/Kleine_Karten_Kranzmayer_0024.tif		\N
295	2018-05-18 14:29:36.386224+02	2018-07-09 14:46:24.879369+02	Kleine Karten Kranzmayer_0026	scan/Kleine_Karten_Kranzmayer_0026.tif		\N
296	2018-05-18 14:31:40.240901+02	2018-07-09 14:46:49.436156+02	Kleine Karten Kranzmayer_0027	scan/Kleine_Karten_Kranzmayer_0027.tif		\N
297	2018-05-18 14:44:27.214464+02	2018-07-09 14:47:10.862062+02	Kleine Karten Kranzmayer_0028	scan/Kleine_Karten_Kranzmayer_0028.tif		\N
298	2018-05-18 14:45:44.247083+02	2018-07-09 14:47:34.865825+02	Kleine Karten Kranzmayer_0029	scan/Kleine_Karten_Kranzmayer_0029.tif		\N
299	2018-05-18 14:48:20.413675+02	2018-07-09 14:49:11.600589+02	Kleine Karten Kranzmayer_0030	scan/Kleine_Karten_Kranzmayer_0031.tif		\N
300	2018-05-18 14:50:07.809928+02	2018-07-09 14:50:46.815866+02	Kleine Karten Kranzmayer_0032	scan/Kleine_Karten_Kranzmayer_0032.tif		\N
301	2018-05-18 14:52:44.8783+02	2018-07-09 14:51:06.381705+02	Kleine Karten Kranzmayer_0033	scan/Kleine_Karten_Kranzmayer_0033.tif		\N
303	2018-05-18 14:56:02.523527+02	2018-07-09 14:54:25.669389+02	Kleine Karten Kranzmayer_0035	scan/Kleine_Karten_Kranzmayer_0035.tif		\N
302	2018-05-18 14:54:55.363992+02	2018-07-09 14:54:07.176246+02	Kleine Karten Kranzmayer_0034	scan/Kleine_Karten_Kranzmayer_0034.tif		\N
304	2018-05-18 14:57:54.180157+02	2018-07-09 14:54:59.498112+02	Kleine Karten Kranzmayer_0036	scan/Kleine_Karten_Kranzmayer_0036.tif		\N
306	2018-05-18 15:00:21.123565+02	2018-07-09 14:55:53.590985+02	Kleine Karten Kranzmayer_0038	scan/Kleine_Karten_Kranzmayer_0038.tif		\N
305	2018-05-18 14:59:01.833313+02	2018-07-09 14:55:37.920742+02	Kleine Karten Kranzmayer_0037	scan/Kleine_Karten_Kranzmayer_0037.tif		\N
887	2019-05-09 11:32:17.55678+02	2019-05-09 11:32:17.55681+02	Diverse_0304	scan/Diverse_0304.tif		\N
344	2018-05-23 13:25:47.434928+02	2018-07-05 14:41:46.147845+02	IV.Gedruckte Karten der Lieferungen_0037	scan/IV.GedruckteKartenDerLieferungen_0037.tif		\N
343	2018-05-23 13:18:00.28262+02	2018-07-05 14:41:33.391718+02	IV.Gedruckte Karten der Lieferungen_0036	scan/IV.GedruckteKartenDerLieferungen_0036.tif		\N
346	2018-05-23 13:30:08.816498+02	2018-07-05 14:42:33.585035+02	IV.Gedruckte Karten der Lieferungen_0039	scan/IV.GedruckteKartenDerLieferungen_0039.tif		\N
345	2018-05-23 13:27:56.75082+02	2018-07-05 14:42:20.095342+02	IV.Gedruckte Karten der Lieferungen_0038	scan/IV.GedruckteKartenDerLieferungen_0038.tif		\N
347	2018-05-23 13:32:58.806511+02	2018-07-05 14:42:55.133901+02	IV.Gedruckte Karten der Lieferungen_0040	scan/IV.GedruckteKartenDerLieferungen_0040.tif		\N
350	2018-05-23 13:45:44.963564+02	2018-07-05 14:49:10.401448+02	IV.Gedruckte Karten der Lieferungen_0043	scan/IV.GedruckteKartenDerLieferungen_0043.tif		\N
348	2018-05-23 13:35:29.87747+02	2018-07-05 14:47:58.900405+02	IV.Gedruckte Karten der Lieferungen_0041	scan/IV.GedruckteKartenDerLieferungen_0041.tif		\N
349	2018-05-23 13:40:04.105278+02	2018-07-05 14:48:55.365229+02	IV.Gedruckte Karten der Lieferungen_0042	scan/IV.GedruckteKartenDerLieferungen_0042.tif		\N
353	2018-05-23 14:06:17.188392+02	2018-07-05 14:50:34.956198+02	IV.Gedruckte Karten der Lieferungen_0046	scan/IV.GedruckteKartenDerLieferungen_0046.tif		\N
351	2018-05-23 14:00:49.908607+02	2018-07-05 14:49:52.596689+02	IV.Gedruckte Karten der Lieferungen_0044	scan/IV.GedruckteKartenDerLieferungen_0044.tif		\N
352	2018-05-23 14:04:06.560538+02	2018-07-05 14:50:22.05745+02	IV.Gedruckte Karten der Lieferungen_0045	scan/IV.GedruckteKartenDerLieferungen_0045.tif		\N
354	2018-05-23 14:09:31.814553+02	2018-07-05 14:50:49.168248+02	IV.Gedruckte Karten der Lieferungen_0047	scan/IV.GedruckteKartenDerLieferungen_0047.tif		\N
355	2018-05-23 14:12:40.223437+02	2018-07-05 14:51:07.694478+02	IV.Gedruckte Karten der Lieferungen_0048	scan/IV.GedruckteKartenDerLieferungen_0048.tif		\N
356	2018-05-23 14:15:05.099034+02	2018-07-05 14:51:21.081067+02	IV.Gedruckte Karten der Lieferungen_0049	scan/IV.GedruckteKartenDerLieferungen_0049.tif		\N
357	2018-05-23 15:16:01.539554+02	2018-07-05 14:51:35.977272+02	IV.Gedruckte Karten der Lieferungen_0050	scan/IV.GedruckteKartenDerLieferungen_0050.tif		\N
358	2018-05-23 15:17:19.505356+02	2018-07-05 14:51:50.148481+02	IV.Gedruckte Karten der Lieferungen_0051	scan/IV.GedruckteKartenDerLieferungen_0051.tif		\N
359	2018-05-23 15:27:32.068534+02	2018-07-05 14:52:08.52846+02	IV.Gedruckte Karten der Lieferungen_0052	scan/IV.GedruckteKartenDerLieferungen_0052.tif		\N
360	2018-05-23 15:30:48.598971+02	2018-07-05 14:52:24.060397+02	IV.Gedruckte Karten der Lieferungen_0053	scan/IV.GedruckteKartenDerLieferungen_0053.tif		\N
362	2018-05-23 15:39:25.657609+02	2018-07-05 14:53:05.927812+02	IV.Gedruckte Karten der Lieferungen_0055	scan/IV.GedruckteKartenDerLieferungen_0055.tif		\N
361	2018-05-23 15:33:52.557477+02	2018-07-05 14:52:53.009838+02	IV.Gedruckte Karten der Lieferungen_0054	scan/IV.GedruckteKartenDerLieferungen_0054.tif		\N
363	2018-05-23 15:42:05.460111+02	2018-07-05 14:53:21.817258+02	IV.Gedruckte Karten der Lieferungen_0056	scan/IV.GedruckteKartenDerLieferungen_0056.tif		\N
364	2018-05-23 15:43:34.52169+02	2018-07-05 14:53:35.060701+02	IV.Gedruckte Karten der Lieferungen_0057	scan/IV.GedruckteKartenDerLieferungen_0057.tif		\N
366	2018-05-23 15:45:54.075529+02	2018-07-05 14:54:08.74486+02	IV.Gedruckte Karten der Lieferungen_0059	scan/IV.GedruckteKartenDerLieferungen_0059.tif		\N
370	2018-05-29 13:34:40.583166+02	2018-07-09 14:57:42.012695+02	Kleine Karten Kranzmayer_0040	scan/Kleine_Karten_Kranzmayer_0040.tif		\N
372	2018-05-29 13:41:28.838251+02	2018-07-09 14:58:51.502669+02	Kleine Karten Kranzmayer_0042	scan/Kleine_Karten_Kranzmayer_0042.tif		\N
371	2018-05-29 13:38:51.32252+02	2018-07-09 14:58:38.799001+02	Kleine Karten Kranzmayer_0041	scan/Kleine_Karten_Kranzmayer_0041.tif		\N
375	2018-05-29 13:52:59.719026+02	2018-07-09 15:00:00.416466+02	Kleine Karten Kranzmayer_0045	scan/Kleine_Karten_Kranzmayer_0045.tif		\N
373	2018-05-29 13:44:53.992978+02	2018-07-09 14:59:17.164346+02	Kleine Karten Kranzmayer_0043	scan/Kleine_Karten_Kranzmayer_0043.tif		\N
374	2018-05-29 13:48:15.774473+02	2018-07-09 14:59:47.045945+02	Kleine Karten Kranzmayer_0044	scan/Kleine_Karten_Kranzmayer_0044.tif		\N
376	2018-05-29 13:57:11.422526+02	2018-07-09 15:00:23.839772+02	Kleine Karten Kranzmayer_0046	scan/Kleine_Karten_Kranzmayer_0046.tif		\N
377	2018-06-04 13:55:30.666485+02	2018-07-09 15:01:01.781958+02	Kleine Karten Kranzmayer_0047	scan/Kleine_Karten_Kranzmayer_0047.tif		\N
378	2018-06-04 13:58:01.724375+02	2018-07-09 15:01:19.894673+02	Kleine Karten Kranzmayer_0048	scan/Kleine_Karten_Kranzmayer_0048.tif		\N
379	2018-06-04 14:02:40.275484+02	2018-07-09 15:01:37.642906+02	Kleine Karten Kranzmayer_0049	scan/Kleine_Karten_Kranzmayer_0049.tif		\N
380	2018-06-04 14:04:13.998011+02	2018-07-09 15:01:55.674164+02	Kleine Karten Kranzmayer_0050	scan/Kleine_Karten_Kranzmayer_0050.tif		\N
381	2018-06-04 14:08:33.637715+02	2018-07-09 15:03:18.322421+02	Kleine Karten Kranzmayer_0051	scan/Kleine_Karten_Kranzmayer_0051.tif		\N
383	2018-06-04 14:22:55.416967+02	2018-07-09 15:04:08.71723+02	Kleine Karten Kranzmayer_0053	scan/Kleine_Karten_Kranzmayer_0053.tif		\N
382	2018-06-04 14:17:01.005715+02	2018-07-09 15:03:56.195938+02	Kleine Karten Kranzmayer_0052	scan/Kleine_Karten_Kranzmayer_0052.tif		\N
385	2018-06-04 14:33:59.637081+02	2018-07-09 15:05:18.221686+02	Kleine Karten Kranzmayer_0055	scan/Kleine_Karten_Kranzmayer_0055.tif		\N
384	2018-06-04 14:25:52.392243+02	2018-07-09 15:05:01.841524+02	Kleine Karten Kranzmayer_0054	scan/Kleine_Karten_Kranzmayer_0054.tif		\N
386	2018-06-04 14:36:18.365432+02	2018-07-09 15:05:40.240007+02	Kleine Karten Kranzmayer_0056	scan/Kleine_Karten_Kranzmayer_0056.tif		\N
387	2018-06-04 14:41:33.90604+02	2018-07-09 15:06:06.348089+02	Kleine Karten Kranzmayer_0057	scan/Kleine_Karten_Kranzmayer_0057.tif		\N
388	2018-06-04 14:44:34.912275+02	2018-07-09 15:06:21.802456+02	Kleine Karten Kranzmayer_0058	scan/Kleine_Karten_Kranzmayer_0058.tif		\N
389	2018-06-04 14:47:52.361905+02	2018-07-09 15:06:37.877258+02	Kleine Karten Kranzmayer_0059	scan/Kleine_Karten_Kranzmayer_0059.tif		\N
390	2018-06-04 14:51:19.806644+02	2018-07-09 15:06:55.023253+02	Kleine Karten Kranzmayer_0060	scan/Kleine_Karten_Kranzmayer_0060.tif		\N
393	2018-06-04 14:59:11.228559+02	2018-07-09 15:09:41.314616+02	Kleine Karten Kranzmayer_0063	scan/Kleine_Karten_Kranzmayer_0063.tif		\N
391	2018-06-04 14:54:41.50446+02	2018-07-09 15:08:59.889325+02	Kleine Karten Kranzmayer_0061	scan/Kleine_Karten_Kranzmayer_0061.tif		\N
392	2018-06-04 14:57:22.842931+02	2018-07-09 15:09:25.05882+02	Kleine Karten Kranzmayer_0062	scan/Kleine_Karten_Kranzmayer_0062.tif		\N
394	2018-06-04 15:09:52.604509+02	2018-07-09 15:10:02.547115+02	Kleine Karten Kranzmayer_0064	scan/Kleine_Karten_Kranzmayer_0064.tif		\N
395	2018-06-04 15:11:21.486947+02	2018-07-09 15:10:34.593662+02	Kleine Karten Kranzmayer_0065	scan/Kleine_Karten_Kranzmayer_0065.tif		\N
398	2018-06-04 15:24:09.604521+02	2018-07-09 15:11:44.837708+02	Kleine Karten Kranzmayer_0068	scan/Kleine_Karten_Kranzmayer_0068.tif		\N
396	2018-06-04 15:13:14.623471+02	2018-07-09 15:10:59.699121+02	Kleine Karten Kranzmayer_0066	scan/Kleine_Karten_Kranzmayer_0066.tif		\N
397	2018-06-04 15:16:43.892168+02	2018-07-09 15:11:26.260007+02	Kleine Karten Kranzmayer_0067	scan/Kleine_Karten_Kranzmayer_0067.tif		\N
399	2018-06-04 15:26:31.834106+02	2018-07-09 15:12:02.144509+02	Kleine Karten Kranzmayer_0069	scan/Kleine_Karten_Kranzmayer_0069.tif		\N
401	2018-06-04 15:29:45.806467+02	2018-07-09 15:12:50.212895+02	Kleine Karten Kranzmayer_0071	scan/Kleine_Karten_Kranzmayer_0071.tif		\N
400	2018-06-04 15:28:14.222223+02	2018-07-09 15:12:34.91973+02	Kleine Karten Kranzmayer_0070	scan/Kleine_Karten_Kranzmayer_0070.tif		\N
402	2018-06-04 15:56:34.613408+02	2018-07-09 15:13:09.29763+02	Kleine Karten Kranzmayer_0072	scan/Kleine_Karten_Kranzmayer_0072.tif		\N
450	2018-06-05 13:44:59.360675+02	2018-07-03 12:19:14.877485+02	General- und Spezialkarten Mappe I_0003	scan/General-_und_Spezialkarten_Mappe_I_0003.tif		\N
449	2018-06-05 13:40:52.946772+02	2018-07-03 12:18:52.603708+02	General- und Spezialkarten Mappe I_0002	scan/General-_und_Spezialkarten_Mappe_I_0002.tif		\N
451	2018-06-05 13:46:22.128514+02	2018-07-03 12:19:30.901577+02	General- und Spezialkarten Mappe I_0004	scan/General-_und_Spezialkarten_Mappe_I_0004.tif		\N
452	2018-06-05 13:48:05.019978+02	2018-07-03 12:20:10.165846+02	General- und Spezialkarten Mappe I_0005	scan/General-_und_Spezialkarten_Mappe_I_0005.tif		\N
453	2018-06-05 13:52:45.003218+02	2018-07-03 12:20:26.842863+02	General- und Spezialkarten Mappe I_0006	scan/General-_und_Spezialkarten_Mappe_I_0006.tif		\N
454	2018-06-05 14:05:50.720238+02	2018-07-03 12:20:48.908519+02	General- und Spezialkarten Mappe I_0007	scan/General-_und_Spezialkarten_Mappe_I_0007.tif		\N
455	2018-06-05 14:08:52.678962+02	2018-07-03 12:21:07.319459+02	General- und Spezialkarten Mappe I_0008	scan/General-_und_Spezialkarten_Mappe_I_0008.tif		\N
456	2018-06-05 14:19:14.46763+02	2018-07-03 12:21:27.361821+02	General- und Spezialkarten Mappe I_0009	scan/General-_und_Spezialkarten_Mappe_I_0009.tif		\N
457	2018-06-05 14:29:40.044544+02	2018-07-03 12:22:17.574404+02	General- und Spezialkarten Mappe I_0010	scan/General-_und_Spezialkarten_Mappe_I_0010.tif		\N
458	2018-06-07 12:32:32.407992+02	2018-07-03 12:22:44.023231+02	General- und Spezialkarten Mappe I_0011	scan/General-_und_Spezialkarten_Mappe_I_0011.tif		\N
459	2018-06-07 12:37:47.413536+02	2018-07-03 12:23:07.293478+02	General- und Spezialkarten Mappe I_0012	scan/General-_und_Spezialkarten_Mappe_I_0012.tif		\N
460	2018-06-07 12:41:19.627203+02	2018-07-03 12:26:34.798989+02	General- und Spezialkarten Mappe I_0013	scan/General-_und_Spezialkarten_Mappe_I_0013.tif		\N
462	2018-06-07 13:45:54.979573+02	2018-07-03 12:27:43.051043+02	General- und Spezialkarten Mappe I_0015	scan/General-_und_Spezialkarten_Mappe_I_0015.tif		\N
463	2018-06-07 13:53:10.452155+02	2018-07-03 12:28:04.294131+02	General- und Spezialkarten Mappe I_0016	scan/General-_und_Spezialkarten_Mappe_I_0016.tif		\N
464	2018-06-07 13:58:03.384293+02	2018-07-03 12:28:22.03939+02	General- und Spezialkarten Mappe I_0017	scan/General-_und_Spezialkarten_Mappe_I_0017.tif		\N
465	2018-06-07 14:04:38.554157+02	2018-07-03 12:28:38.497085+02	General- und Spezialkarten Mappe I_0018	scan/General-_und_Spezialkarten_Mappe_I_0018.tif		\N
403	2018-06-04 15:58:39.933271+02	2018-07-09 15:13:28.000581+02	Kleine Karten Kranzmayer_0073	scan/Kleine_Karten_Kranzmayer_0073.tif		\N
404	2018-06-04 16:19:04.179269+02	2018-07-09 15:13:43.686714+02	Kleine Karten Kranzmayer_0074	scan/Kleine_Karten_Kranzmayer_0074.tif		\N
405	2018-06-04 16:20:20.75077+02	2018-07-09 15:14:26.779154+02	Kleine Karten Kranzmayer_0075	scan/Kleine_Karten_Kranzmayer_0075.tif		\N
406	2018-06-04 16:22:34.089746+02	2018-07-09 15:15:40.466764+02	Kleine Karten Kranzmayer_0076	scan/Kleine_Karten_Kranzmayer_0076.tif		\N
407	2018-06-04 16:24:53.083118+02	2018-07-09 15:16:01.857798+02	Kleine Karten Kranzmayer_0077	scan/Kleine_Karten_Kranzmayer_0077.tif		\N
408	2018-06-04 16:25:56.768848+02	2018-07-09 15:16:17.26921+02	Kleine Karten Kranzmayer_0078	scan/Kleine_Karten_Kranzmayer_0078.tif		\N
409	2018-06-04 16:27:48.272954+02	2018-07-09 15:16:35.165079+02	Kleine Karten Kranzmayer_0079	scan/Kleine_Karten_Kranzmayer_0079.tif		\N
410	2018-06-04 16:31:01.2473+02	2018-07-09 15:16:52.017151+02	Kleine Karten Kranzmayer_0080	scan/Kleine_Karten_Kranzmayer_0080.tif		\N
411	2018-06-04 16:36:32.701391+02	2018-07-09 15:17:07.417089+02	Kleine Karten Kranzmayer_0081	scan/Kleine_Karten_Kranzmayer_0081.tif		\N
413	2018-06-04 16:39:28.95223+02	2018-07-09 15:29:37.24134+02	Kleine Karten Kranzmayer_0083	scan/Kleine_Karten_Kranzmayer_0083.tif		\N
412	2018-06-04 16:37:55.285485+02	2018-07-09 15:29:10.452387+02	Kleine Karten Kranzmayer_0082	scan/Kleine_Karten_Kranzmayer_0082.tif		\N
414	2018-06-04 16:43:13.771161+02	2018-07-09 15:30:48.870186+02	Kleine Karten Kranzmayer_0084	scan/Kleine_Karten_Kranzmayer_0084.tif		\N
415	2018-06-04 16:44:47.146283+02	2018-07-09 15:31:03.985318+02	Kleine Karten Kranzmayer_0085	scan/Kleine_Karten_Kranzmayer_0085.tif		\N
418	2018-06-04 16:54:28.801442+02	2018-07-09 15:34:42.095018+02	Kleine Karten Kranzmayer_0088	scan/Kleine_Karten_Kranzmayer_0088.tif		\N
416	2018-06-04 16:47:18.981329+02	2018-07-09 15:31:28.728352+02	Kleine Karten Kranzmayer_0086	scan/Kleine_Karten_Kranzmayer_0086.tif		\N
417	2018-06-04 16:53:20.135898+02	2018-07-09 15:34:24.734373+02	Kleine Karten Kranzmayer_0087	scan/Kleine_Karten_Kranzmayer_0087.tif		\N
420	2018-06-04 16:57:35.517466+02	2018-07-09 15:35:37.151052+02	Kleine Karten Kranzmayer_0090	scan/Kleine_Karten_Kranzmayer_0090.tif		\N
419	2018-06-04 16:56:24.892048+02	2018-07-09 15:35:18.180961+02	Kleine Karten Kranzmayer_0089	scan/Kleine_Karten_Kranzmayer_0089.tif		\N
434	2018-06-04 17:25:08.063619+02	2018-07-09 15:44:24.663943+02	Kleine Karten Kranzmayer_0103	scan/Kleine_Karten_Kranzmayer_0103.tif		\N
422	2018-06-04 17:02:40.156909+02	2018-07-09 15:36:11.471199+02	Kleine Karten Kranzmayer_0092	scan/Kleine_Karten_Kranzmayer_0092.tif		\N
423	2018-06-04 17:03:52.014475+02	2018-07-09 15:36:33.390624+02	Kleine Karten Kranzmayer_0093	scan/Kleine_Karten_Kranzmayer_0093.tif		\N
424	2018-06-04 17:10:18.228759+02	2018-07-09 15:36:52.992256+02	Kleine Karten Kranzmayer_0094	scan/Kleine_Karten_Kranzmayer_0094.tif		\N
425	2018-06-04 17:12:01.814709+02	2018-07-09 15:37:09.98813+02	Kleine Karten Kranzmayer_0095	scan/Kleine_Karten_Kranzmayer_0095.tif		\N
426	2018-06-04 17:13:07.645897+02	2018-07-09 15:37:55.38484+02	Kleine Karten Kranzmayer_0096	scan/Kleine_Karten_Kranzmayer_0096.tif		\N
428	2018-06-04 17:17:19.518404+02	2018-07-09 15:38:28.497752+02	Kleine Karten Kranzmayer_0098	scan/Kleine_Karten_Kranzmayer_0098.tif		\N
429	2018-06-04 17:18:52.427959+02	2018-07-09 15:38:44.796084+02	Kleine Karten Kranzmayer_0099	scan/Kleine_Karten_Kranzmayer_0099.tif		\N
430	2018-06-04 17:20:12.038289+02	2018-07-09 15:39:03.117008+02	Kleine Karten Kranzmayer_0100	scan/Kleine_Karten_Kranzmayer_0100.tif		\N
421	2018-06-04 17:00:57.18174+02	2018-07-09 15:39:29.568018+02	Kleine Karten Kranzmayer_0091	scan/Kleine_Karten_Kranzmayer_0091.tif		\N
432	2018-06-04 17:22:15.073505+02	2018-07-09 15:43:41.572406+02	Kleine Karten Kranzmayer_0101	scan/Kleine_Karten_Kranzmayer_0101.tif		\N
433	2018-06-04 17:23:36.846324+02	2018-07-09 15:44:10.218324+02	Kleine Karten Kranzmayer_0102	scan/Kleine_Karten_Kranzmayer_0102.tif		\N
435	2018-06-05 12:42:33.430494+02	2018-07-09 15:44:40.313883+02	Kleine Karten Kranzmayer_0104	scan/Kleine_Karten_Kranzmayer_0104.tif		\N
436	2018-06-05 12:43:37.199531+02	2018-07-09 15:44:58.402784+02	Kleine Karten Kranzmayer_0105	scan/Kleine_Karten_Kranzmayer_0105.tif		\N
437	2018-06-05 12:45:14.35056+02	2018-07-09 15:45:18.389202+02	Kleine Karten Kranzmayer_0106	scan/Kleine_Karten_Kranzmayer_0106.tif		\N
438	2018-06-05 12:46:34.338143+02	2018-07-09 15:45:38.441149+02	Kleine Karten Kranzmayer_0107	scan/Kleine_Karten_Kranzmayer_0107.tif		\N
439	2018-06-05 12:47:45.45432+02	2018-07-09 15:45:55.735953+02	Kleine Karten Kranzmayer_0108	scan/Kleine_Karten_Kranzmayer_0108.tif		\N
440	2018-06-05 12:49:50.730117+02	2018-07-09 15:46:21.363635+02	Kleine Karten Kranzmayer_0109	scan/Kleine_Karten_Kranzmayer_0109.tif		\N
441	2018-06-05 12:51:36.5744+02	2018-07-09 15:46:48.082131+02	Kleine Karten Kranzmayer_0110	scan/Kleine_Karten_Kranzmayer_0110.tif		\N
443	2018-06-05 12:53:41.057533+02	2018-07-09 15:47:36.206781+02	Kleine Karten Kranzmayer_0112	scan/Kleine_Karten_Kranzmayer_0112.tif		\N
444	2018-06-05 12:55:02.028693+02	2018-07-09 15:47:52.986392+02	Kleine Karten Kranzmayer_0113	scan/Kleine_Karten_Kranzmayer_0113.tif		\N
445	2018-06-05 12:56:13.72615+02	2018-07-09 15:48:12.028388+02	Kleine Karten Kranzmayer_0114	scan/Kleine_Karten_Kranzmayer_0114.tif		\N
446	2018-06-05 12:57:21.720489+02	2018-07-09 15:48:29.368838+02	Kleine Karten Kranzmayer_0115	scan/Kleine_Karten_Kranzmayer_0115.tif		\N
427	2018-06-04 17:15:37.805562+02	2018-07-10 16:32:17.427771+02	Kleine Karten Kranzmayer_0097	scan/Kleine_Karten_Kranzmayer_0097.tif		\N
447	2018-06-05 12:58:32.184532+02	2018-07-10 14:10:07.390736+02	Kleine Karten Kranzmayer_0116	scan/Kleine_Karten_Kranzmayer_0116.tif		\N
519	2018-06-15 11:58:40.544537+02	2018-06-26 13:43:15.059675+02	Schwarze Mappe diverse_0005	scan/SchwarzeMappe_diverse_0005.tif		\N
478	2018-06-07 15:13:35.792944+02	2020-09-28 14:57:48.836791+02	General- und Spezialkarten Mappe I_0034	scan/General-_und_Spezialkarten_Mappe_I_0034.tif		\N
517	2018-06-15 11:43:28.046767+02	2018-06-26 13:43:55.520672+02	Schwarze Mappe diverse_0003	scan/SchwarzeMappe_diverse_0003.tif		\N
516	2018-06-15 11:41:17.473494+02	2018-06-26 13:44:19.410053+02	Schwarze Mappe diverse_0002	scan/SchwarzeMappe_diverse_0002.tif		\N
466	2018-06-07 14:15:25.785902+02	2018-07-03 12:28:56.282721+02	General- und Spezialkarten Mappe I_0019	scan/General-_und_Spezialkarten_Mappe_I_0019.tif		\N
467	2018-06-07 14:21:44.690617+02	2018-07-03 12:32:27.147139+02	General- und Spezialkarten Mappe I_0022	scan/General-_und_Spezialkarten_Mappe_I_0022.tif		\N
468	2018-06-07 14:25:50.202573+02	2018-07-03 12:32:53.41409+02	General- und Spezialkarten Mappe I_0023	scan/General-_und_Spezialkarten_Mappe_I_0023.tif		\N
471	2018-06-07 14:46:35.937469+02	2018-07-03 12:35:11.829334+02	General- und Spezialkarten Mappe I_0027	scan/General-_und_Spezialkarten_Mappe_I_0027.tif		\N
470	2018-06-07 14:31:28.458262+02	2018-07-03 12:34:28.423956+02	General- und Spezialkarten Mappe I_0025	scan/General-_und_Spezialkarten_Mappe_I_0025.tif		\N
472	2018-06-07 14:48:46.358376+02	2018-07-03 12:35:34.647096+02	General- und Spezialkarten Mappe I_0028	scan/General-_und_Spezialkarten_Mappe_I_0028.tif		\N
473	2018-06-07 14:54:22.962665+02	2018-07-03 12:36:01.295262+02	General- und Spezialkarten Mappe I_0029	scan/General-_und_Spezialkarten_Mappe_I_0029.tif		\N
474	2018-06-07 14:57:19.571406+02	2018-07-03 12:36:18.210287+02	General- und Spezialkarten Mappe I_0030	scan/General-_und_Spezialkarten_Mappe_I_0030.tif		\N
475	2018-06-07 14:59:33.267453+02	2018-07-03 12:36:54.373344+02	General- und Spezialkarten Mappe I_0031	scan/General-_und_Spezialkarten_Mappe_I_0031.tif		\N
477	2018-06-07 15:11:17.325418+02	2018-07-03 12:37:45.487026+02	General- und Spezialkarten Mappe I_0033	scan/General-_und_Spezialkarten_Mappe_I_0033.tif		\N
476	2018-06-07 15:09:20.249317+02	2018-07-03 12:37:27.205954+02	General- und Spezialkarten Mappe I_0032	scan/General-_und_Spezialkarten_Mappe_I_0032.tif		\N
480	2018-06-08 13:39:45.770988+02	2018-07-03 12:40:43.701532+02	General- und Spezialkarten Mappe I_0036	scan/General-_und_Spezialkarten_Mappe_I_0036.tif		\N
479	2018-06-07 15:15:58.819461+02	2018-07-03 12:40:26.884531+02	General- und Spezialkarten Mappe I_0035	scan/General-_und_Spezialkarten_Mappe_I_0035.tif		\N
481	2018-06-08 13:45:27.879034+02	2018-07-03 12:41:09.758136+02	General- und Spezialkarten Mappe I_0037	scan/General-_und_Spezialkarten_Mappe_I_0037.tif		\N
482	2018-06-08 13:46:44.73344+02	2018-07-03 12:41:48.94321+02	General- und Spezialkarten Mappe I_0038	scan/General-_und_Spezialkarten_Mappe_I_0038.tif		\N
483	2018-06-08 13:49:18.215805+02	2018-07-03 12:42:09.244933+02	General- und Spezialkarten Mappe I_0039	scan/General-_und_Spezialkarten_Mappe_I_0039.tif		\N
484	2018-06-08 13:53:19.335508+02	2018-07-03 12:42:27.919243+02	General- und Spezialkarten Mappe I_0040	scan/General-_und_Spezialkarten_Mappe_I_0040.tif		\N
485	2018-06-08 13:55:35.726098+02	2018-07-03 12:43:01.13234+02	General- und Spezialkarten Mappe I_0041	scan/General-_und_Spezialkarten_Mappe_I_0041.tif		\N
486	2018-06-08 14:03:59.523242+02	2018-07-03 12:43:33.852417+02	General- und Spezialkarten Mappe I_0042	scan/General-_und_Spezialkarten_Mappe_I_0042.tif		\N
487	2018-06-08 14:06:26.407259+02	2018-07-03 12:44:06.670952+02	General- und Spezialkarten Mappe I_0043	scan/General-_und_Spezialkarten_Mappe_I_0043.tif		\N
488	2018-06-08 14:10:23.164333+02	2018-07-03 12:44:31.418672+02	General- und Spezialkarten Mappe I_0044	scan/General-_und_Spezialkarten_Mappe_I_0044.tif		\N
489	2018-06-08 14:14:30.779852+02	2018-07-03 12:44:51.648285+02	General- und Spezialkarten Mappe I_0045	scan/General-_und_Spezialkarten_Mappe_I_0045.tif		\N
490	2018-06-08 14:22:43.212794+02	2018-07-03 12:45:10.998579+02	General- und Spezialkarten Mappe I_0046	scan/General-_und_Spezialkarten_Mappe_I_0046.tif		\N
491	2018-06-08 14:25:18.776545+02	2018-07-03 12:45:28.550027+02	General- und Spezialkarten Mappe I_0047	scan/General-_und_Spezialkarten_Mappe_I_0047.tif		\N
493	2018-06-08 14:29:26.652437+02	2018-07-03 12:46:32.317238+02	General- und Spezialkarten Mappe I_0049	scan/General-_und_Spezialkarten_Mappe_I_0049.tif		\N
492	2018-06-08 14:27:31.642232+02	2018-07-03 12:46:17.603231+02	General- und Spezialkarten Mappe I_0048	scan/General-_und_Spezialkarten_Mappe_I_0048.tif		\N
495	2018-06-08 15:10:22.540109+02	2018-07-03 12:47:42.996124+02	General- und Spezialkarten Mappe I_0051	scan/General-_und_Spezialkarten_Mappe_I_0051.tif		\N
494	2018-06-08 14:33:37.13175+02	2018-07-03 12:47:19.348009+02	General- und Spezialkarten Mappe I_0050	scan/General-_und_Spezialkarten_Mappe_I_0050.tif		\N
503	2018-06-12 15:11:32.003661+02	2018-07-03 12:48:01.41079+02	General- und Spezialkarten Mappe I_0052	scan/General-_und_Spezialkarten_Mappe_I_0052.tif		\N
505	2018-06-12 15:27:53.718701+02	2018-07-03 12:48:52.753314+02	General- und Spezialkarten Mappe I_0054	scan/General-_und_Spezialkarten_Mappe_I_0054.tif		\N
504	2018-06-12 15:23:26.863542+02	2018-07-03 12:48:37.589118+02	General- und Spezialkarten Mappe I_0053	scan/General-_und_Spezialkarten_Mappe_I_0053.tif		\N
506	2018-06-12 15:29:54.069984+02	2018-07-03 12:49:22.212288+02	General- und Spezialkarten Mappe I_0055	scan/General-_und_Spezialkarten_Mappe_I_0055.tif		\N
507	2018-06-12 15:33:23.815532+02	2018-07-03 12:49:47.604315+02	General- und Spezialkarten Mappe I_0056	scan/General-_und_Spezialkarten_Mappe_I_0056.tif		\N
508	2018-06-13 14:21:32.117007+02	2018-07-03 12:50:12.816076+02	General- und Spezialkarten Mappe I_0057	scan/General-_und_Spezialkarten_Mappe_I_0057.tif		\N
509	2018-06-13 14:22:58.725644+02	2018-07-03 12:50:35.68925+02	General- und Spezialkarten Mappe I_0058	scan/General-_und_Spezialkarten_Mappe_I_0058.tif		\N
510	2018-06-13 14:24:27.96576+02	2018-07-03 12:50:52.171401+02	General- und Spezialkarten Mappe I_0059	scan/General-_und_Spezialkarten_Mappe_I_0059.tif		\N
511	2018-06-13 14:30:53.446421+02	2018-07-03 12:51:14.53642+02	General- und Spezialkarten Mappe I_0060	scan/General-_und_Spezialkarten_Mappe_I_0060.tif		\N
512	2018-06-13 14:32:58.995481+02	2018-07-03 12:51:34.235258+02	General- und Spezialkarten Mappe I_0061	scan/General-_und_Spezialkarten_Mappe_I_0061.tif		\N
514	2018-06-13 14:42:04.17399+02	2018-07-03 12:52:36.224251+02	General- und Spezialkarten Mappe I_0063	scan/General-_und_Spezialkarten_Mappe_I_0063.tif		\N
496	2018-06-12 12:54:20.563518+02	2018-07-09 13:13:07.7591+02	Karten außerhalb der Lieferungen_0004	scan/KartenAuerhalbDerLieferungen_0004.tif		\N
497	2018-06-12 13:09:28.093764+02	2018-07-09 13:15:17.483292+02	Karten außerhalb der Lieferungen_0007	scan/KartenAuerhalbDerLieferungen_0007.tif		\N
498	2018-06-12 13:13:25.727512+02	2018-07-09 13:15:51.611526+02	Karten außerhalb der Lieferungen_0009	scan/KartenAuerhalbDerLieferungen_0009.tif		\N
499	2018-06-12 13:15:39.362335+02	2018-07-09 13:16:30.659008+02	Karten außerhalb der Lieferungen_0010	scan/KartenAuerhalbDerLieferungen_0010.tif		\N
500	2018-06-12 13:19:06.645582+02	2018-07-09 13:16:55.271298+02	Karten außerhalb der Lieferungen_0011	scan/KartenAuerhalbDerLieferungen_0011.tif		\N
53	2018-02-07 12:44:21.69926+01	2018-07-09 13:17:16.634053+02	Karten außerhalb der Lieferungen_0012	scan/KartenAusserhalbDerLieferungen_0012.tif		\N
501	2018-06-12 14:28:12.603405+02	2018-07-09 13:30:32.096622+02	Karten außerhalb der Lieferungen_0029	scan/KartenAuerhalbDerLieferungen_0029_8teI2aC.tif		\N
170	2018-04-04 13:44:49.466883+02	2018-07-09 13:30:54.283783+02	Karten außerhalb der Lieferungen_0030	scan/KartenAuerhalbDerLieferungen_0030_lSpxdcM.tif		\N
502	2018-06-12 14:36:55.144918+02	2018-07-09 13:32:04.259459+02	Karten außerhalb der Lieferungen_0033	scan/KartenAuerhalbDerLieferungen_0033.tif		\N
518	2018-06-15 11:55:47.104765+02	2018-07-11 15:16:39.495491+02	Schwarze Mappe diverse_0004	scan/SchwarzeMappe_diverse_0004.tif		\N
563	2018-06-18 14:20:15.385912+02	2018-06-26 12:49:05.35736+02	Schwarze Mappe diverse_0051	scan/SchwarzeMappe_diverse_0051.tif		\N
562	2018-06-18 14:18:19.541089+02	2018-06-26 12:51:11.735956+02	Schwarze Mappe diverse_0050	scan/SchwarzeMappe_diverse_0050.tif		\N
550	2018-06-18 13:30:58.724274+02	2018-06-26 13:11:03.771717+02	Schwarze Mappe diverse_0037	scan/SchwarzeMappe_diverse_0037.tif		\N
549	2018-06-18 13:26:10.508956+02	2018-06-26 13:11:48.606276+02	Schwarze Mappe diverse_0036	scan/SchwarzeMappe_diverse_0036.tif		\N
560	2018-06-18 14:14:59.071935+02	2018-06-26 12:57:47.993551+02	Schwarze Mappe diverse_0048	scan/SchwarzeMappe_diverse_0048.tif		\N
559	2018-06-18 14:06:06.781439+02	2018-06-26 12:58:27.265241+02	Schwarze Mappe diverse_0047	scan/SchwarzeMappe_diverse_0047.tif		\N
558	2018-06-18 14:03:32.768082+02	2018-06-26 12:58:45.326013+02	Schwarze Mappe diverse_0046	scan/SchwarzeMappe_diverse_0046.tif		\N
557	2018-06-18 13:58:39.045474+02	2018-06-26 12:59:07.854968+02	Schwarze Mappe diverse_0045	scan/SchwarzeMappe_diverse_0045.tif		\N
556	2018-06-18 13:46:23.429525+02	2018-06-26 13:00:04.589944+02	Schwarze Mappe diverse_0043	scan/SchwarzeMappe_diverse_0043.tif		\N
555	2018-06-18 13:43:34.275821+02	2018-06-26 13:00:21.789196+02	Schwarze Mappe diverse_0042	scan/SchwarzeMappe_diverse_0042.tif		\N
561	2018-06-18 14:16:48.166666+02	2018-06-26 13:01:38.660962+02	Schwarze Mappe diverse_0049	scan/SchwarzeMappe_diverse_0049.tif		\N
554	2018-06-18 13:42:11.189531+02	2018-06-26 13:02:10.662436+02	Schwarze Mappe diverse_0041	scan/SchwarzeMappe_diverse_0041.tif		\N
553	2018-06-18 13:40:49.28624+02	2018-06-26 13:02:36.722755+02	Schwarze Mappe diverse_0040	scan/SchwarzeMappe_diverse_0040.tif		\N
552	2018-06-18 13:35:03.957742+02	2018-06-26 13:03:00.413849+02	Schwarze Mappe diverse_0039	scan/SchwarzeMappe_diverse_0039.tif		\N
551	2018-06-18 13:33:47.32082+02	2018-06-26 13:10:48.471102+02	Schwarze Mappe diverse_0038	scan/SchwarzeMappe_diverse_0038.tif		\N
548	2018-06-18 13:24:21.904612+02	2018-06-26 13:12:03.234642+02	Schwarze Mappe diverse_0035	scan/SchwarzeMappe_diverse_0035.tif		\N
547	2018-06-15 15:28:19.593508+02	2018-06-26 13:12:18.264692+02	Schwarze Mappe diverse_0034	scan/SchwarzeMappe_diverse_0034.tif		\N
546	2018-06-15 15:26:49.032544+02	2018-06-26 13:12:31.72428+02	Schwarze Mappe diverse_0033	scan/SchwarzeMappe_diverse_0033.tif		\N
539	2018-06-15 15:09:41.21057+02	2018-06-26 13:27:32.928066+02	Schwarze Mappe diverse_0026	scan/SchwarzeMappe_diverse_0026.tif		\N
545	2018-06-15 15:22:38.176694+02	2018-06-26 13:12:56.395027+02	Schwarze Mappe diverse_0032	scan/SchwarzeMappe_diverse_0032.tif		\N
544	2018-06-15 15:21:24.476003+02	2018-06-26 13:13:07.291057+02	Schwarze Mappe diverse_0031	scan/SchwarzeMappe_diverse_0031.tif		\N
543	2018-06-15 15:20:24.056134+02	2018-06-26 13:13:25.475568+02	Schwarze Mappe diverse_0030	scan/SchwarzeMappe_diverse_0030.tif		\N
542	2018-06-15 15:18:41.978906+02	2018-06-26 13:14:00.791144+02	Schwarze Mappe diverse_0029	scan/SchwarzeMappe_diverse_0029.tif		\N
538	2018-06-15 15:05:14.397006+02	2018-06-26 13:28:34.500523+02	Schwarze Mappe diverse_0025	scan/SchwarzeMappe_diverse_0025.tif		\N
541	2018-06-15 15:13:28.906775+02	2018-06-26 13:26:40.973677+02	Schwarze Mappe diverse_0028	scan/SchwarzeMappe_diverse_0028.tif		\N
537	2018-06-15 15:03:09.799843+02	2018-06-26 13:28:53.626794+02	Schwarze Mappe diverse_0024	scan/SchwarzeMappe_diverse_0024.tif		\N
540	2018-06-15 15:11:08.043826+02	2018-06-26 13:27:14.837618+02	Schwarze Mappe diverse_0027	scan/SchwarzeMappe_diverse_0027.tif		\N
536	2018-06-15 15:01:53.690194+02	2018-06-26 13:29:20.673496+02	Schwarze Mappe diverse_0023	scan/SchwarzeMappe_diverse_0023.tif		\N
535	2018-06-15 14:57:52.230498+02	2018-06-26 13:29:36.608794+02	Schwarze Mappe diverse_0022	scan/SchwarzeMappe_diverse_0022.tif		\N
534	2018-06-15 14:55:47.390313+02	2018-06-26 13:31:24.015486+02	Schwarze Mappe diverse_0021	scan/SchwarzeMappe_diverse_0021.tif		\N
533	2018-06-15 14:50:51.020163+02	2018-06-26 13:32:06.007067+02	Schwarze Mappe diverse_0019	scan/SchwarzeMappe_diverse_0019.tif		\N
532	2018-06-15 14:46:27.845218+02	2018-06-26 13:32:22.556415+02	Schwarze Mappe diverse_0018	scan/SchwarzeMappe_diverse_0018.tif		\N
531	2018-06-15 14:43:18.953784+02	2018-06-26 13:32:39.202837+02	Schwarze Mappe diverse_0017	scan/SchwarzeMappe_diverse_0017.tif		\N
530	2018-06-15 14:41:53.775561+02	2018-06-26 13:32:55.651031+02	Schwarze Mappe diverse_0016	scan/SchwarzeMappe_diverse_0016.tif		\N
105	2018-03-22 13:51:32.490589+01	2018-07-03 15:39:11.932788+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0006	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0006.tif		\N
529	2018-06-15 14:37:54.550907+02	2018-06-26 13:33:32.034777+02	Schwarze Mappe diverse_0015	scan/SchwarzeMappe_diverse_0015.tif		\N
566	2018-06-26 14:05:19.313577+02	2018-06-26 14:05:19.313604+02	SchwarzeMappe_diverse_0020	scan/SchwarzeMappe_diverse_0020.tif		\N
528	2018-06-15 14:34:16.895965+02	2018-06-26 13:40:31.834889+02	Schwarze Mappe diverse_0014	scan/SchwarzeMappe_diverse_0014.tif		\N
527	2018-06-15 14:31:39.863637+02	2018-06-26 13:40:43.120292+02	Schwarze Mappe diverse_0013	scan/SchwarzeMappe_diverse_0013.tif		\N
684	2018-09-12 13:29:20.570181+02	2019-04-05 13:15:52.894424+02	DiverseLade14_0064	scan/DiverseLade14_0064.tif		\N
526	2018-06-15 14:29:53.316739+02	2018-06-26 13:40:53.950109+02	Schwarze Mappe diverse_0012	scan/SchwarzeMappe_diverse_0012.tif		\N
525	2018-06-15 14:24:41.184195+02	2018-06-26 13:41:07.51014+02	Schwarze Mappe diverse_0011	scan/SchwarzeMappe_diverse_0011.tif		\N
524	2018-06-15 12:25:33.993224+02	2018-06-26 13:41:21.791496+02	Schwarze Mappe diverse_0010	scan/SchwarzeMappe_diverse_0010.tif		\N
367	2018-05-28 14:14:42.816758+02	2018-07-04 16:01:11.950409+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0012	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0012.tif		\N
523	2018-06-15 12:21:10.960104+02	2018-06-26 13:41:55.700523+02	Schwarze Mappe diverse_0009	scan/SchwarzeMappe_diverse_0009.tif		\N
522	2018-06-15 12:07:24.146175+02	2018-06-26 13:42:09.699644+02	Schwarze Mappe diverse_0008	scan/SchwarzeMappe_diverse_0008.tif		\N
521	2018-06-15 12:03:13.887218+02	2018-06-26 13:42:28.913919+02	Schwarze Mappe diverse_0007	scan/SchwarzeMappe_diverse_0007.tif		\N
520	2018-06-15 12:00:47.027713+02	2018-06-26 13:42:48.854563+02	Schwarze Mappe diverse_0006	scan/SchwarzeMappe_diverse_0006.tif		\N
569	2018-07-04 17:05:03.078614+02	2019-04-01 12:54:55.823294+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0011	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0011.tif		\N
567	2018-06-26 14:06:28.833743+02	2018-06-26 14:06:28.833771+02	SchwarzeMappe_diverse_0044	scan/SchwarzeMappe_diverse_0044.tif		\N
448	2018-06-05 13:32:57.027537+02	2018-07-03 12:16:49.603393+02	General- und Spezialkarten Mappe I_0001	scan/General-_und_Spezialkarten_Mappe_I_0001.tif		\N
461	2018-06-07 12:50:39.615913+02	2018-07-03 12:27:15.765902+02	General- und Spezialkarten Mappe I_0014	scan/General-_und_Spezialkarten_Mappe_I_0014.tif		\N
469	2018-06-07 14:28:20.532219+02	2018-07-03 12:33:49.469135+02	General- und Spezialkarten Mappe I_0024	scan/General-_und_Spezialkarten_Mappe_I_0024.tif		\N
513	2018-06-13 14:39:18.572633+02	2018-07-03 12:52:18.486383+02	General- und Spezialkarten Mappe I_0062	scan/General-_und_Spezialkarten_Mappe_I_0062.tif		\N
79	2018-03-21 15:01:06.005238+01	2018-07-03 13:05:02.049401+02	I.Entwürfe ausserhalb der Lieferungen_0001	scan/I.EntwrfeAuerhalbDerLieferungen_0001.tif		\N
101	2018-03-22 12:20:49.517466+01	2018-07-03 13:31:17.759279+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0000	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0000.tif		\N
110	2018-03-22 14:27:02.92438+01	2018-07-04 16:01:31.614949+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0013	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0013.tif		\N
515	2018-06-15 11:35:52.811633+02	2018-07-10 14:10:27.009996+02	Schwarze Mappe diverse_0001	scan/SchwarzeMappe_diverse_0001.tif		\N
568	2018-07-04 17:03:52.497037+02	2019-04-01 12:55:24.322474+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0004	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0004.tif		\N
888	2019-05-09 11:38:16.387517+02	2019-05-09 11:38:16.387545+02	Diverse_0910	scan/Diverse_0910.tif		\N
889	2019-05-09 11:51:34.681931+02	2019-05-09 11:51:34.681962+02	DiverseLade14_3738	scan/DiverseLade14_3738.tif		\N
307	2018-05-18 17:38:56.654232+02	2018-07-05 12:35:00.4392+02	IV.Gedruckte Karten der Lieferungen_0000	scan/IV.GedruckteKartenDerLieferungen_0000.tif		\N
337	2018-05-22 12:45:06.283386+02	2018-07-05 14:34:54.177127+02	IV.Gedruckte Karten der Lieferungen_0030	scan/IV.GedruckteKartenDerLieferungen_0030.tif		\N
365	2018-05-23 15:45:16.043241+02	2018-07-05 14:53:50.244746+02	IV.Gedruckte Karten der Lieferungen_0058	scan/IV.GedruckteKartenDerLieferungen_0058.tif		\N
157	2018-04-04 12:08:05.873196+02	2018-07-05 16:09:25.053158+02	IX.Oetztaler Arbeit_0007	scan/IX.OetztalerArbeit_0007_RtdRfMx.tif		\N
176	2018-04-19 12:52:56.457109+02	2018-07-09 12:28:49.587145+02	IX.Vierte Lieferung (In Vorbereitung)_0000	scan/IX.VierteLieferungInVorbereitung_0000.tif		\N
270	2018-05-15 16:30:18.651133+02	2018-07-09 14:02:15.027552+02	Kleine Karten Kranzmayer_0001	scan/Kleine_Karten_Kranzmayer_0001.tif		\N
280	2018-05-16 15:40:09.96129+02	2018-07-09 14:15:20.049423+02	Kleine Karten Kranzmayer_0011	scan/Kleine_Karten_Kranzmayer_0011.tif		\N
442	2018-06-05 12:52:43.162462+02	2018-07-09 15:47:13.899923+02	Kleine Karten Kranzmayer_0111	scan/Kleine_Karten_Kranzmayer_0111.tif		\N
212	2018-05-04 15:02:12.043491+02	2018-07-10 14:37:46.021216+02	V.Beiblaetter Fuer Den Atlastext_0016	scan/V.BeiblaetterFuerDenAtlastext_0016.tif		\N
228	2018-05-07 12:14:50.66257+02	2018-07-10 16:03:42.705638+02	VIII.Dritte Lieferung (In Vorbereitung)_0009	scan/VIII.DritteLieferungInVorbereitung_0009.tif		\N
582	2018-08-30 10:06:38.799615+02	2018-08-30 10:06:38.799646+02	ZuMappeITirol33-44_0002	scan/ZuMappeITirol33-44_0001.tif		\N
581	2018-08-30 10:01:30.245187+02	2018-08-30 10:07:20.640888+02	ZuMappeITirol33-44_0001	scan/ZuMappeITirol33-44_0000.tif		\N
583	2018-08-30 10:11:44.767284+02	2018-08-30 10:11:44.767316+02	ZuMappeITirol33-44_0003	scan/ZuMappeITirol33-44_0002.tif		\N
584	2018-08-30 10:17:26.124831+02	2018-08-30 10:17:26.124878+02	ZuMappeITirol33-44_0004	scan/ZuMappeITirol33-44_0003.tif		\N
585	2018-08-30 10:28:53.177085+02	2018-08-30 10:28:53.177115+02	ZuMappeITirol33-44_0005	scan/ZuMappeITirol33-44_0004.tif		\N
586	2018-08-30 10:54:07.490273+02	2018-08-30 10:54:07.490301+02	ZuMappeITirol33-44_0005	scan/ZuMappeITirol33-44_0005.tif		\N
588	2018-08-30 11:07:22.309287+02	2018-08-30 11:07:22.309317+02	ZuMappeITirol33-44_0008	scan/ZuMappeITirol33-44_0007.tif		\N
589	2018-08-30 11:12:20.562293+02	2018-08-30 11:12:20.56233+02	ZuMappeITirol33-44_0009	scan/ZuMappeITirol33-44_0008.tif		\N
590	2018-08-30 11:17:55.387341+02	2018-08-30 11:17:55.387368+02	ZuMappeITirol33-44_0010	scan/ZuMappeITirol33-44_0009.tif		\N
591	2018-08-30 11:20:36.550629+02	2018-08-30 11:20:36.550657+02	ZuMappeITirol33-44_0011	scan/ZuMappeITirol33-44_0010.tif		\N
592	2018-08-30 11:22:58.045145+02	2018-08-30 11:22:58.045173+02	ZuMappeITirol33-44_0012	scan/ZuMappeITirol33-44_0011.tif		\N
593	2018-08-30 11:25:06.490642+02	2018-08-30 11:25:06.490681+02	ZuMappeITirol33-44_0013	scan/ZuMappeITirol33-44_0012.tif		\N
594	2018-08-30 11:26:27.361729+02	2018-08-30 11:26:27.361758+02	ZuMappeITirol33-44_0014	scan/ZuMappeITirol33-44_0013.tif		\N
595	2018-08-30 11:27:43.959927+02	2018-08-30 11:27:43.959972+02	ZuMappeITirol33-44_0015	scan/ZuMappeITirol33-44_0014.tif		\N
596	2018-08-30 11:30:25.261193+02	2018-08-30 11:30:25.26122+02	ZuMappeITirol33-44_0016	scan/ZuMappeITirol33-44_0015.tif		\N
572	2018-07-04 17:10:24.399102+02	2019-04-01 12:53:52.788267+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0040	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0040.tif		\N
598	2018-09-06 11:24:58.713063+02	2018-09-06 11:37:56.669569+02	SuggestiveKartenKärnten_0002	scan/SuggestiveKartenKrntens_0002.tif		\N
600	2018-09-06 11:38:41.782396+02	2018-09-06 11:39:21.215835+02	SuggestiveKartenKärnten_0001	scan/SuggestiveKartenKrntens_0001.tif		\N
602	2018-09-06 12:23:55.135817+02	2018-09-06 12:23:55.135845+02	SuggestiveKartenKärnten_0005	scan/SuggestiveKartenKrntens_0005.tif		\N
597	2018-09-05 13:29:34.294904+02	2019-01-10 11:36:42.778178+01	ProbedruckDAÖFaschingFastnacht_0001	scan/ProbedruckDAFaschingFastnacht_0001.tif		\N
599	2018-09-06 11:35:49.951238+02	2019-03-18 14:48:03.079909+01	SuggestiveKartenKärnten_0003	scan/SuggestiveKartenKrntens_0003.tif		\N
571	2018-07-04 17:09:45.207105+02	2019-04-01 12:54:19.790635+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0024	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0024.tif		\N
578	2018-08-30 09:38:17.062905+02	2019-04-08 10:43:57.443269+02	Karten außerhalb der Lieferungen_0001	scan/KartenAuerhalbDerLieferungen_0001.tif		\N
577	2018-07-10 17:08:54.928093+02	2019-04-08 10:44:06.721498+02	Karten außerhalb der Lieferungen_0002	scan/KartenAuerhalbDerLieferungen_0002.tif		\N
604	2018-09-10 14:37:49.164923+02	2019-04-08 12:18:21.175445+02	Synonymenkarten_0001	scan/Synonymenkarten_0001.tif		\N
605	2018-09-10 15:01:54.52009+02	2019-04-08 12:18:30.16115+02	Synonymenkarten_0002	scan/Synonymenkarten_0002.tif		\N
606	2018-09-10 15:04:17.072282+02	2019-04-08 12:18:38.831258+02	Synonymenkarten_0003	scan/Synonymenkarten_0003.tif		\N
607	2018-09-10 15:06:17.191162+02	2019-04-08 12:18:49.500133+02	Synonymenkarten_0004	scan/Synonymenkarten_0004.tif		\N
608	2018-09-10 15:08:39.201586+02	2019-04-08 12:18:58.375393+02	Synonymenkarten_0005	scan/Synonymenkarten_0005.tif		\N
609	2018-09-10 15:15:28.398041+02	2019-04-08 12:19:14.920057+02	Synonymenkarten_0006	scan/Synonymenkarten_0006.tif		\N
611	2018-09-10 15:23:25.744823+02	2019-04-08 12:19:46.646543+02	Synonymenkarten_0008	scan/Synonymenkarten_0008.tif		\N
610	2018-09-10 15:20:44.624834+02	2019-04-08 12:19:36.337608+02	Synonymenkarten_0007	scan/Synonymenkarten_0007.tif		\N
612	2018-09-10 15:24:55.313973+02	2019-04-08 12:19:57.295141+02	Synonymenkarten_0009	scan/Synonymenkarten_0009.tif		\N
613	2018-09-10 15:30:52.621862+02	2019-04-08 12:20:06.562276+02	Synonymenkarten_0010	scan/Synonymenkarten_0010.tif		\N
614	2018-09-10 15:32:07.855013+02	2019-04-08 12:20:25.285442+02	Synonymenkarten_0011	scan/Synonymenkarten_0011.tif		\N
615	2018-09-10 15:54:24.074758+02	2019-04-08 12:20:34.427056+02	Synonymenkarten_0012	scan/Synonymenkarten_0012.tif		\N
616	2018-09-10 15:56:19.803974+02	2019-04-08 12:20:43.216446+02	Synonymenkarten_0013	scan/Synonymenkarten_0013.tif		\N
617	2018-09-10 15:58:32.609752+02	2019-04-08 12:20:50.926331+02	Synonymenkarten_0014	scan/Synonymenkarten_0014.tif		\N
618	2018-09-10 15:59:53.777043+02	2019-04-08 12:20:58.997319+02	Synonymenkarten_0015	scan/Synonymenkarten_0015.tif		\N
619	2018-09-10 16:01:09.394002+02	2019-04-08 12:21:07.521566+02	Synonymenkarten_0016	scan/Synonymenkarten_0016.tif		\N
620	2018-09-10 16:03:05.503519+02	2019-04-08 12:21:16.896042+02	Synonymenkarten_0017	scan/Synonymenkarten_0017.tif		\N
621	2018-09-10 16:24:25.053995+02	2019-04-08 12:21:37.509548+02	Synonymenkarten2_0001	scan/Synonymenkarten2_0001.tif		\N
622	2018-09-10 16:29:01.195562+02	2019-04-08 12:21:45.882866+02	Synonymenkarten2_0002	scan/Synonymenkarten2_0002.tif		\N
623	2018-09-10 16:31:47.713332+02	2019-04-08 12:21:53.991859+02	Synonymenkarten2_0003	scan/Synonymenkarten2_0003.tif		\N
624	2018-09-10 16:33:09.454048+02	2019-04-08 12:22:01.899674+02	Synonymenkarten2_0004	scan/Synonymenkarten2_0004.tif		\N
625	2018-09-10 16:35:03.382832+02	2019-04-08 12:22:09.91036+02	Synonymenkarten2_0005	scan/Synonymenkarten2_0005.tif		\N
626	2018-09-10 16:36:20.730919+02	2019-04-08 12:22:16.701905+02	Synonymenkarten2_0006	scan/Synonymenkarten2_0006.tif		\N
573	2018-07-10 16:50:22.351176+02	2019-04-08 12:36:34.411183+02	V.Beiblaetter Fuer Den Atlastext_0005	scan/V.BeiblaetterFuerDenAtlastext_0005.tif		\N
579	2018-08-30 09:39:39.421137+02	2019-04-08 12:36:51.110212+02	V.Beiblaetter Fuer Den Atlastext_0019	scan/V.BeiblaetterFuerDenAtlastext_0019.tif		\N
580	2018-08-30 09:44:28.9502+02	2019-04-08 12:41:01.871063+02	VIII.Dritte Lieferung (In Vorbereitung)_0018	scan/VIII.DritteLieferungInVorbereitung_0018.tif		\N
576	2018-07-10 16:54:23.620107+02	2019-04-08 12:43:13.011464+02	VII.II.Lieferung (In Vorbereitung)_0028	scan/VII.II.LieferungInVorbereitung_0028.tif		\N
575	2018-07-10 16:53:27.761239+02	2019-04-08 12:43:18.596161+02	VII.II.Lieferung (In Vorbereitung)_0023	scan/VII.II.LieferungInVorbereitung_0023.tif		\N
574	2018-07-10 16:52:29.175016+02	2019-04-08 12:43:27.409716+02	VII.II.Lieferung (In Vorbereitung)_0015	scan/VII.II.LieferungInVorbereitung_0015.tif		\N
603	2018-09-06 12:36:04.080197+02	2018-09-11 10:51:38.71637+02	SuggestiveKartenKärnten_0006	scan/SuggestiveKartenKrntens_0006.tif		\N
627	2018-09-11 11:51:02.52815+02	2018-09-11 11:51:02.528186+02	SuggestiveKartenKärnten_0007	scan/SuggestiveKartenKrntens_0007.tif		\N
628	2018-09-11 11:51:35.539199+02	2018-09-11 11:51:52.719272+02	SuggestiveKartenKärnten_0008	scan/SuggestiveKartenKrntens_0008.tif		\N
629	2018-09-11 15:01:12.755145+02	2019-04-01 13:20:10.412629+02	DiverseLade14_0001	scan/DiverseLade14_0001.tif		\N
630	2018-09-11 15:10:21.675303+02	2019-04-01 13:20:20.887142+02	DiverseLade14_0002	scan/DiverseLade14_0002.tif		\N
631	2018-09-11 15:13:53.430967+02	2019-04-01 13:20:31.37884+02	DiverseLade14_0003	scan/DiverseLade14_0003.tif		\N
632	2018-09-11 15:20:36.80306+02	2019-04-01 13:20:43.919414+02	DiverseLade14_0004	scan/DiverseLade14_0004.tif		\N
633	2018-09-11 15:29:09.906228+02	2019-04-01 13:20:55.929723+02	DiverseLade14_0005	scan/DiverseLade14_0005.tif		\N
634	2018-09-11 15:34:31.972968+02	2019-04-01 13:22:21.863055+02	DiverseLade14_0010	scan/DiverseLade14_0010.tif		\N
635	2018-09-11 15:44:05.205073+02	2019-04-01 13:22:32.490861+02	DiverseLade14_0011	scan/DiverseLade14_0011.tif		\N
636	2018-09-11 15:50:17.856219+02	2019-04-01 13:22:43.396479+02	DiverseLade14_0012	scan/DiverseLade14_0012.tif		\N
637	2018-09-11 16:03:15.648753+02	2019-04-01 13:22:53.968177+02	DiverseLade14_0013	scan/DiverseLade14_0013.tif		\N
638	2018-09-11 16:04:30.548443+02	2019-04-01 13:23:04.473097+02	DiverseLade14_0014	scan/DiverseLade14_0014.tif		\N
639	2018-09-11 16:06:36.128811+02	2019-04-01 13:23:18.774389+02	DiverseLade14_0015	scan/DiverseLade14_0015.tif		\N
640	2018-09-11 16:08:00.007202+02	2019-04-01 13:23:41.83253+02	DiverseLade14_0016	scan/DiverseLade14_0016.tif		\N
641	2018-09-11 16:11:23.735969+02	2019-04-01 13:23:50.33809+02	DiverseLade14_0017	scan/DiverseLade14_0017.tif		\N
642	2018-09-11 16:14:40.414163+02	2019-04-01 13:23:59.849144+02	DiverseLade14_0018	scan/DiverseLade14_0018.tif		\N
643	2018-09-11 16:16:07.708004+02	2019-04-01 13:24:11.900132+02	DiverseLade14_0019	scan/DiverseLade14_0019.tif		\N
644	2018-09-11 16:17:20.400973+02	2019-04-01 13:24:20.682089+02	DiverseLade14_0020	scan/DiverseLade14_0020.tif		\N
645	2018-09-11 16:23:13.695989+02	2019-04-01 13:24:32.012447+02	DiverseLade14_0021	scan/DiverseLade14_0021.tif		\N
646	2018-09-11 16:24:37.698997+02	2019-04-01 13:24:41.510027+02	DiverseLade14_0022	scan/DiverseLade14_0022.tif		\N
647	2018-09-11 16:26:35.681047+02	2019-04-01 13:24:50.685597+02	DiverseLade14_0023	scan/DiverseLade14_0023.tif		\N
648	2018-09-11 16:29:24.471577+02	2019-04-01 13:25:00.840383+02	DiverseLade14_0024	scan/DiverseLade14_0024.tif		\N
649	2018-09-11 16:33:07.70912+02	2019-04-01 13:25:25.974422+02	DiverseLade14_0025	scan/DiverseLade14_0025.tif		\N
650	2018-09-11 16:34:24.812764+02	2019-04-01 13:25:35.090347+02	DiverseLade14_0026	scan/DiverseLade14_0026.tif		\N
651	2018-09-11 16:37:05.70696+02	2019-04-01 13:25:43.592084+02	DiverseLade14_0027	scan/DiverseLade14_0027.tif		\N
652	2018-09-11 16:39:22.237977+02	2019-04-01 13:25:55.49959+02	DiverseLade14_0028	scan/DiverseLade14_0028.tif		\N
653	2018-09-11 16:40:53.702025+02	2019-04-01 13:26:04.756398+02	DiverseLade14_0029	scan/DiverseLade14_0029.tif		\N
654	2018-09-11 16:45:18.006975+02	2019-04-01 13:26:49.743564+02	DiverseLade14_0031	scan/DiverseLade14_0031.tif		\N
656	2018-09-11 16:55:28.925983+02	2019-04-01 13:27:08.288403+02	DiverseLade14_0033	scan/DiverseLade14_0033.tif		\N
657	2018-09-11 16:56:44.889995+02	2019-04-01 13:27:17.583298+02	DiverseLade14_0034	scan/DiverseLade14_0034.tif		\N
658	2018-09-11 16:59:04.714232+02	2019-04-01 13:27:25.750669+02	DiverseLade14_0035	scan/DiverseLade14_0035.tif		\N
659	2018-09-11 17:02:22.054917+02	2019-04-01 13:27:34.160199+02	DiverseLade14_0036	scan/DiverseLade14_0036.tif		\N
660	2018-09-11 17:17:09.323002+02	2019-04-01 13:27:42.559628+02	DiverseLade14_0039	scan/DiverseLade14_0039.tif		\N
661	2018-09-11 17:20:06.95883+02	2019-04-01 13:27:51.559093+02	DiverseLade14_0040	scan/DiverseLade14_0040.tif		\N
662	2018-09-11 17:21:55.886014+02	2019-04-01 13:28:13.514375+02	DiverseLade14_0041	scan/DiverseLade14_0041.tif		\N
663	2018-09-11 17:29:22.829118+02	2019-04-01 13:28:22.021655+02	DiverseLade14_0042	scan/DiverseLade14_0042.tif		\N
664	2018-09-12 10:26:59.314007+02	2019-04-01 13:28:31.781618+02	DiverseLade14_0043	scan/DiverseLade14_0043.tif		\N
665	2018-09-12 10:30:05.099053+02	2019-04-01 13:28:39.835522+02	DiverseLade14_0044	scan/DiverseLade14_0044.tif		\N
666	2018-09-12 10:38:36.578124+02	2019-04-01 13:28:51.849866+02	DiverseLade14_0045	scan/DiverseLade14_0045.tif		\N
668	2018-09-12 10:47:10.694288+02	2019-04-05 13:12:37.183496+02	DiverseLade14_0047	scan/DiverseLade14_0047.tif		\N
667	2018-09-12 10:44:51.98998+02	2019-04-05 13:11:41.213451+02	DiverseLade14_0046	scan/DiverseLade14_0046.tif		\N
669	2018-09-12 10:52:02.982958+02	2019-04-05 13:12:46.472357+02	DiverseLade14_0048	scan/DiverseLade14_0048.tif		\N
670	2018-09-12 10:54:53.737973+02	2019-04-05 13:12:56.863299+02	DiverseLade14_0049	scan/DiverseLade14_0049.tif		\N
671	2018-09-12 11:05:07.032454+02	2019-04-05 13:13:07.9824+02	DiverseLade14_0050	scan/DiverseLade14_0050.tif		\N
672	2018-09-12 11:09:42.160036+02	2019-04-05 13:13:15.836434+02	DiverseLade14_0051	scan/DiverseLade14_0051.tif		\N
673	2018-09-12 11:16:06.861593+02	2019-04-05 13:13:24.288582+02	DiverseLade14_0052	scan/DiverseLade14_0052.tif		\N
674	2018-09-12 12:14:41.448007+02	2019-04-05 13:13:32.573321+02	DiverseLade14_0053	scan/DiverseLade14_0053.tif		\N
675	2018-09-12 12:16:51.584004+02	2019-04-05 13:13:40.504354+02	DiverseLade14_0054	scan/DiverseLade14_0054.tif		\N
676	2018-09-12 12:18:24.562902+02	2019-04-05 13:13:49.012274+02	DiverseLade14_0055	scan/DiverseLade14_0055.tif		\N
677	2018-09-12 12:20:13.263167+02	2019-04-05 13:13:58.853016+02	DiverseLade14_0056	scan/DiverseLade14_0056.tif		\N
678	2018-09-12 12:39:00.534436+02	2019-04-05 13:14:14.907286+02	DiverseLade14_0058	scan/DiverseLade14_0058.tif		\N
679	2018-09-12 12:45:57.921087+02	2019-04-05 13:14:23.202263+02	DiverseLade14_0059	scan/DiverseLade14_0059.tif		\N
680	2018-09-12 12:56:52.853955+02	2019-04-05 13:14:38.797637+02	DiverseLade14_0060	scan/DiverseLade14_0060.tif		\N
681	2018-09-12 13:04:58.691586+02	2019-04-05 13:15:32.01221+02	DiverseLade14_0061	scan/DiverseLade14_0061.tif		\N
686	2018-09-12 13:35:22.919096+02	2019-04-05 13:16:07.282113+02	DiverseLade14_0066	scan/DiverseLade14_0066.tif		\N
687	2018-09-13 13:52:12.487556+02	2019-04-05 13:16:13.934535+02	DiverseLade14_0067	scan/DiverseLade14_0067.tif		\N
688	2018-09-13 13:55:22.013061+02	2019-04-05 13:16:21.201586+02	DiverseLade14_0068	scan/DiverseLade14_0068.tif		\N
689	2018-09-13 14:00:56.770145+02	2019-04-05 13:16:27.823918+02	DiverseLade14_0069	scan/DiverseLade14_0069.tif		\N
690	2018-09-13 14:05:13.968047+02	2019-04-05 13:16:34.582993+02	DiverseLade14_0070	scan/DiverseLade14_0070.tif		\N
691	2018-09-13 14:07:03.179758+02	2019-04-05 13:16:42.282937+02	DiverseLade14_0071	scan/DiverseLade14_0071.tif		\N
692	2018-09-13 14:09:36.114239+02	2019-04-05 13:16:48.68944+02	DiverseLade14_0072	scan/DiverseLade14_0072.tif		\N
693	2018-09-13 14:10:56.009456+02	2019-04-05 13:16:56.109464+02	DiverseLade14_0073	scan/DiverseLade14_0073.tif		\N
694	2018-09-13 14:13:06.984089+02	2019-04-05 13:17:02.487351+02	DiverseLade14_0074	scan/DiverseLade14_0074.tif		\N
695	2018-09-13 14:16:51.687407+02	2019-04-05 13:17:09.695351+02	DiverseLade14_0075	scan/DiverseLade14_0075.tif		\N
696	2018-09-13 14:18:12.087425+02	2019-04-05 13:17:16.204903+02	DiverseLade14_0076	scan/DiverseLade14_0076.tif		\N
699	2018-09-19 16:27:50.382067+02	2019-04-08 11:48:47.389113+02	MaterialienZumAtlasVonNiederösterreich_0002	scan/MaterialienZumAtlasVonNiedersterreich_0002.tif		\N
700	2018-09-27 10:38:11.000857+02	2019-04-08 11:48:56.213988+02	MaterialienZumAtlasVonNiederösterreich_0003	scan/MaterialienZumAtlasVonNiedersterreich_0003.tif		\N
701	2018-09-27 10:43:35.220538+02	2019-04-08 11:49:04.322644+02	MaterialienZumAtlasVonNiederösterreich_0004	scan/MaterialienZumAtlasVonNiedersterreich_0004.tif		\N
702	2018-09-27 10:50:55.976061+02	2019-04-08 11:49:12.424773+02	MaterialienZumAtlasVonNiederösterreich_0005	scan/MaterialienZumAtlasVonNiedersterreich_0005.tif		\N
745	2018-10-22 12:38:37.689584+02	2019-04-01 13:16:51.044207+02	BearbeitungszustandDerKartenbilderFuerDieErsteLieferung_0002	scan/BearbeitungszustandDerKartenbilderFuerDieErsteLieferung_0002.tif		\N
746	2018-10-22 12:39:52.638386+02	2019-04-01 13:17:00.484668+02	BearbeitungszustandDerKartenbilderFuerDieErsteLieferung_0003	scan/BearbeitungszustandDerKartenbilderFuerDieErsteLieferung_0003.tif		\N
747	2018-10-22 12:41:11.471392+02	2019-04-01 13:17:09.101931+02	BearbeitungszustandDerKartenbilderFuerDieErsteLieferung_0004	scan/BearbeitungszustandDerKartenbilderFuerDieErsteLieferung_0004.tif		\N
748	2018-10-22 12:57:01.717461+02	2019-04-01 13:17:49.655003+02	Diverse_0001	scan/Diverse_0001.tif		\N
749	2018-10-22 14:17:53.35702+02	2019-04-01 13:18:00.004428+02	Diverse_0002	scan/Diverse_0002.tif		\N
750	2018-10-22 14:26:10.139341+02	2019-04-01 13:18:10.647598+02	Diverse_0005	scan/Diverse_0005.tif		\N
751	2018-10-23 11:53:39.776483+02	2019-04-01 13:18:20.460503+02	Diverse_0007	scan/Diverse_0007.tif		\N
703	2018-09-27 10:58:42.868726+02	2019-04-08 11:49:20.803273+02	MaterialienZumAtlasVonNiederösterreich_0006	scan/MaterialienZumAtlasVonNiedersterreich_0006.tif		\N
704	2018-09-27 11:04:54.002755+02	2019-04-08 11:49:29.89304+02	MaterialienZumAtlasVonNiederösterreich_0007	scan/MaterialienZumAtlasVonNiedersterreich_0007.tif		\N
705	2018-09-27 11:09:45.320684+02	2019-04-08 11:49:39.079619+02	MaterialienZumAtlasVonNiederösterreich_0008	scan/MaterialienZumAtlasVonNiedersterreich_0008.tif		\N
706	2018-09-27 11:29:34.967646+02	2019-04-08 11:49:47.80692+02	MaterialienZumAtlasVonNiederösterreich_0009	scan/MaterialienZumAtlasVonNiedersterreich_0009.tif		\N
707	2018-09-27 11:37:16.367551+02	2019-04-08 11:49:56.147604+02	MaterialienZumAtlasVonNiederösterreich_0010	scan/MaterialienZumAtlasVonNiedersterreich_0010.tif		\N
708	2018-09-27 11:53:39.692095+02	2019-04-08 11:52:32.927513+02	MaterialienZumAtlasVonNiederösterreich_0011	scan/MaterialienZumAtlasVonNiedersterreich_0011.tif		\N
709	2018-09-27 12:35:44.011467+02	2019-04-08 11:52:42.975132+02	MaterialienZumAtlasVonNiederösterreich_0012	scan/MaterialienZumAtlasVonNiedersterreich_0012.tif		\N
710	2018-09-27 12:53:12.668592+02	2019-04-08 11:52:53.830931+02	MaterialienZumAtlasVonNiederösterreich_0013	scan/MaterialienZumAtlasVonNiedersterreich_0013.tif		\N
711	2018-10-01 10:46:58.737026+02	2019-04-08 11:53:12.218251+02	MaterialienZumAtlasVonNiederösterreich_0015	scan/MaterialienZumAtlasVonNiedersterreich_0015.tif		\N
712	2018-10-01 11:47:24.24092+02	2019-04-08 11:53:21.256537+02	MaterialienZumAtlasVonNiederösterreich_0016	scan/MaterialienZumAtlasVonNiedersterreich_0016.tif		\N
713	2018-10-01 11:51:52.717022+02	2019-04-08 11:53:30.519489+02	MaterialienZumAtlasVonNiederösterreich_0017	scan/MaterialienZumAtlasVonNiedersterreich_0017.tif		\N
714	2018-10-01 11:54:11.182398+02	2019-04-08 11:53:39.854228+02	MaterialienZumAtlasVonNiederösterreich_0018	scan/MaterialienZumAtlasVonNiedersterreich_0018.tif		\N
715	2018-10-01 11:55:59.907731+02	2019-04-08 11:53:48.358125+02	MaterialienZumAtlasVonNiederösterreich_0019	scan/MaterialienZumAtlasVonNiedersterreich_0019.tif		\N
716	2018-10-01 13:26:57.745492+02	2019-04-08 11:53:56.246407+02	MaterialienZumAtlasVonNiederösterreich_0020	scan/MaterialienZumAtlasVonNiedersterreich_0020.tif		\N
717	2018-10-01 13:38:48.149977+02	2019-04-08 11:55:22.726691+02	MaterialienZumAtlasVonNiederösterreich_0021	scan/MaterialienZumAtlasVonNiedersterreich_0021.tif		\N
718	2018-10-01 13:42:00.740148+02	2019-04-08 11:56:04.881759+02	MaterialienZumAtlasVonNiederösterreich_0022	scan/MaterialienZumAtlasVonNiedersterreich_0022.tif		\N
719	2018-10-01 13:48:00.241278+02	2019-04-08 11:56:13.56955+02	MaterialienZumAtlasVonNiederösterreich_0023	scan/MaterialienZumAtlasVonNiedersterreich_0023.tif		\N
720	2018-10-01 14:17:15.703375+02	2019-04-08 11:56:29.020593+02	MaterialienZumAtlasVonNiederösterreich_0025	scan/MaterialienZumAtlasVonNiedersterreich_0025.tif		\N
721	2018-10-01 14:20:14.404998+02	2019-04-08 11:56:36.809405+02	MaterialienZumAtlasVonNiederösterreich_0026	scan/MaterialienZumAtlasVonNiedersterreich_0026.tif		\N
722	2018-10-02 13:49:23.70165+02	2019-04-08 11:56:45.359584+02	MaterialienZumAtlasVonNiederösterreich_0027	scan/MaterialienZumAtlasVonNiedersterreich_0027.tif		\N
723	2018-10-02 14:04:07.303201+02	2019-04-08 11:57:01.570493+02	MaterialienZumAtlasVonNiederösterreich_0029	scan/MaterialienZumAtlasVonNiedersterreich_0029.tif		\N
724	2018-10-02 14:21:06.257208+02	2019-04-08 11:57:10.518137+02	MaterialienZumAtlasVonNiederösterreich_0030	scan/MaterialienZumAtlasVonNiedersterreich_0030.tif		\N
725	2018-10-04 11:18:42.899125+02	2019-04-08 11:58:20.65275+02	MaterialienZumAtlasVonNiederösterreich_0031	scan/MaterialienZumAtlasVonNiedersterreich_0031.tif		\N
726	2018-10-04 11:22:37.768004+02	2019-04-08 11:58:30.328298+02	MaterialienZumAtlasVonNiederösterreich_0032	scan/MaterialienZumAtlasVonNiedersterreich_0032.tif		\N
727	2018-10-04 11:27:37.596724+02	2019-04-08 11:58:46.03024+02	MaterialienZumAtlasVonNiederösterreich_0033	scan/MaterialienZumAtlasVonNiedersterreich_0033.tif		\N
728	2018-10-04 11:34:43.431688+02	2019-04-08 11:58:54.524076+02	MaterialienZumAtlasVonNiederösterreich_0034	scan/MaterialienZumAtlasVonNiedersterreich_0034.tif		\N
729	2018-10-04 11:44:43.976929+02	2019-04-08 11:59:02.200847+02	MaterialienZumAtlasVonNiederösterreich_0035	scan/MaterialienZumAtlasVonNiedersterreich_0035.tif		\N
730	2018-10-04 12:15:28.973729+02	2019-04-08 11:59:09.874576+02	MaterialienZumAtlasVonNiederösterreich_0036	scan/MaterialienZumAtlasVonNiedersterreich_0036.tif		\N
731	2018-10-04 12:49:59.112271+02	2019-04-08 11:59:18.003191+02	MaterialienZumAtlasVonNiederösterreich_0037	scan/MaterialienZumAtlasVonNiedersterreich_0037.tif		\N
732	2018-10-04 12:53:22.92044+02	2019-04-08 11:59:25.818087+02	MaterialienZumAtlasVonNiederösterreich_0038	scan/MaterialienZumAtlasVonNiedersterreich_0038.tif		\N
733	2018-10-04 13:06:30.47495+02	2019-04-08 11:59:33.62064+02	MaterialienZumAtlasVonNiederösterreich_0039	scan/MaterialienZumAtlasVonNiedersterreich_0039.tif		\N
735	2018-10-04 13:15:28.126161+02	2019-04-08 12:01:07.195093+02	MaterialienZumAtlasVonNiederösterreich_0041	scan/MaterialienZumAtlasVonNiedersterreich_0041.tif		\N
736	2018-10-04 13:18:30.948037+02	2019-04-08 12:01:14.614452+02	MaterialienZumAtlasVonNiederösterreich_0042	scan/MaterialienZumAtlasVonNiedersterreich_0042.tif		\N
737	2018-10-04 13:21:52.667621+02	2019-04-08 12:01:21.867465+02	MaterialienZumAtlasVonNiederösterreich_0043	scan/MaterialienZumAtlasVonNiedersterreich_0043.tif		\N
738	2018-10-04 13:25:12.873106+02	2019-04-08 12:01:30.162457+02	MaterialienZumAtlasVonNiederösterreich_0044	scan/MaterialienZumAtlasVonNiedersterreich_0044.tif		\N
739	2018-10-04 14:53:35.157043+02	2019-04-08 12:01:37.469339+02	MaterialienZumAtlasVonNiederösterreich_0045	scan/MaterialienZumAtlasVonNiedersterreich_0045.tif		\N
740	2018-10-04 14:55:18.655858+02	2019-04-08 12:01:44.632668+02	MaterialienZumAtlasVonNiederösterreich_0046	scan/MaterialienZumAtlasVonNiedersterreich_0046.tif		\N
741	2018-10-04 14:57:09.838465+02	2019-04-08 12:01:52.093919+02	MaterialienZumAtlasVonNiederösterreich_0047	scan/MaterialienZumAtlasVonNiedersterreich_0047.tif		\N
742	2018-10-04 14:58:56.928653+02	2019-04-08 12:02:00.674033+02	MaterialienZumAtlasVonNiederösterreich_0048	scan/MaterialienZumAtlasVonNiedersterreich_0048.tif		\N
743	2018-10-04 15:15:06.301046+02	2019-04-08 12:02:16.797293+02	MaterialienZumAtlasVonNiederösterreich_0050	scan/MaterialienZumAtlasVonNiedersterreich_0050.tif		\N
753	2018-10-29 11:42:03.778638+01	2019-04-08 12:52:01.23208+02	Zu Mappe I Kärnten 25-32,47_0001	scan/Zu_Mappe_I_Krnten_25-3247_0001.tif		\N
754	2018-10-29 11:51:17.806563+01	2019-04-08 12:52:35.512572+02	Zu Mappe I Kärnten 25-32,47_0003	scan/Zu_Mappe_I_Krnten_25-3247_0003.tif		\N
755	2018-10-29 11:53:26.070441+01	2019-04-08 12:52:43.314503+02	Zu Mappe I Kärnten 25-32,47_0004	scan/Zu_Mappe_I_Krnten_25-3247_0004.tif		\N
756	2018-10-29 12:18:42.954295+01	2019-04-08 12:54:22.825551+02	Zu Mappe I Kärnten 25-32,47_0006	scan/Zu_Mappe_I_Krnten_25-3247_0006.tif		\N
601	2018-09-06 11:45:19.146326+02	2018-11-26 10:56:28.161934+01	SuggestiveKartenKärnten_0004	scan/SuggestiveKartenKrntens_0004.tif		\N
768	2018-11-26 12:08:38.960106+01	2018-11-26 12:08:38.960136+01	Karten in grauem Heft_0001	scan/Karten_in_grauem_Heft_0001.tif		\N
769	2018-11-26 12:19:05.864229+01	2018-11-26 12:19:05.864259+01	Karten in grauem Heft_0002	scan/Karten_in_grauem_Heft_0002.tif		\N
770	2018-11-26 12:21:37.405271+01	2018-11-26 12:21:37.405299+01	Karten in grauem Heft_0003	scan/Karten_in_grauem_Heft_0003.tif		\N
772	2018-11-26 12:26:00.448862+01	2018-11-26 12:26:00.448892+01	Karten in grauem Heft_0005	scan/Karten_in_grauem_Heft_0005.tif		\N
773	2018-11-26 12:29:11.994922+01	2018-11-26 12:29:11.994951+01	Karten in grauem Heft_0006	scan/Karten_in_grauem_Heft_0006.tif		\N
774	2018-11-26 12:33:21.434581+01	2018-11-26 12:33:21.434624+01	Karten in grauem Heft_0007	scan/Karten_in_grauem_Heft_0007.tif		\N
752	2018-10-23 11:56:00.717278+02	2018-11-26 12:34:58.843606+01	Diverse_0008	scan/Diverse_0008.tif		\N
775	2018-11-26 12:39:05.29931+01	2018-11-26 12:39:05.29936+01	Karten in grauem Heft_0008	scan/Karten_in_grauem_Heft_0008.tif		\N
776	2018-11-26 12:41:40.705095+01	2018-11-26 12:45:13.107077+01	Karten in grauem Heft_0009	scan/Karten_in_grauem_Heft_0009.tif		\N
777	2018-11-26 12:47:10.488973+01	2018-11-26 12:47:10.489001+01	Karten in grauem Heft_0010	scan/Karten_in_grauem_Heft_0010.tif		\N
778	2018-11-26 12:52:54.571961+01	2018-11-26 12:52:54.571996+01	Karten in grauem Heft_0011	scan/Karten_in_grauem_Heft_0011.tif		\N
779	2018-11-26 13:00:17.252519+01	2018-11-26 13:00:17.252557+01	Karten in grauem Heft_0012	scan/Karten_in_grauem_Heft_0012.tif		\N
780	2018-11-26 13:16:59.90417+01	2018-11-26 13:16:59.904199+01	Karten in grauem Heft_0013	scan/Karten_in_grauem_Heft_0013.tif		\N
782	2018-11-26 13:46:35.918452+01	2018-11-26 13:46:45.202017+01	Karten in grauem Heft_0015	scan/Karten_in_grauem_Heft_0015.tif		\N
783	2018-11-26 14:19:28.812144+01	2018-11-26 14:19:28.812183+01	Karten in grauem Heft_0016	scan/Karten_in_grauem_Heft_0016.tif		\N
784	2018-11-26 14:22:01.61014+01	2018-11-26 14:22:01.610169+01	Karten in grauem Heft_0017	scan/Karten_in_grauem_Heft_0017.tif		\N
786	2018-11-26 14:27:08.238422+01	2018-11-26 14:27:08.238455+01	Karten in grauem Heft_0019	scan/Karten_in_grauem_Heft_0019.tif		\N
787	2018-11-26 14:29:32.336614+01	2018-11-26 14:29:32.336648+01	Karten in grauem Heft_0020	scan/Karten_in_grauem_Heft_0020.tif		\N
788	2018-11-26 14:31:56.403637+01	2018-11-26 14:31:56.403678+01	Karten in grauem Heft_0021	scan/Karten_in_grauem_Heft_0021.tif		\N
789	2018-11-26 14:35:20.424078+01	2018-11-26 14:35:20.424112+01	Karten in grauem Heft_0022	scan/Karten_in_grauem_Heft_0022.tif		\N
790	2018-11-26 14:38:39.89275+01	2018-11-26 14:38:39.892779+01	Karten in grauem Heft_0023	scan/Karten_in_grauem_Heft_0023.tif		\N
791	2018-11-26 14:42:58.789862+01	2018-11-26 14:42:58.789891+01	Karten in grauem Heft_0024	scan/Karten_in_grauem_Heft_0024.tif		\N
792	2018-11-26 14:49:10.522426+01	2018-11-26 14:49:10.522457+01	Karten in grauem Heft_0025	scan/Karten_in_grauem_Heft_0025.tif		\N
793	2018-11-26 15:09:35.140685+01	2018-11-26 15:09:35.140725+01	Karten in grauem Heft_0026	scan/Karten_in_grauem_Heft_0026.tif		\N
794	2018-11-26 15:13:17.259454+01	2018-11-26 15:13:17.259482+01	Karten in grauem Heft_0027	scan/Karten_in_grauem_Heft_0027.tif		\N
795	2018-11-26 15:15:11.855358+01	2018-11-26 15:15:11.855388+01	Karten in grauem Heft_0028	scan/Karten_in_grauem_Heft_0028.tif		\N
796	2018-11-26 15:23:29.545198+01	2018-11-26 15:23:29.545226+01	Karten in grauem Heft_0029	scan/Karten_in_grauem_Heft_0029.tif		\N
797	2018-11-26 15:25:08.089867+01	2018-11-26 15:25:08.089901+01	Karten in grauem Heft_0030	scan/Karten_in_grauem_Heft_0030.tif		\N
798	2018-11-26 15:27:11.374383+01	2018-11-26 15:27:11.374413+01	Karten in grauem Heft_0031	scan/Karten_in_grauem_Heft_0031.tif		\N
799	2018-11-26 15:28:54.827462+01	2018-11-26 15:28:54.827504+01	Karten in grauem Heft_0032	scan/Karten_in_grauem_Heft_0032.tif		\N
800	2018-11-26 15:31:47.256981+01	2018-11-26 15:31:47.257014+01	Karten in grauem Heft_0033	scan/Karten_in_grauem_Heft_0033.tif		\N
801	2018-11-26 15:33:39.080492+01	2018-11-26 15:33:39.080522+01	Karten in grauem Heft_0034	scan/Karten_in_grauem_Heft_0034.tif		\N
802	2018-11-26 15:35:18.763452+01	2018-11-26 15:35:18.763482+01	Karten in grauem Heft_0035	scan/Karten_in_grauem_Heft_0035.tif		\N
803	2018-11-26 15:36:53.639988+01	2018-11-26 15:36:53.640017+01	Karten in grauem Heft_0036	scan/Karten_in_grauem_Heft_0036.tif		\N
804	2018-11-26 15:40:05.718173+01	2018-11-26 15:40:05.718207+01	Karten in grauem Heft_0037	scan/Karten_in_grauem_Heft_0037.tif		\N
805	2018-11-26 15:41:45.725902+01	2018-11-26 15:41:45.725935+01	Karten in grauem Heft_0038	scan/Karten_in_grauem_Heft_0038.tif		\N
807	2018-11-26 15:44:59.195498+01	2018-11-26 15:44:59.195527+01	Karten in grauem Heft_0040	scan/Karten_in_grauem_Heft_0040.tif		\N
808	2018-11-26 15:46:24.221924+01	2018-11-26 15:46:24.221958+01	Karten in grauem Heft_0041	scan/Karten_in_grauem_Heft_0041.tif		\N
809	2018-12-05 16:38:08.104463+01	2018-12-05 16:38:18.192374+01	WBÖ_Diverse_0001	scan/WB_Diverse_0001.tif		2018-12-05
810	2018-12-05 16:41:32.310541+01	2018-12-05 16:41:32.310573+01	WBÖ_Diverse_0002	scan/WB_Diverse_0002.tif		2018-12-05
812	2019-01-04 13:19:52.258305+01	2019-01-04 13:19:52.258332+01	Königreich Böhmen7790	scan/Knigreich_Bhmen7790.tif		\N
813	2019-01-04 13:23:09.383225+01	2019-01-04 13:23:09.383252+01	Königreich Böhmen7791	scan/Knigreich_Bhmen7791.tif		\N
814	2019-01-04 13:29:15.924122+01	2019-01-04 13:29:15.924147+01	Königreich Böhmen7793	scan/Knigreich_Bhmen7793.tif		\N
820	2019-01-22 12:56:15.400807+01	2019-01-22 12:56:15.400863+01	WBÖ_Diverse_0003	scan/WB_Diverse_0003.tif		\N
819	2019-01-22 12:53:40.223228+01	2019-04-01 13:26:14.143221+02	DiverseLade14_0030	scan/DiverseLade14_0030.tif		\N
767	2018-11-13 12:48:02.99335+01	2019-04-05 13:14:07.355136+02	DiverseLade14_0057	scan/DiverseLade14_0057.tif		\N
771	2018-11-26 12:23:29.919975+01	2019-04-08 10:55:14.38853+02	Karten in grauem Heft_0004	scan/Karten_in_grauem_Heft_0004.tif		\N
785	2018-11-26 14:24:32.889557+01	2019-04-08 10:55:30.705051+02	Karten in grauem Heft_0018	scan/Karten_in_grauem_Heft_0018.tif		\N
781	2018-11-26 13:36:35.354621+01	2019-04-08 10:57:37.401428+02	Karten in grauem Heft_0014	scan/Karten_in_grauem_Heft_0014.tif		\N
806	2018-11-26 15:42:56.988417+01	2019-04-08 10:58:14.745891+02	Karten in grauem Heft_0039	scan/Karten_in_grauem_Heft_0039.tif		\N
811	2019-01-04 13:00:10.563536+01	2019-04-08 11:40:43.518277+02	Königreich Böhmen7789	scan/Knigreich_Bhmen7789.tif		\N
815	2019-01-04 13:35:55.490117+01	2019-04-08 11:41:17.707892+02	Lautlehre7797	scan/Lautlehre7797.tif		\N
816	2019-01-04 13:44:20.541936+01	2019-04-08 11:41:25.328059+02	Lautlehre7798	scan/Lautlehre7798.tif		\N
817	2019-01-04 13:46:49.922293+01	2019-04-08 11:42:09.80709+02	Lautlehre7799	scan/Lautlehre7799.tif		\N
763	2018-11-13 12:07:32.389226+01	2019-04-08 11:53:03.313446+02	MaterialienZumAtlasVonNiederösterreich_0014	scan/MaterialienZumAtlasVonNiedersterreich_0014.tif		\N
818	2019-01-04 13:49:03.639186+01	2019-04-08 11:43:06.225291+02	Lautlehre7800	scan/Lautlehre7800.tif		\N
764	2018-11-13 12:12:17.09944+01	2019-04-08 11:56:21.225367+02	MaterialienZumAtlasVonNiederösterreich_0024	scan/MaterialienZumAtlasVonNiedersterreich_0024.tif		\N
765	2018-11-13 12:14:13.248704+01	2019-04-08 11:56:53.246592+02	MaterialienZumAtlasVonNiederösterreich_0028	scan/MaterialienZumAtlasVonNiedersterreich_0028.tif		\N
766	2018-11-13 12:20:29.267247+01	2019-04-08 12:02:07.790996+02	MaterialienZumAtlasVonNiederösterreich_0049	scan/MaterialienZumAtlasVonNiedersterreich_0049.tif		\N
757	2018-10-29 12:34:20.591787+01	2019-04-08 12:54:30.466312+02	Zu Mappe I Kärnten 25-32,47_0007	scan/Zu_Mappe_I_Krnten_25-3247_0007.tif		\N
758	2018-10-29 12:37:30.141484+01	2019-04-08 12:54:42.55557+02	Zu Mappe I Kärnten 25-32,47_0008	scan/Zu_Mappe_I_Krnten_25-3247_0008.tif		\N
759	2018-10-29 12:39:19.297391+01	2019-04-08 12:54:51.572+02	Zu Mappe I Kärnten 25-32,47_0009	scan/Zu_Mappe_I_Krnten_25-3247_0009.tif		\N
760	2018-10-29 12:44:39.080403+01	2019-04-08 12:55:01.262315+02	Zu Mappe I Kärnten 25-32,47_0010	scan/Zu_Mappe_I_Krnten_25-3247_0010.tif		\N
761	2018-10-29 12:47:50.525029+01	2019-04-08 12:55:10.587409+02	Zu Mappe I Kärnten 25-32,47_0011	scan/Zu_Mappe_I_Krnten_25-3247_0011.tif		\N
762	2018-10-29 12:49:13.486892+01	2019-04-08 12:55:18.537207+02	Zu Mappe I Kärnten 25-32,47_0012	scan/Zu_Mappe_I_Krnten_25-3247_0012.tif		\N
697	2018-09-13 16:15:09.788229+02	2019-04-01 12:59:31.827577+02	HellgraueMappe_0001	scan/HellgraueMappe_0001.tif		\N
871	2019-03-29 13:24:00.19483+01	2019-04-01 12:59:48.030673+02	HellgraueMappe_0002	scan/HellgraueMappe_0002.tif		\N
872	2019-03-29 13:29:09.564639+01	2019-04-01 13:00:00.046138+02	HellgraueMappe_0005	scan/HellgraueMappe_0005.tif		\N
868	2019-03-29 12:55:36.244083+01	2019-03-29 12:55:36.24412+01	General- und Spezialkarten Mappe I_0020	scan/General-_und_Spezialkarten_Mappe_I_0020.tif		\N
869	2019-03-29 12:58:37.441931+01	2019-03-29 12:58:37.441997+01	General- und Spezialkarten Mappe I_0021	scan/General-_und_Spezialkarten_Mappe_I_0021.tif		\N
870	2019-03-29 12:58:56.841971+01	2019-03-29 12:58:56.842033+01	General- und Spezialkarten Mappe I_0026	scan/General-_und_Spezialkarten_Mappe_I_0026.tif		\N
570	2018-07-04 17:09:06.114336+02	2019-04-01 12:54:33.711114+02	III.Entwuerfe Fuer Reingezeichnete Karten d. Lieferungen_0027	scan/III.EntwuerfeFuerReingezeichneteKartenD.Lieferungen_0027_e0nEQR2.tif		\N
873	2019-04-01 11:59:06.419255+02	2019-04-01 13:00:20.772934+02	HellgraueMappe_0006	scan/HellgraueMappe_0006.tif		\N
874	2019-04-01 12:05:49.09512+02	2019-04-01 13:00:41.616307+02	HellgraueMappe_0009	scan/HellgraueMappe_0009.tif		\N
875	2019-04-01 12:16:32.208712+02	2019-04-01 13:00:57.589223+02	HellgraueMappe_0010	scan/HellgraueMappe_0010.tif		\N
876	2019-04-01 12:21:48.940478+02	2019-04-01 13:01:11.803662+02	HellgraueMappe_0011	scan/HellgraueMappe_0011.tif		\N
877	2019-04-01 12:33:08.040816+02	2019-04-01 13:02:01.305644+02	HellgraueMappe_0012	scan/HellgraueMappe_0012.tif		\N
878	2019-04-01 12:35:26.966525+02	2019-04-01 13:02:16.848288+02	HellgraueMappe_0013	scan/HellgraueMappe_0013.tif		\N
879	2019-04-01 12:37:26.176602+02	2019-04-01 13:03:42.01752+02	HellgraueMappe_0014	scan/HellgraueMappe_0014.tif		\N
880	2019-04-01 12:39:15.744756+02	2019-04-01 13:04:14.967904+02	HellgraueMappe_0015	scan/HellgraueMappe_0015.tif		\N
881	2019-04-01 12:41:11.705287+02	2019-04-01 13:04:31.355514+02	HellgraueMappe_0016	scan/HellgraueMappe_0016.tif		\N
882	2019-04-01 12:42:40.606507+02	2019-04-01 13:04:48.927858+02	HellgraueMappe_0017	scan/HellgraueMappe_0017.tif		\N
744	2018-10-22 12:36:49.600782+02	2019-04-01 13:16:41.138936+02	BearbeitungszustandDerKartenbilderFuerDieErsteLieferung_0001	scan/BearbeitungszustandDerKartenbilderFuerDieErsteLieferung_0001.tif		\N
655	2018-09-11 16:52:13.63601+02	2019-04-01 13:26:58.881356+02	DiverseLade14_0032	scan/DiverseLade14_0032.tif		\N
682	2018-09-12 13:17:44.519991+02	2019-04-05 13:15:38.493564+02	DiverseLade14_0062	scan/DiverseLade14_0062.tif		\N
836	2019-03-25 13:34:53.098246+01	2019-04-08 11:04:54.49742+02	Karten zu Bessarabien_0001	scan/Karten_zu_Bessarabien_0001.tif		\N
837	2019-03-25 13:39:57.615006+01	2019-04-08 11:05:06.669011+02	Karten zu Bessarabien_0002	scan/Karten_zu_Bessarabien_0002.tif		\N
838	2019-03-25 13:50:40.463995+01	2019-04-08 11:05:24.515896+02	Karten zu Bessarabien_0003	scan/Karten_zu_Bessarabien_0003.tif		\N
839	2019-03-25 14:05:36.935533+01	2019-04-08 11:06:55.63948+02	Karten zu Bessarabien_0034	scan/Karten_zu_Bessarabien_0034.tif		\N
840	2019-03-25 14:09:40.261198+01	2019-04-08 11:18:59.970099+02	Karten zu Bessarabien_0035	scan/Karten_zu_Bessarabien_0035.tif		\N
841	2019-03-25 14:13:11.522635+01	2019-04-08 11:19:42.004854+02	Karten zu Bessarabien_0036	scan/Karten_zu_Bessarabien_0036.tif		\N
846	2019-03-25 14:42:13.544558+01	2019-04-08 11:20:19.548613+02	Karten zu Bessarabien_0037	scan/Karten_zu_Bessarabien_0037.tif		\N
849	2019-03-25 14:45:39.21561+01	2019-04-08 11:20:48.190344+02	Karten zu Bessarabien_0038	scan/Karten_zu_Bessarabien_0038.tif		\N
852	2019-03-25 14:49:45.052907+01	2019-04-08 11:21:24.440601+02	Karten zu Bessarabien_0039	scan/Karten_zu_Bessarabien_0039.tif		\N
855	2019-03-25 14:51:58.631687+01	2019-04-08 11:21:53.812805+02	Karten zu Bessarabien_0040	scan/Karten_zu_Bessarabien_0040.tif		\N
858	2019-03-25 14:54:34.595907+01	2019-04-08 11:22:24.185663+02	Karten zu Bessarabien_0041	scan/Karten_zu_Bessarabien_0041.tif		\N
861	2019-03-25 15:01:48.218593+01	2019-04-08 11:22:58.606061+02	Karten zu Bessarabien_0042	scan/Karten_zu_Bessarabien_0042.tif		\N
864	2019-03-25 15:04:00.390382+01	2019-04-08 11:23:33.125792+02	Karten zu Bessarabien_0043	scan/Karten_zu_Bessarabien_0043.tif		\N
867	2019-03-28 10:24:07.83049+01	2019-04-08 11:43:14.4859+02	Lautlehre7806	scan/Lautlehre7806.tif		\N
698	2018-09-19 16:10:56.40701+02	2019-04-08 11:48:38.618132+02	MaterialienZumAtlasVonNiederösterreich_0001	scan/MaterialienZumAtlasVonNiedersterreich_0001.tif		\N
734	2018-10-04 13:09:02.480819+02	2019-04-08 11:59:42.667509+02	MaterialienZumAtlasVonNiederösterreich_0040	scan/MaterialienZumAtlasVonNiedersterreich_0040.tif		\N
827	2019-02-11 12:16:13.195577+01	2019-04-08 12:34:43.039184+02	Transparentkarten-Rolle_0004	scan/Transparentkarten-Rolle_0004.tif		\N
828	2019-02-11 12:22:48.388027+01	2019-04-08 12:34:49.874527+02	Transparentkarten-Rolle_0005	scan/Transparentkarten-Rolle_0005.tif		\N
829	2019-02-11 12:23:32.632194+01	2019-04-08 12:34:56.725941+02	Transparentkarten-Rolle_0006	scan/Transparentkarten-Rolle_0006.tif		\N
830	2019-02-11 12:23:57.912483+01	2019-04-08 12:35:04.175307+02	Transparentkarten-Rolle_0007	scan/Transparentkarten-Rolle_0007.tif		\N
831	2019-02-11 12:24:36.103175+01	2019-04-08 12:35:11.807989+02	Transparentkarten-Rolle_0008	scan/Transparentkarten-Rolle_0008.tif		\N
832	2019-02-11 12:25:14.050444+01	2019-04-08 12:35:18.705699+02	Transparentkarten-Rolle_0009	scan/Transparentkarten-Rolle_0009.tif		\N
833	2019-02-11 12:33:59.02922+01	2019-04-08 12:35:25.638903+02	Transparentkarten-Rolle_0012	scan/Transparentkarten-Rolle_0012.tif		\N
834	2019-02-11 12:38:14.656182+01	2019-04-08 12:35:32.458321+02	Transparentkarten-Rolle_0013	scan/Transparentkarten-Rolle_0013.tif		\N
835	2019-02-11 12:41:10.231012+01	2019-04-08 12:35:41.743205+02	Transparentkarten-Rolle_0014	scan/Transparentkarten-Rolle_0014.tif		\N
884	2019-04-08 12:52:27.178175+02	2019-04-08 12:52:27.178202+02	Zu Mappe I Kärnten 25-32,47_0002	scan/Zu_Mappe_I_Krnten_25-3247_0002.tif		\N
885	2019-04-08 12:52:57.296303+02	2019-04-08 12:52:57.296333+02	Zu Mappe I Kärnten 25-32,47_0005	scan/Zu_Mappe_I_Krnten_25-3247_0005.tif		\N
890	2019-05-09 12:18:29.736448+02	2019-05-09 12:18:29.736477+02	HellgraueMappe_0708	scan/HellgraueMappe_0708.tif		\N
891	2019-05-10 12:05:08.994358+02	2019-05-10 12:11:04.097965+02	Lautlehre7803_7804	scan/Lautlehre7803_7804.tif		\N
893	2019-05-10 12:12:41.275405+02	2019-05-10 12:12:41.275471+02	Transparentkarten-Rolle_0203	scan/Transparentkarten-Rolle_0203.tif		\N
894	2019-05-10 12:14:44.023649+02	2019-05-10 12:14:44.023685+02	Transparentkarten-Rolle_1011	scan/Transparentkarten-Rolle_1011.tif		\N
\.


--
-- Data for Name: maps_scan_scan_map; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_scan_scan_map (id, scan_id, map_id) FROM stdin;
19	64	123
20	65	124
21	66	125
6	44	109
8	46	111
9	47	112
11	49	114
15	53	118
16	54	119
17	55	120
18	56	121
22	67	126
23	68	127
24	69	128
25	70	129
26	71	130
27	72	131
28	73	132
29	74	133
30	75	134
31	76	135
33	79	138
34	80	139
35	81	140
36	82	141
37	83	142
38	84	143
39	85	144
40	86	145
41	87	146
42	88	147
43	89	148
44	90	149
45	91	150
46	92	151
47	93	152
48	94	153
49	95	154
50	96	155
51	97	156
52	98	157
54	100	159
55	101	158
56	102	160
57	103	161
58	104	163
59	105	164
60	106	165
61	107	166
62	108	167
63	109	168
64	110	170
65	111	171
66	112	172
68	114	174
69	115	175
70	116	176
71	117	177
72	118	178
73	119	179
74	120	180
75	121	182
76	122	183
78	124	185
79	125	186
80	126	187
81	127	188
82	128	189
83	129	190
84	130	191
85	131	192
86	132	193
87	133	194
88	134	195
89	135	196
90	136	198
103	149	201
104	150	200
105	151	202
106	152	203
107	153	204
108	154	205
109	155	206
111	157	207
112	158	208
113	159	209
114	160	210
115	161	211
116	162	212
117	163	213
118	164	214
119	165	215
120	166	216
121	167	217
122	168	218
123	169	219
124	170	137
125	171	220
126	172	221
127	173	223
130	176	227
131	177	228
132	178	229
133	179	230
134	180	231
135	181	232
136	182	233
137	183	234
138	184	235
139	185	236
140	186	237
141	187	238
142	188	239
143	189	240
144	190	241
145	191	242
146	192	243
147	193	244
148	194	245
149	195	246
150	196	247
151	197	248
152	198	249
153	199	250
154	200	251
155	201	252
156	202	254
157	203	255
158	204	256
159	205	257
160	206	258
161	207	259
162	208	260
163	209	261
164	210	262
165	211	263
166	212	264
167	213	265
168	214	266
169	215	268
170	216	269
171	217	270
172	218	271
173	219	272
174	220	273
175	221	274
176	222	275
177	223	276
178	224	277
179	225	278
180	226	279
181	227	280
182	228	281
183	229	282
184	230	283
185	231	284
186	232	285
187	233	286
188	234	287
189	235	288
190	236	289
191	237	291
192	238	292
193	239	293
194	240	294
195	241	295
196	242	296
197	243	297
198	244	298
199	245	299
200	246	300
201	247	301
202	248	302
203	249	303
204	250	304
205	251	305
206	252	306
207	253	307
208	254	309
209	255	310
210	256	311
211	257	312
212	258	313
213	259	314
214	260	315
215	261	317
216	262	318
217	263	319
218	264	320
219	265	322
220	266	323
221	267	324
222	268	325
223	269	326
224	270	327
225	271	328
226	272	329
227	273	330
228	274	331
229	275	332
230	276	333
231	277	334
232	278	335
233	279	336
234	280	337
235	281	338
236	282	339
237	283	340
238	284	341
239	285	342
240	286	343
241	287	344
242	288	345
243	289	346
244	290	347
245	291	348
246	292	349
247	293	350
248	294	351
249	295	352
250	296	353
251	297	354
252	298	355
253	299	356
254	300	357
255	301	358
256	302	359
257	303	360
258	304	361
259	305	362
260	306	363
261	307	365
262	308	366
263	309	367
264	310	368
265	311	369
266	312	370
267	313	371
268	314	372
269	315	373
270	316	374
271	317	375
272	318	376
273	319	377
274	320	378
275	321	379
276	322	380
277	323	381
278	324	382
279	325	383
280	326	384
281	327	385
282	328	386
283	329	387
284	330	388
285	331	389
286	332	390
287	333	391
288	334	392
289	335	393
290	336	394
291	337	395
292	338	396
293	339	397
294	340	398
295	341	399
296	342	400
297	343	401
298	344	402
299	345	403
300	346	404
301	347	405
302	348	406
303	349	407
304	350	408
305	351	409
306	352	410
307	353	411
308	354	412
309	355	413
310	356	414
311	357	415
312	358	416
313	359	417
314	360	418
315	361	419
316	362	420
317	363	421
318	364	422
319	365	423
320	366	424
321	367	425
323	369	427
324	370	428
325	371	429
326	372	430
327	373	431
328	374	432
329	375	433
330	376	434
331	377	435
332	378	436
333	379	437
334	380	438
335	381	439
336	382	440
337	383	441
338	384	442
339	385	443
340	386	444
341	387	445
342	388	446
343	389	447
344	390	448
345	391	449
346	392	450
347	393	451
348	394	452
349	395	453
350	396	454
351	397	455
352	398	456
353	399	457
354	400	458
355	401	459
356	402	460
357	403	461
358	404	462
359	405	463
360	406	464
361	407	465
362	408	466
363	409	467
364	410	468
365	411	469
366	412	470
367	413	471
368	414	472
369	415	473
370	416	474
371	417	475
372	418	476
373	419	477
374	420	478
375	421	479
376	422	480
377	423	481
378	424	482
379	425	483
380	426	484
381	427	485
382	428	486
383	429	487
384	430	488
386	432	489
387	433	490
388	434	491
389	435	492
390	436	493
391	437	494
392	438	495
393	439	496
394	440	497
395	441	498
396	442	499
397	443	500
398	444	501
399	445	502
400	446	503
401	447	504
402	448	505
403	449	506
404	450	507
405	451	508
406	452	509
407	453	510
408	454	511
409	455	512
410	456	513
411	457	514
412	458	515
413	459	516
414	460	517
415	461	518
416	462	519
417	463	520
418	464	521
419	465	522
420	466	523
421	467	526
422	468	527
423	469	528
424	470	529
425	471	531
426	472	532
427	473	533
428	474	534
429	475	535
430	476	536
431	477	537
432	478	538
433	479	539
434	480	540
435	481	541
436	482	542
437	483	543
438	484	544
439	485	545
440	486	546
441	487	547
442	488	548
443	489	549
444	490	550
445	491	551
446	492	552
447	493	553
448	494	554
449	495	555
450	496	110
451	497	113
452	498	115
453	499	116
454	500	117
455	501	136
456	502	222
457	503	556
458	504	557
459	505	558
460	506	559
461	507	560
462	508	561
463	509	562
464	510	563
465	511	564
466	512	565
467	513	566
468	514	567
469	515	568
470	516	569
471	517	570
472	518	571
473	519	572
474	520	573
475	521	574
476	522	575
477	523	576
478	524	577
479	525	578
480	526	579
481	527	580
482	528	581
483	529	582
484	530	583
485	531	584
486	532	585
487	533	586
488	534	588
489	535	589
490	536	590
491	537	591
492	538	592
493	539	593
494	540	594
495	541	595
496	542	596
497	543	597
498	544	598
499	545	599
500	546	600
501	547	601
502	548	602
503	549	603
504	550	604
505	551	605
506	552	606
507	553	607
508	554	608
509	555	609
510	556	610
511	557	612
512	558	613
513	559	614
514	560	615
515	561	616
516	562	617
517	563	618
520	566	587
521	567	611
522	568	162
523	569	169
524	570	184
525	571	181
526	572	197
527	573	253
528	574	308
529	575	316
530	576	321
531	577	108
532	578	106
533	579	267
534	580	290
535	581	620
536	582	621
537	583	622
538	584	623
539	585	624
540	586	625
542	588	627
543	589	628
544	590	629
545	591	630
546	592	631
547	593	632
548	594	633
549	595	634
550	596	635
551	597	636
552	598	638
554	600	637
555	601	640
556	602	641
557	603	642
558	604	645
559	605	646
560	606	647
561	607	648
562	608	649
563	609	650
564	610	651
565	611	652
566	612	653
567	613	654
568	614	655
569	615	656
570	616	657
571	617	658
572	618	659
573	619	660
574	620	661
575	621	662
576	622	663
577	623	664
578	624	665
579	625	666
580	626	667
581	627	643
582	628	644
583	629	668
584	630	669
585	631	670
586	632	671
587	633	672
588	634	673
589	635	674
590	636	675
591	637	676
592	638	677
593	639	678
594	640	679
595	641	680
596	642	681
597	643	682
598	644	683
599	645	684
600	646	685
601	647	686
602	648	687
603	649	688
604	650	689
605	651	690
606	652	691
607	653	692
608	654	694
609	655	695
610	656	696
611	657	697
612	658	698
613	659	699
614	660	700
615	661	701
616	662	702
617	663	703
618	664	704
619	665	705
620	666	706
621	667	707
622	668	708
623	669	709
624	670	710
625	671	711
626	672	712
627	673	713
628	674	714
629	675	715
630	676	716
631	677	717
632	678	719
633	679	720
634	680	721
635	681	722
636	682	723
637	683	724
638	684	725
639	685	726
640	686	727
641	687	728
642	688	729
643	689	730
644	690	731
645	691	732
646	692	733
647	693	734
648	694	735
649	695	736
650	696	737
651	697	738
652	698	739
653	699	740
654	700	741
655	701	742
656	702	743
657	703	744
658	704	745
659	705	746
660	706	747
661	707	748
662	708	749
663	709	750
664	710	751
665	711	753
666	712	754
667	713	755
668	714	756
669	715	757
670	716	758
671	717	759
672	718	760
673	719	761
674	720	763
675	721	764
676	722	765
677	723	767
678	724	768
679	725	769
680	726	770
681	727	771
682	728	772
683	729	773
684	730	774
685	731	775
686	732	776
687	733	777
688	734	778
689	735	779
690	736	780
691	737	781
692	738	782
693	739	783
694	740	784
695	741	785
696	742	786
697	743	788
698	744	789
699	745	790
700	746	791
701	747	792
702	748	793
703	749	794
704	750	795
705	751	796
706	752	797
707	753	798
708	754	800
709	755	801
710	756	803
711	757	804
712	758	805
713	759	806
714	760	807
715	761	808
716	762	809
717	763	752
718	764	762
719	765	766
720	766	787
721	767	718
722	768	810
723	769	811
724	770	812
725	771	813
726	772	814
727	773	815
728	774	816
729	775	817
730	776	818
731	777	819
732	778	820
733	779	821
734	780	822
735	781	823
736	782	824
737	783	825
738	784	826
739	785	827
740	786	828
741	787	829
742	788	830
743	789	831
744	790	832
745	791	833
746	792	834
747	793	835
748	794	836
749	795	837
750	796	838
751	797	839
752	798	840
753	799	841
754	800	842
755	801	843
756	802	844
757	803	845
758	804	846
759	805	847
760	806	848
761	807	849
762	808	850
763	809	851
764	810	852
765	811	854
766	812	855
767	813	856
768	814	857
769	815	858
770	816	859
771	817	860
772	818	861
773	819	693
774	820	853
781	827	862
782	828	863
783	829	864
784	830	865
785	831	866
786	832	867
787	833	868
788	834	869
789	835	870
790	599	33
791	836	872
792	837	873
793	838	874
794	839	875
795	840	876
796	841	877
801	846	878
804	849	879
807	852	880
810	855	881
813	858	882
816	861	883
819	864	884
822	867	885
823	868	524
824	869	525
825	870	530
826	871	886
827	872	887
828	873	888
829	874	889
830	875	890
831	876	891
832	877	892
833	878	893
834	879	894
835	880	895
836	881	896
837	882	897
839	884	799
840	885	802
842	887	899
843	888	900
844	889	901
845	890	902
846	891	903
848	893	904
849	894	905
\.


--
-- Data for Name: maps_scan_scan_person; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_scan_scan_person (id, scan_id, person_id) FROM stdin;
26	80	17
27	83	17
28	82	17
29	84	17
30	44	17
31	85	17
32	87	17
33	86	17
34	88	17
35	89	17
36	93	17
37	90	17
38	91	17
39	92	17
40	94	17
41	95	17
42	96	17
43	97	17
44	102	17
45	100	17
46	81	17
47	103	17
48	104	17
49	46	17
50	49	17
51	47	17
52	54	17
53	55	17
54	56	17
55	64	17
56	65	17
57	66	17
58	67	17
59	68	17
60	69	17
61	70	17
62	73	17
63	72	17
64	71	17
65	75	17
66	74	17
67	76	17
68	98	17
69	121	17
70	107	17
71	108	17
72	109	17
73	111	17
74	112	17
75	118	17
76	116	17
77	117	17
78	114	17
79	119	17
80	120	17
81	122	17
82	115	17
83	124	17
84	129	17
85	125	17
86	126	17
87	127	17
88	128	17
89	130	17
90	132	17
91	131	17
92	133	17
93	136	17
94	134	17
95	150	17
96	135	17
97	149	17
98	152	17
99	151	17
100	153	17
101	154	17
102	155	17
103	186	17
104	185	17
105	187	17
106	188	17
107	189	17
108	190	17
109	192	17
110	191	17
111	106	17
112	159	17
113	158	17
114	160	17
115	161	17
116	162	17
117	163	17
118	164	17
119	165	17
120	166	17
121	167	17
122	168	17
123	169	17
124	177	17
125	179	17
126	178	17
127	180	17
128	181	17
129	182	17
130	183	17
131	184	17
132	193	17
133	194	17
134	195	17
135	196	17
136	171	17
137	172	17
138	204	17
139	197	17
140	198	17
141	199	17
142	200	17
143	202	17
144	201	17
145	203	17
146	206	17
147	205	17
148	207	17
149	209	17
150	208	17
151	210	17
152	211	17
153	213	17
154	214	17
155	215	17
156	216	17
157	217	17
158	218	17
159	219	17
160	220	17
161	221	17
162	223	17
163	222	17
164	224	17
165	225	17
166	173	17
167	271	17
168	272	17
169	273	17
170	274	17
171	275	17
172	276	17
173	278	17
174	277	17
175	279	17
176	282	17
177	281	17
178	284	17
179	283	17
180	227	17
181	248	17
182	229	17
183	230	17
184	231	17
185	232	17
186	234	17
187	233	17
188	237	17
189	235	17
190	226	17
191	238	17
192	239	17
193	240	17
194	241	17
195	242	17
196	243	17
197	244	17
198	245	17
199	247	17
200	246	17
201	250	17
202	249	17
203	252	17
204	253	17
205	251	17
206	255	17
207	254	17
208	256	17
209	257	17
210	259	17
211	258	17
212	260	17
213	261	17
214	262	17
215	264	17
216	263	17
217	265	17
218	266	17
219	267	17
220	268	17
221	236	17
222	269	17
223	308	17
224	309	17
225	310	17
226	311	17
227	312	17
228	313	17
229	315	17
230	314	17
231	316	17
232	317	17
233	319	17
234	318	17
235	322	17
236	320	17
237	321	17
238	323	17
239	324	17
240	325	17
241	326	17
242	327	17
243	328	17
244	330	17
245	329	17
246	331	17
247	332	17
248	333	17
249	334	17
250	335	17
251	336	17
252	340	17
253	338	17
254	339	17
255	341	17
256	342	17
257	285	17
258	286	17
259	287	17
260	290	17
261	288	17
262	289	17
263	291	17
264	294	17
265	292	17
266	293	17
267	295	17
268	296	17
269	297	17
270	298	17
271	299	17
272	300	17
273	301	17
274	303	17
275	302	17
276	304	17
277	306	17
278	305	17
279	887	17
280	344	17
281	343	17
282	346	17
283	345	17
284	347	17
285	350	17
286	348	17
287	349	17
288	353	17
289	351	17
290	352	17
291	354	17
292	355	17
293	356	17
294	357	17
295	358	17
296	359	17
297	360	17
298	362	17
299	361	17
300	363	17
301	364	17
302	366	17
303	370	17
304	369	17
305	372	17
306	371	17
307	375	17
308	373	17
309	374	17
310	376	17
311	377	17
312	378	17
313	379	17
314	380	17
315	381	17
316	383	17
317	382	17
318	385	17
319	384	17
320	386	17
321	387	17
322	388	17
323	389	17
324	390	17
325	393	17
326	391	17
327	392	17
328	394	17
329	395	17
330	398	17
331	396	17
332	397	17
333	399	17
334	401	17
335	400	17
336	402	17
337	450	17
338	449	17
339	451	17
340	452	17
341	453	17
342	454	17
343	455	17
344	456	17
345	457	17
346	458	17
347	459	17
348	460	17
349	462	17
350	463	17
351	464	17
352	465	17
353	403	17
354	404	17
355	405	17
356	406	17
357	407	17
358	408	17
359	409	17
360	410	17
361	411	17
362	413	17
363	412	17
364	414	17
365	415	17
366	418	17
367	416	17
368	417	17
369	420	17
370	419	17
371	434	17
372	422	17
373	423	17
374	424	17
375	425	17
376	426	17
377	428	17
378	429	17
379	430	17
380	421	17
381	432	17
382	433	17
383	435	17
384	436	17
385	437	17
386	438	17
387	439	17
388	440	17
389	441	17
390	443	17
391	444	17
392	445	17
393	446	17
394	427	17
395	447	17
396	519	17
397	517	17
398	516	17
399	466	17
400	467	17
401	468	17
402	471	17
403	470	17
404	472	17
405	473	17
406	474	17
407	475	17
408	477	17
409	476	17
410	478	17
411	480	17
412	479	17
413	481	17
414	482	17
415	483	17
416	484	17
417	485	17
418	486	17
419	487	17
420	488	17
421	489	17
422	490	17
423	491	17
424	493	17
425	492	17
426	495	17
427	494	17
428	503	17
429	505	17
430	504	17
431	506	17
432	507	17
433	508	17
434	509	17
435	510	17
436	511	17
437	512	17
438	514	17
439	496	17
440	497	17
441	498	17
442	499	17
443	500	17
444	53	17
445	501	17
446	170	17
447	502	17
448	518	17
449	563	17
450	562	17
451	550	17
452	549	17
453	560	17
454	559	17
455	558	17
456	557	17
457	556	17
458	555	17
459	561	17
460	554	17
461	553	17
462	552	17
463	551	17
464	548	17
465	547	17
466	546	17
467	539	17
468	545	17
469	544	17
470	543	17
471	542	17
472	538	17
473	541	17
474	537	17
475	540	17
476	536	17
477	535	17
478	534	17
479	533	17
480	532	17
481	531	17
482	530	17
483	105	17
484	529	17
485	566	17
486	528	17
487	527	17
488	526	17
489	525	17
490	524	17
491	367	17
492	523	17
493	522	17
494	521	17
495	520	17
496	569	17
497	567	17
498	448	17
499	461	17
500	469	17
501	513	17
502	79	17
503	101	17
504	110	17
505	515	17
506	568	17
507	888	17
508	889	17
509	307	17
510	337	17
511	365	17
512	157	17
513	176	17
514	270	17
515	280	17
516	442	17
517	212	17
518	228	17
519	582	17
520	581	17
521	583	17
522	584	17
523	585	17
524	586	17
525	588	17
526	589	17
527	590	17
528	591	17
529	592	17
530	593	17
531	594	17
532	595	17
533	596	17
534	572	17
535	598	17
536	600	17
537	602	17
538	597	17
539	599	17
540	571	17
541	578	17
542	577	17
543	604	17
544	605	17
545	606	17
546	607	17
547	608	17
548	609	17
549	611	17
550	610	17
551	612	17
552	613	17
553	614	17
554	615	17
555	616	17
556	617	17
557	618	17
558	619	17
559	620	17
560	621	17
561	622	17
562	623	17
563	624	17
564	625	17
565	626	17
566	573	17
567	579	17
568	580	17
569	576	17
570	575	17
571	574	17
572	603	17
573	627	17
574	628	17
575	629	17
576	630	17
577	631	17
578	632	17
579	633	17
580	634	17
581	635	17
582	636	17
583	637	17
584	638	17
585	639	17
586	640	17
587	641	17
588	642	17
589	643	17
590	644	17
591	645	17
592	646	17
593	647	17
594	648	17
595	649	17
596	650	17
597	651	17
598	652	17
599	653	17
600	654	17
601	656	17
602	657	17
603	658	17
604	659	17
605	660	17
606	661	17
607	662	17
608	663	17
609	664	17
610	665	17
611	666	17
612	668	17
613	667	17
614	669	17
615	670	17
616	671	17
617	672	17
618	673	17
619	674	17
620	675	17
621	676	17
622	677	17
623	678	17
624	679	17
625	680	17
626	681	17
627	683	17
628	684	17
629	685	17
630	686	17
631	687	17
632	688	17
633	689	17
634	690	17
635	691	17
636	692	17
637	693	17
638	694	17
639	695	17
640	696	17
641	699	17
642	700	17
643	701	17
644	702	17
645	745	17
646	746	17
647	747	17
648	748	17
649	749	17
650	750	17
651	751	17
652	703	17
653	704	17
654	705	17
655	706	17
656	707	17
657	708	17
658	709	17
659	710	17
660	711	17
661	712	17
662	713	17
663	714	17
664	715	17
665	716	17
666	717	17
667	718	17
668	719	17
669	720	17
670	721	17
671	722	17
672	723	17
673	724	17
674	725	17
675	726	17
676	727	17
677	728	17
678	729	17
679	730	17
680	731	17
681	732	17
682	733	17
683	735	17
684	736	17
685	737	17
686	738	17
687	739	17
688	740	17
689	741	17
690	742	17
691	743	17
692	753	17
693	754	17
694	755	17
695	756	17
696	601	17
697	768	17
698	769	17
699	770	17
700	772	17
701	773	17
702	774	17
703	752	17
704	775	17
705	776	17
706	777	17
707	778	17
708	779	17
709	780	17
710	782	17
711	783	17
712	784	17
713	786	17
714	787	17
715	788	17
716	789	17
717	790	17
718	791	17
719	792	17
720	793	17
721	794	17
722	795	17
723	796	17
724	797	17
725	798	17
726	799	17
727	800	17
728	801	17
729	802	17
730	803	17
731	804	17
732	805	17
733	807	17
734	808	17
735	809	17
736	810	17
737	812	17
738	813	17
739	814	17
740	820	17
741	819	17
742	767	17
743	771	17
744	785	17
745	781	17
746	806	17
747	811	17
748	815	17
749	816	17
750	817	17
751	763	17
752	818	17
753	764	17
754	765	17
755	766	17
756	757	17
757	758	17
758	759	17
759	760	17
760	761	17
761	762	17
762	697	17
763	871	17
764	872	17
765	868	17
766	869	17
767	870	17
768	570	17
769	873	17
770	874	17
771	875	17
772	876	17
773	877	17
774	878	17
775	879	17
776	880	17
777	881	17
778	882	17
779	744	17
780	655	17
781	682	17
782	836	17
783	837	17
784	838	17
785	839	17
786	840	17
787	841	17
788	846	17
789	849	17
790	852	17
791	855	17
792	858	17
793	861	17
794	864	17
795	867	17
796	698	17
797	734	17
798	827	17
799	828	17
800	829	17
801	830	17
802	831	17
803	832	17
804	833	17
805	834	17
806	835	17
807	884	17
808	885	17
809	890	17
810	891	17
811	893	17
812	894	17
813	80	18
814	83	18
815	82	18
816	84	18
817	44	18
818	85	18
819	87	18
820	86	18
821	88	18
822	89	18
823	93	18
824	90	18
825	91	18
826	92	18
827	94	18
828	95	18
829	96	18
830	97	18
831	102	18
832	100	18
833	81	18
834	103	18
835	104	18
836	46	18
837	49	18
838	47	18
839	54	18
840	55	18
841	56	18
842	64	18
843	65	18
844	66	18
845	67	18
846	68	18
847	69	18
848	70	18
849	73	18
850	72	18
851	71	18
852	75	18
853	74	18
854	76	18
855	98	18
856	121	18
857	107	18
858	108	18
859	109	18
860	111	18
861	112	18
862	118	18
863	116	18
864	117	18
865	114	18
866	119	18
867	120	18
868	122	18
869	115	18
870	124	18
871	129	18
872	125	18
873	126	18
874	127	18
875	128	18
876	130	18
877	132	18
878	131	18
879	133	18
880	136	18
881	134	18
882	150	18
883	135	18
884	149	18
885	152	18
886	151	18
887	153	18
888	154	18
889	155	18
890	186	18
891	185	18
892	187	18
893	188	18
894	189	18
895	190	18
896	192	18
897	191	18
898	106	18
899	159	18
900	158	18
901	160	18
902	161	18
903	162	18
904	163	18
905	164	18
906	165	18
907	166	18
908	167	18
909	168	18
910	169	18
911	177	18
912	179	18
913	178	18
914	180	18
915	181	18
916	182	18
917	183	18
918	184	18
919	193	18
920	194	18
921	195	18
922	196	18
923	171	18
924	172	18
925	204	18
926	197	18
927	198	18
928	199	18
929	200	18
930	202	18
931	201	18
932	203	18
933	206	18
934	205	18
935	207	18
936	209	18
937	208	18
938	210	18
939	211	18
940	213	18
941	214	18
942	215	18
943	216	18
944	217	18
945	218	18
946	219	18
947	220	18
948	221	18
949	223	18
950	222	18
951	224	18
952	225	18
953	173	18
954	271	18
955	272	18
956	273	18
957	274	18
958	275	18
959	276	18
960	278	18
961	277	18
962	279	18
963	282	18
964	281	18
965	284	18
966	283	18
967	227	18
968	248	18
969	229	18
970	230	18
971	231	18
972	232	18
973	234	18
974	233	18
975	237	18
976	235	18
977	226	18
978	238	18
979	239	18
980	240	18
981	241	18
982	242	18
983	243	18
984	244	18
985	245	18
986	247	18
987	246	18
988	250	18
989	249	18
990	252	18
991	253	18
992	251	18
993	255	18
994	254	18
995	256	18
996	257	18
997	259	18
998	258	18
999	260	18
1000	261	18
1001	262	18
1002	264	18
1003	263	18
1004	265	18
1005	266	18
1006	267	18
1007	268	18
1008	236	18
1009	269	18
1010	308	18
1011	309	18
1012	310	18
1013	311	18
1014	312	18
1015	313	18
1016	315	18
1017	314	18
1018	316	18
1019	317	18
1020	319	18
1021	318	18
1022	322	18
1023	320	18
1024	321	18
1025	323	18
1026	324	18
1027	325	18
1028	326	18
1029	327	18
1030	328	18
1031	330	18
1032	329	18
1033	331	18
1034	332	18
1035	333	18
1036	334	18
1037	335	18
1038	336	18
1039	340	18
1040	338	18
1041	339	18
1042	341	18
1043	342	18
1044	285	18
1045	286	18
1046	287	18
1047	290	18
1048	288	18
1049	289	18
1050	291	18
1051	294	18
1052	292	18
1053	293	18
1054	295	18
1055	296	18
1056	297	18
1057	298	18
1058	299	18
1059	300	18
1060	301	18
1061	303	18
1062	302	18
1063	304	18
1064	306	18
1065	305	18
1066	887	18
1067	344	18
1068	343	18
1069	346	18
1070	345	18
1071	347	18
1072	350	18
1073	348	18
1074	349	18
1075	353	18
1076	351	18
1077	352	18
1078	354	18
1079	355	18
1080	356	18
1081	357	18
1082	358	18
1083	359	18
1084	360	18
1085	362	18
1086	361	18
1087	363	18
1088	364	18
1089	366	18
1090	370	18
1091	369	18
1092	372	18
1093	371	18
1094	375	18
1095	373	18
1096	374	18
1097	376	18
1098	377	18
1099	378	18
1100	379	18
1101	380	18
1102	381	18
1103	383	18
1104	382	18
1105	385	18
1106	384	18
1107	386	18
1108	387	18
1109	388	18
1110	389	18
1111	390	18
1112	393	18
1113	391	18
1114	392	18
1115	394	18
1116	395	18
1117	398	18
1118	396	18
1119	397	18
1120	399	18
1121	401	18
1122	400	18
1123	402	18
1124	450	18
1125	449	18
1126	451	18
1127	452	18
1128	453	18
1129	454	18
1130	455	18
1131	456	18
1132	457	18
1133	458	18
1134	459	18
1135	460	18
1136	462	18
1137	463	18
1138	464	18
1139	465	18
1140	403	18
1141	404	18
1142	405	18
1143	406	18
1144	407	18
1145	408	18
1146	409	18
1147	410	18
1148	411	18
1149	413	18
1150	412	18
1151	414	18
1152	415	18
1153	418	18
1154	416	18
1155	417	18
1156	420	18
1157	419	18
1158	434	18
1159	422	18
1160	423	18
1161	424	18
1162	425	18
1163	426	18
1164	428	18
1165	429	18
1166	430	18
1167	421	18
1168	432	18
1169	433	18
1170	435	18
1171	436	18
1172	437	18
1173	438	18
1174	439	18
1175	440	18
1176	441	18
1177	443	18
1178	444	18
1179	445	18
1180	446	18
1181	427	18
1182	447	18
1183	519	18
1184	517	18
1185	516	18
1186	466	18
1187	467	18
1188	468	18
1189	471	18
1190	470	18
1191	472	18
1192	473	18
1193	474	18
1194	475	18
1195	477	18
1196	476	18
1197	478	18
1198	480	18
1199	479	18
1200	481	18
1201	482	18
1202	483	18
1203	484	18
1204	485	18
1205	486	18
1206	487	18
1207	488	18
1208	489	18
1209	490	18
1210	491	18
1211	493	18
1212	492	18
1213	495	18
1214	494	18
1215	503	18
1216	505	18
1217	504	18
1218	506	18
1219	507	18
1220	508	18
1221	509	18
1222	510	18
1223	511	18
1224	512	18
1225	514	18
1226	496	18
1227	497	18
1228	498	18
1229	499	18
1230	500	18
1231	53	18
1232	501	18
1233	170	18
1234	502	18
1235	518	18
1236	563	18
1237	562	18
1238	550	18
1239	549	18
1240	560	18
1241	559	18
1242	558	18
1243	557	18
1244	556	18
1245	555	18
1246	561	18
1247	554	18
1248	553	18
1249	552	18
1250	551	18
1251	548	18
1252	547	18
1253	546	18
1254	539	18
1255	545	18
1256	544	18
1257	543	18
1258	542	18
1259	538	18
1260	541	18
1261	537	18
1262	540	18
1263	536	18
1264	535	18
1265	534	18
1266	533	18
1267	532	18
1268	531	18
1269	530	18
1270	105	18
1271	529	18
1272	566	18
1273	528	18
1274	527	18
1275	526	18
1276	525	18
1277	524	18
1278	367	18
1279	523	18
1280	522	18
1281	521	18
1282	520	18
1283	569	18
1284	567	18
1285	448	18
1286	461	18
1287	469	18
1288	513	18
1289	79	18
1290	101	18
1291	110	18
1292	515	18
1293	568	18
1294	888	18
1295	889	18
1296	307	18
1297	337	18
1298	365	18
1299	157	18
1300	176	18
1301	270	18
1302	280	18
1303	442	18
1304	212	18
1305	228	18
1306	582	18
1307	581	18
1308	583	18
1309	584	18
1310	585	18
1311	586	18
1312	588	18
1313	589	18
1314	590	18
1315	591	18
1316	592	18
1317	593	18
1318	594	18
1319	595	18
1320	596	18
1321	572	18
1322	598	18
1323	600	18
1324	602	18
1325	597	18
1326	599	18
1327	571	18
1328	578	18
1329	577	18
1330	604	18
1331	605	18
1332	606	18
1333	607	18
1334	608	18
1335	609	18
1336	611	18
1337	610	18
1338	612	18
1339	613	18
1340	614	18
1341	615	18
1342	616	18
1343	617	18
1344	618	18
1345	619	18
1346	620	18
1347	621	18
1348	622	18
1349	623	18
1350	624	18
1351	625	18
1352	626	18
1353	573	18
1354	579	18
1355	580	18
1356	576	18
1357	575	18
1358	574	18
1359	603	18
1360	627	18
1361	628	18
1362	629	18
1363	630	18
1364	631	18
1365	632	18
1366	633	18
1367	634	18
1368	635	18
1369	636	18
1370	637	18
1371	638	18
1372	639	18
1373	640	18
1374	641	18
1375	642	18
1376	643	18
1377	644	18
1378	645	18
1379	646	18
1380	647	18
1381	648	18
1382	649	18
1383	650	18
1384	651	18
1385	652	18
1386	653	18
1387	654	18
1388	656	18
1389	657	18
1390	658	18
1391	659	18
1392	660	18
1393	661	18
1394	662	18
1395	663	18
1396	664	18
1397	665	18
1398	666	18
1399	668	18
1400	667	18
1401	669	18
1402	670	18
1403	671	18
1404	672	18
1405	673	18
1406	674	18
1407	675	18
1408	676	18
1409	677	18
1410	678	18
1411	679	18
1412	680	18
1413	681	18
1414	683	18
1415	684	18
1416	685	18
1417	686	18
1418	687	18
1419	688	18
1420	689	18
1421	690	18
1422	691	18
1423	692	18
1424	693	18
1425	694	18
1426	695	18
1427	696	18
1428	699	18
1429	700	18
1430	701	18
1431	702	18
1432	745	18
1433	746	18
1434	747	18
1435	748	18
1436	749	18
1437	750	18
1438	751	18
1439	703	18
1440	704	18
1441	705	18
1442	706	18
1443	707	18
1444	708	18
1445	709	18
1446	710	18
1447	711	18
1448	712	18
1449	713	18
1450	714	18
1451	715	18
1452	716	18
1453	717	18
1454	718	18
1455	719	18
1456	720	18
1457	721	18
1458	722	18
1459	723	18
1460	724	18
1461	725	18
1462	726	18
1463	727	18
1464	728	18
1465	729	18
1466	730	18
1467	731	18
1468	732	18
1469	733	18
1470	735	18
1471	736	18
1472	737	18
1473	738	18
1474	739	18
1475	740	18
1476	741	18
1477	742	18
1478	743	18
1479	753	18
1480	754	18
1481	755	18
1482	756	18
1483	601	18
1484	768	18
1485	769	18
1486	770	18
1487	772	18
1488	773	18
1489	774	18
1490	752	18
1491	775	18
1492	776	18
1493	777	18
1494	778	18
1495	779	18
1496	780	18
1497	782	18
1498	783	18
1499	784	18
1500	786	18
1501	787	18
1502	788	18
1503	789	18
1504	790	18
1505	791	18
1506	792	18
1507	793	18
1508	794	18
1509	795	18
1510	796	18
1511	797	18
1512	798	18
1513	799	18
1514	800	18
1515	801	18
1516	802	18
1517	803	18
1518	804	18
1519	805	18
1520	807	18
1521	808	18
1522	809	18
1523	810	18
1524	812	18
1525	813	18
1526	814	18
1527	820	18
1528	819	18
1529	767	18
1530	771	18
1531	785	18
1532	781	18
1533	806	18
1534	811	18
1535	815	18
1536	816	18
1537	817	18
1538	763	18
1539	818	18
1540	764	18
1541	765	18
1542	766	18
1543	757	18
1544	758	18
1545	759	18
1546	760	18
1547	761	18
1548	762	18
1549	697	18
1550	871	18
1551	872	18
1552	868	18
1553	869	18
1554	870	18
1555	570	18
1556	873	18
1557	874	18
1558	875	18
1559	876	18
1560	877	18
1561	878	18
1562	879	18
1563	880	18
1564	881	18
1565	882	18
1566	744	18
1567	655	18
1568	682	18
1569	836	18
1570	837	18
1571	838	18
1572	839	18
1573	840	18
1574	841	18
1575	846	18
1576	849	18
1577	852	18
1578	855	18
1579	858	18
1580	861	18
1581	864	18
1582	867	18
1583	698	18
1584	734	18
1585	827	18
1586	828	18
1587	829	18
1588	830	18
1589	831	18
1590	832	18
1591	833	18
1592	834	18
1593	835	18
1594	884	18
1595	885	18
1596	890	18
1597	891	18
1598	893	18
1599	894	18
1600	80	19
1601	83	19
1602	82	19
1603	84	19
1604	44	19
1605	85	19
1606	87	19
1607	86	19
1608	88	19
1609	89	19
1610	93	19
1611	90	19
1612	91	19
1613	92	19
1614	94	19
1615	95	19
1616	96	19
1617	97	19
1618	102	19
1619	100	19
1620	81	19
1621	103	19
1622	104	19
1623	46	19
1624	49	19
1625	47	19
1626	54	19
1627	55	19
1628	56	19
1629	64	19
1630	65	19
1631	66	19
1632	67	19
1633	68	19
1634	69	19
1635	70	19
1636	73	19
1637	72	19
1638	71	19
1639	75	19
1640	74	19
1641	76	19
1642	98	19
1643	121	19
1644	107	19
1645	108	19
1646	109	19
1647	111	19
1648	112	19
1649	118	19
1650	116	19
1651	117	19
1652	114	19
1653	119	19
1654	120	19
1655	122	19
1656	115	19
1657	124	19
1658	129	19
1659	125	19
1660	126	19
1661	127	19
1662	128	19
1663	130	19
1664	132	19
1665	131	19
1666	133	19
1667	136	19
1668	134	19
1669	150	19
1670	135	19
1671	149	19
1672	152	19
1673	151	19
1674	153	19
1675	154	19
1676	155	19
1677	186	19
1678	185	19
1679	187	19
1680	188	19
1681	189	19
1682	190	19
1683	192	19
1684	191	19
1685	106	19
1686	159	19
1687	158	19
1688	160	19
1689	161	19
1690	162	19
1691	163	19
1692	164	19
1693	165	19
1694	166	19
1695	167	19
1696	168	19
1697	169	19
1698	177	19
1699	179	19
1700	178	19
1701	180	19
1702	181	19
1703	182	19
1704	183	19
1705	184	19
1706	193	19
1707	194	19
1708	195	19
1709	196	19
1710	171	19
1711	172	19
1712	204	19
1713	197	19
1714	198	19
1715	199	19
1716	200	19
1717	202	19
1718	201	19
1719	203	19
1720	206	19
1721	205	19
1722	207	19
1723	209	19
1724	208	19
1725	210	19
1726	211	19
1727	213	19
1728	214	19
1729	215	19
1730	216	19
1731	217	19
1732	218	19
1733	219	19
1734	220	19
1735	221	19
1736	223	19
1737	222	19
1738	224	19
1739	225	19
1740	173	19
1741	271	19
1742	272	19
1743	273	19
1744	274	19
1745	275	19
1746	276	19
1747	278	19
1748	277	19
1749	279	19
1750	282	19
1751	281	19
1752	284	19
1753	283	19
1754	227	19
1755	248	19
1756	229	19
1757	230	19
1758	231	19
1759	232	19
1760	234	19
1761	233	19
1762	237	19
1763	235	19
1764	226	19
1765	238	19
1766	239	19
1767	240	19
1768	241	19
1769	242	19
1770	243	19
1771	244	19
1772	245	19
1773	247	19
1774	246	19
1775	250	19
1776	249	19
1777	252	19
1778	253	19
1779	251	19
1780	255	19
1781	254	19
1782	256	19
1783	257	19
1784	259	19
1785	258	19
1786	260	19
1787	261	19
1788	262	19
1789	264	19
1790	263	19
1791	265	19
1792	266	19
1793	267	19
1794	268	19
1795	236	19
1796	269	19
1797	308	19
1798	309	19
1799	310	19
1800	311	19
1801	312	19
1802	313	19
1803	315	19
1804	314	19
1805	316	19
1806	317	19
1807	319	19
1808	318	19
1809	322	19
1810	320	19
1811	321	19
1812	323	19
1813	324	19
1814	325	19
1815	326	19
1816	327	19
1817	328	19
1818	330	19
1819	329	19
1820	331	19
1821	332	19
1822	333	19
1823	334	19
1824	335	19
1825	336	19
1826	340	19
1827	338	19
1828	339	19
1829	341	19
1830	342	19
1831	285	19
1832	286	19
1833	287	19
1834	290	19
1835	288	19
1836	289	19
1837	291	19
1838	294	19
1839	292	19
1840	293	19
1841	295	19
1842	296	19
1843	297	19
1844	298	19
1845	299	19
1846	300	19
1847	301	19
1848	303	19
1849	302	19
1850	304	19
1851	306	19
1852	305	19
1853	887	19
1854	344	19
1855	343	19
1856	346	19
1857	345	19
1858	347	19
1859	350	19
1860	348	19
1861	349	19
1862	353	19
1863	351	19
1864	352	19
1865	354	19
1866	355	19
1867	356	19
1868	357	19
1869	358	19
1870	359	19
1871	360	19
1872	362	19
1873	361	19
1874	363	19
1875	364	19
1876	366	19
1877	370	19
1878	369	19
1879	372	19
1880	371	19
1881	375	19
1882	373	19
1883	374	19
1884	376	19
1885	377	19
1886	378	19
1887	379	19
1888	380	19
1889	381	19
1890	383	19
1891	382	19
1892	385	19
1893	384	19
1894	386	19
1895	387	19
1896	388	19
1897	389	19
1898	390	19
1899	393	19
1900	391	19
1901	392	19
1902	394	19
1903	395	19
1904	398	19
1905	396	19
1906	397	19
1907	399	19
1908	401	19
1909	400	19
1910	402	19
1911	450	19
1912	449	19
1913	451	19
1914	452	19
1915	453	19
1916	454	19
1917	455	19
1918	456	19
1919	457	19
1920	458	19
1921	459	19
1922	460	19
1923	462	19
1924	463	19
1925	464	19
1926	465	19
1927	403	19
1928	404	19
1929	405	19
1930	406	19
1931	407	19
1932	408	19
1933	409	19
1934	410	19
1935	411	19
1936	413	19
1937	412	19
1938	414	19
1939	415	19
1940	418	19
1941	416	19
1942	417	19
1943	420	19
1944	419	19
1945	434	19
1946	422	19
1947	423	19
1948	424	19
1949	425	19
1950	426	19
1951	428	19
1952	429	19
1953	430	19
1954	421	19
1955	432	19
1956	433	19
1957	435	19
1958	436	19
1959	437	19
1960	438	19
1961	439	19
1962	440	19
1963	441	19
1964	443	19
1965	444	19
1966	445	19
1967	446	19
1968	427	19
1969	447	19
1970	519	19
1971	517	19
1972	516	19
1973	466	19
1974	467	19
1975	468	19
1976	471	19
1977	470	19
1978	472	19
1979	473	19
1980	474	19
1981	475	19
1982	477	19
1983	476	19
1984	478	19
1985	480	19
1986	479	19
1987	481	19
1988	482	19
1989	483	19
1990	484	19
1991	485	19
1992	486	19
1993	487	19
1994	488	19
1995	489	19
1996	490	19
1997	491	19
1998	493	19
1999	492	19
2000	495	19
2001	494	19
2002	503	19
2003	505	19
2004	504	19
2005	506	19
2006	507	19
2007	508	19
2008	509	19
2009	510	19
2010	511	19
2011	512	19
2012	514	19
2013	496	19
2014	497	19
2015	498	19
2016	499	19
2017	500	19
2018	53	19
2019	501	19
2020	170	19
2021	502	19
2022	518	19
2023	563	19
2024	562	19
2025	550	19
2026	549	19
2027	560	19
2028	559	19
2029	558	19
2030	557	19
2031	556	19
2032	555	19
2033	561	19
2034	554	19
2035	553	19
2036	552	19
2037	551	19
2038	548	19
2039	547	19
2040	546	19
2041	539	19
2042	545	19
2043	544	19
2044	543	19
2045	542	19
2046	538	19
2047	541	19
2048	537	19
2049	540	19
2050	536	19
2051	535	19
2052	534	19
2053	533	19
2054	532	19
2055	531	19
2056	530	19
2057	105	19
2058	529	19
2059	566	19
2060	528	19
2061	527	19
2062	526	19
2063	525	19
2064	524	19
2065	367	19
2066	523	19
2067	522	19
2068	521	19
2069	520	19
2070	569	19
2071	567	19
2072	448	19
2073	461	19
2074	469	19
2075	513	19
2076	79	19
2077	101	19
2078	110	19
2079	515	19
2080	568	19
2081	888	19
2082	889	19
2083	307	19
2084	337	19
2085	365	19
2086	157	19
2087	176	19
2088	270	19
2089	280	19
2090	442	19
2091	212	19
2092	228	19
2093	582	19
2094	581	19
2095	583	19
2096	584	19
2097	585	19
2098	586	19
2099	588	19
2100	589	19
2101	590	19
2102	591	19
2103	592	19
2104	593	19
2105	594	19
2106	595	19
2107	596	19
2108	572	19
2109	598	19
2110	600	19
2111	602	19
2112	597	19
2113	599	19
2114	571	19
2115	578	19
2116	577	19
2117	604	19
2118	605	19
2119	606	19
2120	607	19
2121	608	19
2122	609	19
2123	611	19
2124	610	19
2125	612	19
2126	613	19
2127	614	19
2128	615	19
2129	616	19
2130	617	19
2131	618	19
2132	619	19
2133	620	19
2134	621	19
2135	622	19
2136	623	19
2137	624	19
2138	625	19
2139	626	19
2140	573	19
2141	579	19
2142	580	19
2143	576	19
2144	575	19
2145	574	19
2146	603	19
2147	627	19
2148	628	19
2149	629	19
2150	630	19
2151	631	19
2152	632	19
2153	633	19
2154	634	19
2155	635	19
2156	636	19
2157	637	19
2158	638	19
2159	639	19
2160	640	19
2161	641	19
2162	642	19
2163	643	19
2164	644	19
2165	645	19
2166	646	19
2167	647	19
2168	648	19
2169	649	19
2170	650	19
2171	651	19
2172	652	19
2173	653	19
2174	654	19
2175	656	19
2176	657	19
2177	658	19
2178	659	19
2179	660	19
2180	661	19
2181	662	19
2182	663	19
2183	664	19
2184	665	19
2185	666	19
2186	668	19
2187	667	19
2188	669	19
2189	670	19
2190	671	19
2191	672	19
2192	673	19
2193	674	19
2194	675	19
2195	676	19
2196	677	19
2197	678	19
2198	679	19
2199	680	19
2200	681	19
2201	683	19
2202	684	19
2203	685	19
2204	686	19
2205	687	19
2206	688	19
2207	689	19
2208	690	19
2209	691	19
2210	692	19
2211	693	19
2212	694	19
2213	695	19
2214	696	19
2215	699	19
2216	700	19
2217	701	19
2218	702	19
2219	745	19
2220	746	19
2221	747	19
2222	748	19
2223	749	19
2224	750	19
2225	751	19
2226	703	19
2227	704	19
2228	705	19
2229	706	19
2230	707	19
2231	708	19
2232	709	19
2233	710	19
2234	711	19
2235	712	19
2236	713	19
2237	714	19
2238	715	19
2239	716	19
2240	717	19
2241	718	19
2242	719	19
2243	720	19
2244	721	19
2245	722	19
2246	723	19
2247	724	19
2248	725	19
2249	726	19
2250	727	19
2251	728	19
2252	729	19
2253	730	19
2254	731	19
2255	732	19
2256	733	19
2257	735	19
2258	736	19
2259	737	19
2260	738	19
2261	739	19
2262	740	19
2263	741	19
2264	742	19
2265	743	19
2266	753	19
2267	754	19
2268	755	19
2269	756	19
2270	601	19
2271	768	19
2272	769	19
2273	770	19
2274	772	19
2275	773	19
2276	774	19
2277	752	19
2278	775	19
2279	776	19
2280	777	19
2281	778	19
2282	779	19
2283	780	19
2284	782	19
2285	783	19
2286	784	19
2287	786	19
2288	787	19
2289	788	19
2290	789	19
2291	790	19
2292	791	19
2293	792	19
2294	793	19
2295	794	19
2296	795	19
2297	796	19
2298	797	19
2299	798	19
2300	799	19
2301	800	19
2302	801	19
2303	802	19
2304	803	19
2305	804	19
2306	805	19
2307	807	19
2308	808	19
2309	809	19
2310	810	19
2311	812	19
2312	813	19
2313	814	19
2314	820	19
2315	819	19
2316	767	19
2317	771	19
2318	785	19
2319	781	19
2320	806	19
2321	811	19
2322	815	19
2323	816	19
2324	817	19
2325	763	19
2326	818	19
2327	764	19
2328	765	19
2329	766	19
2330	757	19
2331	758	19
2332	759	19
2333	760	19
2334	761	19
2335	762	19
2336	697	19
2337	871	19
2338	872	19
2339	868	19
2340	869	19
2341	870	19
2342	570	19
2343	873	19
2344	874	19
2345	875	19
2346	876	19
2347	877	19
2348	878	19
2349	879	19
2350	880	19
2351	881	19
2352	882	19
2353	744	19
2354	655	19
2355	682	19
2356	836	19
2357	837	19
2358	838	19
2359	839	19
2360	840	19
2361	841	19
2362	846	19
2363	849	19
2364	852	19
2365	855	19
2366	858	19
2367	861	19
2368	864	19
2369	867	19
2370	698	19
2371	734	19
2372	827	19
2373	828	19
2374	829	19
2375	830	19
2376	831	19
2377	832	19
2378	833	19
2379	834	19
2380	835	19
2381	884	19
2382	885	19
2383	890	19
2384	891	19
2385	893	19
2386	894	19
\.


--
-- Data for Name: maps_scan_scan_reference; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_scan_scan_reference (id, scan_id, reference_id) FROM stdin;
1	563	31
2	562	31
3	561	31
4	560	31
5	559	31
6	558	31
7	557	31
8	556	31
9	555	31
10	515	31
11	554	31
12	553	31
13	552	31
14	551	31
15	550	31
16	549	31
17	548	31
18	547	31
19	546	31
20	545	31
21	544	31
22	543	31
23	542	31
24	541	31
25	540	31
26	539	31
27	538	31
28	537	31
29	536	31
30	535	31
31	534	31
32	533	31
33	532	31
34	531	31
35	530	31
36	529	31
37	528	31
38	527	31
39	526	31
40	525	31
41	524	31
42	523	31
43	522	31
44	521	31
45	520	31
46	519	31
47	518	31
48	517	31
49	516	31
52	566	31
53	567	31
54	448	28
55	449	28
56	450	28
57	451	28
58	452	28
59	453	28
60	454	28
61	455	28
62	456	28
63	457	28
64	458	28
65	459	28
66	460	28
67	461	28
68	462	28
69	463	28
70	464	28
71	465	28
72	466	28
73	467	28
74	468	28
75	469	28
76	470	28
77	471	28
78	472	28
79	473	28
80	474	28
81	475	28
82	476	28
83	477	28
84	478	28
85	479	28
86	480	28
87	481	28
88	482	28
89	483	28
90	484	28
91	485	28
92	486	28
93	487	28
94	488	28
95	489	28
96	490	28
97	491	28
98	492	28
99	493	28
100	494	28
101	495	28
102	503	28
103	504	28
104	505	28
105	506	28
106	507	28
107	508	28
108	509	28
109	510	28
110	511	28
111	512	28
112	513	28
113	514	28
114	79	18
115	80	18
116	81	18
117	82	18
118	83	18
119	84	18
120	85	18
121	86	18
122	87	18
123	88	18
124	89	18
125	90	18
126	91	18
127	92	18
128	93	18
129	94	18
130	95	18
131	96	18
132	97	18
133	98	18
134	101	19
135	100	19
136	104	19
137	103	19
138	105	19
139	106	19
140	107	19
141	108	19
142	109	19
143	367	19
144	110	19
145	111	19
146	112	19
148	114	19
149	116	19
150	117	19
151	118	19
152	119	19
153	120	19
154	121	19
155	122	19
156	124	19
157	125	19
158	126	19
159	127	19
160	128	19
161	129	19
162	130	19
163	131	19
164	132	19
165	133	19
166	134	19
167	135	19
168	136	19
169	568	19
170	569	19
171	570	19
172	571	19
173	572	19
174	307	27
175	308	27
176	309	27
177	310	27
178	311	27
179	312	27
180	313	27
181	314	27
182	315	27
183	316	27
184	317	27
185	318	27
186	319	27
187	320	27
188	321	27
189	322	27
190	323	27
191	324	27
192	325	27
193	326	27
194	327	27
195	328	27
196	329	27
197	330	27
198	331	27
199	332	27
200	333	27
201	334	27
202	335	27
203	336	27
204	337	27
205	338	27
206	339	27
207	340	27
208	341	27
209	342	27
210	343	27
211	344	27
212	345	27
213	346	27
214	347	27
215	348	27
216	349	27
217	350	27
218	351	27
219	352	27
220	353	27
221	354	27
222	355	27
223	356	27
224	357	27
225	358	27
226	359	27
227	360	27
228	361	27
229	362	27
230	363	27
231	364	27
232	365	27
233	366	27
234	150	30
235	149	30
236	151	30
237	152	30
238	153	30
239	154	30
240	155	30
241	157	30
242	158	30
243	159	30
244	160	30
245	161	30
246	162	30
247	163	30
248	164	30
249	165	30
250	166	30
251	167	30
252	168	30
253	169	30
254	176	20
255	177	20
256	178	20
257	179	20
258	180	20
259	181	20
260	182	20
261	183	20
262	184	20
263	185	20
264	186	20
265	187	20
266	188	20
267	189	20
268	190	20
269	191	20
270	192	20
271	193	20
272	194	20
273	195	20
274	196	20
275	44	29
276	496	29
277	46	29
278	47	29
279	497	29
280	49	29
281	498	29
282	499	29
283	500	29
284	53	29
285	54	29
286	55	29
287	56	29
288	64	29
289	65	29
290	66	29
291	67	29
292	68	29
293	69	29
294	70	29
295	71	29
296	72	29
297	73	29
298	74	29
299	75	29
300	76	29
301	501	29
302	170	29
303	171	29
304	172	29
305	502	29
306	173	29
307	270	26
308	271	26
309	272	26
310	273	26
311	274	26
312	275	26
313	276	26
314	277	26
315	278	26
316	279	26
317	280	26
318	281	26
319	282	26
320	283	26
321	284	26
322	285	26
323	286	26
324	287	26
325	288	26
326	289	26
327	290	26
328	291	26
329	292	26
330	293	26
331	294	26
332	295	26
333	296	26
334	297	26
335	298	26
336	299	26
338	300	26
339	301	26
340	302	26
341	303	26
342	304	26
343	305	26
344	306	26
345	369	26
346	370	26
347	371	26
348	372	26
349	373	26
350	374	26
351	375	26
352	376	26
353	377	26
354	378	26
355	379	26
356	380	26
357	381	26
358	382	26
359	383	26
360	384	26
361	385	26
362	386	26
363	387	26
364	388	26
365	389	26
366	390	26
367	391	26
368	392	26
369	393	26
370	394	26
371	395	26
372	396	26
373	397	26
374	398	26
375	399	26
376	400	26
377	401	26
378	402	26
379	403	26
380	404	26
381	405	26
382	406	26
383	407	26
384	408	26
385	409	26
386	410	26
387	411	26
388	412	26
389	413	26
390	414	26
391	415	26
392	416	26
393	417	26
394	418	26
395	419	26
396	420	26
397	421	26
398	422	26
399	423	26
400	424	26
401	425	26
402	426	26
403	427	26
404	428	26
405	429	26
406	430	26
407	432	26
408	433	26
409	434	26
410	435	26
411	436	26
412	437	26
413	438	26
414	439	26
415	440	26
416	441	26
417	442	26
418	443	26
419	444	26
420	445	26
421	446	26
422	447	26
423	197	21
425	199	21
426	198	21
427	200	21
428	201	21
429	202	21
430	203	21
431	204	21
432	205	21
433	206	21
434	207	21
435	208	21
436	209	21
437	210	21
438	211	21
439	212	21
440	213	21
441	214	21
442	215	21
443	216	21
444	217	21
445	218	21
446	219	22
447	220	22
448	221	22
449	222	22
450	223	22
451	224	22
452	225	22
453	227	22
454	228	22
455	229	22
456	230	22
457	231	22
458	232	22
459	233	22
460	234	22
461	235	22
462	236	22
463	237	22
464	238	22
465	239	22
466	240	23
467	241	23
468	242	23
469	243	23
470	244	23
471	245	23
472	246	23
473	247	23
474	248	23
475	249	23
476	250	23
477	251	23
478	252	23
479	253	23
480	254	23
481	255	23
482	256	23
483	257	23
484	258	23
485	259	23
486	260	23
487	261	23
488	262	23
489	263	23
490	264	23
491	265	23
492	266	23
493	267	23
494	268	23
495	269	23
496	573	21
497	574	23
498	575	23
499	576	23
500	577	29
501	578	29
502	579	21
503	580	22
504	581	32
505	582	32
506	583	32
507	584	32
508	585	32
510	588	32
511	589	32
512	590	32
513	591	32
514	592	32
515	593	32
516	594	32
517	595	32
518	596	32
519	597	25
520	598	33
521	599	33
522	600	33
523	601	33
524	602	33
525	603	33
526	627	33
527	628	33
528	768	44
529	769	44
530	770	44
531	772	44
532	773	44
533	774	44
534	752	40
535	775	44
536	776	44
537	777	44
538	778	44
539	779	44
540	780	44
541	782	44
542	783	44
543	784	44
544	786	44
545	787	44
546	788	44
547	789	44
548	790	44
549	791	44
550	792	44
551	793	44
552	794	44
553	795	44
554	796	44
555	797	44
556	798	44
557	799	44
558	800	44
559	801	44
560	802	44
561	803	44
562	804	44
563	805	44
564	806	44
565	807	44
566	808	44
567	697	37
568	871	37
569	872	37
570	873	37
571	874	37
572	875	37
573	876	25
574	876	37
575	877	25
576	877	37
577	878	25
578	878	37
579	879	25
580	879	37
581	880	25
582	880	37
583	881	25
584	881	37
585	882	25
586	882	37
587	744	39
588	745	39
589	746	39
590	747	39
591	748	40
592	749	40
593	750	40
594	751	40
595	629	36
596	630	36
597	631	36
598	632	36
599	633	36
600	634	36
601	635	36
602	636	36
603	637	36
604	638	36
605	639	36
606	640	36
607	641	36
608	642	36
609	643	36
610	644	36
611	645	36
612	646	36
613	647	36
614	648	36
615	649	36
616	650	36
617	651	36
618	652	36
619	653	36
620	819	36
621	654	36
622	655	36
623	656	36
624	657	36
625	658	36
626	659	36
627	660	36
628	661	36
629	662	36
630	663	36
631	664	36
632	665	36
633	666	36
634	667	36
635	668	36
636	669	36
637	670	36
638	671	36
639	672	36
640	673	36
641	674	36
642	675	36
643	676	36
644	677	36
645	767	36
646	678	36
647	679	36
648	680	36
649	681	36
650	682	36
651	683	36
652	684	36
653	685	36
654	686	36
655	687	36
656	688	36
657	689	36
658	690	36
659	691	36
660	692	36
661	693	36
662	694	36
663	695	36
664	696	36
665	115	19
666	102	19
667	771	44
668	785	44
669	781	44
670	836	48
671	837	48
672	838	48
673	839	48
676	840	48
679	841	48
682	846	48
685	849	48
688	852	48
691	855	48
694	858	48
697	861	48
700	864	48
701	811	46
702	815	47
703	816	47
704	817	47
705	818	47
706	867	47
707	698	38
708	699	38
709	700	38
710	701	38
711	702	38
712	703	38
713	704	38
714	705	38
715	706	38
716	707	38
717	708	38
718	709	38
719	710	38
720	763	38
721	711	38
722	712	38
723	713	38
724	714	38
725	715	38
726	716	38
727	717	38
728	718	38
729	719	38
730	764	38
731	720	38
732	721	38
733	722	38
734	765	38
735	723	38
736	724	38
737	725	38
738	726	38
739	727	38
740	728	38
741	729	38
742	730	38
743	731	38
744	732	38
745	733	38
746	734	38
747	735	38
748	736	38
749	737	38
750	738	38
751	739	38
752	740	38
753	741	38
754	742	38
755	766	38
756	743	38
757	604	34
758	605	34
759	606	34
760	607	34
761	608	34
762	609	34
763	610	34
764	611	34
765	612	34
766	613	34
767	614	34
768	615	34
769	616	34
770	617	34
771	618	34
772	619	34
773	620	34
774	621	35
775	622	35
776	623	35
777	624	35
778	625	35
779	626	35
780	827	45
781	828	45
782	829	45
783	830	45
784	831	45
785	832	45
786	833	45
787	834	45
788	835	45
789	226	22
791	753	42
792	884	42
793	754	42
794	755	42
795	885	42
796	756	42
797	757	42
798	758	42
799	759	42
800	760	42
801	761	42
802	762	42
803	887	40
804	888	40
805	889	36
806	890	37
808	891	47
809	893	45
810	894	45
\.


--
-- Data for Name: maps_scan_scan_type; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_scan_scan_type (id, scan_id, type_id) FROM stdin;
789	64	110
790	46	110
791	47	110
792	49	110
793	55	110
794	56	110
795	68	110
796	70	110
797	71	110
798	72	110
799	73	110
800	74	110
801	75	110
802	76	110
803	101	110
804	110	110
805	171	110
806	172	110
807	260	110
808	261	110
809	262	110
810	263	110
811	310	110
812	312	110
813	313	110
814	314	110
815	326	110
816	328	110
817	344	110
818	345	110
819	350	110
820	352	110
821	353	110
822	427	110
823	448	110
824	454	110
825	455	110
826	456	110
827	459	110
828	467	110
829	469	110
830	470	110
831	471	110
832	472	110
833	476	110
835	489	110
836	493	110
837	494	110
838	495	110
839	496	110
840	497	110
841	498	110
842	499	110
843	501	110
844	503	110
845	504	110
846	505	110
847	506	110
848	507	110
849	508	110
850	509	110
851	510	110
852	511	110
853	512	110
854	556	110
855	557	110
856	558	110
857	559	110
858	560	110
859	561	110
860	562	110
861	563	110
862	567	110
863	570	110
864	576	110
865	679	110
866	680	110
867	681	110
868	748	110
869	870	110
870	874	110
871	890	110
872	65	108
873	66	108
874	44	108
875	53	108
876	54	108
877	67	108
878	69	108
879	79	108
880	80	108
881	81	108
882	82	108
883	83	108
884	84	108
885	85	108
886	86	108
887	87	108
888	88	108
889	89	108
890	90	108
891	91	108
892	92	108
893	93	108
894	94	108
895	95	108
896	96	108
897	97	108
898	98	108
899	100	108
900	102	108
901	103	108
902	104	108
903	105	108
904	106	108
905	107	108
906	108	108
907	109	108
908	111	108
909	112	108
910	114	108
911	115	108
912	116	108
913	117	108
914	118	108
915	119	108
916	120	108
917	121	108
918	122	108
919	124	108
920	125	108
921	126	108
922	127	108
923	128	108
924	129	108
925	130	108
926	131	108
927	132	108
928	133	108
929	134	108
930	135	108
931	136	108
932	149	108
933	150	108
934	151	108
935	152	108
936	153	108
937	154	108
938	155	108
939	157	108
940	158	108
941	159	108
942	160	108
943	161	108
944	162	108
945	163	108
946	164	108
947	165	108
948	166	108
949	167	108
950	168	108
951	169	108
952	170	108
953	173	108
954	176	108
955	177	108
956	178	108
957	179	108
958	180	108
959	181	108
960	182	108
961	183	108
962	184	108
963	185	108
964	186	108
965	187	108
966	188	108
967	189	108
968	190	108
969	191	108
970	192	108
971	193	108
972	194	108
973	195	108
974	196	108
975	197	108
976	198	108
977	199	108
978	200	108
979	201	108
980	202	108
981	203	108
982	204	108
983	205	108
984	206	108
985	207	108
986	208	108
987	209	108
988	210	108
989	211	108
990	212	108
991	213	108
992	214	108
993	215	108
994	216	108
995	217	108
996	218	108
997	219	108
998	220	108
999	221	108
1000	222	108
1001	223	108
1002	224	108
1003	225	108
1004	226	108
1005	227	108
1006	228	108
1007	229	108
1008	230	108
1009	231	108
1010	232	108
1011	233	108
1012	234	108
1013	235	108
1014	236	108
1015	237	108
1016	238	108
1017	239	108
1018	240	108
1019	241	108
1020	242	108
1021	243	108
1022	244	108
1023	245	108
1024	246	108
1025	247	108
1026	248	108
1027	249	108
1028	250	108
1029	251	108
1030	252	108
1031	253	108
1032	254	108
1033	255	108
1034	256	108
1035	257	108
1036	258	108
1037	259	108
1038	264	108
1039	265	108
1040	266	108
1041	267	108
1042	268	108
1043	269	108
1044	270	108
1045	271	108
1046	272	108
1047	273	108
1048	274	108
1049	275	108
1050	276	108
1051	277	108
1052	278	108
1053	279	108
1054	280	108
1055	281	108
1056	282	108
1057	283	108
1058	284	108
1059	285	108
1060	286	108
1061	287	108
1062	288	108
1063	289	108
1064	290	108
1065	291	108
1066	292	108
1067	293	108
1068	294	108
1069	295	108
1070	296	108
1071	297	108
1072	298	108
1073	299	108
1074	300	108
1075	301	108
1076	302	108
1077	303	108
1078	304	108
1079	305	108
1080	306	108
1081	307	108
1082	308	108
1083	309	108
1084	311	108
1085	315	108
1086	316	108
1087	317	108
1088	318	108
1089	319	108
1090	320	108
1091	321	108
1092	322	108
1093	323	108
1094	324	108
1095	325	108
1096	327	108
1097	329	108
1098	330	108
1099	331	108
1100	332	108
1101	333	108
1102	334	108
1103	335	108
1104	336	108
1105	337	108
1106	338	108
1107	339	108
1108	340	108
1109	341	108
1110	342	108
1111	343	108
1112	346	108
1113	347	108
1114	348	108
1115	349	108
1116	351	108
1117	354	108
1118	355	108
1119	356	108
1120	357	108
1121	358	108
1122	359	108
1123	360	108
1124	361	108
1125	362	108
1126	363	108
1127	364	108
1128	365	108
1129	366	108
1130	367	108
1131	369	108
1132	370	108
1133	371	108
1134	372	108
1135	373	108
1136	374	108
1137	375	108
1138	376	108
1139	377	108
1140	378	108
1141	379	108
1142	380	108
1143	381	108
1144	382	108
1145	383	108
1146	384	108
1147	385	108
1148	386	108
1149	387	108
1150	388	108
1151	389	108
1152	390	108
1153	391	108
1154	392	108
1155	393	108
1156	394	108
1157	395	108
1158	396	108
1159	397	108
1160	398	108
1161	399	108
1162	400	108
1163	401	108
1164	402	108
1165	403	108
1166	404	108
1167	405	108
1168	406	108
1169	407	108
1170	408	108
1171	409	108
1172	410	108
1173	411	108
1174	412	108
1175	413	108
1176	414	108
1177	415	108
1178	416	108
1179	417	108
1180	418	108
1181	419	108
1182	420	108
1183	421	108
1184	422	108
1185	423	108
1186	424	108
1187	425	108
1188	426	108
1189	428	108
1190	429	108
1191	430	108
1192	432	108
1193	433	108
1194	434	108
1195	435	108
1196	436	108
1197	437	108
1198	438	108
1199	439	108
1200	440	108
1201	441	108
1202	442	108
1203	443	108
1204	444	108
1205	445	108
1206	446	108
1207	447	108
1208	449	108
1209	450	108
1210	451	108
1211	452	108
1212	453	108
1213	457	108
1214	458	108
1215	460	108
1216	461	108
1217	462	108
1218	463	108
1219	464	108
1220	465	108
1221	466	108
1222	468	108
1223	473	108
1224	474	108
1225	475	108
1226	477	108
1227	479	108
1228	480	108
1229	481	108
1230	482	108
1231	483	108
1232	484	108
1233	485	108
1234	486	108
1235	487	108
1236	488	108
1237	490	108
1238	491	108
1239	492	108
1240	500	108
1241	502	108
1242	513	108
1243	514	108
1244	568	108
1245	569	108
1246	571	108
1247	572	108
1248	573	108
1249	574	108
1250	575	108
1251	577	108
1252	578	108
1253	579	108
1254	580	108
1255	597	108
1256	695	108
1257	696	108
1258	744	108
1259	745	108
1260	746	108
1261	747	108
1262	868	108
1263	869	108
1264	876	108
1265	877	108
1266	878	108
1267	879	108
1268	880	108
1269	881	108
1270	814	194
1271	682	194
1272	791	194
1273	666	194
1274	669	194
1275	792	194
1276	783	194
1277	552	194
1278	808	194
1279	637	194
1280	703	194
1281	606	194
1282	894	194
1283	787	194
1284	630	194
1285	798	194
1286	793	194
1287	784	194
1288	687	194
1289	650	194
1290	599	194
1291	550	194
1292	526	194
1293	634	194
1294	613	194
1295	628	194
1296	805	194
1297	549	194
1298	583	194
1299	648	194
1300	626	194
1301	800	194
1302	753	194
1303	790	194
1304	819	194
1305	840	194
1306	701	194
1307	816	194
1308	885	194
1309	749	194
1310	678	194
1311	521	194
1312	773	194
1313	796	194
1314	608	194
1315	761	194
1316	693	194
1317	758	194
1318	622	194
1319	604	194
1320	593	194
1321	670	194
1322	623	194
1323	752	194
1324	528	194
1325	515	194
1326	594	194
1327	546	194
1328	517	194
1329	769	194
1330	838	194
1331	605	194
1332	706	194
1333	893	194
1334	638	194
1335	647	194
1336	837	194
1337	640	194
1338	861	194
1339	651	194
1340	830	194
1341	636	194
1342	553	194
1343	611	194
1344	639	194
1345	762	194
1346	884	194
1347	846	194
1348	849	194
1349	548	194
1350	547	194
1351	661	194
1352	768	194
1353	641	194
1354	530	194
1355	698	194
1356	771	194
1357	803	194
1358	704	194
1359	684	194
1360	754	194
1361	595	194
1362	777	194
1363	614	194
1364	609	194
1365	889	194
1366	888	194
1367	757	194
1368	882	194
1369	788	194
1370	807	194
1371	631	194
1372	760	194
1373	833	194
1374	667	194
1375	633	194
1376	871	194
1377	663	194
1378	589	194
1379	598	194
1380	887	194
1381	804	194
1382	797	194
1383	533	194
1384	591	194
1385	770	194
1386	542	194
1387	523	194
1388	827	194
1389	544	194
1390	699	194
1391	535	194
1392	707	194
1393	660	194
1394	619	194
1395	555	194
1396	815	194
1397	590	194
1398	839	194
1399	755	194
1400	855	194
1401	801	194
1402	676	194
1403	775	194
1404	607	194
1405	683	194
1406	692	194
1407	836	194
1408	654	194
1409	551	194
1410	872	194
1411	779	194
1412	532	194
1413	624	194
1414	621	194
1415	832	194
1416	776	194
1417	794	194
1418	525	194
1419	864	194
1420	671	194
1421	811	194
1422	685	194
1423	618	194
1424	518	194
1425	756	194
1426	691	194
1427	653	194
1428	615	194
1429	781	194
1430	674	194
1431	656	194
1432	786	194
1433	536	194
1434	705	194
1435	540	194
1436	664	194
1437	690	194
1438	673	194
1439	610	194
1440	537	194
1441	835	194
1442	829	194
1443	778	194
1444	668	194
1445	658	194
1446	873	194
1447	554	194
1448	520	194
1449	645	194
1450	686	194
1451	785	194
1452	737	194
1453	750	194
1454	538	194
1455	795	194
1456	818	194
1457	582	194
1458	519	194
1459	817	194
1460	585	194
1461	629	194
1462	534	194
1463	700	194
1464	662	194
1465	524	194
1466	620	194
1467	529	194
1468	632	194
1469	708	194
1470	545	194
1471	780	194
1472	527	194
1473	588	194
1474	596	194
1475	665	194
1476	852	194
1477	617	194
1478	612	194
1479	812	194
1480	659	194
1481	539	194
1482	772	194
1483	697	194
1484	584	194
1485	635	194
1486	657	194
1487	642	194
1488	652	194
1489	802	194
1490	799	194
1491	675	194
1492	806	194
1493	616	194
1494	522	194
1495	767	194
1496	541	194
1497	782	194
1498	751	194
1499	655	194
1500	531	194
1501	672	194
1502	875	194
1503	566	194
1504	841	194
1505	644	194
1506	677	194
1507	586	194
1508	625	194
1509	592	194
1510	789	194
1511	702	194
1512	831	194
1513	581	194
1514	649	194
1515	813	194
1516	828	194
1517	858	194
1518	759	194
1519	643	194
1520	834	194
1521	689	194
1522	646	194
1523	774	194
1524	694	194
1525	543	194
1526	736	194
1527	688	194
1528	516	193
1529	600	193
1530	602	193
1531	603	193
1532	627	193
1533	709	193
1534	710	193
1535	711	193
1536	712	193
1537	713	193
1538	714	193
1539	715	193
1540	716	193
1541	717	193
1542	718	193
1543	719	193
1544	720	193
1545	721	193
1546	722	193
1547	723	193
1548	724	193
1549	725	193
1550	726	193
1551	727	193
1552	728	193
1553	729	193
1554	730	193
1555	731	193
1556	732	193
1557	733	193
1558	735	193
1559	738	193
1560	739	193
1561	740	193
1562	741	193
1563	742	193
1564	743	193
1565	601	193
1566	809	193
1567	810	193
1568	820	193
1569	763	193
1570	764	193
1571	765	193
1572	766	193
1573	867	193
1574	734	193
1575	891	193
1576	478	193
\.


--
-- Data for Name: maps_type; Type: TABLE DATA; Schema: public; Owner: diauma
--

COPY public.maps_type (id, name, lft, rght, tree_id, level, parent_id, info) FROM stdin;
5	Institute	1	12	3	0	\N	
87	University	8	9	3	3	86	
12	Institute Type	2	11	3	1	5	
86	Scientific institution	7	10	3	2	12	
97	Drawer 10	82	83	4	3	79	
82	Drawer 13	86	87	4	3	79	
171	Platzhalter: Map grid nur am Rand, nicht über die ganze Karte	70	71	4	3	17	
16	Features	52	77	4	1	1	
25	Female	7	8	5	2	24	
26	Male	9	10	5	2	24	
24	Sex	6	11	5	1	2	
142	I. Entwürfe außerhalb der Lieferungen	3	4	7	2	138	
2	Person	1	12	5	0	\N	
4	Place	1	6	6	0	\N	
39	Place type	2	5	6	1	4	
41	City	3	4	6	2	39	
3	Reference	1	8	7	0	\N	
138	DAÖ	2	7	7	1	3	
85	Scientific domain	2	5	5	1	2	
90	Linguistic	3	4	5	2	85	
185	Weimar Republic	36	37	4	3	157	Die Weimarer Republik von 1918 bis 1933.
13	Publishing company	5	6	3	2	12	
110	CC-BY 4.0	3	4	8	2	104	
166	Czech Republic	18	19	4	3	52	
109	Public domain	13	14	8	2	104	
102	Scan	1	16	8	0	\N	
104	Licence	2	15	8	1	102	
108	Lizenz ungeklärt (DAÖ orphan)	7	8	8	2	104	Gehört zu DAÖ oder sub davon, kein Author bekannt.
128	unknown	125	126	4	2	6	
38	Political	159	160	4	2	72	
123	Location	78	97	4	1	1	
135	Others	95	96	4	2	123	
165	Finished	139	140	4	2	8	
42	Military	157	158	4	2	72	
105	Creative Commons 4.0	3	4	2	2	103	
103	Licence	2	7	2	1	101	
164	unclear	165	166	4	2	72	
1	Map	1	168	4	0	\N	
59	Slovenia	26	27	4	3	52	
134	Base Map 5	107	108	4	2	6	Maßstab 1:2.000.000, "Atlas der bayerisch-österreichischen Mundart" mit "Zeichenerklärung der Grundkarte", also Legende, innerhalb des Kartenausschnitts mit\r\n-) den Landes- und Sprachgrenzen von 1910\r\n-) der Deutschen Sprachgrenze von 1910\r\n-) einem Kilometerstrahl \r\n\r\nAnmerkung: Der Maßstab befindet sich in/bei der Legende\r\n\r\n[Anmerkung/Frage: Immer schon als Testdrucke mit linguistischen Phänomenen bedruckt?]
52	Europe	3	28	4	2	51	
194	Lizenz ungeklärt (orphan)	9	10	8	2	104	Lizenz und Author unbekannt.
193	Lizenz ungeklärt (Person)	11	12	8	2	104	Author bekannt aber Lizenz unbekannt
195	Geeignet für Orphaned Work	5	6	8	2	104	
188	Historical Places	30	43	4	1	1	Names of historical places which are not used, at least in the same context, today.
58	Yugoslavia	41	42	4	2	188	
161	Political	3	4	3	2	12	
100	Drawer 14	88	89	4	3	79	
143	III. Entwürfe für reingezeichnete Karten der Lieferungen	5	6	7	2	138	
101	File	1	8	2	0	\N	
182	restricted	5	6	2	2	103	Beinhaltet urheberrechtlich geschützte oder potenziell urheberrechtlich geschütze Werke, bei denen Z.B.\r\n-) der Autor anonym ist (= verwaiste Werke)\r\n-) bei denen es mögliche Nachfahren der Autoren gibt, die noch Rechte auf die Werke haben könnten (je nachdem ob sie ihre Rechte abgetreten haben oder nicht)
158	Third Reich	34	35	4	3	157	Das Deutsche Reich unter der NS-Herrschaft von 1933 bis 1945.
162	Carinthia	5	6	4	4	53	
183	Base Map 8	113	114	4	2	6	Diese Karte im Massstab 1: 2000000 besitzt eine reduzierte (!) Legende innerhalb des Kartenausschnitts mit \r\n-) den Staatsgrenzen\r\n-) den Landes-,oder Regierungsbezirksgrenzen\r\n-) den Sprachinseln\r\n\r\nAufgrund der im Kartenausschnitt auftauchenden Gaubezeichnungen ("Niederdonau", "Oberdonau" etc.) handelt es sich um eine Karte aus der Zeit des Nationalsozialismus.\r\nAnmerkung: Der Maßstab und der Kilometerstrahl befinden sich außerhalb der Legende und des Kartenausschnitts. Die Karte ähnelt stark Basemap 2 und Basemap 3.
154	First Austrian Republic	39	40	4	2	188	Die Erste Österreichische Republik von 1918 (impliziert also das kurzzeitig existierende "Deutschösterreich") bis 1934.
130	Base Map 1	99	100	4	2	6	Diese Karte im Massstab 1:2000000 trägt den Titel "Bayer.-Österr. Mundartatlas" und besitzt eine (freie) Legende außerhalb des Kartenausschnitts mit\r\n-) Staatsgrenzen, \r\n-) reichsdeutsche Ländergrenzen,\r\n-) landes-od. Regierungsbezirksgrenzen, \r\n-) einem Kilometerstrahl,\r\n-) die alte österreichisch-italienische Grenze vor 1918, Sprachinseln und gemischtsprachiges Gebiet,\r\n-) die Sprachgrenze.\r\n\r\nAnmerkung: Der Maßstab befindet sich in/bei der Legende.
8	Processing	138	147	4	1	1	
9	Test print	145	146	4	2	8	
20	List	119	120	4	2	6	
61	Map	121	122	4	2	6	
48	2 Good	47	48	4	2	45	
47	1 Very good	45	46	4	2	45	Very good
83	Hand-drawn	65	66	4	2	16	
170	Compass	59	60	4	2	16	
172	Type writing	75	76	4	2	16	
168	Addition to legend	54	55	4	3	37	
99	Drawer 11	84	85	4	3	79	
98	Drawer 15	90	91	4	3	79	
70	Graphic scale	63	64	4	2	16	Kilometerstrahl
17	Map grid	69	72	4	2	16	
27	Stamp	73	74	4	2	16	
10	Material	128	137	4	1	1	
129	Topographic	163	164	4	2	72	
62	Suggestive	161	162	4	2	72	
69	Photographic paper	133	134	4	2	10	
71	Demographic	151	152	4	2	72	
63	Ethnologic	153	154	4	2	72	
72	Scientific domain	148	167	4	1	1	
43	Base Map 9	115	116	4	2	6	Entwurf Grundkarte für den 1. Atlas der österreichischen Volkskunde.
150	Base Map 6	109	110	4	2	6	Kein Maßstab angegeben. "Grundkarte" als Titelbezeichnung angegeben. 4 Kreuze zum Auflegen von Transparentkarten eingezeichnet. Legende außerhalb des Kartenausschnitts mit \r\n-) Reichsgrenze,\r\n-) Landesgrenze,\r\n-) Sprachgrenze
80	Drawer 1	80	81	4	3	79	
22	Legend	67	68	4	2	16	
45	Condition	44	51	4	1	1	
37	Annotated	53	58	4	2	16	alles Handgeschriebene, was Ergänzung zur Legende ist (zB aber eben keine Unterschriften oder Namen oder so)
169	Others	56	57	4	3	37	
96	Drawer 9	92	93	4	3	79	
79	Map Cabinet VAWADiÖ	79	94	4	2	123	
132	Base Map 3	103	104	4	2	6	Diese Karte im Massstab 1: 2000000 aus dem NS besitzt eine reduzierte (!) Legende innerhalb des Kartenausschnitts mit \r\n-) den Reichs-oder Staatsgrenzen\r\n-) der Protekoratsgrenze (gemeint ist das Protekorat Böhmen und Mähren)\r\n-) den Landes-, Gau-oder Regierungsbezirksgrenzen\r\n-) den Sprachinseln oder gemischtsprachiges Gebiet\r\n-) einem Kilometerstrahl\r\n\r\nAnmerkung: Der Maßstab befindet sich in/bei der Legende
131	Base Map 2	101	102	4	2	6	Diese Karte im Maßstab 1: 2000000 aus dem Nationalsozialismus beinhaltet eine Legende innerhalb des Kartenausschnitts mit\r\n-) den Reichs-oder Staatsgrenzen, \r\n-) der Protekoratsgrenze (gemeint ist das Protekorat Böhmen und Mähren),\r\n-) den Landes-Gau-oder Bezirksgrenzen, \r\n-) die Sprachinseln oder gemischtsprachiges Gebiet,\r\n-) einem Kilometerstrahl.\r\n\r\nAnmerkung: der Maßstab befindet sich in/bei der Legende
34	Tracing paper	135	136	4	2	10	
174	Lower Austria	7	8	4	4	53	
179	Tyrol	11	12	4	4	53	
57	Italy	24	25	4	3	52	
51	Administrative Units	2	29	4	1	1	
133	Base Map 4	105	106	4	2	6	Die Karte ist im Maßstab 1:2.800.000, "Grundkarte" ist explizit als Titelbezeichnung angegeben.Die Legende befindet sich außerhalb des Kartenauschnitts mit\r\n-) den Staatsgrenzen,\r\n-) den Landes- oder Regierungsbezirksgrenzen\r\n-) der Sprachgrenze\r\n-) einem Kilometerstrahl\r\n-) den Sprachinseln und gemischtsprachiges Gebiet.\r\n\r\nAnmerkung: Der Maßstab befindet sich unter der Titelbezeichnung.
151	Base Map 7	111	112	4	2	6	Maßstab 1:2000000, Titel: "Grundkarte zu Eberhard Kranzmayer. Der Atlas der Dialekträume in und um Österreich bezogen auf die Bauernmundart um 1930"\r\nLegende außerhalb des Kartenausschnitts mit\r\n-) der deutschen Sprachgrenze um 1930\r\n-) den deutschen Sprachinseln um 1930\r\n-) den Orten und Gebieten mit deutschen Minderheiten um 1930\r\n-) dem Gebiet der Romauntschen und Ladinischen\r\n-) dem Gebiet der Nonsbergischen und Friaulischen\r\n-) einem Kilometerstrahl\r\n\r\nAnmerkung: Maßstab in/bei der Legende
153	Czechoslovakia	31	32	4	2	188	Die Tschechoslowakei von den Jahren 1918 bis 1992 (inkludiert die NS-Besatzungszeit und das Protektorat Böhmen und Mähren).
18	Cardboard	129	130	4	2	10	
181	Agricultural	149	150	4	2	72	
49	3 Fair	49	50	4	2	45	
152	Eastern Europe	20	21	4	3	52	
148	Central Europe	16	17	4	3	52	
84	Copy	61	62	4	2	16	
157	Deutsches Reich/ German Empire	33	38	4	2	188	Das Deutsche Reich von der Gründung 1871 bis 1945, d.i. also das Deutsche Kaiserreich, die Weimarer Republik und das Dritte Reich (Nationalsozialismus).
60	Drawing	117	118	4	2	6	
11	Paper	131	132	4	2	10	
44	Hand-drawn Draft	141	142	4	2	8	
33	Printed Draft	143	144	4	2	8	
15	Topographic	123	124	4	2	6	
6	Map type	98	127	4	1	1	
7	Linguistic 	155	156	4	2	72	
175	Styria	9	10	4	4	53	
176	Vienna	13	14	4	4	53	
53	Austria	4	15	4	3	52	Eine bewusst unspezifisch gehaltene Über-Kategorie für all jene Karten, die einen Auschnitt beinhalten, in welchem Orte des heutigen Österreich (Zweite Österreichische Republik) abgebildet sind. Es geht darum, dass Karten(ausschnitte) zwar oft im heutigen Österreich angesiedelt sind, man aber nicht immer klar weiss, aus welchem Jahr genau die Karte ist und welchen historischen Epochen sie zuordbar sind.
163	Hungary	22	23	4	3	52	
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 15, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 4, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 14, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 72, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 63, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 52, true);


--
-- Name: maps_file_file_map_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_file_file_map_id_seq', 6, true);


--
-- Name: maps_file_file_reference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_file_file_reference_id_seq', 7, true);


--
-- Name: maps_file_file_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_file_file_type_id_seq', 3, true);


--
-- Name: maps_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_file_id_seq', 17, true);


--
-- Name: maps_institute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_institute_id_seq', 24, true);


--
-- Name: maps_institute_institute_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_institute_institute_type_id_seq', 7, true);


--
-- Name: maps_map_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_map_id_seq', 905, true);


--
-- Name: maps_map_map_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_map_map_file_id_seq', 2, true);


--
-- Name: maps_map_map_institute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_map_map_institute_id_seq', 90, true);


--
-- Name: maps_map_map_persons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_map_map_persons_id_seq', 166, true);


--
-- Name: maps_map_map_places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_map_map_places_id_seq', 1, false);


--
-- Name: maps_map_map_references_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_map_map_references_id_seq', 899, true);


--
-- Name: maps_map_map_scan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_map_map_scan_id_seq', 1, false);


--
-- Name: maps_map_map_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_map_map_type_id_seq', 10599, true);


--
-- Name: maps_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_person_id_seq', 39, true);


--
-- Name: maps_person_person_institutes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_person_person_institutes_id_seq', 3, true);


--
-- Name: maps_person_person_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_person_person_type_id_seq', 28, true);


--
-- Name: maps_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_place_id_seq', 6, true);


--
-- Name: maps_place_place_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_place_place_type_id_seq', 2, true);


--
-- Name: maps_reference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_reference_id_seq', 49, true);


--
-- Name: maps_reference_reference_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_reference_reference_type_id_seq', 2, true);


--
-- Name: maps_scan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_scan_id_seq', 894, true);


--
-- Name: maps_scan_scan_map_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_scan_scan_map_id_seq', 849, true);


--
-- Name: maps_scan_scan_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_scan_scan_person_id_seq', 2386, true);


--
-- Name: maps_scan_scan_reference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_scan_scan_reference_id_seq', 810, true);


--
-- Name: maps_scan_scan_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_scan_scan_type_id_seq', 1576, true);


--
-- Name: maps_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: diauma
--

SELECT pg_catalog.setval('public.maps_type_id_seq', 195, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: maps_file_file_map maps_file_file_map_file_id_map_id_ff59351d_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_map
    ADD CONSTRAINT maps_file_file_map_file_id_map_id_ff59351d_uniq UNIQUE (file_id, map_id);


--
-- Name: maps_file_file_map maps_file_file_map_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_map
    ADD CONSTRAINT maps_file_file_map_pkey PRIMARY KEY (id);


--
-- Name: maps_file_file_reference maps_file_file_reference_file_id_reference_id_b9cece58_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_reference
    ADD CONSTRAINT maps_file_file_reference_file_id_reference_id_b9cece58_uniq UNIQUE (file_id, reference_id);


--
-- Name: maps_file_file_reference maps_file_file_reference_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_reference
    ADD CONSTRAINT maps_file_file_reference_pkey PRIMARY KEY (id);


--
-- Name: maps_file_file_type maps_file_file_type_file_id_type_id_efbea730_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_type
    ADD CONSTRAINT maps_file_file_type_file_id_type_id_efbea730_uniq UNIQUE (file_id, type_id);


--
-- Name: maps_file_file_type maps_file_file_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_type
    ADD CONSTRAINT maps_file_file_type_pkey PRIMARY KEY (id);


--
-- Name: maps_file maps_file_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file
    ADD CONSTRAINT maps_file_pkey PRIMARY KEY (id);


--
-- Name: maps_institute_institute_type maps_institute_institute_institute_id_type_id_4ff99b12_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_institute_institute_type
    ADD CONSTRAINT maps_institute_institute_institute_id_type_id_4ff99b12_uniq UNIQUE (institute_id, type_id);


--
-- Name: maps_institute_institute_type maps_institute_institute_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_institute_institute_type
    ADD CONSTRAINT maps_institute_institute_type_pkey PRIMARY KEY (id);


--
-- Name: maps_institute maps_institute_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_institute
    ADD CONSTRAINT maps_institute_pkey PRIMARY KEY (id);


--
-- Name: maps_map_map_file maps_map_map_file_map_id_file_id_0c980a11_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_file
    ADD CONSTRAINT maps_map_map_file_map_id_file_id_0c980a11_uniq UNIQUE (map_id, file_id);


--
-- Name: maps_map_map_file maps_map_map_file_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_file
    ADD CONSTRAINT maps_map_map_file_pkey PRIMARY KEY (id);


--
-- Name: maps_map_map_institute maps_map_map_institute_map_id_institute_id_8569aa5c_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_institute
    ADD CONSTRAINT maps_map_map_institute_map_id_institute_id_8569aa5c_uniq UNIQUE (map_id, institute_id);


--
-- Name: maps_map_map_institute maps_map_map_institute_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_institute
    ADD CONSTRAINT maps_map_map_institute_pkey PRIMARY KEY (id);


--
-- Name: maps_map_map_persons maps_map_map_persons_map_id_person_id_86915b7f_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_persons
    ADD CONSTRAINT maps_map_map_persons_map_id_person_id_86915b7f_uniq UNIQUE (map_id, person_id);


--
-- Name: maps_map_map_persons maps_map_map_persons_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_persons
    ADD CONSTRAINT maps_map_map_persons_pkey PRIMARY KEY (id);


--
-- Name: maps_map_map_places maps_map_map_places_map_id_place_id_55c2923d_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_places
    ADD CONSTRAINT maps_map_map_places_map_id_place_id_55c2923d_uniq UNIQUE (map_id, place_id);


--
-- Name: maps_map_map_places maps_map_map_places_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_places
    ADD CONSTRAINT maps_map_map_places_pkey PRIMARY KEY (id);


--
-- Name: maps_map_map_references maps_map_map_references_map_id_reference_id_6d416742_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_references
    ADD CONSTRAINT maps_map_map_references_map_id_reference_id_6d416742_uniq UNIQUE (map_id, reference_id);


--
-- Name: maps_map_map_references maps_map_map_references_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_references
    ADD CONSTRAINT maps_map_map_references_pkey PRIMARY KEY (id);


--
-- Name: maps_map_map_scan maps_map_map_scan_map_id_scan_id_f6124912_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_scan
    ADD CONSTRAINT maps_map_map_scan_map_id_scan_id_f6124912_uniq UNIQUE (map_id, scan_id);


--
-- Name: maps_map_map_scan maps_map_map_scan_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_scan
    ADD CONSTRAINT maps_map_map_scan_pkey PRIMARY KEY (id);


--
-- Name: maps_map_map_type maps_map_map_type_map_id_type_id_7bfe0076_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_type
    ADD CONSTRAINT maps_map_map_type_map_id_type_id_7bfe0076_uniq UNIQUE (map_id, type_id);


--
-- Name: maps_map_map_type maps_map_map_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_type
    ADD CONSTRAINT maps_map_map_type_pkey PRIMARY KEY (id);


--
-- Name: maps_map maps_map_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map
    ADD CONSTRAINT maps_map_pkey PRIMARY KEY (id);


--
-- Name: maps_person_person_institutes maps_person_person_insti_person_id_institute_id_dcf6c4ed_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_institutes
    ADD CONSTRAINT maps_person_person_insti_person_id_institute_id_dcf6c4ed_uniq UNIQUE (person_id, institute_id);


--
-- Name: maps_person_person_institutes maps_person_person_institutes_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_institutes
    ADD CONSTRAINT maps_person_person_institutes_pkey PRIMARY KEY (id);


--
-- Name: maps_person_person_type maps_person_person_type_person_id_type_id_e4987fe7_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_type
    ADD CONSTRAINT maps_person_person_type_person_id_type_id_e4987fe7_uniq UNIQUE (person_id, type_id);


--
-- Name: maps_person_person_type maps_person_person_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_type
    ADD CONSTRAINT maps_person_person_type_pkey PRIMARY KEY (id);


--
-- Name: maps_person maps_person_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person
    ADD CONSTRAINT maps_person_pkey PRIMARY KEY (id);


--
-- Name: maps_place maps_place_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_place
    ADD CONSTRAINT maps_place_pkey PRIMARY KEY (id);


--
-- Name: maps_place_place_type maps_place_place_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_place_place_type
    ADD CONSTRAINT maps_place_place_type_pkey PRIMARY KEY (id);


--
-- Name: maps_place_place_type maps_place_place_type_place_id_type_id_279cfb12_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_place_place_type
    ADD CONSTRAINT maps_place_place_type_place_id_type_id_279cfb12_uniq UNIQUE (place_id, type_id);


--
-- Name: maps_reference maps_reference_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_reference
    ADD CONSTRAINT maps_reference_pkey PRIMARY KEY (id);


--
-- Name: maps_reference_reference_type maps_reference_reference_reference_id_type_id_be0389aa_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_reference_reference_type
    ADD CONSTRAINT maps_reference_reference_reference_id_type_id_be0389aa_uniq UNIQUE (reference_id, type_id);


--
-- Name: maps_reference_reference_type maps_reference_reference_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_reference_reference_type
    ADD CONSTRAINT maps_reference_reference_type_pkey PRIMARY KEY (id);


--
-- Name: maps_scan maps_scan_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan
    ADD CONSTRAINT maps_scan_pkey PRIMARY KEY (id);


--
-- Name: maps_scan_scan_map maps_scan_scan_map_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_map
    ADD CONSTRAINT maps_scan_scan_map_pkey PRIMARY KEY (id);


--
-- Name: maps_scan_scan_map maps_scan_scan_map_scan_id_map_id_97630f8f_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_map
    ADD CONSTRAINT maps_scan_scan_map_scan_id_map_id_97630f8f_uniq UNIQUE (scan_id, map_id);


--
-- Name: maps_scan_scan_person maps_scan_scan_person_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_person
    ADD CONSTRAINT maps_scan_scan_person_pkey PRIMARY KEY (id);


--
-- Name: maps_scan_scan_person maps_scan_scan_person_scan_id_person_id_7dd06cf1_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_person
    ADD CONSTRAINT maps_scan_scan_person_scan_id_person_id_7dd06cf1_uniq UNIQUE (scan_id, person_id);


--
-- Name: maps_scan_scan_reference maps_scan_scan_reference_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_reference
    ADD CONSTRAINT maps_scan_scan_reference_pkey PRIMARY KEY (id);


--
-- Name: maps_scan_scan_reference maps_scan_scan_reference_scan_id_reference_id_a6e37230_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_reference
    ADD CONSTRAINT maps_scan_scan_reference_scan_id_reference_id_a6e37230_uniq UNIQUE (scan_id, reference_id);


--
-- Name: maps_scan_scan_type maps_scan_scan_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_type
    ADD CONSTRAINT maps_scan_scan_type_pkey PRIMARY KEY (id);


--
-- Name: maps_scan_scan_type maps_scan_scan_type_scan_id_type_id_f92f6b7e_uniq; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_type
    ADD CONSTRAINT maps_scan_scan_type_scan_id_type_id_f92f6b7e_uniq UNIQUE (scan_id, type_id);


--
-- Name: maps_type maps_type_pkey; Type: CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_type
    ADD CONSTRAINT maps_type_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: maps_file_file_map_file_id_c307ffeb; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_file_file_map_file_id_c307ffeb ON public.maps_file_file_map USING btree (file_id);


--
-- Name: maps_file_file_map_map_id_9e0bdd7c; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_file_file_map_map_id_9e0bdd7c ON public.maps_file_file_map USING btree (map_id);


--
-- Name: maps_file_file_reference_file_id_fda1266a; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_file_file_reference_file_id_fda1266a ON public.maps_file_file_reference USING btree (file_id);


--
-- Name: maps_file_file_reference_reference_id_d0f31d94; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_file_file_reference_reference_id_d0f31d94 ON public.maps_file_file_reference USING btree (reference_id);


--
-- Name: maps_file_file_type_file_id_bc62ba18; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_file_file_type_file_id_bc62ba18 ON public.maps_file_file_type USING btree (file_id);


--
-- Name: maps_file_file_type_type_id_deb4d1f7; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_file_file_type_type_id_deb4d1f7 ON public.maps_file_file_type USING btree (type_id);


--
-- Name: maps_institute_institute_location_id_6a11dc54; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_institute_institute_location_id_6a11dc54 ON public.maps_institute USING btree (institute_location_id);


--
-- Name: maps_institute_institute_type_institute_id_278e76cc; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_institute_institute_type_institute_id_278e76cc ON public.maps_institute_institute_type USING btree (institute_id);


--
-- Name: maps_institute_institute_type_type_id_4764f400; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_institute_institute_type_type_id_4764f400 ON public.maps_institute_institute_type USING btree (type_id);


--
-- Name: maps_map_map_base_id_d4c8d198; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_base_id_d4c8d198 ON public.maps_map USING btree (map_base_id);


--
-- Name: maps_map_map_copy_id_d8a9b7a1; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_copy_id_d8a9b7a1 ON public.maps_map USING btree (map_copy_id);


--
-- Name: maps_map_map_file_file_id_8ba3db90; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_file_file_id_8ba3db90 ON public.maps_map_map_file USING btree (file_id);


--
-- Name: maps_map_map_file_map_id_9e4e4fb7; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_file_map_id_9e4e4fb7 ON public.maps_map_map_file USING btree (map_id);


--
-- Name: maps_map_map_institute_institute_id_22dabb5a; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_institute_institute_id_22dabb5a ON public.maps_map_map_institute USING btree (institute_id);


--
-- Name: maps_map_map_institute_map_id_6256af8a; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_institute_map_id_6256af8a ON public.maps_map_map_institute USING btree (map_id);


--
-- Name: maps_map_map_issued_id_0895c253; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_issued_id_0895c253 ON public.maps_map USING btree (map_issued_id);


--
-- Name: maps_map_map_location_id_2b1e0353; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_location_id_2b1e0353 ON public.maps_map USING btree (map_location_id);


--
-- Name: maps_map_map_persons_map_id_aa413b5f; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_persons_map_id_aa413b5f ON public.maps_map_map_persons USING btree (map_id);


--
-- Name: maps_map_map_persons_person_id_dae77c35; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_persons_person_id_dae77c35 ON public.maps_map_map_persons USING btree (person_id);


--
-- Name: maps_map_map_places_map_id_cdf091f2; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_places_map_id_cdf091f2 ON public.maps_map_map_places USING btree (map_id);


--
-- Name: maps_map_map_places_place_id_1a799e4a; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_places_place_id_1a799e4a ON public.maps_map_map_places USING btree (place_id);


--
-- Name: maps_map_map_references_map_id_6d8dfd3f; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_references_map_id_6d8dfd3f ON public.maps_map_map_references USING btree (map_id);


--
-- Name: maps_map_map_references_reference_id_459a89ca; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_references_reference_id_459a89ca ON public.maps_map_map_references USING btree (reference_id);


--
-- Name: maps_map_map_scan_map_id_8d0022f4; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_scan_map_id_8d0022f4 ON public.maps_map_map_scan USING btree (map_id);


--
-- Name: maps_map_map_scan_scan_id_465e3c0c; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_scan_scan_id_465e3c0c ON public.maps_map_map_scan USING btree (scan_id);


--
-- Name: maps_map_map_type_map_id_a296045b; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_type_map_id_a296045b ON public.maps_map_map_type USING btree (map_id);


--
-- Name: maps_map_map_type_type_id_c24ef6de; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_map_map_type_type_id_c24ef6de ON public.maps_map_map_type USING btree (type_id);


--
-- Name: maps_person_person_institutes_institute_id_3123fbb4; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_person_person_institutes_institute_id_3123fbb4 ON public.maps_person_person_institutes USING btree (institute_id);


--
-- Name: maps_person_person_institutes_person_id_02ba207a; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_person_person_institutes_person_id_02ba207a ON public.maps_person_person_institutes USING btree (person_id);


--
-- Name: maps_person_person_location_id_e23c9ecc; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_person_person_location_id_e23c9ecc ON public.maps_person USING btree (person_location_id);


--
-- Name: maps_person_person_type_person_id_94b985a4; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_person_person_type_person_id_94b985a4 ON public.maps_person_person_type USING btree (person_id);


--
-- Name: maps_person_person_type_type_id_138219a0; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_person_person_type_type_id_138219a0 ON public.maps_person_person_type USING btree (type_id);


--
-- Name: maps_place_place_type_place_id_21fde972; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_place_place_type_place_id_21fde972 ON public.maps_place_place_type USING btree (place_id);


--
-- Name: maps_place_place_type_type_id_fbbfec63; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_place_place_type_type_id_fbbfec63 ON public.maps_place_place_type USING btree (type_id);


--
-- Name: maps_reference_reference_type_reference_id_38cd6479; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_reference_reference_type_reference_id_38cd6479 ON public.maps_reference_reference_type USING btree (reference_id);


--
-- Name: maps_reference_reference_type_type_id_7e338932; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_reference_reference_type_type_id_7e338932 ON public.maps_reference_reference_type USING btree (type_id);


--
-- Name: maps_reference_super_id_09e3bb42; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_reference_super_id_09e3bb42 ON public.maps_reference USING btree (super_id);


--
-- Name: maps_scan_scan_map_map_id_9e720248; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_scan_scan_map_map_id_9e720248 ON public.maps_scan_scan_map USING btree (map_id);


--
-- Name: maps_scan_scan_map_scan_id_21a19138; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_scan_scan_map_scan_id_21a19138 ON public.maps_scan_scan_map USING btree (scan_id);


--
-- Name: maps_scan_scan_person_person_id_f99c3461; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_scan_scan_person_person_id_f99c3461 ON public.maps_scan_scan_person USING btree (person_id);


--
-- Name: maps_scan_scan_person_scan_id_88d9cce9; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_scan_scan_person_scan_id_88d9cce9 ON public.maps_scan_scan_person USING btree (scan_id);


--
-- Name: maps_scan_scan_reference_reference_id_efaf24e5; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_scan_scan_reference_reference_id_efaf24e5 ON public.maps_scan_scan_reference USING btree (reference_id);


--
-- Name: maps_scan_scan_reference_scan_id_c86b5a3e; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_scan_scan_reference_scan_id_c86b5a3e ON public.maps_scan_scan_reference USING btree (scan_id);


--
-- Name: maps_scan_scan_type_scan_id_2d3729f3; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_scan_scan_type_scan_id_2d3729f3 ON public.maps_scan_scan_type USING btree (scan_id);


--
-- Name: maps_scan_scan_type_type_id_fc19d491; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_scan_scan_type_type_id_fc19d491 ON public.maps_scan_scan_type USING btree (type_id);


--
-- Name: maps_type_level_994128a4; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_type_level_994128a4 ON public.maps_type USING btree (level);


--
-- Name: maps_type_lft_f368a00c; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_type_lft_f368a00c ON public.maps_type USING btree (lft);


--
-- Name: maps_type_parent_id_b8277754; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_type_parent_id_b8277754 ON public.maps_type USING btree (parent_id);


--
-- Name: maps_type_rght_04c51423; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_type_rght_04c51423 ON public.maps_type USING btree (rght);


--
-- Name: maps_type_tree_id_9ddf6cd6; Type: INDEX; Schema: public; Owner: diauma
--

CREATE INDEX maps_type_tree_id_9ddf6cd6 ON public.maps_type USING btree (tree_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_file_file_map maps_file_file_map_file_id_c307ffeb_fk_maps_file_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_map
    ADD CONSTRAINT maps_file_file_map_file_id_c307ffeb_fk_maps_file_id FOREIGN KEY (file_id) REFERENCES public.maps_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_file_file_map maps_file_file_map_map_id_9e0bdd7c_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_map
    ADD CONSTRAINT maps_file_file_map_map_id_9e0bdd7c_fk_maps_map_id FOREIGN KEY (map_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_file_file_reference maps_file_file_refer_reference_id_d0f31d94_fk_maps_refe; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_reference
    ADD CONSTRAINT maps_file_file_refer_reference_id_d0f31d94_fk_maps_refe FOREIGN KEY (reference_id) REFERENCES public.maps_reference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_file_file_reference maps_file_file_reference_file_id_fda1266a_fk_maps_file_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_reference
    ADD CONSTRAINT maps_file_file_reference_file_id_fda1266a_fk_maps_file_id FOREIGN KEY (file_id) REFERENCES public.maps_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_file_file_type maps_file_file_type_file_id_bc62ba18_fk_maps_file_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_type
    ADD CONSTRAINT maps_file_file_type_file_id_bc62ba18_fk_maps_file_id FOREIGN KEY (file_id) REFERENCES public.maps_file(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_file_file_type maps_file_file_type_type_id_deb4d1f7_fk_maps_type_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_file_file_type
    ADD CONSTRAINT maps_file_file_type_type_id_deb4d1f7_fk_maps_type_id FOREIGN KEY (type_id) REFERENCES public.maps_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_institute_institute_type maps_institute_insti_institute_id_278e76cc_fk_maps_inst; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_institute_institute_type
    ADD CONSTRAINT maps_institute_insti_institute_id_278e76cc_fk_maps_inst FOREIGN KEY (institute_id) REFERENCES public.maps_institute(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_institute maps_institute_institute_location_id_6a11dc54_fk_maps_place_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_institute
    ADD CONSTRAINT maps_institute_institute_location_id_6a11dc54_fk_maps_place_id FOREIGN KEY (institute_location_id) REFERENCES public.maps_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_institute_institute_type maps_institute_institute_type_type_id_4764f400_fk_maps_type_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_institute_institute_type
    ADD CONSTRAINT maps_institute_institute_type_type_id_4764f400_fk_maps_type_id FOREIGN KEY (type_id) REFERENCES public.maps_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map maps_map_map_base_id_d4c8d198_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map
    ADD CONSTRAINT maps_map_map_base_id_d4c8d198_fk_maps_map_id FOREIGN KEY (map_base_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map maps_map_map_copy_id_d8a9b7a1_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map
    ADD CONSTRAINT maps_map_map_copy_id_d8a9b7a1_fk_maps_map_id FOREIGN KEY (map_copy_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_file maps_map_map_file_map_id_9e4e4fb7_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_file
    ADD CONSTRAINT maps_map_map_file_map_id_9e4e4fb7_fk_maps_map_id FOREIGN KEY (map_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_institute maps_map_map_institu_institute_id_22dabb5a_fk_maps_inst; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_institute
    ADD CONSTRAINT maps_map_map_institu_institute_id_22dabb5a_fk_maps_inst FOREIGN KEY (institute_id) REFERENCES public.maps_institute(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_institute maps_map_map_institute_map_id_6256af8a_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_institute
    ADD CONSTRAINT maps_map_map_institute_map_id_6256af8a_fk_maps_map_id FOREIGN KEY (map_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map maps_map_map_issued_id_0895c253_fk_maps_place_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map
    ADD CONSTRAINT maps_map_map_issued_id_0895c253_fk_maps_place_id FOREIGN KEY (map_issued_id) REFERENCES public.maps_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map maps_map_map_location_id_2b1e0353_fk_maps_place_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map
    ADD CONSTRAINT maps_map_map_location_id_2b1e0353_fk_maps_place_id FOREIGN KEY (map_location_id) REFERENCES public.maps_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_persons maps_map_map_persons_map_id_aa413b5f_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_persons
    ADD CONSTRAINT maps_map_map_persons_map_id_aa413b5f_fk_maps_map_id FOREIGN KEY (map_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_persons maps_map_map_persons_person_id_dae77c35_fk_maps_person_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_persons
    ADD CONSTRAINT maps_map_map_persons_person_id_dae77c35_fk_maps_person_id FOREIGN KEY (person_id) REFERENCES public.maps_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_places maps_map_map_places_map_id_cdf091f2_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_places
    ADD CONSTRAINT maps_map_map_places_map_id_cdf091f2_fk_maps_map_id FOREIGN KEY (map_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_places maps_map_map_places_place_id_1a799e4a_fk_maps_place_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_places
    ADD CONSTRAINT maps_map_map_places_place_id_1a799e4a_fk_maps_place_id FOREIGN KEY (place_id) REFERENCES public.maps_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_references maps_map_map_referen_reference_id_459a89ca_fk_maps_refe; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_references
    ADD CONSTRAINT maps_map_map_referen_reference_id_459a89ca_fk_maps_refe FOREIGN KEY (reference_id) REFERENCES public.maps_reference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_references maps_map_map_references_map_id_6d8dfd3f_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_references
    ADD CONSTRAINT maps_map_map_references_map_id_6d8dfd3f_fk_maps_map_id FOREIGN KEY (map_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_scan maps_map_map_scan_map_id_8d0022f4_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_scan
    ADD CONSTRAINT maps_map_map_scan_map_id_8d0022f4_fk_maps_map_id FOREIGN KEY (map_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_type maps_map_map_type_map_id_a296045b_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_type
    ADD CONSTRAINT maps_map_map_type_map_id_a296045b_fk_maps_map_id FOREIGN KEY (map_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_map_map_type maps_map_map_type_type_id_c24ef6de_fk_maps_type_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_map_map_type
    ADD CONSTRAINT maps_map_map_type_type_id_c24ef6de_fk_maps_type_id FOREIGN KEY (type_id) REFERENCES public.maps_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_person_person_institutes maps_person_person_i_institute_id_3123fbb4_fk_maps_inst; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_institutes
    ADD CONSTRAINT maps_person_person_i_institute_id_3123fbb4_fk_maps_inst FOREIGN KEY (institute_id) REFERENCES public.maps_institute(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_person_person_institutes maps_person_person_i_person_id_02ba207a_fk_maps_pers; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_institutes
    ADD CONSTRAINT maps_person_person_i_person_id_02ba207a_fk_maps_pers FOREIGN KEY (person_id) REFERENCES public.maps_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_person maps_person_person_location_id_e23c9ecc_fk_maps_place_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person
    ADD CONSTRAINT maps_person_person_location_id_e23c9ecc_fk_maps_place_id FOREIGN KEY (person_location_id) REFERENCES public.maps_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_person_person_type maps_person_person_type_person_id_94b985a4_fk_maps_person_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_type
    ADD CONSTRAINT maps_person_person_type_person_id_94b985a4_fk_maps_person_id FOREIGN KEY (person_id) REFERENCES public.maps_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_person_person_type maps_person_person_type_type_id_138219a0_fk_maps_type_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_person_person_type
    ADD CONSTRAINT maps_person_person_type_type_id_138219a0_fk_maps_type_id FOREIGN KEY (type_id) REFERENCES public.maps_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_place_place_type maps_place_place_type_place_id_21fde972_fk_maps_place_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_place_place_type
    ADD CONSTRAINT maps_place_place_type_place_id_21fde972_fk_maps_place_id FOREIGN KEY (place_id) REFERENCES public.maps_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_place_place_type maps_place_place_type_type_id_fbbfec63_fk_maps_type_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_place_place_type
    ADD CONSTRAINT maps_place_place_type_type_id_fbbfec63_fk_maps_type_id FOREIGN KEY (type_id) REFERENCES public.maps_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_reference_reference_type maps_reference_refer_reference_id_38cd6479_fk_maps_refe; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_reference_reference_type
    ADD CONSTRAINT maps_reference_refer_reference_id_38cd6479_fk_maps_refe FOREIGN KEY (reference_id) REFERENCES public.maps_reference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_reference_reference_type maps_reference_reference_type_type_id_7e338932_fk_maps_type_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_reference_reference_type
    ADD CONSTRAINT maps_reference_reference_type_type_id_7e338932_fk_maps_type_id FOREIGN KEY (type_id) REFERENCES public.maps_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_reference maps_reference_super_id_09e3bb42_fk_maps_reference_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_reference
    ADD CONSTRAINT maps_reference_super_id_09e3bb42_fk_maps_reference_id FOREIGN KEY (super_id) REFERENCES public.maps_reference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_scan_scan_map maps_scan_scan_map_map_id_9e720248_fk_maps_map_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_map
    ADD CONSTRAINT maps_scan_scan_map_map_id_9e720248_fk_maps_map_id FOREIGN KEY (map_id) REFERENCES public.maps_map(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_scan_scan_map maps_scan_scan_map_scan_id_21a19138_fk_maps_scan_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_map
    ADD CONSTRAINT maps_scan_scan_map_scan_id_21a19138_fk_maps_scan_id FOREIGN KEY (scan_id) REFERENCES public.maps_scan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_scan_scan_person maps_scan_scan_person_person_id_f99c3461_fk_maps_person_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_person
    ADD CONSTRAINT maps_scan_scan_person_person_id_f99c3461_fk_maps_person_id FOREIGN KEY (person_id) REFERENCES public.maps_person(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_scan_scan_person maps_scan_scan_person_scan_id_88d9cce9_fk_maps_scan_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_person
    ADD CONSTRAINT maps_scan_scan_person_scan_id_88d9cce9_fk_maps_scan_id FOREIGN KEY (scan_id) REFERENCES public.maps_scan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_scan_scan_reference maps_scan_scan_refer_reference_id_efaf24e5_fk_maps_refe; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_reference
    ADD CONSTRAINT maps_scan_scan_refer_reference_id_efaf24e5_fk_maps_refe FOREIGN KEY (reference_id) REFERENCES public.maps_reference(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_scan_scan_reference maps_scan_scan_reference_scan_id_c86b5a3e_fk_maps_scan_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_reference
    ADD CONSTRAINT maps_scan_scan_reference_scan_id_c86b5a3e_fk_maps_scan_id FOREIGN KEY (scan_id) REFERENCES public.maps_scan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_scan_scan_type maps_scan_scan_type_scan_id_2d3729f3_fk_maps_scan_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_type
    ADD CONSTRAINT maps_scan_scan_type_scan_id_2d3729f3_fk_maps_scan_id FOREIGN KEY (scan_id) REFERENCES public.maps_scan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_scan_scan_type maps_scan_scan_type_type_id_fc19d491_fk_maps_type_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_scan_scan_type
    ADD CONSTRAINT maps_scan_scan_type_type_id_fc19d491_fk_maps_type_id FOREIGN KEY (type_id) REFERENCES public.maps_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: maps_type maps_type_parent_id_b8277754_fk_maps_type_id; Type: FK CONSTRAINT; Schema: public; Owner: diauma
--

ALTER TABLE ONLY public.maps_type
    ADD CONSTRAINT maps_type_parent_id_b8277754_fk_maps_type_id FOREIGN KEY (parent_id) REFERENCES public.maps_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

