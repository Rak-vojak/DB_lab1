PGDMP     2    &             	    z           lab1    14.5    14.5 .    %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    16394    lab1    DATABASE     a   CREATE DATABASE lab1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE lab1;
                postgres    false            �            1259    16406    Customer    TABLE     y   CREATE TABLE public."Customer" (
    "C_ID" integer NOT NULL,
    "C_Name" name NOT NULL,
    "D_Place" text NOT NULL
);
    DROP TABLE public."Customer";
       public         heap    postgres    false            �            1259    16405    Customer_C_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Customer_C_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Customer_C_ID_seq";
       public          postgres    false    210            )           0    0    Customer_C_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Customer_C_ID_seq" OWNED BY public."Customer"."C_ID";
          public          postgres    false    209            �            1259    16554    Customers_DCompanies    TABLE     q   CREATE TABLE public."Customers_DCompanies" (
    "Customer_ID" integer NOT NULL,
    "DC_ID" integer NOT NULL
);
 *   DROP TABLE public."Customers_DCompanies";
       public         heap    postgres    false            �            1259    16511    Customers_Products    TABLE     �   CREATE TABLE public."Customers_Products" (
    "Customer_id" integer NOT NULL,
    "Product_id" integer NOT NULL,
    "Product_count" integer NOT NULL
);
 (   DROP TABLE public."Customers_Products";
       public         heap    postgres    false            �            1259    16439    Delivery    TABLE     d   CREATE TABLE public."Delivery" (
    "D_ID" integer NOT NULL,
    "Customer_ID" integer NOT NULL
);
    DROP TABLE public."Delivery";
       public         heap    postgres    false            �            1259    16483    Delivery Company    TABLE     f   CREATE TABLE public."Delivery Company" (
    "DC_ID" integer NOT NULL,
    "DC_Name" text NOT NULL
);
 &   DROP TABLE public."Delivery Company";
       public         heap    postgres    false            �            1259    16482    Delivery Company_DC_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Delivery Company_DC_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Delivery Company_DC_ID_seq";
       public          postgres    false    216            *           0    0    Delivery Company_DC_ID_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."Delivery Company_DC_ID_seq" OWNED BY public."Delivery Company"."DC_ID";
          public          postgres    false    215            �            1259    16438    Delivery_D_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Delivery_D_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Delivery_D_ID_seq";
       public          postgres    false    214            +           0    0    Delivery_D_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Delivery_D_ID_seq" OWNED BY public."Delivery"."D_ID";
          public          postgres    false    213            �            1259    16413    Product    TABLE     {   CREATE TABLE public."Product" (
    "P_ID" integer NOT NULL,
    "P_Name" text NOT NULL,
    "P_Price" numeric NOT NULL
);
    DROP TABLE public."Product";
       public         heap    postgres    false            �            1259    16412    Product_P_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."Product_P_ID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Product_P_ID_seq";
       public          postgres    false    212            ,           0    0    Product_P_ID_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Product_P_ID_seq" OWNED BY public."Product"."P_ID";
          public          postgres    false    211            s           2604    16409    Customer C_ID    DEFAULT     t   ALTER TABLE ONLY public."Customer" ALTER COLUMN "C_ID" SET DEFAULT nextval('public."Customer_C_ID_seq"'::regclass);
 @   ALTER TABLE public."Customer" ALTER COLUMN "C_ID" DROP DEFAULT;
       public          postgres    false    210    209    210            u           2604    16442    Delivery D_ID    DEFAULT     t   ALTER TABLE ONLY public."Delivery" ALTER COLUMN "D_ID" SET DEFAULT nextval('public."Delivery_D_ID_seq"'::regclass);
 @   ALTER TABLE public."Delivery" ALTER COLUMN "D_ID" DROP DEFAULT;
       public          postgres    false    214    213    214            v           2604    16486    Delivery Company DC_ID    DEFAULT     �   ALTER TABLE ONLY public."Delivery Company" ALTER COLUMN "DC_ID" SET DEFAULT nextval('public."Delivery Company_DC_ID_seq"'::regclass);
 I   ALTER TABLE public."Delivery Company" ALTER COLUMN "DC_ID" DROP DEFAULT;
       public          postgres    false    215    216    216            t           2604    16416    Product P_ID    DEFAULT     r   ALTER TABLE ONLY public."Product" ALTER COLUMN "P_ID" SET DEFAULT nextval('public."Product_P_ID_seq"'::regclass);
 ?   ALTER TABLE public."Product" ALTER COLUMN "P_ID" DROP DEFAULT;
       public          postgres    false    211    212    212                      0    16406    Customer 
   TABLE DATA           A   COPY public."Customer" ("C_ID", "C_Name", "D_Place") FROM stdin;
    public          postgres    false    210   �5       "          0    16554    Customers_DCompanies 
   TABLE DATA           H   COPY public."Customers_DCompanies" ("Customer_ID", "DC_ID") FROM stdin;
    public          postgres    false    218   S6       !          0    16511    Customers_Products 
   TABLE DATA           \   COPY public."Customers_Products" ("Customer_id", "Product_id", "Product_count") FROM stdin;
    public          postgres    false    217   {6                 0    16439    Delivery 
   TABLE DATA           ;   COPY public."Delivery" ("D_ID", "Customer_ID") FROM stdin;
    public          postgres    false    214   �6                  0    16483    Delivery Company 
   TABLE DATA           @   COPY public."Delivery Company" ("DC_ID", "DC_Name") FROM stdin;
    public          postgres    false    216   �6                 0    16413    Product 
   TABLE DATA           @   COPY public."Product" ("P_ID", "P_Name", "P_Price") FROM stdin;
    public          postgres    false    212   7       -           0    0    Customer_C_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Customer_C_ID_seq"', 1, false);
          public          postgres    false    209            .           0    0    Delivery Company_DC_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Delivery Company_DC_ID_seq"', 1, false);
          public          postgres    false    215            /           0    0    Delivery_D_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Delivery_D_ID_seq"', 1, false);
          public          postgres    false    213            0           0    0    Product_P_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Product_P_ID_seq"', 1, false);
          public          postgres    false    211            x           2606    16411    Customer Customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("C_ID");
 D   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "Customer_pkey";
       public            postgres    false    210            �           2606    16574 9   Customers_DCompanies Customers_DCompanies_Customer_ID_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Customers_DCompanies"
    ADD CONSTRAINT "Customers_DCompanies_Customer_ID_key" UNIQUE ("Customer_ID");
 g   ALTER TABLE ONLY public."Customers_DCompanies" DROP CONSTRAINT "Customers_DCompanies_Customer_ID_key";
       public            postgres    false    218            �           2606    16558 .   Customers_DCompanies Customers_DCompanies_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Customers_DCompanies"
    ADD CONSTRAINT "Customers_DCompanies_pkey" PRIMARY KEY ("Customer_ID", "DC_ID");
 \   ALTER TABLE ONLY public."Customers_DCompanies" DROP CONSTRAINT "Customers_DCompanies_pkey";
       public            postgres    false    218    218            �           2606    16576 @   Customers_Products Customers_Products_Customer_id_Product_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public."Customers_Products"
    ADD CONSTRAINT "Customers_Products_Customer_id_Product_id_key" UNIQUE ("Customer_id", "Product_id");
 n   ALTER TABLE ONLY public."Customers_Products" DROP CONSTRAINT "Customers_Products_Customer_id_Product_id_key";
       public            postgres    false    217    217            �           2606    16572 *   Customers_Products Customers_Products_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Customers_Products"
    ADD CONSTRAINT "Customers_Products_pkey" PRIMARY KEY ("Customer_id", "Product_id");
 X   ALTER TABLE ONLY public."Customers_Products" DROP CONSTRAINT "Customers_Products_pkey";
       public            postgres    false    217    217            �           2606    16490 &   Delivery Company Delivery Company_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."Delivery Company"
    ADD CONSTRAINT "Delivery Company_pkey" PRIMARY KEY ("DC_ID");
 T   ALTER TABLE ONLY public."Delivery Company" DROP CONSTRAINT "Delivery Company_pkey";
       public            postgres    false    216            |           2606    16570    Delivery Delivery_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."Delivery"
    ADD CONSTRAINT "Delivery_pkey" PRIMARY KEY ("D_ID", "Customer_ID");
 D   ALTER TABLE ONLY public."Delivery" DROP CONSTRAINT "Delivery_pkey";
       public            postgres    false    214    214            ~           2606    16551    Delivery ID_unique 
   CONSTRAINT     S   ALTER TABLE ONLY public."Delivery"
    ADD CONSTRAINT "ID_unique" UNIQUE ("D_ID");
 @   ALTER TABLE ONLY public."Delivery" DROP CONSTRAINT "ID_unique";
       public            postgres    false    214            z           2606    16420    Product Product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Product"
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY ("P_ID");
 B   ALTER TABLE ONLY public."Product" DROP CONSTRAINT "Product_pkey";
       public            postgres    false    212            �           2606    16538    Delivery Customer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Delivery"
    ADD CONSTRAINT "Customer_fkey" FOREIGN KEY ("Customer_ID") REFERENCES public."Customer"("C_ID") NOT VALID;
 D   ALTER TABLE ONLY public."Delivery" DROP CONSTRAINT "Customer_fkey";
       public          postgres    false    214    210    3192            �           2606    16559 "   Customers_DCompanies Customer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customers_DCompanies"
    ADD CONSTRAINT "Customer_fkey" FOREIGN KEY ("Customer_ID") REFERENCES public."Customer"("C_ID") NOT VALID;
 P   ALTER TABLE ONLY public."Customers_DCompanies" DROP CONSTRAINT "Customer_fkey";
       public          postgres    false    3192    218    210            �           2606    16577 !   Customers_Products Customers_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customers_Products"
    ADD CONSTRAINT "Customers_fkey" FOREIGN KEY ("Customer_id") REFERENCES public."Customer"("C_ID") NOT VALID;
 O   ALTER TABLE ONLY public."Customers_Products" DROP CONSTRAINT "Customers_fkey";
       public          postgres    false    217    3192    210            �           2606    16564 "   Customers_DCompanies DCompany_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customers_DCompanies"
    ADD CONSTRAINT "DCompany_fkey" FOREIGN KEY ("DC_ID") REFERENCES public."Delivery Company"("DC_ID") NOT VALID;
 P   ALTER TABLE ONLY public."Customers_DCompanies" DROP CONSTRAINT "DCompany_fkey";
       public          postgres    false    3200    218    216            �           2606    16582     Customers_Products Products_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Customers_Products"
    ADD CONSTRAINT "Products_fkey" FOREIGN KEY ("Product_id") REFERENCES public."Product"("P_ID") NOT VALID;
 N   ALTER TABLE ONLY public."Customers_Products" DROP CONSTRAINT "Products_fkey";
       public          postgres    false    3194    217    212               G   x�3��K�M5����,� s�8�2��2K�����"Ɯ>e@i#0τ�9#�(;�8���,b
����� ���      "      x�3�4� b#cN#�=... cD      !   *   x�3�447�4�2�453����F@�Ș�Дӈ+F��� cz            x�3�4�2�42�2������� xF          "   x�3���/KT�/�(I�2��.*��c���� �K	         ]   x�-�!� ��9�'`�U��bAg���2��7H}�������4�r���c�[����U����NM�73�:�<W���]+�>�je     