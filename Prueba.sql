PGDMP     +                    x            Sistem prueba    13.1    13.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    Sistem prueba    DATABASE     k   CREATE DATABASE "Sistem prueba" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Sistem prueba";
                postgres    false            �            1259    16395    guardiaseguridad    TABLE     Q  CREATE TABLE public.guardiaseguridad (
    "C.I" integer NOT NULL,
    "Gnombre" character varying,
    "Gapellido" character varying,
    "Ggenero" character varying,
    "Gnacionalidad" character varying,
    "Gtelefono" character varying,
    "Gedad_serviciomilitar" character varying,
    "Gtiempo_realizandolo" character varying
);
 $   DROP TABLE public.guardiaseguridad;
       public         heap    postgres    false            �            1259    16436    horas_laborables    TABLE     �   CREATE TABLE public.horas_laborables (
    id integer NOT NULL,
    horas_nivel1 character varying,
    horas_nivel2 character varying,
    horas_nivel3 character varying
);
 $   DROP TABLE public.horas_laborables;
       public         heap    postgres    false            �            1259    16408 
   instructor    TABLE       CREATE TABLE public.instructor (
    "C.I " integer NOT NULL,
    nombre character varying,
    apellido character varying,
    telefono integer,
    prestacion_de_servicio character varying,
    tiempo_cargo character varying,
    numero_empresas_trabajadas character varying
);
    DROP TABLE public.instructor;
       public         heap    postgres    false            �            1259    16406    instructor_C.I _seq    SEQUENCE     �   CREATE SEQUENCE public."instructor_C.I _seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."instructor_C.I _seq";
       public          postgres    false    202            �           0    0    instructor_C.I _seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."instructor_C.I _seq" OWNED BY public.instructor."C.I ";
          public          postgres    false    201            �            1259    16428    remuneracion_nivel    TABLE     �   CREATE TABLE public.remuneracion_nivel (
    id integer NOT NULL,
    sueldo_nivel1 character varying,
    sueldo_nivel2 character varying,
    sueldo_nivel3 character varying
);
 &   DROP TABLE public.remuneracion_nivel;
       public         heap    postgres    false            �            1259    16420    tipodedificultad    TABLE     �   CREATE TABLE public.tipodedificultad (
    id integer NOT NULL,
    nivel1 character varying,
    nivel2 character varying,
    nivel3 character varying
);
 $   DROP TABLE public.tipodedificultad;
       public         heap    postgres    false            7           2604    16411    instructor C.I     DEFAULT     v   ALTER TABLE ONLY public.instructor ALTER COLUMN "C.I " SET DEFAULT nextval('public."instructor_C.I _seq"'::regclass);
 @   ALTER TABLE public.instructor ALTER COLUMN "C.I " DROP DEFAULT;
       public          postgres    false    202    201    202            �          0    16395    guardiaseguridad 
   TABLE DATA           �   COPY public.guardiaseguridad ("C.I", "Gnombre", "Gapellido", "Ggenero", "Gnacionalidad", "Gtelefono", "Gedad_serviciomilitar", "Gtiempo_realizandolo") FROM stdin;
    public          postgres    false    200   d       �          0    16436    horas_laborables 
   TABLE DATA           X   COPY public.horas_laborables (id, horas_nivel1, horas_nivel2, horas_nivel3) FROM stdin;
    public          postgres    false    205   �       �          0    16408 
   instructor 
   TABLE DATA           �   COPY public.instructor ("C.I ", nombre, apellido, telefono, prestacion_de_servicio, tiempo_cargo, numero_empresas_trabajadas) FROM stdin;
    public          postgres    false    202   �       �          0    16428    remuneracion_nivel 
   TABLE DATA           ]   COPY public.remuneracion_nivel (id, sueldo_nivel1, sueldo_nivel2, sueldo_nivel3) FROM stdin;
    public          postgres    false    204   �       �          0    16420    tipodedificultad 
   TABLE DATA           F   COPY public.tipodedificultad (id, nivel1, nivel2, nivel3) FROM stdin;
    public          postgres    false    203          �           0    0    instructor_C.I _seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."instructor_C.I _seq"', 1, false);
          public          postgres    false    201            9           2606    16402 &   guardiaseguridad guardiaSeguridad_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.guardiaseguridad
    ADD CONSTRAINT "guardiaSeguridad_pkey" PRIMARY KEY ("C.I");
 R   ALTER TABLE ONLY public.guardiaseguridad DROP CONSTRAINT "guardiaSeguridad_pkey";
       public            postgres    false    200            A           2606    16443 &   horas_laborables horas_laborables_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.horas_laborables
    ADD CONSTRAINT horas_laborables_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.horas_laborables DROP CONSTRAINT horas_laborables_pkey;
       public            postgres    false    205            ;           2606    16416    instructor instructor_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY ("C.I ");
 D   ALTER TABLE ONLY public.instructor DROP CONSTRAINT instructor_pkey;
       public            postgres    false    202            ?           2606    16435 *   remuneracion_nivel remuneracion_nivel_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.remuneracion_nivel
    ADD CONSTRAINT remuneracion_nivel_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.remuneracion_nivel DROP CONSTRAINT remuneracion_nivel_pkey;
       public            postgres    false    204            =           2606    16427 &   tipodedificultad tipodedificultad_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tipodedificultad
    ADD CONSTRAINT tipodedificultad_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tipodedificultad DROP CONSTRAINT tipodedificultad_pkey;
       public            postgres    false    203            �      x������ � �      �      x������ � �      �   @  x�]�AN�0E��)�(Nl�;V�%�i2�@b[c7���z1�V�
���yo���t��N�㖤��9
���{�n�W��a`�=$�����?F�-S�J7���X'�@sʘ7��M���z�a��LX*����U���T�q���d�
W�?_"�1`���W�W���͵�8o���D�DS<`�'��ƶ�n�K�3M1�R!{@�OX}���X���U,���F��9�3��W���'�)�Pa�k���Ii{q�׎�w�JR�pP��4��t�����m�z9E)xn��ƹow�����ʊ�gϟ�y��l6����       �      x������ � �      �      x������ � �     