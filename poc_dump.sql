PGDMP     
    .                 {            poc %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1) %   12.11 (Ubuntu 12.11-0ubuntu0.20.04.1)     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    74125    poc    DATABASE     u   CREATE DATABASE poc WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';
    DROP DATABASE poc;
                postgres    false            ?            1259    74154    produtos    TABLE     ?   CREATE TABLE public.produtos (
    id integer NOT NULL,
    nome character(30) NOT NULL,
    descricao character(100) NOT NULL,
    quantidade integer DEFAULT 0 NOT NULL
);
    DROP TABLE public.produtos;
       public         heap    postgres    false            ?            1259    74152    produtos_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.produtos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.produtos_id_seq;
       public          postgres    false    203            ?           0    0    produtos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.produtos_id_seq OWNED BY public.produtos.id;
          public          postgres    false    202                       2604    74157    produtos id    DEFAULT     j   ALTER TABLE ONLY public.produtos ALTER COLUMN id SET DEFAULT nextval('public.produtos_id_seq'::regclass);
 :   ALTER TABLE public.produtos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?          0    74154    produtos 
   TABLE DATA           C   COPY public.produtos (id, nome, descricao, quantidade) FROM stdin;
    public          postgres    false    203   !       ?           0    0    produtos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.produtos_id_seq', 21, true);
          public          postgres    false    202                       2606    74162    produtos produtos_nome_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_nome_key UNIQUE (nome);
 D   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_nome_key;
       public            postgres    false    203                       2606    74160    produtos produtos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.produtos DROP CONSTRAINT produtos_pkey;
       public            postgres    false    203            ?   9   x?34?L?IT?8KR?KR?????4?22 9?K??C.#C?C??!?\1z\\\ ??;b     