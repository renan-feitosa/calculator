PGDMP      ,                |            calculator-historic    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16396    calculator-historic    DATABASE     �   CREATE DATABASE "calculator-historic" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 %   DROP DATABASE "calculator-historic";
                postgres    false            �            1259    16398    historic    TABLE     Y   CREATE TABLE public.historic (
    id integer NOT NULL,
    calculation text NOT NULL
);
    DROP TABLE public.historic;
       public         heap    postgres    false            �            1259    16397    historic_id_seq    SEQUENCE     �   CREATE SEQUENCE public.historic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.historic_id_seq;
       public          postgres    false    216            �           0    0    historic_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.historic_id_seq OWNED BY public.historic.id;
          public          postgres    false    215            P           2604    16401    historic id    DEFAULT     j   ALTER TABLE ONLY public.historic ALTER COLUMN id SET DEFAULT nextval('public.historic_id_seq'::regclass);
 :   ALTER TABLE public.historic ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    16398    historic 
   TABLE DATA           3   COPY public.historic (id, calculation) FROM stdin;
    public          postgres    false    216   �
       �           0    0    historic_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.historic_id_seq', 1, true);
          public          postgres    false    215            R           2606    16405    historic historic_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.historic
    ADD CONSTRAINT historic_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.historic DROP CONSTRAINT historic_pkey;
       public            postgres    false    216            �      x�3�4U�V0U�U04������ y�     