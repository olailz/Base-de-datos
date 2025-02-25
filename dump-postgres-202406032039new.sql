PGDMP  7    '                |            postgres    16.2    16.2 H               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Guatemala.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4889                        2615    25334    proyect    SCHEMA        CREATE SCHEMA proyect;
    DROP SCHEMA proyect;
                postgres    false            �            1259    25374 	   appoiment    TABLE       CREATE TABLE proyect.appoiment (
    id_appointment integer NOT NULL,
    id_patient integer,
    id_doctor integer,
    id_room integer,
    date_appointment date,
    appointment_time time without time zone,
    status character varying(100),
    observacion character varying(100)
);
    DROP TABLE proyect.appoiment;
       proyect         heap    postgres    false    7            �            1259    25373    appoiment_id_appointment_seq    SEQUENCE     �   CREATE SEQUENCE proyect.appoiment_id_appointment_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE proyect.appoiment_id_appointment_seq;
       proyect          postgres    false    227    7                       0    0    appoiment_id_appointment_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE proyect.appoiment_id_appointment_seq OWNED BY proyect.appoiment.id_appointment;
          proyect          postgres    false    226            �            1259    25536    doctor    TABLE     �   CREATE TABLE proyect.doctor (
    id_doctor integer NOT NULL,
    id_speciality integer,
    name character varying(60),
    lastname character varying(50),
    phone integer,
    adress character varying(50),
    email character varying(50)
);
    DROP TABLE proyect.doctor;
       proyect         heap    postgres    false    7            �            1259    25535    doctor_id_doctor_seq    SEQUENCE     �   CREATE SEQUENCE proyect.doctor_id_doctor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE proyect.doctor_id_doctor_seq;
       proyect          postgres    false    7    241                       0    0    doctor_id_doctor_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE proyect.doctor_id_doctor_seq OWNED BY proyect.doctor.id_doctor;
          proyect          postgres    false    240            �            1259    25413    entrance    TABLE     �   CREATE TABLE proyect.entrance (
    id_entrance integer NOT NULL,
    id_patient integer,
    reason character varying(50),
    id_room integer,
    time_entrance time without time zone,
    date_entrance date,
    id_doctor integer
);
    DROP TABLE proyect.entrance;
       proyect         heap    postgres    false    7            �            1259    25412    entrance_id_entrance_seq    SEQUENCE     �   CREATE SEQUENCE proyect.entrance_id_entrance_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE proyect.entrance_id_entrance_seq;
       proyect          postgres    false    229    7                       0    0    entrance_id_entrance_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE proyect.entrance_id_entrance_seq OWNED BY proyect.entrance.id_entrance;
          proyect          postgres    false    228            �            1259    25548    medical_history    TABLE     �   CREATE TABLE proyect.medical_history (
    id_history integer NOT NULL,
    id_patient integer,
    id_doctor integer,
    fecha_consulta date,
    diagnostico character varying(50),
    tratamiento character varying(50)
);
 $   DROP TABLE proyect.medical_history;
       proyect         heap    postgres    false    7            �            1259    25547    medical_history_id_history_seq    SEQUENCE     �   CREATE SEQUENCE proyect.medical_history_id_history_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE proyect.medical_history_id_history_seq;
       proyect          postgres    false    243    7                       0    0    medical_history_id_history_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE proyect.medical_history_id_history_seq OWNED BY proyect.medical_history.id_history;
          proyect          postgres    false    242            �            1259    25529    medical_speciality    TABLE     w   CREATE TABLE proyect.medical_speciality (
    id_speciality integer NOT NULL,
    speciality character varying(100)
);
 '   DROP TABLE proyect.medical_speciality;
       proyect         heap    postgres    false    7            �            1259    25528 $   medical_speciality_id_speciality_seq    SEQUENCE     �   CREATE SEQUENCE proyect.medical_speciality_id_speciality_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE proyect.medical_speciality_id_speciality_seq;
       proyect          postgres    false    239    7                       0    0 $   medical_speciality_id_speciality_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE proyect.medical_speciality_id_speciality_seq OWNED BY proyect.medical_speciality.id_speciality;
          proyect          postgres    false    238            �            1259    25336    patient    TABLE     �   CREATE TABLE proyect.patient (
    id_patient bigint NOT NULL,
    name character varying(60),
    lastname character varying(50),
    phone integer,
    birthdate date,
    adress character varying(100),
    email character varying(100)
);
    DROP TABLE proyect.patient;
       proyect         heap    postgres    false    7            �            1259    25335    patient_id_patient_seq    SEQUENCE     �   CREATE SEQUENCE proyect.patient_id_patient_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE proyect.patient_id_patient_seq;
       proyect          postgres    false    223    7                        0    0    patient_id_patient_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE proyect.patient_id_patient_seq OWNED BY proyect.patient.id_patient;
          proyect          postgres    false    222            �            1259    25442    reports    TABLE     �   CREATE TABLE proyect.reports (
    id_report integer NOT NULL,
    id_patient integer,
    generatio_date date,
    reporte_type character varying(100),
    conten text
);
    DROP TABLE proyect.reports;
       proyect         heap    postgres    false    7            �            1259    25441    reports_id_report_seq    SEQUENCE     �   CREATE SEQUENCE proyect.reports_id_report_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE proyect.reports_id_report_seq;
       proyect          postgres    false    7    233            !           0    0    reports_id_report_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE proyect.reports_id_report_seq OWNED BY proyect.reports.id_report;
          proyect          postgres    false    232            �            1259    25435    roles    TABLE     �   CREATE TABLE proyect.roles (
    id_rol integer NOT NULL,
    name character varying(50),
    desrcription character varying(100),
    permisos character varying(100)
);
    DROP TABLE proyect.roles;
       proyect         heap    postgres    false    7            �            1259    25434    roles_id_rol_seq    SEQUENCE     �   CREATE SEQUENCE proyect.roles_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE proyect.roles_id_rol_seq;
       proyect          postgres    false    231    7            "           0    0    roles_id_rol_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE proyect.roles_id_rol_seq OWNED BY proyect.roles.id_rol;
          proyect          postgres    false    230            �            1259    25350    room    TABLE     w   CREATE TABLE proyect.room (
    id_room integer NOT NULL,
    estado character varying(100),
    id_patient integer
);
    DROP TABLE proyect.room;
       proyect         heap    postgres    false    7            �            1259    25349    room_id_room_seq    SEQUENCE     �   CREATE SEQUENCE proyect.room_id_room_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE proyect.room_id_room_seq;
       proyect          postgres    false    225    7            #           0    0    room_id_room_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE proyect.room_id_room_seq OWNED BY proyect.room.id_room;
          proyect          postgres    false    224            W           2604    25377    appoiment id_appointment    DEFAULT     �   ALTER TABLE ONLY proyect.appoiment ALTER COLUMN id_appointment SET DEFAULT nextval('proyect.appoiment_id_appointment_seq'::regclass);
 H   ALTER TABLE proyect.appoiment ALTER COLUMN id_appointment DROP DEFAULT;
       proyect          postgres    false    226    227    227            \           2604    25539    doctor id_doctor    DEFAULT     v   ALTER TABLE ONLY proyect.doctor ALTER COLUMN id_doctor SET DEFAULT nextval('proyect.doctor_id_doctor_seq'::regclass);
 @   ALTER TABLE proyect.doctor ALTER COLUMN id_doctor DROP DEFAULT;
       proyect          postgres    false    240    241    241            X           2604    25416    entrance id_entrance    DEFAULT     ~   ALTER TABLE ONLY proyect.entrance ALTER COLUMN id_entrance SET DEFAULT nextval('proyect.entrance_id_entrance_seq'::regclass);
 D   ALTER TABLE proyect.entrance ALTER COLUMN id_entrance DROP DEFAULT;
       proyect          postgres    false    229    228    229            ]           2604    25551    medical_history id_history    DEFAULT     �   ALTER TABLE ONLY proyect.medical_history ALTER COLUMN id_history SET DEFAULT nextval('proyect.medical_history_id_history_seq'::regclass);
 J   ALTER TABLE proyect.medical_history ALTER COLUMN id_history DROP DEFAULT;
       proyect          postgres    false    242    243    243            [           2604    25532     medical_speciality id_speciality    DEFAULT     �   ALTER TABLE ONLY proyect.medical_speciality ALTER COLUMN id_speciality SET DEFAULT nextval('proyect.medical_speciality_id_speciality_seq'::regclass);
 P   ALTER TABLE proyect.medical_speciality ALTER COLUMN id_speciality DROP DEFAULT;
       proyect          postgres    false    239    238    239            U           2604    25339    patient id_patient    DEFAULT     z   ALTER TABLE ONLY proyect.patient ALTER COLUMN id_patient SET DEFAULT nextval('proyect.patient_id_patient_seq'::regclass);
 B   ALTER TABLE proyect.patient ALTER COLUMN id_patient DROP DEFAULT;
       proyect          postgres    false    222    223    223            Z           2604    25445    reports id_report    DEFAULT     x   ALTER TABLE ONLY proyect.reports ALTER COLUMN id_report SET DEFAULT nextval('proyect.reports_id_report_seq'::regclass);
 A   ALTER TABLE proyect.reports ALTER COLUMN id_report DROP DEFAULT;
       proyect          postgres    false    232    233    233            Y           2604    25438    roles id_rol    DEFAULT     n   ALTER TABLE ONLY proyect.roles ALTER COLUMN id_rol SET DEFAULT nextval('proyect.roles_id_rol_seq'::regclass);
 <   ALTER TABLE proyect.roles ALTER COLUMN id_rol DROP DEFAULT;
       proyect          postgres    false    231    230    231            V           2604    25353    room id_room    DEFAULT     n   ALTER TABLE ONLY proyect.room ALTER COLUMN id_room SET DEFAULT nextval('proyect.room_id_room_seq'::regclass);
 <   ALTER TABLE proyect.room ALTER COLUMN id_room DROP DEFAULT;
       proyect          postgres    false    225    224    225                      0    25374 	   appoiment 
   TABLE DATA           �   COPY proyect.appoiment (id_appointment, id_patient, id_doctor, id_room, date_appointment, appointment_time, status, observacion) FROM stdin;
    proyect          postgres    false    227   �S                 0    25536    doctor 
   TABLE DATA           a   COPY proyect.doctor (id_doctor, id_speciality, name, lastname, phone, adress, email) FROM stdin;
    proyect          postgres    false    241   �T       	          0    25413    entrance 
   TABLE DATA           v   COPY proyect.entrance (id_entrance, id_patient, reason, id_room, time_entrance, date_entrance, id_doctor) FROM stdin;
    proyect          postgres    false    229   �U                 0    25548    medical_history 
   TABLE DATA           w   COPY proyect.medical_history (id_history, id_patient, id_doctor, fecha_consulta, diagnostico, tratamiento) FROM stdin;
    proyect          postgres    false    243   �U                 0    25529    medical_speciality 
   TABLE DATA           H   COPY proyect.medical_speciality (id_speciality, speciality) FROM stdin;
    proyect          postgres    false    239   VV                 0    25336    patient 
   TABLE DATA           _   COPY proyect.patient (id_patient, name, lastname, phone, birthdate, adress, email) FROM stdin;
    proyect          postgres    false    223   �V                 0    25442    reports 
   TABLE DATA           _   COPY proyect.reports (id_report, id_patient, generatio_date, reporte_type, conten) FROM stdin;
    proyect          postgres    false    233   �W                 0    25435    roles 
   TABLE DATA           F   COPY proyect.roles (id_rol, name, desrcription, permisos) FROM stdin;
    proyect          postgres    false    231   �X                 0    25350    room 
   TABLE DATA           <   COPY proyect.room (id_room, estado, id_patient) FROM stdin;
    proyect          postgres    false    225   Y       $           0    0    appoiment_id_appointment_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('proyect.appoiment_id_appointment_seq', 24, true);
          proyect          postgres    false    226            %           0    0    doctor_id_doctor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('proyect.doctor_id_doctor_seq', 14, true);
          proyect          postgres    false    240            &           0    0    entrance_id_entrance_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('proyect.entrance_id_entrance_seq', 1, false);
          proyect          postgres    false    228            '           0    0    medical_history_id_history_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('proyect.medical_history_id_history_seq', 7, true);
          proyect          postgres    false    242            (           0    0 $   medical_speciality_id_speciality_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('proyect.medical_speciality_id_speciality_seq', 6, true);
          proyect          postgres    false    238            )           0    0    patient_id_patient_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('proyect.patient_id_patient_seq', 17, true);
          proyect          postgres    false    222            *           0    0    reports_id_report_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('proyect.reports_id_report_seq', 7, true);
          proyect          postgres    false    232            +           0    0    roles_id_rol_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('proyect.roles_id_rol_seq', 1, false);
          proyect          postgres    false    230            ,           0    0    room_id_room_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('proyect.room_id_room_seq', 3, true);
          proyect          postgres    false    224            c           2606    25379    appoiment appoiment_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY proyect.appoiment
    ADD CONSTRAINT appoiment_pkey PRIMARY KEY (id_appointment);
 C   ALTER TABLE ONLY proyect.appoiment DROP CONSTRAINT appoiment_pkey;
       proyect            postgres    false    227            m           2606    25541    doctor doctor_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY proyect.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (id_doctor);
 =   ALTER TABLE ONLY proyect.doctor DROP CONSTRAINT doctor_pkey;
       proyect            postgres    false    241            e           2606    25418    entrance entrance_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY proyect.entrance
    ADD CONSTRAINT entrance_pkey PRIMARY KEY (id_entrance);
 A   ALTER TABLE ONLY proyect.entrance DROP CONSTRAINT entrance_pkey;
       proyect            postgres    false    229            o           2606    25553 $   medical_history medical_history_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY proyect.medical_history
    ADD CONSTRAINT medical_history_pkey PRIMARY KEY (id_history);
 O   ALTER TABLE ONLY proyect.medical_history DROP CONSTRAINT medical_history_pkey;
       proyect            postgres    false    243            k           2606    25534 *   medical_speciality medical_speciality_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY proyect.medical_speciality
    ADD CONSTRAINT medical_speciality_pkey PRIMARY KEY (id_speciality);
 U   ALTER TABLE ONLY proyect.medical_speciality DROP CONSTRAINT medical_speciality_pkey;
       proyect            postgres    false    239            _           2606    25341    patient patient_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY proyect.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id_patient);
 ?   ALTER TABLE ONLY proyect.patient DROP CONSTRAINT patient_pkey;
       proyect            postgres    false    223            i           2606    25449    reports reports_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY proyect.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id_report);
 ?   ALTER TABLE ONLY proyect.reports DROP CONSTRAINT reports_pkey;
       proyect            postgres    false    233            g           2606    25440    roles roles_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY proyect.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id_rol);
 ;   ALTER TABLE ONLY proyect.roles DROP CONSTRAINT roles_pkey;
       proyect            postgres    false    231            a           2606    25355    room room_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY proyect.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id_room);
 9   ALTER TABLE ONLY proyect.room DROP CONSTRAINT room_pkey;
       proyect            postgres    false    225            q           2606    25559    medical_history fk_doctor    FK CONSTRAINT     �   ALTER TABLE ONLY proyect.medical_history
    ADD CONSTRAINT fk_doctor FOREIGN KEY (id_doctor) REFERENCES proyect.doctor(id_doctor);
 D   ALTER TABLE ONLY proyect.medical_history DROP CONSTRAINT fk_doctor;
       proyect          postgres    false    243    241    4717            p           2606    25542    doctor fk_medical_speciality    FK CONSTRAINT     �   ALTER TABLE ONLY proyect.doctor
    ADD CONSTRAINT fk_medical_speciality FOREIGN KEY (id_speciality) REFERENCES proyect.medical_speciality(id_speciality);
 G   ALTER TABLE ONLY proyect.doctor DROP CONSTRAINT fk_medical_speciality;
       proyect          postgres    false    241    239    4715            r           2606    25554    medical_history fk_patient    FK CONSTRAINT     �   ALTER TABLE ONLY proyect.medical_history
    ADD CONSTRAINT fk_patient FOREIGN KEY (id_patient) REFERENCES proyect.patient(id_patient);
 E   ALTER TABLE ONLY proyect.medical_history DROP CONSTRAINT fk_patient;
       proyect          postgres    false    243    223    4703               �   x���M
�0�����%�?��
]�Z��ܤq(�����z��t�E����7� �i��|GL+�\1I��챂�nьR�6��c�UK�醺G�CAl�=�0���Za���z4
������
�gK�"9e�휥p]T�B[��k;���[���m1w�:3�]�">�i�X�!��ZP         �   x�m�MN�0���S��O��@]�)R+6�xTٱq����!Îʂ�Փf��4o)�!Z?ң�q�>N�Eݶ�4uU*��y0�ɰ�峙!�fC�*b
����O�`����D�/g�/q��)®0�hP���T�S�sH�dn��*+:`d/5[y@|�X�E6{��G�T��R.��Z�=�U��]��u��R��}o� �y��
U�v�����4b�.?���'Ls~�+�/�� }R      	      x������ � �         w   x�U�1�0@��>E.P��ҝ��k�v��!u��)�����O�C�6�]OM�`x�
W�X¥�ˬ�J����Ve��7vK��6����t-���&�q�{����k+�         U   x�3�tN,J����O?�6�˘�%�(7��7��O+I�Ʌ��8RS2K�@������Ĝ̔���<�����b.C�1z\\\ Pr(           x���;N�0���)r��?b�[��H����;r��m()�8B.�DPЎ�����[L����>�j.�j���ZV1S��=�mr�s�2����ឞp�<��8�ԧ�1\��Y��()2˨��pu��z,Sfe3�V݆e`p���D	A6Z-�J�����L��ɗ�ї93���7	C��k���~�˩�`8a�(k�/�_��f5ȟh�|�8���� F*���L[��Y�Z��}��0_Ϊ1Z��خ3r��w�E��L��         �   x�]�AN�0E��)|�i5�N%���nĎMHLe)�;�����b��.�����ɜ�;��p�7���"�"Bťf� h��!J��<� H���V����HG댻ş���=Rs��� �U����lʁ"Ŗ�B�ϝ�;�/�%{���͏v2Ӎ0�-�Y
V1�
���0m��~�|�k�
Y��߰R�$ZJ����m�*m2_TZ�0��չk��ݦ����s7�����E���}����̂            x������ � �         0   x�3��O.-HL��4�2�t�,.���L�I���2��%r�q��qqq 5	y     