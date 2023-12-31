PGDMP                         {         
   db_dtp_tkp    15.2    15.2 @    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    25470 
   db_dtp_tkp    DATABASE     �   CREATE DATABASE db_dtp_tkp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE db_dtp_tkp;
                postgres    false            �            1259    25471    divisi    TABLE       CREATE TABLE public.divisi (
    id bigint NOT NULL,
    nama_divisi character varying(255) NOT NULL,
    deskripsi_divisi text NOT NULL,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.divisi;
       public         heap    postgres    false            �            1259    25478    divisi_id_seq    SEQUENCE     v   CREATE SEQUENCE public.divisi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.divisi_id_seq;
       public          postgres    false    214            O           0    0    divisi_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.divisi_id_seq OWNED BY public.divisi.id;
          public          postgres    false    215            �            1259    25479    kategori    TABLE     $  CREATE TABLE public.kategori (
    id bigint NOT NULL,
    nama_kategori character varying(255) NOT NULL,
    deskripsi_kategori text NOT NULL,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.kategori;
       public         heap    postgres    false            �            1259    25486    kategori_id_seq    SEQUENCE     x   CREATE SEQUENCE public.kategori_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.kategori_id_seq;
       public          postgres    false    216            P           0    0    kategori_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.kategori_id_seq OWNED BY public.kategori.id;
          public          postgres    false    217            �            1259    25487 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    25490    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    218            Q           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    219            �            1259    25491 	   pelatihan    TABLE     �  CREATE TABLE public.pelatihan (
    id bigint NOT NULL,
    judul_pelatihan character varying(255) NOT NULL,
    tempat_pelatihan character varying(255) NOT NULL,
    scope_pelatihan character varying(20) NOT NULL,
    bersetifikat boolean NOT NULL,
    gambar_pelatihan character varying(255) NOT NULL,
    deskripsi_pelatihan character varying(255) NOT NULL,
    biaya_pelatihan bigint NOT NULL,
    tanggal_dimulai date NOT NULL,
    tanggal_berakhir date,
    id_kategori bigint NOT NULL,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.pelatihan;
       public         heap    postgres    false            �            1259    25498    pelatihan_id_seq    SEQUENCE     y   CREATE SEQUENCE public.pelatihan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pelatihan_id_seq;
       public          postgres    false    220            R           0    0    pelatihan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pelatihan_id_seq OWNED BY public.pelatihan.id;
          public          postgres    false    221            �            1259    25499 	   pengajuan    TABLE     �  CREATE TABLE public.pengajuan (
    id bigint NOT NULL,
    tanggal_pengajuan date DEFAULT CURRENT_TIMESTAMP NOT NULL,
    tanggal_verifikasi date,
    status_pengajuan character varying(10) NOT NULL,
    id_pelatihan bigint NOT NULL,
    id_user bigint NOT NULL,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    id_admin bigint,
    id_surat bigint,
    deskripsi_revisi character varying
);
    DROP TABLE public.pengajuan;
       public         heap    postgres    false            �            1259    25507    pengajuan_id_seq    SEQUENCE     y   CREATE SEQUENCE public.pengajuan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pengajuan_id_seq;
       public          postgres    false    222            S           0    0    pengajuan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pengajuan_id_seq OWNED BY public.pengajuan.id;
          public          postgres    false    223            �            1259    25508    surat    TABLE     �   CREATE TABLE public.surat (
    id integer NOT NULL,
    nomer_surat integer NOT NULL,
    id_pengajuan bigint,
    updated_at timestamp without time zone,
    created_at timestamp without time zone
);
    DROP TABLE public.surat;
       public         heap    postgres    false            �            1259    25511    surat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.surat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.surat_id_seq;
       public          postgres    false    224            T           0    0    surat_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.surat_id_seq OWNED BY public.surat.id;
          public          postgres    false    225            �            1259    25512    surat_nomer_surat_seq    SEQUENCE     �   CREATE SEQUENCE public.surat_nomer_surat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.surat_nomer_surat_seq;
       public          postgres    false    224            U           0    0    surat_nomer_surat_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.surat_nomer_surat_seq OWNED BY public.surat.nomer_surat;
          public          postgres    false    226            �            1259    25513    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    nama_user character varying(255) NOT NULL,
    nik_user character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role_user character varying(12) NOT NULL,
    id_divisi bigint NOT NULL,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25520    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    227            V           0    0    user_id_seq    SEQUENCE OWNED BY     <   ALTER SEQUENCE public.user_id_seq OWNED BY public.users.id;
          public          postgres    false    228            �           2604    25521 	   divisi id    DEFAULT     f   ALTER TABLE ONLY public.divisi ALTER COLUMN id SET DEFAULT nextval('public.divisi_id_seq'::regclass);
 8   ALTER TABLE public.divisi ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    25522    kategori id    DEFAULT     j   ALTER TABLE ONLY public.kategori ALTER COLUMN id SET DEFAULT nextval('public.kategori_id_seq'::regclass);
 :   ALTER TABLE public.kategori ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    25523    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    25524    pelatihan id    DEFAULT     l   ALTER TABLE ONLY public.pelatihan ALTER COLUMN id SET DEFAULT nextval('public.pelatihan_id_seq'::regclass);
 ;   ALTER TABLE public.pelatihan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    25525    pengajuan id    DEFAULT     l   ALTER TABLE ONLY public.pengajuan ALTER COLUMN id SET DEFAULT nextval('public.pengajuan_id_seq'::regclass);
 ;   ALTER TABLE public.pengajuan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    25526    surat id    DEFAULT     d   ALTER TABLE ONLY public.surat ALTER COLUMN id SET DEFAULT nextval('public.surat_id_seq'::regclass);
 7   ALTER TABLE public.surat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    25527    surat nomer_surat    DEFAULT     v   ALTER TABLE ONLY public.surat ALTER COLUMN nomer_surat SET DEFAULT nextval('public.surat_nomer_surat_seq'::regclass);
 @   ALTER TABLE public.surat ALTER COLUMN nomer_surat DROP DEFAULT;
       public          postgres    false    226    224            �           2604    25528    users id    DEFAULT     c   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            :          0    25471    divisi 
   TABLE DATA           [   COPY public.divisi (id, nama_divisi, deskripsi_divisi, created_at, updated_at) FROM stdin;
    public          postgres    false    214   M       <          0    25479    kategori 
   TABLE DATA           a   COPY public.kategori (id, nama_kategori, deskripsi_kategori, created_at, updated_at) FROM stdin;
    public          postgres    false    216   ZP       >          0    25487 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    218   �S       @          0    25491 	   pelatihan 
   TABLE DATA           �   COPY public.pelatihan (id, judul_pelatihan, tempat_pelatihan, scope_pelatihan, bersetifikat, gambar_pelatihan, deskripsi_pelatihan, biaya_pelatihan, tanggal_dimulai, tanggal_berakhir, id_kategori, created_at, updated_at) FROM stdin;
    public          postgres    false    220   �T       B          0    25499 	   pengajuan 
   TABLE DATA           �   COPY public.pengajuan (id, tanggal_pengajuan, tanggal_verifikasi, status_pengajuan, id_pelatihan, id_user, created_at, updated_at, id_admin, id_surat, deskripsi_revisi) FROM stdin;
    public          postgres    false    222   5V       D          0    25508    surat 
   TABLE DATA           V   COPY public.surat (id, nomer_surat, id_pengajuan, updated_at, created_at) FROM stdin;
    public          postgres    false    224   W       G          0    25513    users 
   TABLE DATA           w   COPY public.users (id, nama_user, nik_user, email, password, role_user, id_divisi, created_at, updated_at) FROM stdin;
    public          postgres    false    227   XW       W           0    0    divisi_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.divisi_id_seq', 14, true);
          public          postgres    false    215            X           0    0    kategori_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.kategori_id_seq', 15, true);
          public          postgres    false    217            Y           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);
          public          postgres    false    219            Z           0    0    pelatihan_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pelatihan_id_seq', 16, true);
          public          postgres    false    221            [           0    0    pengajuan_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pengajuan_id_seq', 9, true);
          public          postgres    false    223            \           0    0    surat_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.surat_id_seq', 15, true);
          public          postgres    false    225            ]           0    0    surat_nomer_surat_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.surat_nomer_surat_seq', 15, true);
          public          postgres    false    226            ^           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 7, true);
          public          postgres    false    228            �           2606    25530    divisi divisi_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.divisi
    ADD CONSTRAINT divisi_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.divisi DROP CONSTRAINT divisi_pkey;
       public            postgres    false    214            �           2606    25532    kategori kategori_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_pkey;
       public            postgres    false    216            �           2606    25534    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    218            �           2606    25536    pelatihan pelatihan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pelatihan
    ADD CONSTRAINT pelatihan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pelatihan DROP CONSTRAINT pelatihan_pkey;
       public            postgres    false    220            �           2606    25538    pengajuan pengajuan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pengajuan
    ADD CONSTRAINT pengajuan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pengajuan DROP CONSTRAINT pengajuan_pkey;
       public            postgres    false    222            �           2606    25540    surat surat_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.surat
    ADD CONSTRAINT surat_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.surat DROP CONSTRAINT surat_pkey;
       public            postgres    false    224            �           2606    25542    users user_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            postgres    false    227            �           2606    25543    pengajuan fk_surat    FK CONSTRAINT     �   ALTER TABLE ONLY public.pengajuan
    ADD CONSTRAINT fk_surat FOREIGN KEY (id_surat) REFERENCES public.surat(id) ON DELETE RESTRICT;
 <   ALTER TABLE ONLY public.pengajuan DROP CONSTRAINT fk_surat;
       public          postgres    false    3234    222    224            �           2606    25548 '   pelatihan pelatihan_id_kategori_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelatihan
    ADD CONSTRAINT pelatihan_id_kategori_foreign FOREIGN KEY (id_kategori) REFERENCES public.kategori(id) ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.pelatihan DROP CONSTRAINT pelatihan_id_kategori_foreign;
       public          postgres    false    3226    220    216            �           2606    25553 !   pengajuan pengajuan_id_admin_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pengajuan
    ADD CONSTRAINT pengajuan_id_admin_fkey FOREIGN KEY (id_admin) REFERENCES public.users(id) ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.pengajuan DROP CONSTRAINT pengajuan_id_admin_fkey;
       public          postgres    false    3236    227    222            �           2606    25558 (   pengajuan pengajuan_id_pelatihan_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.pengajuan
    ADD CONSTRAINT pengajuan_id_pelatihan_foreign FOREIGN KEY (id_pelatihan) REFERENCES public.pelatihan(id) ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.pengajuan DROP CONSTRAINT pengajuan_id_pelatihan_foreign;
       public          postgres    false    220    222    3230            �           2606    25563 #   pengajuan pengajuan_id_user_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.pengajuan
    ADD CONSTRAINT pengajuan_id_user_foreign FOREIGN KEY (id_user) REFERENCES public.users(id) ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.pengajuan DROP CONSTRAINT pengajuan_id_user_foreign;
       public          postgres    false    3236    222    227            �           2606    25568    surat surat_id_pengajuan_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.surat
    ADD CONSTRAINT surat_id_pengajuan_fkey FOREIGN KEY (id_pengajuan) REFERENCES public.pengajuan(id) ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.surat DROP CONSTRAINT surat_id_pengajuan_fkey;
       public          postgres    false    224    222    3232            �           2606    25573    users user_id_divisi_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_id_divisi_foreign FOREIGN KEY (id_divisi) REFERENCES public.divisi(id) ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.users DROP CONSTRAINT user_id_divisi_foreign;
       public          postgres    false    214    3224    227            :   D  x��UKo�@>�_��*������RQ��*�z�e��Y�z�������bb����J��73�<6���_����M:�I�d������K�d��z�
�3�(�%Yֳ���%�@uɒa�#+�A�a���3�<��A���Q]S�l$9�,Ȋj���������҂��A�Z��>��/H�LM9bǘ>REV�Hf�j��FQ�"�V��N &�"H����m5�Ġ��>��,� �)T�8���
�cR� 	��&�B*G�A��t:��ǣ.Y2j�^IZ�oJۍL]P�����b�F ���ʀt�0�6S�F����#��~�ڲ
����FF���i�*&o�pN�l���ѤK�dC��F>@&�s+|��%��hlϔqZaY��� �Z~��>c���F>�v�����r�/`�6��'Μ�X	ܛ�>`�(3>m����%8qjh	[�I�L�9��~�/Ѥ��+�{�9yGd���Lɋʷ�\�fq�<��0�r��*.�F�ʯ���⺃�ָ����h�@b5���� �\ǭӧ$�_f,�W���$�����b��Φ�.Yr�P��:8�xZ���K��F�۬����ųY5D��yT��b�X[��G�c��(ph	n��5\�^\������I�,�6��8�5ƣ8^�iI����?����YX����?w<��C�x�y#%�֣��)aM��Ak�6��T̺dɬ���C�ȅ�X��?��E�7�.L�⭏���k�'Rhe�&W�&���<��
'�n!g�t`*���4�_H8�NKٸK�di/�= �Pw�͒��$I� ��7.      <   �  x��V�n9=K_��P���[0�'3F��\��t�D6�ࢁ�>UdoRw�d�XU|����,>�P��D	F�KSA]���w��!z0�{�!��J�P�����l�"CmK�A��%���+�ޣ>P���V�ft����t�7g|�خ���������l����a7g[�Y�PR#>6��x��(��}tA��b��r�(��f�l�30���������"�&5P���f}�펻ÜmyX|���d-	���R��v�< ��@5(������<15�3�D��t�e��2�_�X7h����T����p\��-ߏ�~6gIm�8��Ov.���}F	^�1�ƺ`�F;�g�����aζ�p9,wc�߃� +���%��b�u���ߊ@_�L�G�j�k�"��u��؎�o��Ȏ~������nJ�-oFM�C#�	f	E3�.+�&<m�`���)v�64���n�x�2�N�c�]���Xm��p���!��S�]O�k`�p�Jn�h�*t

I���J�H	��jC��?��&;���st�/g�Y/�$����$m���Q�h��O<��x�x,��m�$�Q�E^�I�+b�~�v�f��\6�Q�1O���d���=<�Jx��&'��s�����_�|;B�-�ſ\��{�\oz����b��xa��2��Ҟ;YE��U����$��3�z���D�{禳c��@���K��	L�8���}=XM�zDݩ^�
�q�B��-#�K��ф�DM����*X��h��.7m0!��T�a�'�b�FV�h1H
Hb)ko^�i�D�ޤG�<L�؁*+
�\{�2�P`��%�*zEq��ƞ�*����_������T�	�N��o������m�)��2饣Ͻ���HG/�H�����T�{�\.� j�      >   �   x�]�K� ��u=L� ��K�ɨS�i@��k�Ŭ�&�M
PA�����8{v'��A"�N�M��kб�)&钔(
\�)y����V���/׫���B�Ď4 �5��؞�X�P��F��� U�V6�c��ev�
�&�0Z���V:;~�+e�h2/w\��2�xl���qO����      @   f  x����r�0���)�����qӎV�.�E7WH!
��`Ƿo�K����!�|9N��&�,m�Y,Km2x�,L�AX%Z�D��)�Q��4����`A�L檬U��z�ZӴۮU@�ᔋe��9��4&��K&�4�12��5�Cx$4ik2��a��������q�I�3��8t��9��O��>��sə�E��1N���j���.�i�����E������[��5�Es2�N�_�2�}��B2�ֺP0��N�nr��V:�k����D�G�M�up�c��g�9?�B�R�?Z t$�/i��t���]9��GXXL��	��<��*]e���|�$�Ҷ�ն���i����w��V      B   �   x�u��
�0���S��&iڙ�7�'إ���6���[�
=��?_?"@�xdvs���4������'R�Pu=�
*fh��窕��F=�׮����*�!�3�)f�bmc���o&�*j䕪�_ЅDR��*(�Ǥ�SNUهF1*@@��c,��O�?���/s��d%�=�g�֜o�n�sO��Z�      D   F   x�3�4�4�4202�50�52Q00�#lb\�@�fD�6�AbU�r�%B�T�������� �W� t@!U      G   �  x����n�0�y
/��c�U�d�I3-�ޢ�ZJ R���8mU������_���?v�9���;�z��������g��*P��{�����IY8�|E�L7�Iۺ?�?�:_�w+v{]K[�Pl�~�	�{�B�b��>q��b���4��3F4S�JK�a��p	<�U���@;S0�M�\�x���!q{��v�6��t���E����N�`����0����*�8�`�-���X%fB���6N��&�ĳ��ܴ<�^�_I���̪����$~8���j^{j}�a�5���&0u5c�K�K�&�kO�83������c���v:���Ȩ�������(��=���Y��2��P�5Apx󬩞�m���i�Jj��<j�(�͏;��c�,�?�eY!%�`     