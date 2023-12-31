PGDMP                          {            Hospital    15.2    15.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    Hospital    DATABASE     �   CREATE DATABASE "Hospital" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Argentina.1252';
    DROP DATABASE "Hospital";
                postgres    false            �            1259    16599    cargo    TABLE     ]   CREATE TABLE public.cargo (
    idcargo integer NOT NULL,
    cargo character varying(45)
);
    DROP TABLE public.cargo;
       public         heap    postgres    false            �            1259    16598    cargo_idcargo_seq    SEQUENCE     �   CREATE SEQUENCE public.cargo_idcargo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.cargo_idcargo_seq;
       public          postgres    false    249            �           0    0    cargo_idcargo_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.cargo_idcargo_seq OWNED BY public.cargo.idcargo;
          public          postgres    false    248            �            1259    16399    datosmedicos    TABLE       CREATE TABLE public.datosmedicos (
    iddatosmedicos integer NOT NULL,
    psicologico character varying(45),
    laboratorio character varying(45),
    electrocardiograma character varying(45),
    idtipo_sangre integer,
    idhistorialmedico integer,
    idpaciente integer
);
     DROP TABLE public.datosmedicos;
       public         heap    postgres    false            �            1259    16402    datosmedicos_iddatosmedicos_seq    SEQUENCE     �   CREATE SEQUENCE public.datosmedicos_iddatosmedicos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.datosmedicos_iddatosmedicos_seq;
       public          postgres    false    214            �           0    0    datosmedicos_iddatosmedicos_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.datosmedicos_iddatosmedicos_seq OWNED BY public.datosmedicos.iddatosmedicos;
          public          postgres    false    215            �            1259    16403    especialidades    TABLE     t   CREATE TABLE public.especialidades (
    idespecialidad integer NOT NULL,
    especialidad character varying(45)
);
 "   DROP TABLE public.especialidades;
       public         heap    postgres    false            �            1259    16406 !   especialidades_idespecialidad_seq    SEQUENCE     �   CREATE SEQUENCE public.especialidades_idespecialidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.especialidades_idespecialidad_seq;
       public          postgres    false    216            �           0    0 !   especialidades_idespecialidad_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.especialidades_idespecialidad_seq OWNED BY public.especialidades.idespecialidad;
          public          postgres    false    217            �            1259    16407    estado    TABLE     l   CREATE TABLE public.estado (
    idestado integer NOT NULL,
    descripcion_estado character varying(45)
);
    DROP TABLE public.estado;
       public         heap    postgres    false            �            1259    16410    estado_idestado_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_idestado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.estado_idestado_seq;
       public          postgres    false    218            �           0    0    estado_idestado_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.estado_idestado_seq OWNED BY public.estado.idestado;
          public          postgres    false    219            �            1259    16411    estado_llamado    TABLE     u   CREATE TABLE public.estado_llamado (
    idestado_llamado integer NOT NULL,
    descripcion character varying(45)
);
 "   DROP TABLE public.estado_llamado;
       public         heap    postgres    false            �            1259    16414 #   estado_llamado_idestado_llamado_seq    SEQUENCE     �   CREATE SEQUENCE public.estado_llamado_idestado_llamado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.estado_llamado_idestado_llamado_seq;
       public          postgres    false    220            �           0    0 #   estado_llamado_idestado_llamado_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.estado_llamado_idestado_llamado_seq OWNED BY public.estado_llamado.idestado_llamado;
          public          postgres    false    221            �            1259    16415    genero    TABLE     e   CREATE TABLE public.genero (
    idgenero integer NOT NULL,
    descripcion character varying(45)
);
    DROP TABLE public.genero;
       public         heap    postgres    false            �            1259    16418    genero_idgenero_seq    SEQUENCE     �   CREATE SEQUENCE public.genero_idgenero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.genero_idgenero_seq;
       public          postgres    false    222            �           0    0    genero_idgenero_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.genero_idgenero_seq OWNED BY public.genero.idgenero;
          public          postgres    false    223            �            1259    16419    historialmedico    TABLE     �   CREATE TABLE public.historialmedico (
    idhistorialmedico integer NOT NULL,
    psicologico character varying(45),
    laboratorio character varying(45),
    electrocardiograma character varying(45)
);
 #   DROP TABLE public.historialmedico;
       public         heap    postgres    false            �            1259    16422 %   historialmedico_idhistorialmedico_seq    SEQUENCE     �   CREATE SEQUENCE public.historialmedico_idhistorialmedico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.historialmedico_idhistorialmedico_seq;
       public          postgres    false    224            �           0    0 %   historialmedico_idhistorialmedico_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.historialmedico_idhistorialmedico_seq OWNED BY public.historialmedico.idhistorialmedico;
          public          postgres    false    225            �            1259    16423    llamado    TABLE     �   CREATE TABLE public.llamado (
    idllamado integer NOT NULL,
    fecha_hora timestamp(6) without time zone,
    origen character varying(45),
    idsala integer,
    idestado_llamado integer
);
    DROP TABLE public.llamado;
       public         heap    postgres    false            �            1259    16426    llamado_idllamado_seq    SEQUENCE     �   CREATE SEQUENCE public.llamado_idllamado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.llamado_idllamado_seq;
       public          postgres    false    226            �           0    0    llamado_idllamado_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.llamado_idllamado_seq OWNED BY public.llamado.idllamado;
          public          postgres    false    227            �            1259    16427    medicos    TABLE     r   CREATE TABLE public.medicos (
    idmedico integer NOT NULL,
    idpersona integer,
    idespecialidad integer
);
    DROP TABLE public.medicos;
       public         heap    postgres    false            �            1259    16430    medicos_idmedico_seq    SEQUENCE     �   CREATE SEQUENCE public.medicos_idmedico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.medicos_idmedico_seq;
       public          postgres    false    228            �           0    0    medicos_idmedico_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.medicos_idmedico_seq OWNED BY public.medicos.idmedico;
          public          postgres    false    229            �            1259    16431    paciente    TABLE     p   CREATE TABLE public.paciente (
    id_paciente integer NOT NULL,
    idpersona integer,
    idestado integer
);
    DROP TABLE public.paciente;
       public         heap    postgres    false            �            1259    16434    paciente_id_paciente_seq    SEQUENCE     �   CREATE SEQUENCE public.paciente_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.paciente_id_paciente_seq;
       public          postgres    false    230            �           0    0    paciente_id_paciente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.paciente_id_paciente_seq OWNED BY public.paciente.id_paciente;
          public          postgres    false    231            �            1259    16435    personas    TABLE     �   CREATE TABLE public.personas (
    idpersona integer NOT NULL,
    nombre_apellido character varying(50),
    cuil integer,
    fecha_nacimiento date,
    domicilio character varying(45),
    idgenero integer,
    idtipo_persona integer
);
    DROP TABLE public.personas;
       public         heap    postgres    false            �            1259    16438    personas_idpersonas_seq    SEQUENCE     �   CREATE SEQUENCE public.personas_idpersonas_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.personas_idpersonas_seq;
       public          postgres    false    232            �           0    0    personas_idpersonas_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.personas_idpersonas_seq OWNED BY public.personas.idpersona;
          public          postgres    false    233            �            1259    16439    sala    TABLE     i   CREATE TABLE public.sala (
    idsala integer NOT NULL,
    numerosala integer,
    idseccion integer
);
    DROP TABLE public.sala;
       public         heap    postgres    false            �            1259    16442    sala_idsala_seq    SEQUENCE     �   CREATE SEQUENCE public.sala_idsala_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sala_idsala_seq;
       public          postgres    false    234            �           0    0    sala_idsala_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sala_idsala_seq OWNED BY public.sala.idsala;
          public          postgres    false    235            �            1259    16443 	   secciones    TABLE     q   CREATE TABLE public.secciones (
    idseccion integer NOT NULL,
    descripcion_seccion character varying(45)
);
    DROP TABLE public.secciones;
       public         heap    postgres    false            �            1259    16446    secciones_idseccion_seq    SEQUENCE     �   CREATE SEQUENCE public.secciones_idseccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.secciones_idseccion_seq;
       public          postgres    false    236            �           0    0    secciones_idseccion_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.secciones_idseccion_seq OWNED BY public.secciones.idseccion;
          public          postgres    false    237            �            1259    16447    tipo_llamado    TABLE     q   CREATE TABLE public.tipo_llamado (
    idtipo_llamado integer NOT NULL,
    descripcion character varying(45)
);
     DROP TABLE public.tipo_llamado;
       public         heap    postgres    false            �            1259    16450    tipo_llamado_idtipo_llamado_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_llamado_idtipo_llamado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tipo_llamado_idtipo_llamado_seq;
       public          postgres    false    238            �           0    0    tipo_llamado_idtipo_llamado_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tipo_llamado_idtipo_llamado_seq OWNED BY public.tipo_llamado.idtipo_llamado;
          public          postgres    false    239            �            1259    16451    tipo_persona    TABLE     q   CREATE TABLE public.tipo_persona (
    idtipo_persona integer NOT NULL,
    descripcion character varying(45)
);
     DROP TABLE public.tipo_persona;
       public         heap    postgres    false            �            1259    16454    tipo_persona_idtipo_persona_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_persona_idtipo_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tipo_persona_idtipo_persona_seq;
       public          postgres    false    240            �           0    0    tipo_persona_idtipo_persona_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tipo_persona_idtipo_persona_seq OWNED BY public.tipo_persona.idtipo_persona;
          public          postgres    false    241            �            1259    16455    tipo_sangre    TABLE     o   CREATE TABLE public.tipo_sangre (
    idtipo_sangre integer NOT NULL,
    descripcion character varying(45)
);
    DROP TABLE public.tipo_sangre;
       public         heap    postgres    false            �            1259    16458    tipo_sangre_idtipo_sangre_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_sangre_idtipo_sangre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tipo_sangre_idtipo_sangre_seq;
       public          postgres    false    242            �           0    0    tipo_sangre_idtipo_sangre_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tipo_sangre_idtipo_sangre_seq OWNED BY public.tipo_sangre.idtipo_sangre;
          public          postgres    false    243            �            1259    16459    unidadtratamiento    TABLE     �   CREATE TABLE public.unidadtratamiento (
    id_unidadtratamiento integer NOT NULL,
    idpaciente integer,
    idmedico integer,
    idsala integer
);
 %   DROP TABLE public.unidadtratamiento;
       public         heap    postgres    false            �            1259    16462 *   unidadtratamiento_id_unidadtratamiento_seq    SEQUENCE     �   CREATE SEQUENCE public.unidadtratamiento_id_unidadtratamiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.unidadtratamiento_id_unidadtratamiento_seq;
       public          postgres    false    244            �           0    0 *   unidadtratamiento_id_unidadtratamiento_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.unidadtratamiento_id_unidadtratamiento_seq OWNED BY public.unidadtratamiento.id_unidadtratamiento;
          public          postgres    false    245            �            1259    16463    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuario integer NOT NULL,
    usuario character varying(45),
    "contraseña" character varying(45),
    idcargo integer
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16466    usuarios_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuarios_idusuario_seq;
       public          postgres    false    246            �           0    0    usuarios_idusuario_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.usuarios_idusuario_seq OWNED BY public.usuarios.idusuario;
          public          postgres    false    247            �           2604    16602    cargo idcargo    DEFAULT     n   ALTER TABLE ONLY public.cargo ALTER COLUMN idcargo SET DEFAULT nextval('public.cargo_idcargo_seq'::regclass);
 <   ALTER TABLE public.cargo ALTER COLUMN idcargo DROP DEFAULT;
       public          postgres    false    249    248    249            �           2604    16467    datosmedicos iddatosmedicos    DEFAULT     �   ALTER TABLE ONLY public.datosmedicos ALTER COLUMN iddatosmedicos SET DEFAULT nextval('public.datosmedicos_iddatosmedicos_seq'::regclass);
 J   ALTER TABLE public.datosmedicos ALTER COLUMN iddatosmedicos DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16468    especialidades idespecialidad    DEFAULT     �   ALTER TABLE ONLY public.especialidades ALTER COLUMN idespecialidad SET DEFAULT nextval('public.especialidades_idespecialidad_seq'::regclass);
 L   ALTER TABLE public.especialidades ALTER COLUMN idespecialidad DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16469    estado idestado    DEFAULT     r   ALTER TABLE ONLY public.estado ALTER COLUMN idestado SET DEFAULT nextval('public.estado_idestado_seq'::regclass);
 >   ALTER TABLE public.estado ALTER COLUMN idestado DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16470    estado_llamado idestado_llamado    DEFAULT     �   ALTER TABLE ONLY public.estado_llamado ALTER COLUMN idestado_llamado SET DEFAULT nextval('public.estado_llamado_idestado_llamado_seq'::regclass);
 N   ALTER TABLE public.estado_llamado ALTER COLUMN idestado_llamado DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16471    genero idgenero    DEFAULT     r   ALTER TABLE ONLY public.genero ALTER COLUMN idgenero SET DEFAULT nextval('public.genero_idgenero_seq'::regclass);
 >   ALTER TABLE public.genero ALTER COLUMN idgenero DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16472 !   historialmedico idhistorialmedico    DEFAULT     �   ALTER TABLE ONLY public.historialmedico ALTER COLUMN idhistorialmedico SET DEFAULT nextval('public.historialmedico_idhistorialmedico_seq'::regclass);
 P   ALTER TABLE public.historialmedico ALTER COLUMN idhistorialmedico DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16473    llamado idllamado    DEFAULT     v   ALTER TABLE ONLY public.llamado ALTER COLUMN idllamado SET DEFAULT nextval('public.llamado_idllamado_seq'::regclass);
 @   ALTER TABLE public.llamado ALTER COLUMN idllamado DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16474    medicos idmedico    DEFAULT     t   ALTER TABLE ONLY public.medicos ALTER COLUMN idmedico SET DEFAULT nextval('public.medicos_idmedico_seq'::regclass);
 ?   ALTER TABLE public.medicos ALTER COLUMN idmedico DROP DEFAULT;
       public          postgres    false    229    228            �           2604    16475    paciente id_paciente    DEFAULT     |   ALTER TABLE ONLY public.paciente ALTER COLUMN id_paciente SET DEFAULT nextval('public.paciente_id_paciente_seq'::regclass);
 C   ALTER TABLE public.paciente ALTER COLUMN id_paciente DROP DEFAULT;
       public          postgres    false    231    230            �           2604    16476    personas idpersona    DEFAULT     y   ALTER TABLE ONLY public.personas ALTER COLUMN idpersona SET DEFAULT nextval('public.personas_idpersonas_seq'::regclass);
 A   ALTER TABLE public.personas ALTER COLUMN idpersona DROP DEFAULT;
       public          postgres    false    233    232            �           2604    16477    sala idsala    DEFAULT     j   ALTER TABLE ONLY public.sala ALTER COLUMN idsala SET DEFAULT nextval('public.sala_idsala_seq'::regclass);
 :   ALTER TABLE public.sala ALTER COLUMN idsala DROP DEFAULT;
       public          postgres    false    235    234            �           2604    16478    secciones idseccion    DEFAULT     z   ALTER TABLE ONLY public.secciones ALTER COLUMN idseccion SET DEFAULT nextval('public.secciones_idseccion_seq'::regclass);
 B   ALTER TABLE public.secciones ALTER COLUMN idseccion DROP DEFAULT;
       public          postgres    false    237    236            �           2604    16479    tipo_llamado idtipo_llamado    DEFAULT     �   ALTER TABLE ONLY public.tipo_llamado ALTER COLUMN idtipo_llamado SET DEFAULT nextval('public.tipo_llamado_idtipo_llamado_seq'::regclass);
 J   ALTER TABLE public.tipo_llamado ALTER COLUMN idtipo_llamado DROP DEFAULT;
       public          postgres    false    239    238            �           2604    16480    tipo_persona idtipo_persona    DEFAULT     �   ALTER TABLE ONLY public.tipo_persona ALTER COLUMN idtipo_persona SET DEFAULT nextval('public.tipo_persona_idtipo_persona_seq'::regclass);
 J   ALTER TABLE public.tipo_persona ALTER COLUMN idtipo_persona DROP DEFAULT;
       public          postgres    false    241    240            �           2604    16481    tipo_sangre idtipo_sangre    DEFAULT     �   ALTER TABLE ONLY public.tipo_sangre ALTER COLUMN idtipo_sangre SET DEFAULT nextval('public.tipo_sangre_idtipo_sangre_seq'::regclass);
 H   ALTER TABLE public.tipo_sangre ALTER COLUMN idtipo_sangre DROP DEFAULT;
       public          postgres    false    243    242            �           2604    16482 &   unidadtratamiento id_unidadtratamiento    DEFAULT     �   ALTER TABLE ONLY public.unidadtratamiento ALTER COLUMN id_unidadtratamiento SET DEFAULT nextval('public.unidadtratamiento_id_unidadtratamiento_seq'::regclass);
 U   ALTER TABLE public.unidadtratamiento ALTER COLUMN id_unidadtratamiento DROP DEFAULT;
       public          postgres    false    245    244            �           2604    16483    usuarios idusuario    DEFAULT     x   ALTER TABLE ONLY public.usuarios ALTER COLUMN idusuario SET DEFAULT nextval('public.usuarios_idusuario_seq'::regclass);
 A   ALTER TABLE public.usuarios ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    247    246            �          0    16599    cargo 
   TABLE DATA           /   COPY public.cargo (idcargo, cargo) FROM stdin;
    public          postgres    false    249   +�       �          0    16399    datosmedicos 
   TABLE DATA           �   COPY public.datosmedicos (iddatosmedicos, psicologico, laboratorio, electrocardiograma, idtipo_sangre, idhistorialmedico, idpaciente) FROM stdin;
    public          postgres    false    214   d�       �          0    16403    especialidades 
   TABLE DATA           F   COPY public.especialidades (idespecialidad, especialidad) FROM stdin;
    public          postgres    false    216   ��       �          0    16407    estado 
   TABLE DATA           >   COPY public.estado (idestado, descripcion_estado) FROM stdin;
    public          postgres    false    218   ��       �          0    16411    estado_llamado 
   TABLE DATA           G   COPY public.estado_llamado (idestado_llamado, descripcion) FROM stdin;
    public          postgres    false    220   ��       �          0    16415    genero 
   TABLE DATA           7   COPY public.genero (idgenero, descripcion) FROM stdin;
    public          postgres    false    222   ث       �          0    16419    historialmedico 
   TABLE DATA           j   COPY public.historialmedico (idhistorialmedico, psicologico, laboratorio, electrocardiograma) FROM stdin;
    public          postgres    false    224   	�       �          0    16423    llamado 
   TABLE DATA           Z   COPY public.llamado (idllamado, fecha_hora, origen, idsala, idestado_llamado) FROM stdin;
    public          postgres    false    226   &�       �          0    16427    medicos 
   TABLE DATA           F   COPY public.medicos (idmedico, idpersona, idespecialidad) FROM stdin;
    public          postgres    false    228   C�       �          0    16431    paciente 
   TABLE DATA           D   COPY public.paciente (id_paciente, idpersona, idestado) FROM stdin;
    public          postgres    false    230   `�       �          0    16435    personas 
   TABLE DATA           {   COPY public.personas (idpersona, nombre_apellido, cuil, fecha_nacimiento, domicilio, idgenero, idtipo_persona) FROM stdin;
    public          postgres    false    232   }�       �          0    16439    sala 
   TABLE DATA           =   COPY public.sala (idsala, numerosala, idseccion) FROM stdin;
    public          postgres    false    234   ��       �          0    16443 	   secciones 
   TABLE DATA           C   COPY public.secciones (idseccion, descripcion_seccion) FROM stdin;
    public          postgres    false    236   ��       �          0    16447    tipo_llamado 
   TABLE DATA           C   COPY public.tipo_llamado (idtipo_llamado, descripcion) FROM stdin;
    public          postgres    false    238   Ԭ       �          0    16451    tipo_persona 
   TABLE DATA           C   COPY public.tipo_persona (idtipo_persona, descripcion) FROM stdin;
    public          postgres    false    240   �       �          0    16455    tipo_sangre 
   TABLE DATA           A   COPY public.tipo_sangre (idtipo_sangre, descripcion) FROM stdin;
    public          postgres    false    242   "�       �          0    16459    unidadtratamiento 
   TABLE DATA           _   COPY public.unidadtratamiento (id_unidadtratamiento, idpaciente, idmedico, idsala) FROM stdin;
    public          postgres    false    244   ?�       �          0    16463    usuarios 
   TABLE DATA           N   COPY public.usuarios (idusuario, usuario, "contraseña", idcargo) FROM stdin;
    public          postgres    false    246   \�       �           0    0    cargo_idcargo_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cargo_idcargo_seq', 2, true);
          public          postgres    false    248            �           0    0    datosmedicos_iddatosmedicos_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.datosmedicos_iddatosmedicos_seq', 1, false);
          public          postgres    false    215            �           0    0 !   especialidades_idespecialidad_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.especialidades_idespecialidad_seq', 1, true);
          public          postgres    false    217            �           0    0    estado_idestado_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.estado_idestado_seq', 1, false);
          public          postgres    false    219            �           0    0 #   estado_llamado_idestado_llamado_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.estado_llamado_idestado_llamado_seq', 1, false);
          public          postgres    false    221            �           0    0    genero_idgenero_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.genero_idgenero_seq', 2, true);
          public          postgres    false    223            �           0    0 %   historialmedico_idhistorialmedico_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.historialmedico_idhistorialmedico_seq', 1, false);
          public          postgres    false    225            �           0    0    llamado_idllamado_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.llamado_idllamado_seq', 1, false);
          public          postgres    false    227            �           0    0    medicos_idmedico_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.medicos_idmedico_seq', 1, false);
          public          postgres    false    229            �           0    0    paciente_id_paciente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.paciente_id_paciente_seq', 1, false);
          public          postgres    false    231            �           0    0    personas_idpersonas_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.personas_idpersonas_seq', 1, true);
          public          postgres    false    233            �           0    0    sala_idsala_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sala_idsala_seq', 1, false);
          public          postgres    false    235            �           0    0    secciones_idseccion_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.secciones_idseccion_seq', 1, false);
          public          postgres    false    237            �           0    0    tipo_llamado_idtipo_llamado_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tipo_llamado_idtipo_llamado_seq', 1, false);
          public          postgres    false    239            �           0    0    tipo_persona_idtipo_persona_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.tipo_persona_idtipo_persona_seq', 2, true);
          public          postgres    false    241            �           0    0    tipo_sangre_idtipo_sangre_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tipo_sangre_idtipo_sangre_seq', 1, false);
          public          postgres    false    243            �           0    0 *   unidadtratamiento_id_unidadtratamiento_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.unidadtratamiento_id_unidadtratamiento_seq', 1, false);
          public          postgres    false    245            �           0    0    usuarios_idusuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuarios_idusuario_seq', 3, true);
          public          postgres    false    247            �           2606    16604    cargo cargo_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (idcargo);
 :   ALTER TABLE ONLY public.cargo DROP CONSTRAINT cargo_pkey;
       public            postgres    false    249            �           2606    16485    datosmedicos datosmedicos_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.datosmedicos
    ADD CONSTRAINT datosmedicos_pkey PRIMARY KEY (iddatosmedicos);
 H   ALTER TABLE ONLY public.datosmedicos DROP CONSTRAINT datosmedicos_pkey;
       public            postgres    false    214            �           2606    16487 "   especialidades especialidades_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_pkey PRIMARY KEY (idespecialidad);
 L   ALTER TABLE ONLY public.especialidades DROP CONSTRAINT especialidades_pkey;
       public            postgres    false    216            �           2606    16489 "   estado_llamado estado_llamado_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.estado_llamado
    ADD CONSTRAINT estado_llamado_pkey PRIMARY KEY (idestado_llamado);
 L   ALTER TABLE ONLY public.estado_llamado DROP CONSTRAINT estado_llamado_pkey;
       public            postgres    false    220            �           2606    16491    estado estado_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (idestado);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public            postgres    false    218            �           2606    16493    genero genero_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.genero
    ADD CONSTRAINT genero_pkey PRIMARY KEY (idgenero);
 <   ALTER TABLE ONLY public.genero DROP CONSTRAINT genero_pkey;
       public            postgres    false    222            �           2606    16495 $   historialmedico historialmedico_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.historialmedico
    ADD CONSTRAINT historialmedico_pkey PRIMARY KEY (idhistorialmedico);
 N   ALTER TABLE ONLY public.historialmedico DROP CONSTRAINT historialmedico_pkey;
       public            postgres    false    224            �           2606    16497    llamado llamado_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.llamado
    ADD CONSTRAINT llamado_pkey PRIMARY KEY (idllamado);
 >   ALTER TABLE ONLY public.llamado DROP CONSTRAINT llamado_pkey;
       public            postgres    false    226            �           2606    16499    medicos medicos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT medicos_pkey PRIMARY KEY (idmedico);
 >   ALTER TABLE ONLY public.medicos DROP CONSTRAINT medicos_pkey;
       public            postgres    false    228            �           2606    16501    paciente paciente_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id_paciente);
 @   ALTER TABLE ONLY public.paciente DROP CONSTRAINT paciente_pkey;
       public            postgres    false    230            �           2606    16503    personas personas_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (idpersona);
 @   ALTER TABLE ONLY public.personas DROP CONSTRAINT personas_pkey;
       public            postgres    false    232            �           2606    16505    sala sala_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT sala_pkey PRIMARY KEY (idsala);
 8   ALTER TABLE ONLY public.sala DROP CONSTRAINT sala_pkey;
       public            postgres    false    234            �           2606    16507    secciones secciones_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT secciones_pkey PRIMARY KEY (idseccion);
 B   ALTER TABLE ONLY public.secciones DROP CONSTRAINT secciones_pkey;
       public            postgres    false    236            �           2606    16509    tipo_llamado tipo_llamado_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tipo_llamado
    ADD CONSTRAINT tipo_llamado_pkey PRIMARY KEY (idtipo_llamado);
 H   ALTER TABLE ONLY public.tipo_llamado DROP CONSTRAINT tipo_llamado_pkey;
       public            postgres    false    238            �           2606    16511    tipo_persona tipo_persona_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tipo_persona
    ADD CONSTRAINT tipo_persona_pkey PRIMARY KEY (idtipo_persona);
 H   ALTER TABLE ONLY public.tipo_persona DROP CONSTRAINT tipo_persona_pkey;
       public            postgres    false    240            �           2606    16513    tipo_sangre tipo_sangre_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.tipo_sangre
    ADD CONSTRAINT tipo_sangre_pkey PRIMARY KEY (idtipo_sangre);
 F   ALTER TABLE ONLY public.tipo_sangre DROP CONSTRAINT tipo_sangre_pkey;
       public            postgres    false    242            �           2606    16515 (   unidadtratamiento unidadtratamiento_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.unidadtratamiento
    ADD CONSTRAINT unidadtratamiento_pkey PRIMARY KEY (id_unidadtratamiento);
 R   ALTER TABLE ONLY public.unidadtratamiento DROP CONSTRAINT unidadtratamiento_pkey;
       public            postgres    false    244            �           2606    16517    usuarios usuarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (idusuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    246            �           2606    16606    usuarios fk_id_cargo    FK CONSTRAINT     x   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_id_cargo FOREIGN KEY (idcargo) REFERENCES public.cargo(idcargo);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_id_cargo;
       public          postgres    false    249    246    3311            �           2606    16518    medicos fk_id_especialidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT fk_id_especialidad FOREIGN KEY (idespecialidad) REFERENCES public.especialidades(idespecialidad);
 D   ALTER TABLE ONLY public.medicos DROP CONSTRAINT fk_id_especialidad;
       public          postgres    false    228    216    3279            �           2606    16528    paciente fk_id_estado    FK CONSTRAINT     |   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT fk_id_estado FOREIGN KEY (idestado) REFERENCES public.estado(idestado);
 ?   ALTER TABLE ONLY public.paciente DROP CONSTRAINT fk_id_estado;
       public          postgres    false    3281    218    230            �           2606    16533    llamado fk_id_estado_llamado    FK CONSTRAINT     �   ALTER TABLE ONLY public.llamado
    ADD CONSTRAINT fk_id_estado_llamado FOREIGN KEY (idestado_llamado) REFERENCES public.estado_llamado(idestado_llamado);
 F   ALTER TABLE ONLY public.llamado DROP CONSTRAINT fk_id_estado_llamado;
       public          postgres    false    220    3283    226            �           2606    16538    personas fk_id_genero    FK CONSTRAINT     |   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT fk_id_genero FOREIGN KEY (idgenero) REFERENCES public.genero(idgenero);
 ?   ALTER TABLE ONLY public.personas DROP CONSTRAINT fk_id_genero;
       public          postgres    false    222    232    3285            �           2606    16543 "   datosmedicos fk_id_historialmedico    FK CONSTRAINT     �   ALTER TABLE ONLY public.datosmedicos
    ADD CONSTRAINT fk_id_historialmedico FOREIGN KEY (idhistorialmedico) REFERENCES public.historialmedico(idhistorialmedico);
 L   ALTER TABLE ONLY public.datosmedicos DROP CONSTRAINT fk_id_historialmedico;
       public          postgres    false    224    3287    214            �           2606    16548    unidadtratamiento fk_id_medico    FK CONSTRAINT     �   ALTER TABLE ONLY public.unidadtratamiento
    ADD CONSTRAINT fk_id_medico FOREIGN KEY (idmedico) REFERENCES public.medicos(idmedico);
 H   ALTER TABLE ONLY public.unidadtratamiento DROP CONSTRAINT fk_id_medico;
       public          postgres    false    244    3291    228            �           2606    16553     unidadtratamiento fk_id_paciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.unidadtratamiento
    ADD CONSTRAINT fk_id_paciente FOREIGN KEY (idpaciente) REFERENCES public.paciente(id_paciente);
 J   ALTER TABLE ONLY public.unidadtratamiento DROP CONSTRAINT fk_id_paciente;
       public          postgres    false    230    3293    244            �           2606    16558    datosmedicos fk_id_paciente    FK CONSTRAINT     �   ALTER TABLE ONLY public.datosmedicos
    ADD CONSTRAINT fk_id_paciente FOREIGN KEY (idpaciente) REFERENCES public.paciente(id_paciente);
 E   ALTER TABLE ONLY public.datosmedicos DROP CONSTRAINT fk_id_paciente;
       public          postgres    false    214    230    3293            �           2606    16563    llamado fk_id_sala    FK CONSTRAINT     s   ALTER TABLE ONLY public.llamado
    ADD CONSTRAINT fk_id_sala FOREIGN KEY (idsala) REFERENCES public.sala(idsala);
 <   ALTER TABLE ONLY public.llamado DROP CONSTRAINT fk_id_sala;
       public          postgres    false    3297    234    226            �           2606    16568    unidadtratamiento fk_id_sala    FK CONSTRAINT     }   ALTER TABLE ONLY public.unidadtratamiento
    ADD CONSTRAINT fk_id_sala FOREIGN KEY (idsala) REFERENCES public.sala(idsala);
 F   ALTER TABLE ONLY public.unidadtratamiento DROP CONSTRAINT fk_id_sala;
       public          postgres    false    244    3297    234            �           2606    16573    secciones fk_id_seccion    FK CONSTRAINT     �   ALTER TABLE ONLY public.secciones
    ADD CONSTRAINT fk_id_seccion FOREIGN KEY (idseccion) REFERENCES public.secciones(idseccion);
 A   ALTER TABLE ONLY public.secciones DROP CONSTRAINT fk_id_seccion;
       public          postgres    false    3299    236    236            �           2606    16578    personas fk_id_tipo_persona    FK CONSTRAINT     �   ALTER TABLE ONLY public.personas
    ADD CONSTRAINT fk_id_tipo_persona FOREIGN KEY (idtipo_persona) REFERENCES public.tipo_persona(idtipo_persona);
 E   ALTER TABLE ONLY public.personas DROP CONSTRAINT fk_id_tipo_persona;
       public          postgres    false    232    3303    240            �           2606    16583    datosmedicos fk_id_tipo_sangre    FK CONSTRAINT     �   ALTER TABLE ONLY public.datosmedicos
    ADD CONSTRAINT fk_id_tipo_sangre FOREIGN KEY (idtipo_sangre) REFERENCES public.tipo_sangre(idtipo_sangre);
 H   ALTER TABLE ONLY public.datosmedicos DROP CONSTRAINT fk_id_tipo_sangre;
       public          postgres    false    242    3305    214            �           2606    16588    paciente fk_personas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.paciente
    ADD CONSTRAINT fk_personas_id FOREIGN KEY (idpersona) REFERENCES public.personas(idpersona);
 A   ALTER TABLE ONLY public.paciente DROP CONSTRAINT fk_personas_id;
       public          postgres    false    232    230    3295            �           2606    16593    medicos fk_personas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.medicos
    ADD CONSTRAINT fk_personas_id FOREIGN KEY (idpersona) REFERENCES public.personas(idpersona);
 @   ALTER TABLE ONLY public.medicos DROP CONSTRAINT fk_personas_id;
       public          postgres    false    232    3295    228            �   )   x�3�tL����,.)JL�/�2�JMN-H�������� ��
      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   !   x�3��M,N.�����2�tK�M�1c���� ~�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   !   x�3��MM�L��2�HL�L�+I����� \��      �      x������ � �      �      x������ � �      �      x�3�,�L�4���\�`�!�4����� �	%     