PGDMP         9    	        
    x            tuit_cms #   12.4 (Ubuntu 12.4-0ubuntu0.20.04.1) #   12.4 (Ubuntu 12.4-0ubuntu0.20.04.1) t    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    17620    tuit_cms    DATABASE     z   CREATE DATABASE tuit_cms WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE tuit_cms;
                postgres    false                        2615    17621    py_cms    SCHEMA        CREATE SCHEMA py_cms;
    DROP SCHEMA py_cms;
                postgres    false            �            1259    17653 
   auth_group    TABLE     f   CREATE TABLE py_cms.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE py_cms.auth_group;
       py_cms         heap    postgres    false    6            �            1259    17651    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE py_cms.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE py_cms.auth_group_id_seq;
       py_cms          postgres    false    6    210            I           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE py_cms.auth_group_id_seq OWNED BY py_cms.auth_group.id;
          py_cms          postgres    false    209            �            1259    17663    auth_group_permissions    TABLE     �   CREATE TABLE py_cms.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE py_cms.auth_group_permissions;
       py_cms         heap    postgres    false    6            �            1259    17661    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE py_cms.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE py_cms.auth_group_permissions_id_seq;
       py_cms          postgres    false    6    212            J           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE py_cms.auth_group_permissions_id_seq OWNED BY py_cms.auth_group_permissions.id;
          py_cms          postgres    false    211            �            1259    17645    auth_permission    TABLE     �   CREATE TABLE py_cms.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE py_cms.auth_permission;
       py_cms         heap    postgres    false    6            �            1259    17643    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE py_cms.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE py_cms.auth_permission_id_seq;
       py_cms          postgres    false    208    6            K           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE py_cms.auth_permission_id_seq OWNED BY py_cms.auth_permission.id;
          py_cms          postgres    false    207            �            1259    17671 	   auth_user    TABLE     �  CREATE TABLE py_cms.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE py_cms.auth_user;
       py_cms         heap    postgres    false    6            �            1259    17681    auth_user_groups    TABLE        CREATE TABLE py_cms.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE py_cms.auth_user_groups;
       py_cms         heap    postgres    false    6            �            1259    17679    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE py_cms.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE py_cms.auth_user_groups_id_seq;
       py_cms          postgres    false    6    216            L           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE py_cms.auth_user_groups_id_seq OWNED BY py_cms.auth_user_groups.id;
          py_cms          postgres    false    215            �            1259    17669    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE py_cms.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE py_cms.auth_user_id_seq;
       py_cms          postgres    false    6    214            M           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE py_cms.auth_user_id_seq OWNED BY py_cms.auth_user.id;
          py_cms          postgres    false    213            �            1259    17689    auth_user_user_permissions    TABLE     �   CREATE TABLE py_cms.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE py_cms.auth_user_user_permissions;
       py_cms         heap    postgres    false    6            �            1259    17687 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE py_cms.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE py_cms.auth_user_user_permissions_id_seq;
       py_cms          postgres    false    6    218            N           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE py_cms.auth_user_user_permissions_id_seq OWNED BY py_cms.auth_user_user_permissions.id;
          py_cms          postgres    false    217            �            1259    17749    django_admin_log    TABLE     �  CREATE TABLE py_cms.django_admin_log (
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
 $   DROP TABLE py_cms.django_admin_log;
       py_cms         heap    postgres    false    6            �            1259    17747    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE py_cms.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE py_cms.django_admin_log_id_seq;
       py_cms          postgres    false    220    6            O           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE py_cms.django_admin_log_id_seq OWNED BY py_cms.django_admin_log.id;
          py_cms          postgres    false    219            �            1259    17635    django_content_type    TABLE     �   CREATE TABLE py_cms.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE py_cms.django_content_type;
       py_cms         heap    postgres    false    6            �            1259    17633    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE py_cms.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE py_cms.django_content_type_id_seq;
       py_cms          postgres    false    6    206            P           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE py_cms.django_content_type_id_seq OWNED BY py_cms.django_content_type.id;
          py_cms          postgres    false    205            �            1259    17624    django_migrations    TABLE     �   CREATE TABLE py_cms.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE py_cms.django_migrations;
       py_cms         heap    postgres    false    6            �            1259    17622    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE py_cms.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE py_cms.django_migrations_id_seq;
       py_cms          postgres    false    204    6            Q           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE py_cms.django_migrations_id_seq OWNED BY py_cms.django_migrations.id;
          py_cms          postgres    false    203            �            1259    17780    django_session    TABLE     �   CREATE TABLE py_cms.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE py_cms.django_session;
       py_cms         heap    postgres    false    6            �            1259    17811    kadr_seq    SEQUENCE     q   CREATE SEQUENCE py_cms.kadr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE py_cms.kadr_seq;
       py_cms          postgres    false    6            �            1259    17790    kadrlar    TABLE     �   CREATE TABLE py_cms.kadrlar (
    id integer DEFAULT nextval('py_cms.kadr_seq'::regclass),
    ism text,
    familiya text,
    yil text,
    telefon text,
    mail text
);
    DROP TABLE py_cms.kadrlar;
       py_cms         heap    postgres    false    226    6            �            1259    17813    position_seq    SEQUENCE     t   CREATE SEQUENCE py_cms.position_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE py_cms.position_seq;
       py_cms          postgres    false    6            �            1259    17796 
   lavozimlar    TABLE     �   CREATE TABLE py_cms.lavozimlar (
    id integer DEFAULT nextval('py_cms.position_seq'::regclass),
    lavozim text,
    maosh_koef text,
    ustama_id integer
);
    DROP TABLE py_cms.lavozimlar;
       py_cms         heap    postgres    false    227    6            �            1259    17817    payment_seq    SEQUENCE     t   CREATE SEQUENCE py_cms.payment_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE py_cms.payment_seq;
       py_cms          postgres    false    6            �            1259    17799    tranzaksiyalar    TABLE     g   CREATE TABLE py_cms.tranzaksiyalar (
    id integer DEFAULT nextval('py_cms.payment_seq'::regclass)
);
 "   DROP TABLE py_cms.tranzaksiyalar;
       py_cms         heap    postgres    false    229    6            �            1259    17815 
   ustama_seq    SEQUENCE     r   CREATE SEQUENCE py_cms.ustama_seq
    START WITH 1
    INCREMENT BY 1
    MINVALUE 0
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE py_cms.ustama_seq;
       py_cms          postgres    false    6            �            1259    17805 	   ustamalar    TABLE     �   CREATE TABLE py_cms.ustamalar (
    id integer DEFAULT nextval('py_cms.ustama_seq'::regclass),
    turi text,
    ustama_koef text,
    summa text
);
    DROP TABLE py_cms.ustamalar;
       py_cms         heap    postgres    false    228    6            g           2604    17656    auth_group id    DEFAULT     n   ALTER TABLE ONLY py_cms.auth_group ALTER COLUMN id SET DEFAULT nextval('py_cms.auth_group_id_seq'::regclass);
 <   ALTER TABLE py_cms.auth_group ALTER COLUMN id DROP DEFAULT;
       py_cms          postgres    false    209    210    210            h           2604    17666    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY py_cms.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('py_cms.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE py_cms.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       py_cms          postgres    false    211    212    212            f           2604    17648    auth_permission id    DEFAULT     x   ALTER TABLE ONLY py_cms.auth_permission ALTER COLUMN id SET DEFAULT nextval('py_cms.auth_permission_id_seq'::regclass);
 A   ALTER TABLE py_cms.auth_permission ALTER COLUMN id DROP DEFAULT;
       py_cms          postgres    false    208    207    208            i           2604    17674    auth_user id    DEFAULT     l   ALTER TABLE ONLY py_cms.auth_user ALTER COLUMN id SET DEFAULT nextval('py_cms.auth_user_id_seq'::regclass);
 ;   ALTER TABLE py_cms.auth_user ALTER COLUMN id DROP DEFAULT;
       py_cms          postgres    false    214    213    214            j           2604    17684    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY py_cms.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('py_cms.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE py_cms.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       py_cms          postgres    false    216    215    216            k           2604    17692    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY py_cms.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('py_cms.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE py_cms.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       py_cms          postgres    false    218    217    218            l           2604    17752    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY py_cms.django_admin_log ALTER COLUMN id SET DEFAULT nextval('py_cms.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE py_cms.django_admin_log ALTER COLUMN id DROP DEFAULT;
       py_cms          postgres    false    219    220    220            e           2604    17638    django_content_type id    DEFAULT     �   ALTER TABLE ONLY py_cms.django_content_type ALTER COLUMN id SET DEFAULT nextval('py_cms.django_content_type_id_seq'::regclass);
 E   ALTER TABLE py_cms.django_content_type ALTER COLUMN id DROP DEFAULT;
       py_cms          postgres    false    205    206    206            d           2604    17627    django_migrations id    DEFAULT     |   ALTER TABLE ONLY py_cms.django_migrations ALTER COLUMN id SET DEFAULT nextval('py_cms.django_migrations_id_seq'::regclass);
 C   ALTER TABLE py_cms.django_migrations ALTER COLUMN id DROP DEFAULT;
       py_cms          postgres    false    203    204    204            /          0    17653 
   auth_group 
   TABLE DATA           .   COPY py_cms.auth_group (id, name) FROM stdin;
    py_cms          postgres    false    210   ��       1          0    17663    auth_group_permissions 
   TABLE DATA           M   COPY py_cms.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    py_cms          postgres    false    212   ��       -          0    17645    auth_permission 
   TABLE DATA           N   COPY py_cms.auth_permission (id, name, content_type_id, codename) FROM stdin;
    py_cms          postgres    false    208   ϔ       3          0    17671 	   auth_user 
   TABLE DATA           �   COPY py_cms.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    py_cms          postgres    false    214   �       5          0    17681    auth_user_groups 
   TABLE DATA           A   COPY py_cms.auth_user_groups (id, user_id, group_id) FROM stdin;
    py_cms          postgres    false    216   	�       7          0    17689    auth_user_user_permissions 
   TABLE DATA           P   COPY py_cms.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    py_cms          postgres    false    218   &�       9          0    17749    django_admin_log 
   TABLE DATA           �   COPY py_cms.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    py_cms          postgres    false    220   C�       +          0    17635    django_content_type 
   TABLE DATA           C   COPY py_cms.django_content_type (id, app_label, model) FROM stdin;
    py_cms          postgres    false    206   `�       )          0    17624    django_migrations 
   TABLE DATA           C   COPY py_cms.django_migrations (id, app, name, applied) FROM stdin;
    py_cms          postgres    false    204   ǖ       :          0    17780    django_session 
   TABLE DATA           P   COPY py_cms.django_session (session_key, session_data, expire_date) FROM stdin;
    py_cms          postgres    false    221   |�       ;          0    17790    kadrlar 
   TABLE DATA           H   COPY py_cms.kadrlar (id, ism, familiya, yil, telefon, mail) FROM stdin;
    py_cms          postgres    false    222   ��       <          0    17796 
   lavozimlar 
   TABLE DATA           H   COPY py_cms.lavozimlar (id, lavozim, maosh_koef, ustama_id) FROM stdin;
    py_cms          postgres    false    223   ؘ       =          0    17799    tranzaksiyalar 
   TABLE DATA           ,   COPY py_cms.tranzaksiyalar (id) FROM stdin;
    py_cms          postgres    false    224   ��       >          0    17805 	   ustamalar 
   TABLE DATA           A   COPY py_cms.ustamalar (id, turi, ustama_koef, summa) FROM stdin;
    py_cms          postgres    false    225   �       R           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('py_cms.auth_group_id_seq', 1, false);
          py_cms          postgres    false    209            S           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('py_cms.auth_group_permissions_id_seq', 1, false);
          py_cms          postgres    false    211            T           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('py_cms.auth_permission_id_seq', 24, true);
          py_cms          postgres    false    207            U           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('py_cms.auth_user_groups_id_seq', 1, false);
          py_cms          postgres    false    215            V           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('py_cms.auth_user_id_seq', 1, false);
          py_cms          postgres    false    213            W           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('py_cms.auth_user_user_permissions_id_seq', 1, false);
          py_cms          postgres    false    217            X           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('py_cms.django_admin_log_id_seq', 1, false);
          py_cms          postgres    false    219            Y           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('py_cms.django_content_type_id_seq', 6, true);
          py_cms          postgres    false    205            Z           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('py_cms.django_migrations_id_seq', 18, true);
          py_cms          postgres    false    203            [           0    0    kadr_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('py_cms.kadr_seq', 1, false);
          py_cms          postgres    false    226            \           0    0    payment_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('py_cms.payment_seq', 1, false);
          py_cms          postgres    false    229            ]           0    0    position_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('py_cms.position_seq', 1, false);
          py_cms          postgres    false    227            ^           0    0 
   ustama_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('py_cms.ustama_seq', 1, false);
          py_cms          postgres    false    228                       2606    17778    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY py_cms.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY py_cms.auth_group DROP CONSTRAINT auth_group_name_key;
       py_cms            postgres    false    210            �           2606    17705 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY py_cms.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       py_cms            postgres    false    212    212            �           2606    17668 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY py_cms.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY py_cms.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       py_cms            postgres    false    212            �           2606    17658    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY py_cms.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY py_cms.auth_group DROP CONSTRAINT auth_group_pkey;
       py_cms            postgres    false    210            z           2606    17696 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY py_cms.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       py_cms            postgres    false    208    208            |           2606    17650 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY py_cms.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY py_cms.auth_permission DROP CONSTRAINT auth_permission_pkey;
       py_cms            postgres    false    208            �           2606    17686 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY py_cms.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY py_cms.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       py_cms            postgres    false    216            �           2606    17720 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY py_cms.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       py_cms            postgres    false    216    216            �           2606    17676    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY py_cms.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY py_cms.auth_user DROP CONSTRAINT auth_user_pkey;
       py_cms            postgres    false    214            �           2606    17694 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY py_cms.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY py_cms.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       py_cms            postgres    false    218            �           2606    17734 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY py_cms.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       py_cms            postgres    false    218    218            �           2606    17772     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY py_cms.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY py_cms.auth_user DROP CONSTRAINT auth_user_username_key;
       py_cms            postgres    false    214            �           2606    17758 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY py_cms.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY py_cms.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       py_cms            postgres    false    220            u           2606    17642 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY py_cms.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY py_cms.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       py_cms            postgres    false    206    206            w           2606    17640 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY py_cms.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY py_cms.django_content_type DROP CONSTRAINT django_content_type_pkey;
       py_cms            postgres    false    206            s           2606    17632 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY py_cms.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY py_cms.django_migrations DROP CONSTRAINT django_migrations_pkey;
       py_cms            postgres    false    204            �           2606    17787 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY py_cms.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY py_cms.django_session DROP CONSTRAINT django_session_pkey;
       py_cms            postgres    false    221            }           1259    17779    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON py_cms.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX py_cms.auth_group_name_a6ea08ec_like;
       py_cms            postgres    false    210            �           1259    17716 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON py_cms.auth_group_permissions USING btree (group_id);
 <   DROP INDEX py_cms.auth_group_permissions_group_id_b120cbf9;
       py_cms            postgres    false    212            �           1259    17717 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON py_cms.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX py_cms.auth_group_permissions_permission_id_84c5c92e;
       py_cms            postgres    false    212            x           1259    17702 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON py_cms.auth_permission USING btree (content_type_id);
 <   DROP INDEX py_cms.auth_permission_content_type_id_2f476e4b;
       py_cms            postgres    false    208            �           1259    17732 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON py_cms.auth_user_groups USING btree (group_id);
 6   DROP INDEX py_cms.auth_user_groups_group_id_97559544;
       py_cms            postgres    false    216            �           1259    17731 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON py_cms.auth_user_groups USING btree (user_id);
 5   DROP INDEX py_cms.auth_user_groups_user_id_6a12ed8b;
       py_cms            postgres    false    216            �           1259    17746 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON py_cms.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX py_cms.auth_user_user_permissions_permission_id_1fbb5f2c;
       py_cms            postgres    false    218            �           1259    17745 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON py_cms.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX py_cms.auth_user_user_permissions_user_id_a95ead1b;
       py_cms            postgres    false    218            �           1259    17773     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON py_cms.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX py_cms.auth_user_username_6821ab7c_like;
       py_cms            postgres    false    214            �           1259    17769 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON py_cms.django_admin_log USING btree (content_type_id);
 =   DROP INDEX py_cms.django_admin_log_content_type_id_c4bce8eb;
       py_cms            postgres    false    220            �           1259    17770 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON py_cms.django_admin_log USING btree (user_id);
 5   DROP INDEX py_cms.django_admin_log_user_id_c564eba6;
       py_cms            postgres    false    220            �           1259    17789 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON py_cms.django_session USING btree (expire_date);
 7   DROP INDEX py_cms.django_session_expire_date_a5c62663;
       py_cms            postgres    false    221            �           1259    17788 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON py_cms.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX py_cms.django_session_session_key_c0390e0f_like;
       py_cms            postgres    false    221            �           2606    17711 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES py_cms.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY py_cms.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       py_cms          postgres    false    2940    208    212            �           2606    17706 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES py_cms.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY py_cms.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       py_cms          postgres    false    2945    210    212            �           2606    17697 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES py_cms.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY py_cms.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       py_cms          postgres    false    2935    208    206            �           2606    17726 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES py_cms.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY py_cms.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       py_cms          postgres    false    2945    216    210            �           2606    17721 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES py_cms.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY py_cms.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       py_cms          postgres    false    2953    216    214            �           2606    17740 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES py_cms.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY py_cms.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       py_cms          postgres    false    2940    208    218            �           2606    17735 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY py_cms.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES py_cms.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY py_cms.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       py_cms          postgres    false    214    2953    218            �           2606    17759 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY py_cms.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES py_cms.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY py_cms.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       py_cms          postgres    false    2935    206    220            �           2606    17764 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY py_cms.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES py_cms.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY py_cms.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       py_cms          postgres    false    220    2953    214            /      x������ � �      1      x������ � �      -     x�]�K��0��ur
N0j£�z�Q�B�b�:�h�����I�%��o��i�g�f��c�Y����G�<��ЂRq�0G��f�a����[�m��Le���4u}0�x`+� �	{�}�R��NT����v�����֝d�~O]D�l�	�����<,�����ӺB�[ZA)���T���qu�<�͏>��_��� ��m�.2�)H���:x�ޟ8�1WY��'���`:Y��;�LL�vf���x댰j'�k�2�      3      x������ � �      5      x������ � �      7      x������ � �      9      x������ � �      +   W   x�M�K
�0�y����M�P�C�.z{E��LOn�!љ='���\��
K�!'�o�k��JU̴�d�f���)?�~��pM^%�      )   �  x����n� @��WtՈ����+!�P�6.���qI��r6,s�93�����b��&4�Pv���A�����7B�Zq$T"�;`����A��rm�y��~�L���jp}J�_�7��2*��>�7�-bf���)N�S�nR������S2�ȒG��d�Y�A�f�n���&=�mT��4Q���C4^�Ə6��R�W��V���tj�@�6�dE�����Q�a����⩫���������z�$]A �v�t�Y�M�-�V�ENe�@��d�s���-�U���RҢn�)�T��`�::J���Ϋф��?��D+Nn����ry%���=8z���pE�_��{���ah��'�P˜5{�}���m?�2��Bg���ޭ�,A���&��ҝ�B���u|����)X�      :      x������ � �      ;   /   x����tJ��O�,�J�M����/�4200�4426�L,����� ��
o      <      x������ � �      =      x������ � �      >      x������ � �     