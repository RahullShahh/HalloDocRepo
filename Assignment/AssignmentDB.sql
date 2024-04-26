PGDMP  .    3                |            AssignmentDB    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49169    AssignmentDB    DATABASE     �   CREATE DATABASE "AssignmentDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "AssignmentDB";
                postgres    false            �            1259    49184    Book    TABLE     '  CREATE TABLE public."Book" (
    "Id" integer NOT NULL,
    "BookName" character varying NOT NULL,
    "Author" character varying,
    "BorrowerId" integer,
    "BorrowerName" character varying,
    "City" character varying,
    "DateOfIssue" timestamp without time zone,
    "Genre" integer
);
    DROP TABLE public."Book";
       public         heap    postgres    false            �            1259    49197    Book_Id_seq    SEQUENCE     �   ALTER TABLE public."Book" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Book_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    49171    Borrower    TABLE     �   CREATE TABLE public."Borrower" (
    "Id" integer NOT NULL,
    "City" character varying,
    "Name" character varying NOT NULL
);
    DROP TABLE public."Borrower";
       public         heap    postgres    false            �            1259    49170    Borrower_Id_seq    SEQUENCE     �   ALTER TABLE public."Borrower" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Borrower_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �          0    49184    Book 
   TABLE DATA           z   COPY public."Book" ("Id", "BookName", "Author", "BorrowerId", "BorrowerName", "City", "DateOfIssue", "Genre") FROM stdin;
    public          postgres    false    217   �       �          0    49171    Borrower 
   TABLE DATA           :   COPY public."Borrower" ("Id", "City", "Name") FROM stdin;
    public          postgres    false    216   -       �           0    0    Book_Id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Book_Id_seq"', 6, true);
          public          postgres    false    218            �           0    0    Borrower_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Borrower_Id_seq"', 7, true);
          public          postgres    false    215            Y           2606    49190    Book Book_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Book"
    ADD CONSTRAINT "Book_pkey" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Book" DROP CONSTRAINT "Book_pkey";
       public            postgres    false    217            W           2606    49177    Borrower Borrower_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Borrower"
    ADD CONSTRAINT "Borrower_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Borrower" DROP CONSTRAINT "Borrower_pkey";
       public            postgres    false    216            �   h   x�3��K-Wp����J�(��4����iŉ)�FF&�&�F�
V`�i�eƙ���^�X�Qə������i�Y��Y������YR	�nh��n����� ��      �   ^   x�3�L��MMILJL�,J�(�)�H��2�,�LNUH�,���*���9ӊ�SS��L�B@�A�`}����)i)Ŝ@�ˌ�a�9���=... �#+l     