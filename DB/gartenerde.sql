--
-- PostgreSQL database dump
--

-- Dumped from database version 10.11
-- Dumped by pg_dump version 10.11

-- Started on 2021-07-13 06:54:41

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

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 220587)
-- Name: aftercultures_mappping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aftercultures_mappping (
    id bigint NOT NULL,
    aftercultures_id bigint NOT NULL
);


ALTER TABLE public.aftercultures_mappping OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 220590)
-- Name: animals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animals (
    id bigint NOT NULL
);


ALTER TABLE public.animals OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 220593)
-- Name: blooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blooms (
    id bigint NOT NULL
);


ALTER TABLE public.blooms OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 220596)
-- Name: cultivates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cultivates (
    id bigint NOT NULL,
    germinationperioddays integer,
    germinationtemperature double precision
);


ALTER TABLE public.cultivates OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 220599)
-- Name: days; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.days (
    id bigint NOT NULL,
    dayinyear integer,
    weekperyear integer
);


ALTER TABLE public.days OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 220602)
-- Name: days_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.days_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.days_id_seq OWNER TO postgres;

--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 201
-- Name: days_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.days_id_seq OWNED BY public.days.id;


--
-- TOC entry 202 (class 1259 OID 220604)
-- Name: effects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.effects (
    id bigint NOT NULL
);


ALTER TABLE public.effects OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 220607)
-- Name: harvests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.harvests (
    id bigint NOT NULL
);


ALTER TABLE public.harvests OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 220610)
-- Name: implants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.implants (
    id bigint NOT NULL
);


ALTER TABLE public.implants OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 220613)
-- Name: interactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interactions (
    id bigint NOT NULL,
    subject bigint NOT NULL,
    predicate bigint NOT NULL,
    object bigint NOT NULL,
    impactsubject bigint,
    indicator integer
);


ALTER TABLE public.interactions OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 220616)
-- Name: interactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.interactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.interactions_id_seq OWNER TO postgres;

--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 206
-- Name: interactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.interactions_id_seq OWNED BY public.interactions.id;


--
-- TOC entry 207 (class 1259 OID 220618)
-- Name: lifetimes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lifetimes (
    id bigint NOT NULL
);


ALTER TABLE public.lifetimes OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 220621)
-- Name: medias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medias (
    id bigint NOT NULL,
    imagepath character varying(255),
    mimetype character varying(255),
    subject bigint
);


ALTER TABLE public.medias OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 220627)
-- Name: medias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medias_id_seq OWNER TO postgres;

--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 209
-- Name: medias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medias_id_seq OWNED BY public.medias.id;


--
-- TOC entry 210 (class 1259 OID 220629)
-- Name: names; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.names (
    id bigint NOT NULL,
    node bigint NOT NULL,
    name character varying(255),
    language character varying(255),
    ispreferredname boolean
);


ALTER TABLE public.names OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 220635)
-- Name: names_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.names_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.names_id_seq OWNER TO postgres;

--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 211
-- Name: names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.names_id_seq OWNED BY public.names.id;


--
-- TOC entry 212 (class 1259 OID 220637)
-- Name: nodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nodes (
    id bigint NOT NULL,
    scientificname character varying(255),
    rank integer,
    parent bigint
);


ALTER TABLE public.nodes OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 220640)
-- Name: patchelements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patchelements (
    id bigint NOT NULL,
    transformation character varying(255),
    patchref bigint NOT NULL
);


ALTER TABLE public.patchelements OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 220643)
-- Name: patchelements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patchelements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patchelements_id_seq OWNER TO postgres;

--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 214
-- Name: patchelements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patchelements_id_seq OWNED BY public.patchelements.id;


--
-- TOC entry 215 (class 1259 OID 220645)
-- Name: patches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patches (
    id bigint NOT NULL,
    name character varying(255),
    description character varying(3000),
    width integer,
    height integer,
    locationtype integer,
    nutrientclaim integer
);


ALTER TABLE public.patches OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 220651)
-- Name: patches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patches_id_seq OWNER TO postgres;

--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 216
-- Name: patches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patches_id_seq OWNED BY public.patches.id;


--
-- TOC entry 217 (class 1259 OID 220653)
-- Name: placements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.placements (
    id bigint NOT NULL,
    plantingarea integer,
    plantingmonth integer,
    plantref bigint
);


ALTER TABLE public.placements OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 220656)
-- Name: plants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plants (
    id bigint NOT NULL,
    width double precision,
    height double precision,
    rootdepth integer,
    nutrientclaim integer,
    locationtype integer,
    sowingdepth integer
);


ALTER TABLE public.plants OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 220659)
-- Name: precultures_mappping; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.precultures_mappping (
    id bigint NOT NULL,
    precultures_id bigint NOT NULL
);


ALTER TABLE public.precultures_mappping OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 220662)
-- Name: predicates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.predicates (
    id bigint NOT NULL,
    name character varying(255),
    description character varying(255),
    parentref bigint
);


ALTER TABLE public.predicates OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 220668)
-- Name: predicates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.predicates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.predicates_id_seq OWNER TO postgres;

--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 221
-- Name: predicates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.predicates_id_seq OWNED BY public.predicates.id;


--
-- TOC entry 222 (class 1259 OID 220670)
-- Name: seedmaturitys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seedmaturitys (
    id bigint NOT NULL
);


ALTER TABLE public.seedmaturitys OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 220673)
-- Name: sowings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sowings (
    id bigint NOT NULL
);


ALTER TABLE public.sowings OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 220676)
-- Name: species; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.species (
    id bigint NOT NULL
);


ALTER TABLE public.species OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 220679)
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id bigint NOT NULL,
    name character varying(255),
    description character varying(3000)
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 220685)
-- Name: subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subjects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subjects_id_seq OWNER TO postgres;

--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 226
-- Name: subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;


--
-- TOC entry 227 (class 1259 OID 220687)
-- Name: taxa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taxa (
    id bigint NOT NULL
);


ALTER TABLE public.taxa OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 220690)
-- Name: timeperiods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timeperiods (
    id bigint NOT NULL,
    startarea integer,
    startmonth integer,
    endarea integer,
    endmonth integer,
    start boolean,
    nextid bigint,
    subjectref bigint
);


ALTER TABLE public.timeperiods OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 220693)
-- Name: timeperiods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.timeperiods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timeperiods_id_seq OWNER TO postgres;

--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 229
-- Name: timeperiods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.timeperiods_id_seq OWNED BY public.timeperiods.id;


--
-- TOC entry 2787 (class 2604 OID 221212)
-- Name: days id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.days ALTER COLUMN id SET DEFAULT nextval('public.days_id_seq'::regclass);


--
-- TOC entry 2788 (class 2604 OID 221213)
-- Name: interactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions ALTER COLUMN id SET DEFAULT nextval('public.interactions_id_seq'::regclass);


--
-- TOC entry 2789 (class 2604 OID 221214)
-- Name: medias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medias ALTER COLUMN id SET DEFAULT nextval('public.medias_id_seq'::regclass);


--
-- TOC entry 2790 (class 2604 OID 221215)
-- Name: names id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.names ALTER COLUMN id SET DEFAULT nextval('public.names_id_seq'::regclass);


--
-- TOC entry 2791 (class 2604 OID 221216)
-- Name: patchelements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patchelements ALTER COLUMN id SET DEFAULT nextval('public.patchelements_id_seq'::regclass);


--
-- TOC entry 2792 (class 2604 OID 221217)
-- Name: patches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patches ALTER COLUMN id SET DEFAULT nextval('public.patches_id_seq'::regclass);


--
-- TOC entry 2793 (class 2604 OID 221218)
-- Name: predicates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.predicates ALTER COLUMN id SET DEFAULT nextval('public.predicates_id_seq'::regclass);


--
-- TOC entry 2794 (class 2604 OID 221219)
-- Name: subjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);


--
-- TOC entry 2795 (class 2604 OID 221220)
-- Name: timeperiods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeperiods ALTER COLUMN id SET DEFAULT nextval('public.timeperiods_id_seq'::regclass);


--
-- TOC entry 3059 (class 0 OID 220587)
-- Dependencies: 196
-- Data for Name: aftercultures_mappping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aftercultures_mappping (id, aftercultures_id) FROM stdin;
12	152
17	226
17	273
104	152
200	158
233	168
233	274
244	158
244	275
\.


--
-- TOC entry 3060 (class 0 OID 220590)
-- Dependencies: 197
-- Data for Name: animals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animals (id) FROM stdin;
276
277
278
279
349
363
364
\.


--
-- TOC entry 3061 (class 0 OID 220593)
-- Dependencies: 198
-- Data for Name: blooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.blooms (id) FROM stdin;
\.


--
-- TOC entry 3062 (class 0 OID 220596)
-- Dependencies: 199
-- Data for Name: cultivates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cultivates (id, germinationperioddays, germinationtemperature) FROM stdin;
11	0	0
14	0	0
17	0	0
20	0	0
23	0	0
26	0	0
29	0	0
32	0	0
\.


--
-- TOC entry 3063 (class 0 OID 220599)
-- Dependencies: 200
-- Data for Name: days; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.days (id, dayinyear, weekperyear) FROM stdin;
1	1	1
2	2	1
3	3	1
4	4	1
5	5	1
6	6	1
7	7	1
8	2	2
9	4	2
10	6	2
11	8	2
12	10	2
13	12	2
14	14	2
15	3	3
16	6	3
17	9	3
18	12	3
19	15	3
20	18	3
21	21	3
22	4	4
23	8	4
24	12	4
25	16	4
26	20	4
27	24	4
28	28	4
29	5	5
30	10	5
31	15	5
32	20	5
33	25	5
34	30	5
35	35	5
36	6	6
37	12	6
38	18	6
39	24	6
40	30	6
41	36	6
42	42	6
43	7	7
44	14	7
45	21	7
46	28	7
47	35	7
48	42	7
49	49	7
50	8	8
51	16	8
52	24	8
53	32	8
54	40	8
55	48	8
56	56	8
57	9	9
58	18	9
59	27	9
60	36	9
61	45	9
62	54	9
63	63	9
64	10	10
65	20	10
66	30	10
67	40	10
68	50	10
69	60	10
70	70	10
71	11	11
72	22	11
73	33	11
74	44	11
75	55	11
76	66	11
77	77	11
78	12	12
79	24	12
80	36	12
81	48	12
82	60	12
83	72	12
84	84	12
85	13	13
86	26	13
87	39	13
88	52	13
89	65	13
90	78	13
91	91	13
92	14	14
93	28	14
94	42	14
95	56	14
96	70	14
97	84	14
98	98	14
99	15	15
100	30	15
101	45	15
102	60	15
103	75	15
104	90	15
105	105	15
106	16	16
107	32	16
108	48	16
109	64	16
110	80	16
111	96	16
112	112	16
113	17	17
114	34	17
115	51	17
116	68	17
117	85	17
118	102	17
119	119	17
120	18	18
121	36	18
122	54	18
123	72	18
124	90	18
125	108	18
126	126	18
127	19	19
128	38	19
129	57	19
130	76	19
131	95	19
132	114	19
133	133	19
134	20	20
135	40	20
136	60	20
137	80	20
138	100	20
139	120	20
140	140	20
141	21	21
142	42	21
143	63	21
144	84	21
145	105	21
146	126	21
147	147	21
148	22	22
149	44	22
150	66	22
151	88	22
152	110	22
153	132	22
154	154	22
155	23	23
156	46	23
157	69	23
158	92	23
159	115	23
160	138	23
161	161	23
162	24	24
163	48	24
164	72	24
165	96	24
166	120	24
167	144	24
168	168	24
169	25	25
170	50	25
171	75	25
172	100	25
173	125	25
174	150	25
175	175	25
176	26	26
177	52	26
178	78	26
179	104	26
180	130	26
181	156	26
182	182	26
183	27	27
184	54	27
185	81	27
186	108	27
188	162	27
190	28	28
192	84	28
194	140	28
196	196	28
198	58	29
200	116	29
202	174	29
204	30	30
206	90	30
208	150	30
210	210	30
212	62	31
214	124	31
216	186	31
218	32	32
220	96	32
222	160	32
224	224	32
226	66	33
228	132	33
230	198	33
232	34	34
234	102	34
236	170	34
238	238	34
240	70	35
242	140	35
244	210	35
246	36	36
248	108	36
250	180	36
252	252	36
254	74	37
256	148	37
258	222	37
260	38	38
262	114	38
264	190	38
266	266	38
268	78	39
270	156	39
272	234	39
274	40	40
276	120	40
278	200	40
280	280	40
282	82	41
284	164	41
286	246	41
288	42	42
290	126	42
292	210	42
294	294	42
296	86	43
298	172	43
300	258	43
302	44	44
304	132	44
306	220	44
308	308	44
310	90	45
312	180	45
314	270	45
316	46	46
318	138	46
320	230	46
322	322	46
324	94	47
326	188	47
328	282	47
330	48	48
332	144	48
334	240	48
336	336	48
338	98	49
340	196	49
342	294	49
344	50	50
346	150	50
348	250	50
350	350	50
352	102	51
354	204	51
356	306	51
358	52	52
360	156	52
362	260	52
364	364	52
187	135	27
189	189	27
191	56	28
193	112	28
195	168	28
197	29	29
199	87	29
201	145	29
203	203	29
205	60	30
207	120	30
209	180	30
211	31	31
213	93	31
215	155	31
217	217	31
219	64	32
221	128	32
223	192	32
225	33	33
227	99	33
229	165	33
231	231	33
233	68	34
235	136	34
237	204	34
239	35	35
241	105	35
243	175	35
245	245	35
247	72	36
249	144	36
251	216	36
253	37	37
255	111	37
257	185	37
259	259	37
261	76	38
263	152	38
265	228	38
267	39	39
269	117	39
271	195	39
273	273	39
275	80	40
277	160	40
279	240	40
281	41	41
283	123	41
285	205	41
287	287	41
289	84	42
291	168	42
293	252	42
295	43	43
297	129	43
299	215	43
301	301	43
303	88	44
305	176	44
307	264	44
309	45	45
311	135	45
313	225	45
315	315	45
317	92	46
319	184	46
321	276	46
323	47	47
325	141	47
327	235	47
329	329	47
331	96	48
333	192	48
335	288	48
337	49	49
339	147	49
341	245	49
343	343	49
345	100	50
347	200	50
349	300	50
351	51	51
353	153	51
355	255	51
357	357	51
359	104	52
361	208	52
363	312	52
\.


--
-- TOC entry 3065 (class 0 OID 220604)
-- Dependencies: 202
-- Data for Name: effects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.effects (id) FROM stdin;
280
\.


--
-- TOC entry 3066 (class 0 OID 220607)
-- Dependencies: 203
-- Data for Name: harvests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.harvests (id) FROM stdin;
1
3
6
5
9
12
15
18
21
24
27
30
33
35
\.


--
-- TOC entry 3067 (class 0 OID 220610)
-- Dependencies: 204
-- Data for Name: implants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.implants (id) FROM stdin;
10
13
16
19
22
25
28
31
\.


--
-- TOC entry 3068 (class 0 OID 220613)
-- Dependencies: 205
-- Data for Name: interactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interactions (id, subject, predicate, object, impactsubject, indicator) FROM stdin;
1	276	8	10	\N	5
2	277	8	10	\N	5
3	278	8	10	\N	5
4	280	8	10	\N	5
5	276	8	11	\N	5
6	277	8	11	\N	5
7	278	8	11	\N	5
8	280	8	11	\N	5
9	276	8	13	\N	5
10	277	8	13	\N	5
11	278	8	13	\N	5
12	280	8	13	\N	5
13	281	4	126	\N	0
14	282	8	126	\N	0
15	134	4	129	\N	0
16	283	4	130	\N	0
17	167	4	130	\N	0
18	284	4	130	\N	0
19	285	4	130	\N	0
20	188	4	130	\N	0
21	228	4	130	\N	0
22	286	4	131	\N	0
23	140	4	131	\N	0
24	287	4	131	\N	0
25	161	4	131	\N	0
26	288	4	131	\N	0
27	289	4	131	\N	0
28	241	4	131	\N	0
29	290	8	131	\N	0
30	291	8	131	\N	0
31	161	4	132	\N	0
32	149	8	132	\N	0
33	291	8	132	\N	0
34	292	8	132	\N	0
35	293	4	133	\N	0
36	168	4	133	\N	0
37	294	4	133	\N	0
38	291	4	133	\N	0
39	295	4	133	\N	0
40	241	4	133	\N	0
41	282	8	133	\N	0
42	281	8	133	\N	0
43	129	4	134	\N	0
44	296	4	134	\N	0
45	297	4	134	\N	0
46	156	4	134	\N	0
47	298	4	134	\N	0
48	291	4	134	\N	0
49	299	4	134	\N	0
50	300	4	134	\N	0
51	255	4	134	\N	0
52	295	8	134	\N	0
53	301	8	134	\N	0
54	292	8	134	\N	0
56	153	4	135	\N	0
58	162	4	135	\N	0
59	200	4	135	\N	0
60	253	4	135	\N	0
61	283	8	135	\N	0
62	145	8	135	\N	0
63	167	8	135	\N	0
64	284	8	135	\N	0
65	285	8	135	\N	0
66	211	8	135	\N	0
67	304	8	135	\N	0
68	305	8	135	\N	0
69	228	8	135	\N	0
70	291	4	136	\N	0
71	292	4	136	\N	0
72	168	4	137	\N	0
73	295	4	137	\N	0
74	195	4	137	\N	0
75	290	4	137	\N	0
76	289	4	137	\N	0
77	253	4	137	\N	0
78	270	4	137	\N	0
79	306	4	138	\N	0
80	298	4	138	\N	0
82	305	8	138	\N	0
83	153	4	139	\N	0
84	168	4	139	\N	0
85	307	4	139	\N	0
86	308	4	139	\N	0
87	282	4	139	\N	0
88	292	4	139	\N	0
89	269	4	139	\N	0
91	293	4	143	\N	0
92	298	4	143	\N	0
93	294	4	143	\N	0
94	290	4	143	\N	0
95	230	4	143	\N	0
96	292	4	143	\N	0
98	182	4	144	\N	0
99	310	4	144	\N	0
100	152	4	145	\N	0
101	297	4	145	\N	0
102	298	4	145	\N	0
103	162	4	145	\N	0
104	294	4	145	\N	0
105	290	4	145	\N	0
106	299	4	145	\N	0
107	253	4	145	\N	0
108	283	8	145	\N	0
109	145	8	145	\N	0
110	167	8	145	\N	0
111	291	8	145	\N	0
112	284	8	145	\N	0
113	285	8	145	\N	0
114	211	8	145	\N	0
115	218	8	145	\N	0
116	304	8	145	\N	0
117	305	8	145	\N	0
118	228	8	145	\N	0
119	311	4	147	\N	0
120	283	4	147	\N	0
57	48	4	135	\N	0
55	104	8	134	\N	0
97	104	4	143	\N	0
121	297	4	147	\N	0
123	167	4	147	\N	0
125	291	4	147	\N	0
127	285	4	147	\N	0
129	218	4	147	\N	0
131	228	4	147	\N	0
133	253	4	147	\N	0
135	270	4	147	\N	0
137	293	8	147	\N	0
139	132	4	149	\N	0
141	313	8	296	\N	0
143	293	4	152	\N	0
145	167	4	152	\N	0
147	285	4	152	\N	0
149	304	4	152	\N	0
151	292	4	152	\N	0
153	221	8	152	\N	0
155	152	4	153	\N	0
157	298	4	153	\N	0
159	295	4	153	\N	0
161	226	4	153	\N	0
163	253	4	153	\N	0
167	145	8	153	\N	0
169	284	8	153	\N	0
171	301	8	153	\N	0
173	305	8	153	\N	0
177	293	8	156	\N	0
179	135	4	158	\N	0
181	153	4	158	\N	0
183	284	4	158	\N	0
185	218	4	158	\N	0
187	226	4	158	\N	0
191	139	4	167	\N	0
193	297	4	167	\N	0
195	168	4	167	\N	0
197	284	4	167	\N	0
199	281	4	167	\N	0
201	221	4	167	\N	0
203	305	4	167	\N	0
205	282	4	167	\N	0
207	292	4	167	\N	0
209	283	8	167	\N	0
211	167	8	167	\N	0
213	295	8	167	\N	0
215	211	8	167	\N	0
217	228	8	167	\N	0
219	306	4	168	\N	0
221	311	4	168	\N	0
223	283	4	168	\N	0
225	297	4	168	\N	0
227	298	4	168	\N	0
229	295	4	168	\N	0
231	285	4	168	\N	0
233	192	4	168	\N	0
235	290	4	168	\N	0
237	289	4	168	\N	0
239	228	4	168	\N	0
241	319	4	168	\N	0
243	253	4	168	\N	0
247	197	8	168	\N	0
249	304	8	168	\N	0
251	255	8	168	\N	0
253	290	4	171	\N	0
255	282	4	171	\N	0
259	152	8	171	\N	0
261	321	8	171	\N	0
263	217	4	174	\N	0
265	261	4	174	\N	0
267	263	4	177	\N	0
269	311	4	180	\N	0
271	297	4	180	\N	0
273	291	4	180	\N	0
275	285	4	180	\N	0
279	180	4	182	\N	0
281	274	4	182	\N	0
283	308	4	182	\N	0
285	230	4	182	\N	0
287	261	8	182	\N	0
289	139	4	186	\N	0
291	305	4	188	\N	0
293	293	8	188	\N	0
295	297	4	189	\N	0
297	228	4	189	\N	0
299	292	8	189	\N	0
301	274	4	190	\N	0
303	255	4	190	\N	0
305	281	8	190	\N	0
307	297	4	196	\N	0
309	294	4	196	\N	0
311	281	4	196	\N	0
313	253	4	196	\N	0
315	298	4	197	\N	0
317	274	4	197	\N	0
319	168	8	197	\N	0
321	218	8	197	\N	0
323	306	4	200	\N	0
325	274	4	200	\N	0
327	196	4	200	\N	0
329	304	4	200	\N	0
331	312	4	200	\N	0
333	230	8	200	\N	0
337	291	4	203	\N	0
339	217	4	203	\N	0
341	255	4	203	\N	0
343	297	8	203	\N	0
345	295	8	203	\N	0
347	147	4	290	\N	0
349	297	4	290	\N	0
351	295	4	290	\N	0
353	284	4	290	\N	0
355	188	4	290	\N	0
357	200	4	290	\N	0
359	324	4	290	\N	0
175	134	4	156	\N	0
165	104	4	42	\N	0
189	104	4	48	\N	0
245	104	4	57	\N	0
277	104	4	180	\N	0
122	298	4	147	\N	0
124	168	4	147	\N	0
126	284	4	147	\N	0
128	290	4	147	\N	0
130	305	4	147	\N	0
132	312	4	147	\N	0
134	292	4	147	\N	0
138	281	8	147	\N	0
140	274	4	149	\N	0
142	283	4	152	\N	0
144	298	4	152	\N	0
146	284	4	152	\N	0
148	290	4	152	\N	0
150	305	4	152	\N	0
152	143	8	152	\N	0
154	139	4	153	\N	0
156	158	4	153	\N	0
158	162	4	153	\N	0
160	218	4	153	\N	0
162	312	4	153	\N	0
164	314	4	153	\N	0
166	283	8	153	\N	0
168	167	8	153	\N	0
170	285	8	153	\N	0
172	304	8	153	\N	0
174	228	8	153	\N	0
176	291	4	156	\N	0
178	261	8	156	\N	0
180	152	4	158	\N	0
182	298	4	158	\N	0
184	285	4	158	\N	0
186	304	4	158	\N	0
188	253	4	158	\N	0
190	316	8	158	\N	0
192	152	4	167	\N	0
194	298	4	167	\N	0
196	317	4	167	\N	0
198	200	4	167	\N	0
200	289	4	167	\N	0
202	304	4	167	\N	0
204	230	4	167	\N	0
206	253	4	167	\N	0
208	318	4	167	\N	0
210	145	8	167	\N	0
212	291	8	167	\N	0
214	285	8	167	\N	0
216	218	8	167	\N	0
220	137	4	168	\N	0
222	139	4	168	\N	0
224	147	4	168	\N	0
226	293	4	168	\N	0
228	167	4	168	\N	0
230	284	4	168	\N	0
232	294	4	168	\N	0
234	203	4	168	\N	0
236	281	4	168	\N	0
238	308	4	168	\N	0
240	230	4	168	\N	0
242	282	4	168	\N	0
244	270	4	168	\N	0
246	291	8	168	\N	0
248	301	8	168	\N	0
250	236	8	168	\N	0
252	292	8	168	\N	0
254	213	4	171	\N	0
258	143	8	171	\N	0
260	294	8	171	\N	0
262	295	4	174	\N	0
264	226	4	174	\N	0
266	291	8	174	\N	0
270	283	4	180	\N	0
272	167	4	180	\N	0
274	284	4	180	\N	0
276	289	4	180	\N	0
278	261	8	180	\N	0
280	295	4	182	\N	0
282	294	4	182	\N	0
284	305	4	182	\N	0
288	217	8	184	\N	0
290	130	4	188	\N	0
292	253	4	188	\N	0
294	311	4	189	\N	0
296	284	4	189	\N	0
298	293	8	189	\N	0
300	291	4	190	\N	0
302	197	4	190	\N	0
304	294	8	190	\N	0
306	305	8	190	\N	0
308	298	4	196	\N	0
310	200	4	196	\N	0
312	282	4	196	\N	0
314	292	4	196	\N	0
316	291	4	197	\N	0
318	190	4	197	\N	0
320	295	8	197	\N	0
324	298	4	200	\N	0
326	284	4	200	\N	0
328	290	4	200	\N	0
330	305	4	200	\N	0
332	162	8	200	\N	0
334	253	8	200	\N	0
336	168	4	203	\N	0
338	274	4	203	\N	0
340	253	4	203	\N	0
344	298	8	203	\N	0
348	152	4	290	\N	0
350	168	4	290	\N	0
352	274	4	290	\N	0
356	295	4	290	\N	0
358	218	4	290	\N	0
360	308	4	290	\N	0
136	104	4	147	\N	0
218	104	8	167	\N	0
286	104	4	67	\N	0
322	104	8	197	\N	0
346	104	8	203	\N	0
354	186	4	4	\N	0
361	304	4	290	\N	0
363	229	4	290	\N	0
365	236	4	290	\N	0
367	319	4	290	\N	0
369	292	4	290	\N	0
373	281	8	290	\N	0
375	274	4	210	\N	0
377	168	4	212	\N	0
379	295	4	212	\N	0
381	226	4	212	\N	0
383	291	8	212	\N	0
385	260	8	212	\N	0
387	162	4	213	\N	0
389	196	4	213	\N	0
391	305	4	213	\N	0
393	312	4	213	\N	0
397	290	8	213	\N	0
399	126	4	281	\N	0
401	306	4	281	\N	0
403	295	4	281	\N	0
405	218	4	281	\N	0
407	305	4	281	\N	0
409	251	4	281	\N	0
411	274	8	281	\N	0
413	290	8	281	\N	0
415	312	8	281	\N	0
417	295	4	216	\N	0
419	182	8	216	\N	0
421	174	4	217	\N	0
423	295	4	217	\N	0
425	152	4	218	\N	0
427	158	4	218	\N	0
429	167	4	218	\N	0
431	180	4	218	\N	0
433	274	4	218	\N	0
435	290	4	218	\N	0
437	305	4	218	\N	0
439	319	4	218	\N	0
441	253	4	218	\N	0
443	297	8	218	\N	0
445	295	8	218	\N	0
447	230	8	218	\N	0
449	306	4	219	\N	0
451	283	4	219	\N	0
453	291	4	219	\N	0
455	197	4	219	\N	0
457	228	4	219	\N	0
459	253	4	219	\N	0
461	255	4	219	\N	0
463	297	8	219	\N	0
465	298	8	219	\N	0
467	298	4	221	\N	0
469	290	4	221	\N	0
471	292	4	221	\N	0
473	296	4	304	\N	0
475	298	4	304	\N	0
477	162	4	304	\N	0
479	200	4	304	\N	0
481	213	4	304	\N	0
483	312	4	304	\N	0
485	292	4	304	\N	0
487	145	8	304	\N	0
489	168	8	304	\N	0
491	304	8	304	\N	0
493	228	8	304	\N	0
497	158	4	305	\N	0
499	161	4	305	\N	0
501	182	4	305	\N	0
503	188	4	305	\N	0
505	290	4	305	\N	0
507	218	4	305	\N	0
509	241	4	305	\N	0
511	292	4	305	\N	0
513	145	8	305	\N	0
515	285	8	305	\N	0
517	305	8	305	\N	0
519	310	8	305	\N	0
521	267	8	305	\N	0
523	158	4	224	\N	0
525	295	4	224	\N	0
527	285	4	224	\N	0
529	253	4	224	\N	0
531	297	4	226	\N	0
533	291	4	226	\N	0
535	251	4	226	\N	0
537	147	4	228	\N	0
539	162	4	228	\N	0
541	317	4	228	\N	0
543	189	4	228	\N	0
545	218	4	228	\N	0
547	312	4	228	\N	0
549	282	4	228	\N	0
551	255	4	228	\N	0
553	263	4	228	\N	0
555	270	4	228	\N	0
557	298	8	228	\N	0
559	285	8	228	\N	0
561	305	8	228	\N	0
563	310	8	228	\N	0
567	283	4	229	\N	0
569	284	4	229	\N	0
571	236	4	229	\N	0
573	168	8	229	\N	0
575	269	8	229	\N	0
577	283	4	230	\N	0
579	297	4	230	\N	0
581	298	4	230	\N	0
583	168	4	230	\N	0
585	295	4	230	\N	0
587	285	4	230	\N	0
589	327	4	230	\N	0
591	304	4	230	\N	0
593	228	4	230	\N	0
595	291	8	230	\N	0
597	290	8	230	\N	0
599	253	8	230	\N	0
395	104	4	89	\N	0
495	104	8	304	\N	0
362	305	4	290	\N	0
364	312	4	290	\N	0
366	241	4	290	\N	0
368	253	4	290	\N	0
370	263	4	290	\N	0
372	130	8	290	\N	0
374	230	8	290	\N	0
376	306	4	212	\N	0
378	317	4	212	\N	0
380	284	4	212	\N	0
382	282	4	212	\N	0
384	274	8	212	\N	0
386	267	8	212	\N	0
388	291	4	213	\N	0
390	304	4	213	\N	0
392	230	4	213	\N	0
394	253	4	213	\N	0
396	293	8	213	\N	0
398	282	8	213	\N	0
402	291	4	281	\N	0
404	192	4	281	\N	0
406	304	4	281	\N	0
408	226	4	281	\N	0
410	292	4	281	\N	0
412	190	8	281	\N	0
414	213	8	281	\N	0
416	282	8	281	\N	0
418	203	4	216	\N	0
420	287	4	217	\N	0
422	288	4	217	\N	0
424	147	4	218	\N	0
426	153	4	218	\N	0
428	293	4	218	\N	0
430	168	4	218	\N	0
432	284	4	218	\N	0
434	294	4	218	\N	0
436	304	4	218	\N	0
438	228	4	218	\N	0
440	282	4	218	\N	0
442	292	4	218	\N	0
444	298	8	218	\N	0
446	197	8	218	\N	0
448	251	8	218	\N	0
450	138	4	219	\N	0
452	162	4	219	\N	0
454	182	4	219	\N	0
456	290	4	219	\N	0
458	229	4	219	\N	0
460	325	4	219	\N	0
462	326	4	219	\N	0
464	293	8	219	\N	0
466	293	4	221	\N	0
468	294	4	221	\N	0
470	230	4	221	\N	0
474	158	4	304	\N	0
476	161	4	304	\N	0
478	284	4	304	\N	0
480	290	4	304	\N	0
482	218	4	304	\N	0
484	253	4	304	\N	0
486	283	8	304	\N	0
488	167	8	304	\N	0
490	285	8	304	\N	0
492	305	8	304	\N	0
494	310	8	304	\N	0
496	296	4	305	\N	0
498	298	4	305	\N	0
500	162	4	305	\N	0
502	284	4	305	\N	0
504	200	4	305	\N	0
506	213	4	305	\N	0
508	312	4	305	\N	0
510	253	4	305	\N	0
512	283	8	305	\N	0
514	167	8	305	\N	0
516	304	8	305	\N	0
518	228	8	305	\N	0
520	260	8	305	\N	0
524	298	4	224	\N	0
526	284	4	224	\N	0
528	294	4	224	\N	0
530	306	4	226	\N	0
532	298	4	226	\N	0
534	285	4	226	\N	0
536	292	4	226	\N	0
538	149	4	228	\N	0
540	180	4	228	\N	0
542	291	4	228	\N	0
544	210	4	228	\N	0
546	229	4	228	\N	0
548	236	4	228	\N	0
550	253	4	228	\N	0
552	292	4	228	\N	0
554	267	4	228	\N	0
556	283	8	228	\N	0
558	167	8	228	\N	0
560	304	8	228	\N	0
562	228	8	228	\N	0
564	292	8	228	\N	0
566	311	4	229	\N	0
568	298	4	229	\N	0
570	290	4	229	\N	0
572	292	4	229	\N	0
574	307	8	229	\N	0
576	138	4	230	\N	0
578	147	4	230	\N	0
580	158	4	230	\N	0
582	167	4	230	\N	0
584	182	4	230	\N	0
586	284	4	230	\N	0
588	294	4	230	\N	0
590	308	4	230	\N	0
592	305	4	230	\N	0
596	200	8	230	\N	0
598	218	8	230	\N	0
600	292	8	230	\N	0
472	104	4	221	\N	0
522	104	8	5	\N	0
601	270	8	230	\N	0
603	147	4	233	\N	0
605	153	4	233	\N	0
607	167	4	233	\N	0
609	288	4	233	\N	0
611	295	4	233	\N	0
613	285	4	233	\N	0
615	290	4	233	\N	0
617	304	4	233	\N	0
619	228	4	233	\N	0
621	255	4	233	\N	0
623	270	4	233	\N	0
625	190	8	233	\N	0
627	261	8	233	\N	0
629	294	4	235	\N	0
631	270	4	235	\N	0
633	167	8	235	\N	0
635	304	8	235	\N	0
637	228	8	235	\N	0
639	284	4	236	\N	0
641	290	4	236	\N	0
643	168	8	236	\N	0
645	229	8	236	\N	0
647	269	8	236	\N	0
649	168	4	241	\N	0
651	285	4	241	\N	0
653	216	4	241	\N	0
655	328	4	241	\N	0
657	292	4	241	\N	0
659	297	8	241	\N	0
661	197	8	241	\N	0
663	251	8	241	\N	0
665	284	4	244	\N	0
667	290	4	244	\N	0
671	298	4	245	\N	0
673	168	4	245	\N	0
675	295	4	245	\N	0
677	284	4	245	\N	0
679	212	4	245	\N	0
681	218	4	245	\N	0
683	228	4	245	\N	0
685	292	4	245	\N	0
687	126	8	245	\N	0
689	291	8	245	\N	0
691	281	8	245	\N	0
693	153	4	248	\N	0
695	304	4	248	\N	0
697	235	4	248	\N	0
699	270	4	248	\N	0
701	306	4	251	\N	0
703	168	4	251	\N	0
705	294	4	251	\N	0
707	281	4	251	\N	0
709	226	4	251	\N	0
711	260	4	251	\N	0
713	295	8	251	\N	0
715	241	8	251	\N	0
717	297	4	252	\N	0
719	147	4	253	\N	0
721	167	4	253	\N	0
723	291	4	253	\N	0
725	188	4	253	\N	0
727	203	4	253	\N	0
729	213	4	253	\N	0
731	304	4	253	\N	0
733	228	4	253	\N	0
735	292	4	253	\N	0
737	158	8	253	\N	0
739	200	8	253	\N	0
743	288	4	325	\N	0
745	308	4	325	\N	0
747	168	8	255	\N	0
749	269	8	255	\N	0
751	306	4	292	\N	0
753	143	4	292	\N	0
755	287	4	292	\N	0
757	168	4	292	\N	0
759	295	4	292	\N	0
761	294	4	292	\N	0
763	299	4	292	\N	0
765	289	4	292	\N	0
767	221	4	292	\N	0
769	330	4	292	\N	0
771	229	4	292	\N	0
773	241	4	292	\N	0
775	251	4	292	\N	0
777	325	4	292	\N	0
779	255	4	292	\N	0
781	268	4	292	\N	0
783	132	8	292	\N	0
785	297	8	292	\N	0
787	189	8	292	\N	0
789	263	8	292	\N	0
791	306	4	260	\N	0
793	140	4	260	\N	0
795	267	4	260	\N	0
797	305	8	260	\N	0
799	174	4	261	\N	0
801	156	8	261	\N	0
803	182	8	261	\N	0
805	190	8	261	\N	0
807	333	8	261	\N	0
809	288	4	263	\N	0
811	290	4	263	\N	0
813	293	8	263	\N	0
815	236	8	263	\N	0
817	334	4	265	\N	0
819	162	4	265	\N	0
821	312	4	265	\N	0
823	335	8	265	\N	0
825	285	4	267	\N	0
827	305	8	267	\N	0
829	261	8	268	\N	0
831	139	4	269	\N	0
833	293	4	269	\N	0
835	162	4	269	\N	0
837	253	4	269	\N	0
741	104	8	253	\N	0
839	104	4	269	\N	0
602	306	4	233	\N	0
604	297	4	233	\N	0
606	298	4	233	\N	0
608	168	4	233	\N	0
610	182	4	233	\N	0
612	284	4	233	\N	0
614	196	4	233	\N	0
616	324	4	233	\N	0
618	224	4	233	\N	0
620	230	4	233	\N	0
622	292	4	233	\N	0
626	282	8	233	\N	0
628	153	4	235	\N	0
630	282	4	235	\N	0
632	283	8	235	\N	0
634	285	8	235	\N	0
636	305	8	235	\N	0
638	310	8	235	\N	0
640	285	4	236	\N	0
642	292	4	236	\N	0
644	307	8	236	\N	0
646	263	8	236	\N	0
650	288	4	241	\N	0
652	290	4	241	\N	0
654	218	4	241	\N	0
656	325	4	241	\N	0
658	260	4	241	\N	0
660	298	8	241	\N	0
662	308	8	241	\N	0
664	295	4	244	\N	0
666	294	4	244	\N	0
668	218	4	244	\N	0
670	283	4	245	\N	0
672	167	4	245	\N	0
674	182	4	245	\N	0
676	185	4	245	\N	0
678	285	4	245	\N	0
680	213	4	245	\N	0
682	226	4	245	\N	0
684	253	4	245	\N	0
688	152	8	245	\N	0
690	192	8	245	\N	0
692	270	8	245	\N	0
694	284	4	248	\N	0
696	305	4	248	\N	0
698	312	4	248	\N	0
700	326	8	248	\N	0
702	297	4	251	\N	0
704	284	4	251	\N	0
706	290	4	251	\N	0
708	304	4	251	\N	0
710	292	4	251	\N	0
712	291	8	251	\N	0
714	218	8	251	\N	0
718	137	4	253	\N	0
720	153	4	253	\N	0
722	168	4	253	\N	0
724	284	4	253	\N	0
726	329	4	253	\N	0
728	290	4	253	\N	0
730	308	4	253	\N	0
732	224	4	253	\N	0
734	282	4	253	\N	0
736	270	4	253	\N	0
738	162	8	253	\N	0
740	230	8	253	\N	0
742	287	4	325	\N	0
744	295	4	325	\N	0
746	292	4	325	\N	0
748	307	8	255	\N	0
750	270	4	256	\N	0
752	139	4	292	\N	0
754	147	4	292	\N	0
756	298	4	292	\N	0
758	317	4	292	\N	0
760	284	4	292	\N	0
762	203	4	292	\N	0
764	281	4	292	\N	0
766	218	4	292	\N	0
768	304	4	292	\N	0
770	226	4	292	\N	0
772	236	4	292	\N	0
774	282	4	292	\N	0
776	253	4	292	\N	0
778	331	4	292	\N	0
780	332	4	292	\N	0
786	291	8	292	\N	0
788	230	8	292	\N	0
790	270	8	292	\N	0
792	139	4	260	\N	0
794	251	4	260	\N	0
796	285	8	260	\N	0
798	236	8	260	\N	0
800	306	8	261	\N	0
802	180	8	261	\N	0
804	294	8	261	\N	0
806	236	8	261	\N	0
808	269	8	261	\N	0
810	274	4	263	\N	0
812	306	8	263	\N	0
814	189	8	263	\N	0
816	292	8	263	\N	0
818	158	4	265	\N	0
820	235	4	265	\N	0
822	253	4	265	\N	0
824	284	4	267	\N	0
826	260	4	267	\N	0
828	293	8	268	\N	0
830	306	4	269	\N	0
832	297	4	269	\N	0
834	298	4	269	\N	0
836	317	4	269	\N	0
838	270	4	269	\N	0
840	291	8	269	\N	0
784	134	8	292	\N	0
624	104	4	233	\N	0
716	104	8	114	\N	0
782	104	4	292	\N	0
841	304	8	269	\N	0
843	229	8	269	\N	0
845	255	8	269	\N	0
847	137	4	270	\N	0
849	297	4	270	\N	0
851	168	4	270	\N	0
853	307	4	270	\N	0
855	312	4	270	\N	0
857	253	4	270	\N	0
859	269	4	270	\N	0
861	282	8	270	\N	0
863	147	4	104	\N	0
865	158	4	104	\N	0
867	180	4	104	\N	0
869	213	4	104	\N	0
871	319	4	104	\N	0
873	292	4	104	\N	0
877	291	8	104	\N	0
879	304	8	104	\N	0
881	251	8	104	\N	0
875	134	8	104	\N	0
842	305	8	269	\N	0
844	236	8	269	\N	0
846	261	8	269	\N	0
848	147	4	270	\N	0
850	298	4	270	\N	0
852	291	4	270	\N	0
854	228	4	270	\N	0
856	328	4	270	\N	0
858	255	4	270	\N	0
860	230	8	270	\N	0
862	291	4	271	\N	0
864	153	4	104	\N	0
866	168	4	104	\N	0
868	197	4	104	\N	0
870	312	4	104	\N	0
872	282	4	104	\N	0
874	269	4	104	\N	0
876	297	8	104	\N	0
878	197	8	104	\N	0
880	305	8	104	\N	0
882	253	8	104	\N	0
81	104	4	138	\N	0
371	104	4	4	\N	0
565	104	8	228	\N	0
594	104	4	230	\N	0
669	104	4	108	\N	0
686	104	4	245	\N	0
883	349	10	279	\N	5
\.


--
-- TOC entry 3070 (class 0 OID 220618)
-- Dependencies: 207
-- Data for Name: lifetimes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lifetimes (id) FROM stdin;
\.


--
-- TOC entry 3071 (class 0 OID 220621)
-- Dependencies: 208
-- Data for Name: medias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medias (id, imagepath, mimetype, subject) FROM stdin;
1	/Images/SpinatButterflay.jpg		9
2	/Images/BlumenkohlErfurterZwerg.jpg		10
3	/Images/RadieschenParat.jpg		13
4	/Images/PetersilieGruenePerle.jpg		14
5	/Images/KohlrabiGigant.jpg		15
6	/Images/Cocktailtomate.jpg		17
7	/Images/GrosserKohlweissling.jpg		276
8	/Images/Empty.png	image/png	10
9	/Images/Empty.png	image/png	90
10	/Images/Empty.png	image/png	316
11	/Images/Empty.png	image/png	16
12	/Images/Empty.png	image/png	306
13	/Images/Empty.png	image/png	137
14	/Images/Empty.png	image/png	279
15	/Images/Empty.png	image/png	144
16	/Images/Empty.png	image/png	296
17	/Images/Empty.png	image/png	313
18	/Images/Empty.png	image/png	293
19	/Images/Empty.png	image/png	287
20	/Images/Empty.png	image/png	298
21	/Images/Empty.png	image/png	162
22	/Images/Empty.png	image/png	292
23	/Images/Empty.png	image/png	269
24	/Images/Empty.png	image/png	345
26	/Images/Empty.png	image/png	349
27	/Images/Empty.png	image/png	13
28	/Images/Empty.png	image/png	3
31	/Images/Empty.png	image/png	311
32	/Images/Empty.png	image/png	357
33	/Images/Empty.png	image/png	358
34	/Images/Empty.png	image/png	359
35	/Images/Empty.png	image/png	360
36	/Images/Empty.png	image/png	361
37	/Images/Empty.png	image/png	362
38	/Images/Empty.png	image/png	355
39	/Images/Empty.png	image/png	363
43	/Images/450px-Coccinella.7-punctata.adult.jpg		364
44	/Images/Empty.png	image/png	134
45	/Images/Empty.png	image/png	295
\.


--
-- TOC entry 3073 (class 0 OID 220629)
-- Dependencies: 210
-- Data for Name: names; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.names (id, node, name, language, ispreferredname) FROM stdin;
\.


--
-- TOC entry 3075 (class 0 OID 220637)
-- Dependencies: 212
-- Data for Name: nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nodes (id, scientificname, rank, parent) FROM stdin;
1	Spinacia	2	\N
2	Brassica	2	\N
4	Daucus	2	\N
5	Raphanus	2	\N
6	Petroselinum	2	\N
7	Ocimum	2	\N
8	Lycopersicon	2	\N
9	Spinacia oleracea	1	1
11	Brassica oleracea convar. capitata	0	\N
12	Daucus carota	1	4
13	Raphanus sativus	1	5
14	Petroselinum crispum	1	6
15	Brassica oleracea var. gongylodes	0	3
17	Lycopersicon esculentum	1	8
18	Angelica	2	\N
19	Amaranthus	2	\N
20	Rumex	2	\N
21	Physalis	2	\N
22	Pimpinella	2	\N
24	Malus	2	\N
25	Prunus	2	\N
26	Cynara	2	\N
27	Solanum	2	\N
28	Barbarea	2	\N
30	Pyrus	2	\N
31	Satureja	2	\N
32	Borago	2	\N
33	Rubus	2	\N
34	Nasturtium	2	\N
35	Fagopyrum	2	\N
36	Cichorium	2	\N
37	Capsicum	2	\N
39	Anethum	2	\N
40	Triticum	2	\N
41	Artemisia	2	\N
42	Fragaria	2	\N
44	Blitum	2	\N
45	Cyperus	2	\N
46	Allium	2	\N
48	Valerianella	2	\N
49	Cucurbita	2	\N
50	Phaseolus	2	\N
51	Lepidium	2	\N
53	Sinapis	2	\N
54	Malva	2	\N
55	Hordeum	2	\N
56	Arctium	2	\N
58	Avena	2	\N
59	Tragopogon	2	\N
60	Dolichos	2	\N
62	Panicum	2	\N
63	Ribes	2	\N
64	Hypericum	2	\N
65	Lagenaria	2	\N
66	Matricaria	2	\N
67	Anthriscus	2	\N
68	Cicer	2	\N
69	Stachys	2	\N
70	Setaria	2	\N
71	Coriandrum	2	\N
72	Carum	2	\N
73	Lavandula	2	\N
74	Linum,	2	\N
75	Levisticum	2	\N
76	Lens	2	\N
77	Coechlearia	2	\N
78	Taraxacum	2	\N
79	Brassica rapa	1	2
80	Origanum	2	\N
81	Basella	2	\N
82	Dietzh%C3%B6lze	2	\N
83	Beta	2	\N
85	Crambe	2	\N
86	Armoracia	2	\N
89	Pastinaca	2	\N
90	Allium ampeloprasum	1	46
91	Vicia	2	\N
92	Chenopodium	2	\N
94	Rheum	2	\N
95	Calendula	2	\N
96	Secale	2	\N
97	Rosmarinus	2	\N
98	Beta vulgaris	1	83
99	Eruca	2	\N
100	Lactuca	2	\N
101	Chrysantemum	2	\N
102	Salvia	2	\N
103	Oxalis	2	\N
104	Allium cepa	1	46
105	Papaver	2	\N
106	Allium ramosum	1	46
107	Perilla	2	\N
108	Scorzonera	2	\N
109	Apium	2	\N
110	Glycine	2	\N
111	Portulaca	2	\N
112	Helianthus	2	\N
113	Sorghum	2	\N
114	Asparagus	2	\N
115	Tetragonolobus	2	\N
116	Thymus	2	\N
117	Benincasa	2	\N
118	Citrullus	2	\N
119	Vitis	2	\N
120	Ruta	2	\N
121	Montia	2	\N
122	Hyssopus	2	\N
123	Melissa	2	\N
124	Zea	2	\N
125	Sium	2	\N
126	Angelica archangelica	1	18
127	Amaranthus	0	\N
128	Rumex sp.	1	20
129	Physalis peruviana	1	21
130	Pimpinella anisum	1	22
131	Malus domestica	1	24
132	Prunus armeniaca	1	25
133	Cynara scolymus	1	26
134	Solanum melongena	1	27
135	Barbarea vulgaris	1	28
136	Symphytum officinale	1	29
137	Pyrus communis	1	30
138	Satureja hortensis	1	31
139	Borago officinalis	1	32
140	Rubus fruticosus	1	33
141	Nasturtium officinale	1	34
142	Fagopyrum esculentum	1	35
143	Cichorium intybus	1	36
144	Capsicum	0	\N
29	Symphytum	2	\N
57	Cucumis	2	\N
145	Brassica rapa ssp. Chinensis	0	\N
147	Anethum gravolens	1	39
148	Triticum aestivum ssp. Speltum	0	\N
149	Artemisia abrotanum	1	41
150	Triticum turgidum ssp. Dicoccum var. Dicoccum	0	\N
151	Triticum monococcum ssp. Monococcum	0	\N
152	Cichorium endivia	1	36
10	Brassica oleracea var. botrytis	0	\N
16	Ocimum basilicum Genoveser	0	306
154	Blitum ssp.	1	44
155	Cyperus esculentus	1	45
156	Artemisia drancunculus	1	41
158	Valerianella Iocusta	1	48
159	Cucurbita ficifolia	1	49
160	Phaseolus coccineus	1	50
161	Lepidium sativum	1	51
163	Sinapis alba	1	53
164	Malva verticillata	1	54
165	Hordeum vulgare	1	55
166	Arctium lappa	1	56
167	Brassica oleracea var. Sabellica	0	3
168	Cucumis sativus	1	57
169	…….	0	\N
170	Avena sativa	1	58
171	Tragopogon porrifolius	1	59
172	Dolichos lablab	1	60
173	Brassica rappa ssp. Rapa	0	\N
174	Rubus idaeus	1	33
175	…	0	\N
176	Panicum miliaceum	1	62
177	Ribes rubrum, Ribes nigrum	0	\N
178	Hypericum	0	\N
179	Lagenaria siceraria	1	65
180	Matricaria chamomilla	1	66
181	Cynara cardunculus	1	26
182	Anthriscus cerefolium ssp. cerefolium	0	\N
183	Cicer arietinum	1	68
184	Prunus cerasus, Prunus avium	0	\N
185	Stachys officinalis	1	69
186	Brassica napus ssp. Rapifera	0	\N
187	Setaria italica	1	70
188	Coriandrum sativum	1	71
189	Carum carvi	1	72
190	Lavandula angustifolia	1	73
191	Linum, usitatissimum	1	74
192	Levisticum officinale	1	75
193	Lens culinaris	1	76
194	Coechlearia officinalis	1	77
195	Taraxacum sect. Ruderalia, auch Pusteblume	0	\N
196	Brassica rapa var. rapa	0	79
197	Origanum majorana	1	80
198	Basella alba	1	81
199	Dietzh%C3%B6lze	0	\N
200	Beta vulgaris ssp. cicla	0	\N
201	B. o. Ssp. o.convar.acephala var. Medullosa	0	\N
202	Crambe maritima	1	85
203	Armoracia rusticana	1	86
206	Brassica rapa ssp. Nipposinica	0	\N
207	Phaseolus lunatus	1	50
208	Cucurbita moschata	1	49
216	Prunus persica	1	25
217	Prunus domestica	1	25
218	Allium porrum	1	46
219	Vicia faba	1	91
220	Chenopodium quinoa	1	92
221	Cichorium intybus	1	36
224	Rheum rhabarbarum	1	94
225	Cucurbita maxima	1	49
226	Calendula officinalis	1	95
227	Secale cereale	1	96
228	Brassica oleracea var. gemmifera	0	3
229	Rosmarinus officinalis	1	97
230	Beta vulgaris var. vulgaris	0	98
231	Eruca sativa	1	99
232	Brassica rapa ssp. Oleifera	0	\N
233	Lactuca sativa	1	100
234	Chrysantemum coronarium	1	101
235	Eruca stiva	1	99
236	Salvia officinalis	1	102
237	Oxalis	0	\N
238	Allium cepa var. Ascalonicum Backer	0	104
239	Papaver sonniferum	1	105
240	Allium ramosum L.	0	106
241	Allium schoenoprasum	1	46
242	Brassica juncea	1	2
243	Perilla	0	\N
244	Scorzonera hispanica	1	108
245	Apium graveolens	1	109
246	Cucurbita mixta	1	49
247	Glycine max	1	110
248	Portulaca oleracea ssp. sativa	0	\N
249	Helianthus annuus	1	112
250	Sorghum ssp.	1	113
251	Asparagus officinalis	1	114
252	Tetragonolobus purpureus	1	115
253	Spinacia oleraceae	1	1
254	…….	0	\N
255	Thymus vulgaris	1	116
256	Helianthus tuberosus	1	112
282		0	\N
290		0	\N
291		0	\N
301		0	\N
310		0	\N
153	Fragaria x ananassa	0	\N
157	Allium x proliferum	0	\N
162	Atriplex hortensis	1	344
209	1948–2014	0	\N
210	Origanum vulgare	1	80
211	Brassica rapa ssp. Chinensis	0	\N
212	Capsicum annuum	1	37
213	Pastinaca sativa	1	89
214	Cucurbita Pepo	1	49
215	Allium ampeloprasum ssp.	0	90
222	Brassica napus ssp. Napus	0	\N
223	%,ms,calls,template	0	\N
257	Physalis peruviana	1	21
258	Benincasa hispida	1	117
259	Citrullus lanatus	1	118
260	Vitis vinifera	1	119
261	Ruta graveolens	1	120
262	Triticum aestivum ssp. Aestivum	0	\N
263	Artemisia absinthium	1	41
264	Allium fistolosum	1	46
265	Montia perfoliata, syn. Claytonia perfoliata	0	\N
266	B. o. Ssp. Convar capitata var. Sabauda	0	\N
267	Hyssopus officinalis	1	122
268	Melissa officinalis	1	123
269	Cucurbita pepo	1	49
270	Zea mays Saccharata Grp.	0	\N
271	Cucumis melo	1	57
272	Sium sisarum	1	125
273	M%C3%BCnze	0	\N
274	Brassica	0	\N
275	M%C3%BCnze	0	\N
276		0	\N
277		0	\N
278		0	\N
280	\N	0	\N
281		0	\N
283	Brassica oleracea var. italica 	0	\N
284		0	\N
285		0	\N
286		0	\N
288		0	\N
289		0	\N
294		0	\N
297	Gattung	0	\N
299		0	\N
300		0	\N
304		0	\N
305		0	\N
307		0	\N
308		0	\N
312		0	\N
314		0	\N
317		0	\N
318		0	\N
319		0	\N
321		0	\N
323		0	\N
324		0	\N
325		0	\N
326		0	\N
327		0	\N
328	Helianthus annuus	0	\N
329		0	\N
330		0	\N
331		0	\N
332		0	\N
333		0	\N
334		0	\N
335		0	\N
338	Valeriana	2	\N
316	Valeriana officinalis	1	338
339	Aphidoidea	2	\N
279	Aphidoidea 	1	339
340	Mesembryanthemum	2	\N
296	Mesembryanthemum crystallinum	1	340
313	Aizoaceae	0	\N
341	Aizoaceae	2	\N
342	Foeniculum	2	\N
293	Foeniculum vulgare	1	342
287	Digitalis	0	\N
343	Digitalis	2	\N
298	Phaseolus vulgaris	1	50
344	Atriplex	2	\N
292	Solanum lycopersicum	1	27
345	Cucurbita pepo Partenon	0	269
348	p471	2	\N
350	Coccinellidae	2	\N
353	abc	2	\N
349	Coccinellidae	3	\N
3	Brassica oleracea L.	1	\N
357		1	\N
358		1	\N
359		1	\N
360		1	\N
361		1	\N
362		1	\N
355	abcd	1	353
363	Coccinella	2	349
364	Coccinella septempunctata	1	363
295	Allium sativum	1	46
306	Ocimum basilicum	1	7
311	Brassica oleracea var. botrytis 	1	2
\.


--
-- TOC entry 3076 (class 0 OID 220640)
-- Dependencies: 213
-- Data for Name: patchelements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patchelements (id, transformation, patchref) FROM stdin;
\.


--
-- TOC entry 3078 (class 0 OID 220645)
-- Dependencies: 215
-- Data for Name: patches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patches (id, name, description, width, height, locationtype, nutrientclaim) FROM stdin;
1	kai	kai the only one	1000	200	0	0
2	David	\N	1000	500	0	0
\.


--
-- TOC entry 3080 (class 0 OID 220653)
-- Dependencies: 217
-- Data for Name: placements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.placements (id, plantingarea, plantingmonth, plantref) FROM stdin;
\.


--
-- TOC entry 3081 (class 0 OID 220656)
-- Dependencies: 218
-- Data for Name: plants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.plants (id, width, height, rootdepth, nutrientclaim, locationtype, sowingdepth) FROM stdin;
3	0	0	0	0	0	0
9	20	3	2	2	0	2
11	50	50	2	1	0	1
14	25	3	1	2	0	1
15	50	25	2	2	0	1
16	30	15	1	3	0	0
17	80	80	3	1	0	1
79	0	0	0	0	0	0
12	30	5	1	3	0	2
90	0	0	0	0	0	0
98	0	0	0	0	0	0
106	0	0	0	0	0	0
126	0	0	0	0	0	0
104	0	0	1	3	0	0
127	0	0	0	2	0	0
128	0	0	0	0	0	0
129	0	0	0	0	0	0
130	0	0	0	0	0	0
131	0	0	1	0	0	0
132	0	0	0	0	0	0
133	0	0	3	0	0	0
134	0	0	1	1	0	0
135	0	0	0	0	0	0
136	0	0	0	0	0	0
137	0	0	0	0	0	0
138	0	0	0	0	0	0
139	0	0	0	0	0	0
140	0	0	0	0	0	0
141	0	0	0	0	0	0
142	0	0	0	0	0	0
143	0	0	0	3	0	0
144	0	0	1	0	0	0
145	0	0	1	2	0	0
147	0	0	0	0	0	0
148	0	0	0	0	0	0
149	0	0	0	0	0	0
150	0	0	0	0	0	0
151	0	0	0	0	0	0
152	0	0	1	0	0	0
153	0	0	0	0	0	0
154	0	0	0	3	0	0
155	0	0	0	0	0	0
156	0	0	0	0	0	0
157	0	0	0	0	0	0
158	0	0	1	3	0	0
159	0	0	3	1	0	0
160	0	0	1	0	0	0
161	0	0	0	0	0	0
162	0	0	0	3	0	0
163	0	0	0	0	0	0
164	0	0	0	0	0	0
165	0	0	0	0	0	0
166	0	0	0	0	0	0
167	0	0	1	0	0	0
168	0	0	1	2	0	0
169	0	0	0	3	0	0
170	0	0	0	0	0	0
171	0	0	0	2	0	0
172	0	0	1	0	0	0
173	0	0	0	0	0	0
174	0	0	0	0	0	0
175	0	0	0	0	0	0
176	0	0	0	0	0	0
177	0	0	0	0	0	0
178	0	0	0	0	0	0
179	0	0	3	1	0	0
180	0	0	0	0	0	0
181	0	0	0	0	0	0
182	0	0	0	0	0	0
183	0	0	1	3	0	0
184	0	0	0	0	0	0
185	0	0	0	2	0	0
186	0	0	1	2	0	0
187	0	0	0	0	0	0
188	0	0	0	0	0	0
189	0	0	0	0	0	0
190	0	0	0	0	0	0
191	0	0	0	0	0	0
192	0	0	0	0	0	0
193	0	0	0	3	0	0
194	0	0	0	3	0	0
195	0	0	0	0	0	0
196	0	0	0	2	0	0
197	0	0	0	0	0	0
198	0	0	0	0	0	0
199	0	0	0	0	0	0
200	0	0	3	2	0	0
201	0	0	1	0	0	0
202	0	0	1	0	0	0
203	0	0	0	0	0	0
206	0	0	0	0	0	0
207	0	0	1	0	0	0
208	0	0	3	1	0	0
209	0	0	0	0	0	0
210	0	0	0	0	0	0
211	0	0	0	2	0	0
212	0	0	1	2	0	0
213	0	0	3	2	0	0
214	0	0	3	1	0	0
215	0	0	0	0	0	0
216	0	0	0	0	0	0
217	0	0	0	0	0	0
218	0	0	1	2	0	0
219	0	0	1	3	0	0
220	0	0	0	0	0	0
221	0	0	0	3	0	0
222	0	0	0	0	0	0
223	0	0	0	0	0	0
224	0	0	0	0	0	0
225	0	0	3	1	0	0
226	0	0	0	0	0	0
227	0	0	0	0	0	0
228	0	0	1	1	0	0
229	0	0	0	0	0	0
230	0	0	3	2	0	0
231	0	0	0	0	0	0
232	0	0	0	0	0	0
233	0	0	1	3	0	0
234	0	0	0	0	0	0
235	0	0	0	0	0	0
236	0	0	0	0	0	0
237	0	0	0	0	0	0
238	0	0	0	3	0	0
239	0	0	0	0	0	0
240	0	0	0	0	0	0
241	0	0	0	2	0	0
242	0	0	0	0	0	0
243	0	0	0	0	0	0
244	0	0	0	2	0	0
245	0	0	1	1	0	0
246	0	0	3	1	0	0
247	0	0	1	2	0	0
248	0	0	0	3	0	0
249	0	0	0	0	0	0
250	0	0	0	0	0	0
251	0	0	3	1	0	0
252	0	0	1	3	0	0
253	0	0	0	3	0	0
254	0	0	0	2	0	0
255	0	0	0	0	0	0
256	0	0	0	0	0	0
282	0	0	0	0	0	0
290	0	0	0	0	0	0
291	0	0	0	0	0	0
301	0	0	0	0	0	0
306	0	0	0	0	0	0
310	0	0	0	0	0	0
257	0	0	0	0	0	0
258	0	0	3	1	0	0
259	0	0	1	2	0	0
260	0	0	0	0	0	0
261	0	0	0	0	0	0
262	0	0	0	0	0	0
263	0	0	0	0	0	0
264	0	0	0	0	0	0
265	0	0	0	3	0	0
266	0	0	1	1	0	0
267	0	0	0	0	0	0
268	0	0	0	0	0	0
270	0	0	1	0	0	0
271	0	0	1	1	0	0
272	0	0	0	0	0	0
273	0	0	0	0	0	0
274	0	0	0	0	0	0
275	0	0	0	0	0	0
281	0	0	0	0	0	0
283	0	0	0	0	0	0
284	0	0	0	0	0	0
285	0	0	0	0	0	0
286	0	0	0	0	0	0
287	0	0	0	0	0	0
288	0	0	0	0	0	0
289	0	0	0	0	0	0
292	0	0	0	0	0	0
293	0	0	0	0	0	0
294	0	0	0	0	0	0
295	0	0	0	0	0	0
296	0	0	0	0	0	0
297	0	0	0	0	0	0
298	0	0	0	0	0	0
299	0	0	0	0	0	0
300	0	0	0	0	0	0
304	0	0	0	0	0	0
305	0	0	0	0	0	0
307	0	0	0	0	0	0
308	0	0	0	0	0	0
311	0	0	0	0	0	0
312	0	0	0	0	0	0
313	0	0	0	0	0	0
314	0	0	0	0	0	0
316	0	0	0	0	0	0
317	0	0	0	0	0	0
318	0	0	0	0	0	0
319	0	0	0	0	0	0
321	0	0	0	0	0	0
323	0	0	0	0	0	0
324	0	0	0	0	0	0
325	0	0	0	0	0	0
326	0	0	0	0	0	0
327	0	0	0	0	0	0
328	0	0	0	0	0	0
329	0	0	0	0	0	0
330	0	0	0	0	0	0
331	0	0	0	0	0	0
332	0	0	0	0	0	0
333	0	0	0	0	0	0
334	0	0	0	0	0	0
335	0	0	0	0	0	0
10	50	40	1	1	0	0
269	100	80	1	1	3	3
345	100	80	1	1	1	2
13	20	3	1	3	0	0
\.


--
-- TOC entry 3082 (class 0 OID 220659)
-- Dependencies: 219
-- Data for Name: precultures_mappping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.precultures_mappping (id, precultures_id) FROM stdin;
17	253
270	253
\.


--
-- TOC entry 3083 (class 0 OID 220662)
-- Dependencies: 220
-- Data for Name: predicates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.predicates (id, name, description, parentref) FROM stdin;
1	positiv	root - gut	\N
2	negativ	root - schlecht	\N
3	schützt		1
4	begünstigt		1
5	unbegünstigt		2
6	fördert		1
7	erhöht		1
8	schädigt		2
9	hemmend		2
10	frisst	frisst	2
\.


--
-- TOC entry 3085 (class 0 OID 220670)
-- Dependencies: 222
-- Data for Name: seedmaturitys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seedmaturitys (id) FROM stdin;
\.


--
-- TOC entry 3086 (class 0 OID 220673)
-- Dependencies: 223
-- Data for Name: sowings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sowings (id) FROM stdin;
2
4
7
8
34
36
\.


--
-- TOC entry 3087 (class 0 OID 220676)
-- Dependencies: 224
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.species (id) FROM stdin;
3
9
10
11
12
13
14
15
16
17
79
90
98
104
106
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
181
182
183
184
185
186
187
188
189
190
191
192
193
194
195
196
197
198
199
200
201
202
203
206
207
208
209
210
211
212
213
214
215
216
217
218
219
220
221
222
223
224
225
226
227
228
229
230
231
232
233
234
235
236
237
238
239
240
241
242
243
244
245
246
247
248
249
250
251
252
253
254
255
256
257
258
259
260
261
262
263
264
265
266
267
268
269
270
271
272
273
274
275
276
277
278
279
281
282
283
284
285
286
287
288
289
290
291
292
293
294
295
296
297
298
299
300
301
304
305
306
307
308
310
311
312
313
314
316
317
318
319
321
323
324
325
326
327
328
329
330
331
332
333
334
335
345
349
363
364
\.


--
-- TOC entry 3088 (class 0 OID 220679)
-- Dependencies: 225
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (id, name, description) FROM stdin;
1	Spinat (Gattung)	
2	Kohl	
4	Möhren	
5	Rettiche	
6	Petroselinum	
7	Basilikum (Gattung)	
8	Tomaten (Sektion)	
9	Spinat Butterflay	Spinat ist ein Gemüse für die kühleren Jahreszeiten aus der Familie der Gänsefußgewächse. Frischer Spinat hat ein sehr großes Volumen und fällt beim Kochen mächtig ein. Er ist im Spätherbst und im Frühjahr aus regionalem Anbau auf Wochenmärkten und in gut sortierten Lebensmittelgeschäften erhältlich. Weit verbreitet ist der tiefgefrorene Spinat.
10	Blumenkohl Erfurter Zwerg	Bewährte, frühe Sorte für den Anbau unter Glas und Folie und für den Freilandanbau zur Herbsternte. Bildet große, runde, feste, weiße Köpfe. Vitaminreiches Gemüse mit hohem Mineralstoffgehalt als Beilage oder für Salate. Zur Frostung geeignet.
11	Weißkohl Marner Lagerweiss	Der Weißkohl war bereits im Altrussland als wertvoller Vitaminelieferant in den kalten Monaten sehr geschätzt. In russischen Chroniken wird Weißkohl zum ersten Mal im Jahr 1073 erwähnt. Weißkohl kann man das ganze Jahr über kaufen, da es verschiedene Sorten von Früh- bis Winterkohl gibt. Sauerkraut wird aus feingeschnittenem Spitzkohl, der roh gestampft wird, hergestellt.
12	Möhre Colorado	Schnellwüchsige, aromatische Sorte mit kräftigen, keilförmigen Rüben, die innen orange bis gelb, teilweise violett und außen von tief violett und rot bis hellgelb gefärbt sind. Bei früher Saat nicht schossfest.
13	Radieschen Parat	Rotes, rundes Sommerradieschen, spät schießend und bei guter wasserversorgung nicht so scharf.
14	Petersilie Grüne Perle	Einjähriges, kräftiges, dichtkraus, dunkelgrüne Sorte. Während der Keimdauer darf der Boden nicht austrocknen .
15	Kohlrabi Gigant	Der Kohlrabi wird sehr groß und kann über viele Wochen geerntet werden. Auch große Exemplare bleiben zart und saftig. Im Keller lagerfähig bis ins Frühjahr. Braucht doppelt so viel Platz wie andere Kohlrabis.
16	Basilikum Genoveser	Großblättrige, sehr aromatische, mittelhohe bis hohe Pflanzen, für Fensterbrett, Frühbeet, Gewächshaus oder sonnige, geschützte Lage, gut geeignet für Topfkultur.
17	Cocktailtomate Vesennij Mieurinskij	Bestschmeckende Tomate, zuckersüß und hoch aromatisch. Rote, ca. 4 cm große Früchte, die an langen Blütenständen heranreifen.
18	Angelica	
19	Amarant (Pflanzengattung)	
20	Ampfer	
21	Blasenkirschen	
22	Bibernellen	
24	Malus	
25	Prunus	
26	Artischocken	
27	Nachtschatten	
28	Barbarakräuter	
30	Pyrus	
31	Bohnenkräuter	
32	Borago	
33	Rubus	
34	Brunnenkressen	
35	Buchweizen	
36	Wegwarten	
37	Paprika	
39	Dill (Pflanze)	
40	Weizen	
41	Artemisia	
42	Erdbeeren	
44	Blitum	
45	Zypergräser	
46	Lauch (Gattung)	
48	Feldsalat	
49	Kürbisse	
50	Phaseolus	
51	Kressen	
53	Senfe	
54	Malva	
55	Gerste (Gattung)	
56	Kletten	
58	Hafer	
59	Bocksbärte	
60	Dolichos	
62	Rispenhirsen	
63	Ribes	
64	Johanniskräuter	
65	Lagenaria	
66	Kamillen	
67	Kerbel	
68	Kichererbsen (Gattung)	
69	Zieste	
70	Borstenhirsen	
71	Koriander (Gattung)	
72	Kümmel (Gattung)	
73	Lavendel (Gattung)	
74	Linum,	
75	Levisticum	
76	Lens	
77	Coechlearia	
78	Löwenzahn (Taraxacum)	
79	Rübsen (Pflanze)	
80	Dost (Gattung)	
81	Basella	
82	Dietzhölze	
83	Beta	
85	Crambe	
86	Armoracia	
89	Pastinaken	
91	Wicken (Vicia)	
92	Gänsefüße	
94	Rhabarber (Gattung)	
95	Ringelblumen	
96	Roggen (Gattung)	
97	Rosmarin	
98	Rübe (Art)	
99	Senfrauke	
100	Lattiche	
101	Chrysantemum	
102	Salbei	
103	Sauerklee	
104	Zwiebel	
105	Mohn	
106	Duft-Lauch	
107	Perilla	
108	Schwarzwurzeln	
109	Sellerie	
110	Glycine	
111	Portulak (Gattung)	
112	Sonnenblumen (Gattung)	
113	Sorghumhirsen	
114	Spargel	
115	Tetragonolobus	
116	Thymus	
117	Benincasa	
29	Beinwell (Gattung)	\N
57	Gurken (Gattung)	\N
118	Citrullus	
120	Ruta	
122	Hyssopus	
136	Beinwell	
209	Okras	
210	Oregano	
211	Pak Choi	
212	Paprika	
213	Pastinaken	
214	Pepo-Kürbis	
3	Gemüsekohl	\N
215	Perlzwiebel	
222	Raps	
223	Rauke	
257	Tomatillo	
258	Wachskürbis	
259	Wassermelone	
260	Wein	
261	Weinraute	
262	Weizen	
263	Wermut	
264	Winterheckezwiebel	
265	Winterportulak (Montia perfoliata	
266	Wirsing	
267	Ysop	
268	Zitronenmelisse	
270	Zuckermais	
271	Zuckermelone	
272	Zuckerwurzel	
273	Sen	
274	Kohl	
275	Sen	
276	Große Kohlweißling	Der Große Kohlweißling (Pieris brassicae) ist ein Schmetterling (Tagfalter) aus der Familie der Weißlinge.
277	Erdfloh	Diese treten besonders bei trockenem Boden auf. Sie fressen Löcher in die Blätter und beeinträchtigen damit das Wachstum der Pflanze. Im Frühjahr schädigen sie bisweilen auch die Saat und die Keimblätter. Es hilft, den Boden feucht zu halten und zu mulchen. Durch Mischkultur werden die Erdflöhe abgelenkt.
278	Kleine Kohlfliege	Diese treten in drei Generationen zwischen Mai bis September auf. Die Maden fressen kleine braune Fraßgänge in die Radies. Pflanzen, die bis Mitte Mai geerntet werden, bleiben davon verschont. Vorbeugend hilft Gemüseschutznetz.
279	Blattlaus	
280	Rettichschwärze	ist eine Pilzerkrankung, die durch die Wurzeln eindringt. Die Knollen verfärben sich grau bis schwarz. Befallene Pflanzen vernichten, auf dem Beet mindestens drei Jahre keine Radieschen oder Rettiche mehr anbauen.
281	Petersilie	
283	Brokkoli	
284	Kohlrabi	
285	Kopfkohl	
286	Beifuß	
288	Johannisbeere n	
289	Pfefferminze	
294	Kopfsalate	
297	Erbsen	
299	Neuseeländer Spinat	
300	Sommerportula k	
304	Radieschen	
305	Rettiche	
307	Kürbisse	
308	Puffbohnen	
137	Birne	\N
296	Eiskraut	\N
293	Fenchel	\N
287	Fingerhut	\N
298	Gartenbohnen	\N
292	Tomaten	\N
269	Zucchini	\N
119	Vitis	
121	Montia	
123	Melissa	
124	Zea	
125	Sium	
126	Angelika	
127	Amarant	
128	Ampfer	
129	Andenbeere	
130	Anis	
131	Apfel	
132	Aprikosen	
133	Artischocke	
135	Barbarakresse	
138	Bohnenkraut	
139	Borretsch	
140	Brombeeren	
141	Brunnenkresse	
142	Buchweizen	
143	Chicorée	
145	Chinakohl	
147	Dill	
148	Dinkel	
149	Eberraute	
150	Emmer	
151	Einkorn	
152	Endivien	
153	Erdbeeren	
154	Erdbeerspinat	
155	Erdmandel	
156	Estragon	
157	Etagenzwiebel	
158	Feldsalat	
159	Feigenblattkürbis	
160	Feuerbohne	
161	Gartenkresse	
163	Gelber Senf	
164	Gemüsemalve	
165	Gerste	
166	Große Klette	
167	Grünkohl	
168	Gurken	
169	Guter Heinrich	
170	Hafer	
171	Haferwurzeln	
172	Helmbohne	
173	Herbstrübe	
174	Himbeeren	
175	Hirschhornwegerich	
176	Hirse	
177	Johannisbeeren (Ribes rubrum	
178	Johanniskraut	
179	Kalebasse	
180	Kamille	
181	Kardone	
182	Kerbel	
183	Kichererbsen	
184	Kirschen (Prunus cerasus	
185	Knollenziest	
186	Kohlrübe	
187	Kolbenhirse	
188	Koriander	
189	Kümmel	
190	Lavendel	
191	Lein	
192	Liebstöckel	
193	Linsen	
194	Löffelkraut	
195	Löwenzahn	
196	Mairüben	
197	Majoran	
198	Malabarspinat	
199	Mandeln	
200	Mangold	
201	Markstammkohl	
202	Meerkohl	
203	Meerrettich	
206	Mizuna	
207	Mondbohne	
208	Moschuskürbis	
216	Pfirsiche	
217	Pflaumen	
218	Porree	
219	Puffbohne	
220	Quinoa	
221	Radicchio	
224	Rhabarber	
225	Riesenkürbis	
226	Ringelblumen	
227	Roggen	
228	Rosenkohl	
134	Aubergine	\N
295	Knoblauch	\N
229	Rosmarin	
230	Rote Bete	
231	Rukola	
232	Rübsen	
233	Eissalate	
234	Salatchrysantheme	
235	Salatrauke	
236	Salbei	
237	Sauerklee	
238	Schalotte	
239	Schlafmohn	
240	Schnittknoblauch	
241	Schnittlauch	
242	Schwarzer Senf	
243	Schwarznessel	
244	Schwarzwurzeln	
245	Knollensellerie	
246	Silbersamenkürbis	
247	Sojabohnen	
248	Sommerportulak	
249	Sonnenblume	
250	Sorghumhires	
251	Spargel	
252	Spargelerbsen	
253	Spinat	
254	Teltower Rübchen	
255	Thymian	
256	Topinambur	
282	Sellerie	
290	Möhren	
291	Kartoffeln	
301	Paprikas	
310	Senf	
312	Salate	
314	Studentenblum en	
317	Kapuzinerkress e	
318	Zuckerhutsalat	
319	Schwarzwurzel n	
321	Schwarzwurze ln	
323	Kohlrüben	
324	Portulak	
325	Stachelbeeren	
326	Winterportulak	
327	Pstinaken	
328	Sonnenblumen	
329	mairüben	
330	rettiche	
331	Tagetes	
332	Zinnien	
333	Zitronenmeliss e	
334	Asia-Salate	
335	Sommerportul ak	
316	Echter Baldrian	\N
338	Valeriana	
306	Basilikum	\N
144	Chili	\N
313	Mittagsblumengewächse	\N
162	Gartenmelde	\N
336	ALTER FETTE SCHEIßE 3	ES FUNKT 3
339	Blattläuse	
340	Mesembryanthemum	
341	Mittagsblumengewächse	
342	Foeniculum	
343	Digitalis	
345	Zucchini Partenon	Eine robuste Sorte, die besonders früh und sicher Früchte ansetzt, auch bei feuchtkühlen Witterung. Sie bringt hohen Ertrag an dunkelgrünen, glänzenden Früchten mit zylindricher Form., immer wieder bis zum Frost.Zucchini sind wärmebedürftig und brauchen einen sonnigen bis halbschatigenStandort in einem nähstofreichen Boden. Im Sommer wöchentlich feucht halten. Früchte ab einer Länge von 20 cm ernten. Ab mitte Mai (frostfrei) ins Freiland verpflanzen.
344	Melden	
337	ALTER FETTE SCHEIßE 3	ES FUNKT 3
346	ALTER FETTE SCHEIßE 3	ES FUNKT 3
90	Ackerlauch	test
348	p471	
349	Marienkäfer	
350	Coccinellidae	
353	abc	
311	Blumenkohl	\N
355	abcd	\N
357		
358		
359		
360		
361		
362		
363	Coccinella	
364	Siebenpunkt Marienkäfer	
\.


--
-- TOC entry 3090 (class 0 OID 220687)
-- Dependencies: 227
-- Data for Name: taxa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.taxa (id) FROM stdin;
1
2
4
5
6
7
8
18
19
20
21
22
24
25
26
27
28
29
30
31
32
33
34
35
36
37
39
40
41
42
44
45
46
48
49
50
51
53
54
55
56
57
58
59
60
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
80
81
82
83
85
86
89
91
92
94
95
96
97
99
100
101
102
103
105
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
338
339
340
341
342
343
344
348
350
353
355
357
358
359
360
361
362
\.


--
-- TOC entry 3091 (class 0 OID 220690)
-- Dependencies: 228
-- Data for Name: timeperiods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.timeperiods (id, startarea, startmonth, endarea, endmonth, start, nextid, subjectref) FROM stdin;
1	2	7	2	5	f	\N	\N
2	1	1	2	2	t	1	\N
8	1	1	1	2	t	6	337
7	1	1	1	2	t	5	336
5	2	3	3	7	f	\N	336
6	2	3	3	7	f	\N	337
15	1	6	1	10	f	\N	\N
16	1	5	1	6	f	15	\N
17	1	3	1	6	t	16	\N
27	1	6	1	10	f	\N	269
28	1	5	1	6	f	27	269
29	1	3	1	6	t	28	269
9	1	6	1	10	f	\N	\N
10	1	5	1	6	f	9	\N
11	1	3	1	6	t	10	\N
12	1	6	1	10	f	\N	\N
13	1	5	1	6	f	12	\N
14	1	3	1	6	t	13	\N
24	1	6	1	10	f	\N	\N
25	1	5	1	7	f	24	\N
26	1	3	1	6	t	25	\N
30	1	6	1	10	f	\N	345
31	1	5	1	7	f	30	345
32	1	3	1	6	t	31	345
18	1	6	1	10	f	\N	\N
19	1	5	1	7	f	18	\N
20	1	3	1	6	t	19	\N
21	1	6	1	10	f	\N	\N
22	1	5	1	7	f	21	\N
23	1	3	1	6	t	22	\N
34	1	1	1	2	t	33	346
33	2	3	3	7	f	\N	346
3	2	7	2	8	f	\N	\N
4	1	1	2	2	t	3	\N
35	2	7	2	8	f	\N	10
36	1	1	2	2	t	35	10
\.


--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 201
-- Name: days_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.days_id_seq', 364, true);


--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 206
-- Name: interactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.interactions_id_seq', 883, true);


--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 209
-- Name: medias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medias_id_seq', 45, true);


--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 211
-- Name: names_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.names_id_seq', 1, false);


--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 214
-- Name: patchelements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patchelements_id_seq', 1, false);


--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 216
-- Name: patches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patches_id_seq', 2, true);


--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 221
-- Name: predicates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.predicates_id_seq', 10, true);


--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 226
-- Name: subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subjects_id_seq', 364, true);


--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 229
-- Name: timeperiods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timeperiods_id_seq', 36, true);


--
-- TOC entry 2797 (class 2606 OID 220705)
-- Name: aftercultures_mappping aftercultures_mappping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aftercultures_mappping
    ADD CONSTRAINT aftercultures_mappping_pkey PRIMARY KEY (id, aftercultures_id);


--
-- TOC entry 2799 (class 2606 OID 220707)
-- Name: animals animals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT animals_pkey PRIMARY KEY (id);


--
-- TOC entry 2801 (class 2606 OID 220709)
-- Name: blooms blooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blooms
    ADD CONSTRAINT blooms_pkey PRIMARY KEY (id);


--
-- TOC entry 2803 (class 2606 OID 220711)
-- Name: cultivates cultivates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cultivates
    ADD CONSTRAINT cultivates_pkey PRIMARY KEY (id);


--
-- TOC entry 2805 (class 2606 OID 220713)
-- Name: days days_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.days
    ADD CONSTRAINT days_pkey PRIMARY KEY (id);


--
-- TOC entry 2807 (class 2606 OID 220715)
-- Name: effects effects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.effects
    ADD CONSTRAINT effects_pkey PRIMARY KEY (id);


--
-- TOC entry 2809 (class 2606 OID 220717)
-- Name: harvests harvests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.harvests
    ADD CONSTRAINT harvests_pkey PRIMARY KEY (id);


--
-- TOC entry 2811 (class 2606 OID 220719)
-- Name: implants implants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.implants
    ADD CONSTRAINT implants_pkey PRIMARY KEY (id);


--
-- TOC entry 2813 (class 2606 OID 220721)
-- Name: interactions interactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT interactions_pkey PRIMARY KEY (id);


--
-- TOC entry 2815 (class 2606 OID 220723)
-- Name: lifetimes lifetimes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lifetimes
    ADD CONSTRAINT lifetimes_pkey PRIMARY KEY (id);


--
-- TOC entry 2817 (class 2606 OID 220725)
-- Name: medias medias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medias
    ADD CONSTRAINT medias_pkey PRIMARY KEY (id);


--
-- TOC entry 2819 (class 2606 OID 220727)
-- Name: names names_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.names
    ADD CONSTRAINT names_pkey PRIMARY KEY (id);


--
-- TOC entry 2821 (class 2606 OID 220729)
-- Name: nodes nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodes
    ADD CONSTRAINT nodes_pkey PRIMARY KEY (id);


--
-- TOC entry 2823 (class 2606 OID 220731)
-- Name: patchelements patchelements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patchelements
    ADD CONSTRAINT patchelements_pkey PRIMARY KEY (id);


--
-- TOC entry 2825 (class 2606 OID 220733)
-- Name: patches patches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patches
    ADD CONSTRAINT patches_pkey PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 220735)
-- Name: placements placements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placements
    ADD CONSTRAINT placements_pkey PRIMARY KEY (id);


--
-- TOC entry 2829 (class 2606 OID 220737)
-- Name: plants plants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plants
    ADD CONSTRAINT plants_pkey PRIMARY KEY (id);


--
-- TOC entry 2831 (class 2606 OID 220739)
-- Name: precultures_mappping precultures_mappping_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precultures_mappping
    ADD CONSTRAINT precultures_mappping_pkey PRIMARY KEY (id, precultures_id);


--
-- TOC entry 2833 (class 2606 OID 220741)
-- Name: predicates predicates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.predicates
    ADD CONSTRAINT predicates_pkey PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 220743)
-- Name: seedmaturitys seedmaturitys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seedmaturitys
    ADD CONSTRAINT seedmaturitys_pkey PRIMARY KEY (id);


--
-- TOC entry 2837 (class 2606 OID 220745)
-- Name: sowings sowings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sowings
    ADD CONSTRAINT sowings_pkey PRIMARY KEY (id);


--
-- TOC entry 2839 (class 2606 OID 220747)
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (id);


--
-- TOC entry 2841 (class 2606 OID 220749)
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- TOC entry 2843 (class 2606 OID 220751)
-- Name: taxa taxa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taxa
    ADD CONSTRAINT taxa_pkey PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 220753)
-- Name: timeperiods timeperiods_nextid_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeperiods
    ADD CONSTRAINT timeperiods_nextid_key UNIQUE (nextid);


--
-- TOC entry 2847 (class 2606 OID 220755)
-- Name: timeperiods timeperiods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeperiods
    ADD CONSTRAINT timeperiods_pkey PRIMARY KEY (id);


--
-- TOC entry 2909 (class 2606 OID 220934)
-- Name: plants fk1788add739da9f19; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plants
    ADD CONSTRAINT fk1788add739da9f19 FOREIGN KEY (id) REFERENCES public.species(id);


--
-- TOC entry 2860 (class 2606 OID 220756)
-- Name: cultivates fk19f67e908ccde5cb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cultivates
    ADD CONSTRAINT fk19f67e908ccde5cb FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2869 (class 2606 OID 220761)
-- Name: implants fk221528268ccde5cb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.implants
    ADD CONSTRAINT fk221528268ccde5cb FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2857 (class 2606 OID 220766)
-- Name: blooms fk26d7eae8ccde5cb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blooms
    ADD CONSTRAINT fk26d7eae8ccde5cb FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2929 (class 2606 OID 220771)
-- Name: taxa fk28000297913f13; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taxa
    ADD CONSTRAINT fk28000297913f13 FOREIGN KEY (id) REFERENCES public.nodes(id);


--
-- TOC entry 2861 (class 2606 OID 221029)
-- Name: cultivates fk29485d042eabff88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cultivates
    ADD CONSTRAINT fk29485d042eabff88 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2895 (class 2606 OID 220914)
-- Name: nodes fk2f6a097b1d01c01b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodes
    ADD CONSTRAINT fk2f6a097b1d01c01b FOREIGN KEY (id) REFERENCES public.subjects(id);


--
-- TOC entry 2896 (class 2606 OID 220919)
-- Name: nodes fk2f6a097ba7a1ab5c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodes
    ADD CONSTRAINT fk2f6a097ba7a1ab5c FOREIGN KEY (parent) REFERENCES public.nodes(id);


--
-- TOC entry 2851 (class 2606 OID 220954)
-- Name: aftercultures_mappping fk3741c64f12572275; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aftercultures_mappping
    ADD CONSTRAINT fk3741c64f12572275 FOREIGN KEY (id) REFERENCES public.plants(id);


--
-- TOC entry 2850 (class 2606 OID 220949)
-- Name: aftercultures_mappping fk3741c64f9aa621a5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aftercultures_mappping
    ADD CONSTRAINT fk3741c64f9aa621a5 FOREIGN KEY (aftercultures_id) REFERENCES public.plants(id);


--
-- TOC entry 2934 (class 2606 OID 220999)
-- Name: timeperiods fk3c93bca545210cfe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeperiods
    ADD CONSTRAINT fk3c93bca545210cfe FOREIGN KEY (nextid) REFERENCES public.timeperiods(id);


--
-- TOC entry 2935 (class 2606 OID 221004)
-- Name: timeperiods fk3c93bca5b7d403df; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeperiods
    ADD CONSTRAINT fk3c93bca5b7d403df FOREIGN KEY (subjectref) REFERENCES public.subjects(id);


--
-- TOC entry 2858 (class 2606 OID 221024)
-- Name: blooms fk46d4c1fe2eabff88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blooms
    ADD CONSTRAINT fk46d4c1fe2eabff88 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2879 (class 2606 OID 220994)
-- Name: interactions fk4deb4107393c1ce7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk4deb4107393c1ce7 FOREIGN KEY (impactsubject) REFERENCES public.subjects(id);


--
-- TOC entry 2878 (class 2606 OID 220989)
-- Name: interactions fk4deb41074ef0062; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk4deb41074ef0062 FOREIGN KEY (object) REFERENCES public.subjects(id);


--
-- TOC entry 2876 (class 2606 OID 220979)
-- Name: interactions fk4deb41079a621a66; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk4deb41079a621a66 FOREIGN KEY (subject) REFERENCES public.subjects(id);


--
-- TOC entry 2877 (class 2606 OID 220984)
-- Name: interactions fk4deb4107b43a11a4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk4deb4107b43a11a4 FOREIGN KEY (predicate) REFERENCES public.predicates(id);


--
-- TOC entry 2884 (class 2606 OID 220776)
-- Name: lifetimes fk5f1450de8ccde5cb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lifetimes
    ADD CONSTRAINT fk5f1450de8ccde5cb FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2893 (class 2606 OID 220781)
-- Name: nodes fk5f7a15475d40c90; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodes
    ADD CONSTRAINT fk5f7a15475d40c90 FOREIGN KEY (parent) REFERENCES public.nodes(id);


--
-- TOC entry 2894 (class 2606 OID 220786)
-- Name: nodes fk5f7a1547a73b57d7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodes
    ADD CONSTRAINT fk5f7a1547a73b57d7 FOREIGN KEY (id) REFERENCES public.subjects(id);


--
-- TOC entry 2902 (class 2606 OID 220791)
-- Name: placements fk66ed67c2aa76088d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placements
    ADD CONSTRAINT fk66ed67c2aa76088d FOREIGN KEY (plantref) REFERENCES public.plants(id);


--
-- TOC entry 2903 (class 2606 OID 220796)
-- Name: placements fk66ed67c2c82714ab; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placements
    ADD CONSTRAINT fk66ed67c2c82714ab FOREIGN KEY (id) REFERENCES public.patchelements(id);


--
-- TOC entry 2854 (class 2606 OID 220801)
-- Name: animals fk6c559d11f6e3815; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT fk6c559d11f6e3815 FOREIGN KEY (id) REFERENCES public.species(id);


--
-- TOC entry 2924 (class 2606 OID 221009)
-- Name: sowings fk75dccd6d2eabff88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sowings
    ADD CONSTRAINT fk75dccd6d2eabff88 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2887 (class 2606 OID 220806)
-- Name: medias fk79a375cfd1169c84; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medias
    ADD CONSTRAINT fk79a375cfd1169c84 FOREIGN KEY (subject) REFERENCES public.subjects(id);


--
-- TOC entry 2932 (class 2606 OID 220811)
-- Name: timeperiods fk7cf2f94719c1cd50; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeperiods
    ADD CONSTRAINT fk7cf2f94719c1cd50 FOREIGN KEY (nextid) REFERENCES public.timeperiods(id);


--
-- TOC entry 2933 (class 2606 OID 220816)
-- Name: timeperiods fk7cf2f94735c987c7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeperiods
    ADD CONSTRAINT fk7cf2f94735c987c7 FOREIGN KEY (subjectref) REFERENCES public.subjects(id);


--
-- TOC entry 2899 (class 2606 OID 220821)
-- Name: patchelements fk8173b2635bd013bf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patchelements
    ADD CONSTRAINT fk8173b2635bd013bf FOREIGN KEY (patchref) REFERENCES public.patches(id);


--
-- TOC entry 2900 (class 2606 OID 221044)
-- Name: patchelements fk82677ae7249fb749; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patchelements
    ADD CONSTRAINT fk82677ae7249fb749 FOREIGN KEY (patchref) REFERENCES public.patches(id);


--
-- TOC entry 2926 (class 2606 OID 220826)
-- Name: species fk8c96c8897913f13; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT fk8c96c8897913f13 FOREIGN KEY (id) REFERENCES public.nodes(id);


--
-- TOC entry 2921 (class 2606 OID 221019)
-- Name: seedmaturitys fk9257bb5f2eabff88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seedmaturitys
    ADD CONSTRAINT fk9257bb5f2eabff88 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2872 (class 2606 OID 220831)
-- Name: interactions fk9468ddb1131aec42; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk9468ddb1131aec42 FOREIGN KEY (impactsubject) REFERENCES public.subjects(id);


--
-- TOC entry 2873 (class 2606 OID 220836)
-- Name: interactions fk9468ddb1492ba278; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk9468ddb1492ba278 FOREIGN KEY (predicate) REFERENCES public.predicates(id);


--
-- TOC entry 2874 (class 2606 OID 220841)
-- Name: interactions fk9468ddb1cc64fcb7; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk9468ddb1cc64fcb7 FOREIGN KEY (object) REFERENCES public.subjects(id);


--
-- TOC entry 2875 (class 2606 OID 220846)
-- Name: interactions fk9468ddb1d1169c84; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk9468ddb1d1169c84 FOREIGN KEY (subject) REFERENCES public.subjects(id);


--
-- TOC entry 2890 (class 2606 OID 220851)
-- Name: names fk95f4359ad2c6a1f8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.names
    ADD CONSTRAINT fk95f4359ad2c6a1f8 FOREIGN KEY (node) REFERENCES public.nodes(id);


--
-- TOC entry 2923 (class 2606 OID 220856)
-- Name: sowings fk9c12d1d08ccde5cb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sowings
    ADD CONSTRAINT fk9c12d1d08ccde5cb FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2898 (class 2606 OID 221071)
-- Name: nodes fk_1799fca2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodes
    ADD CONSTRAINT fk_1799fca2 FOREIGN KEY (parent) REFERENCES public.nodes(id);


--
-- TOC entry 2889 (class 2606 OID 221061)
-- Name: medias fk_194d2dde; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medias
    ADD CONSTRAINT fk_194d2dde FOREIGN KEY (subject) REFERENCES public.subjects(id);


--
-- TOC entry 2892 (class 2606 OID 221126)
-- Name: names fk_2818358a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.names
    ADD CONSTRAINT fk_2818358a FOREIGN KEY (node) REFERENCES public.nodes(id);


--
-- TOC entry 2852 (class 2606 OID 221101)
-- Name: aftercultures_mappping fk_35f66856; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aftercultures_mappping
    ADD CONSTRAINT fk_35f66856 FOREIGN KEY (aftercultures_id) REFERENCES public.plants(id);


--
-- TOC entry 2907 (class 2606 OID 221206)
-- Name: placements fk_42f126f5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placements
    ADD CONSTRAINT fk_42f126f5 FOREIGN KEY (plantref) REFERENCES public.plants(id);


--
-- TOC entry 2937 (class 2606 OID 221156)
-- Name: timeperiods fk_43a3d0a4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeperiods
    ADD CONSTRAINT fk_43a3d0a4 FOREIGN KEY (subjectref) REFERENCES public.subjects(id);


--
-- TOC entry 2881 (class 2606 OID 221136)
-- Name: interactions fk_43e8ec37; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk_43e8ec37 FOREIGN KEY (predicate) REFERENCES public.predicates(id);


--
-- TOC entry 2880 (class 2606 OID 221131)
-- Name: interactions fk_4d48dc2f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk_4d48dc2f FOREIGN KEY (subject) REFERENCES public.subjects(id);


--
-- TOC entry 2910 (class 2606 OID 221086)
-- Name: plants fk_4fc23e80; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plants
    ADD CONSTRAINT fk_4fc23e80 FOREIGN KEY (id) REFERENCES public.species(id);


--
-- TOC entry 2901 (class 2606 OID 221196)
-- Name: patchelements fk_52810082; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patchelements
    ADD CONSTRAINT fk_52810082 FOREIGN KEY (patchref) REFERENCES public.patches(id);


--
-- TOC entry 2922 (class 2606 OID 221171)
-- Name: seedmaturitys fk_551a11ff; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seedmaturitys
    ADD CONSTRAINT fk_551a11ff FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2906 (class 2606 OID 221201)
-- Name: placements fk_58a4e232; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placements
    ADD CONSTRAINT fk_58a4e232 FOREIGN KEY (id) REFERENCES public.patchelements(id);


--
-- TOC entry 2862 (class 2606 OID 221181)
-- Name: cultivates fk_6db50684; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cultivates
    ADD CONSTRAINT fk_6db50684 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2928 (class 2606 OID 221081)
-- Name: species fk_6df987d9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT fk_6df987d9 FOREIGN KEY (id) REFERENCES public.nodes(id);


--
-- TOC entry 2856 (class 2606 OID 221111)
-- Name: animals fk_84bf138b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT fk_84bf138b FOREIGN KEY (id) REFERENCES public.species(id);


--
-- TOC entry 2931 (class 2606 OID 221116)
-- Name: taxa fk_977b2c4b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taxa
    ADD CONSTRAINT fk_977b2c4b FOREIGN KEY (id) REFERENCES public.nodes(id);


--
-- TOC entry 2868 (class 2606 OID 221166)
-- Name: harvests fk_9a9122eb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.harvests
    ADD CONSTRAINT fk_9a9122eb FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2865 (class 2606 OID 221076)
-- Name: effects fk_b1b33f7a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.effects
    ADD CONSTRAINT fk_b1b33f7a FOREIGN KEY (id) REFERENCES public.nodes(id);


--
-- TOC entry 2915 (class 2606 OID 221091)
-- Name: precultures_mappping fk_b2fb0a2b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precultures_mappping
    ADD CONSTRAINT fk_b2fb0a2b FOREIGN KEY (precultures_id) REFERENCES public.plants(id);


--
-- TOC entry 2919 (class 2606 OID 221121)
-- Name: predicates fk_c7ecb262; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.predicates
    ADD CONSTRAINT fk_c7ecb262 FOREIGN KEY (parentref) REFERENCES public.predicates(id);


--
-- TOC entry 2859 (class 2606 OID 221176)
-- Name: blooms fk_cffa174f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blooms
    ADD CONSTRAINT fk_cffa174f FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2853 (class 2606 OID 221106)
-- Name: aftercultures_mappping fk_d5beeecf; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aftercultures_mappping
    ADD CONSTRAINT fk_d5beeecf FOREIGN KEY (id) REFERENCES public.plants(id);


--
-- TOC entry 2886 (class 2606 OID 221191)
-- Name: lifetimes fk_e0aa9f58; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lifetimes
    ADD CONSTRAINT fk_e0aa9f58 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2882 (class 2606 OID 221141)
-- Name: interactions fk_e0ba4134; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk_e0ba4134 FOREIGN KEY (object) REFERENCES public.subjects(id);


--
-- TOC entry 2916 (class 2606 OID 221096)
-- Name: precultures_mappping fk_e492aee8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precultures_mappping
    ADD CONSTRAINT fk_e492aee8 FOREIGN KEY (id) REFERENCES public.plants(id);


--
-- TOC entry 2925 (class 2606 OID 221161)
-- Name: sowings fk_e9af2ae; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sowings
    ADD CONSTRAINT fk_e9af2ae FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2936 (class 2606 OID 221151)
-- Name: timeperiods fk_f16d7073; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeperiods
    ADD CONSTRAINT fk_f16d7073 FOREIGN KEY (nextid) REFERENCES public.timeperiods(id);


--
-- TOC entry 2883 (class 2606 OID 221146)
-- Name: interactions fk_f34fd50e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interactions
    ADD CONSTRAINT fk_f34fd50e FOREIGN KEY (impactsubject) REFERENCES public.subjects(id);


--
-- TOC entry 2897 (class 2606 OID 221066)
-- Name: nodes fk_f44eadb2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nodes
    ADD CONSTRAINT fk_f44eadb2 FOREIGN KEY (id) REFERENCES public.subjects(id);


--
-- TOC entry 2871 (class 2606 OID 221186)
-- Name: implants fk_fcf6ea49; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.implants
    ADD CONSTRAINT fk_fcf6ea49 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2867 (class 2606 OID 221014)
-- Name: harvests fka32a84db2eabff88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.harvests
    ADD CONSTRAINT fka32a84db2eabff88 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2855 (class 2606 OID 220959)
-- Name: animals fka750bc7039da9f19; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animals
    ADD CONSTRAINT fka750bc7039da9f19 FOREIGN KEY (id) REFERENCES public.species(id);


--
-- TOC entry 2888 (class 2606 OID 220909)
-- Name: medias fkb7b10a309a621a66; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medias
    ADD CONSTRAINT fkb7b10a309a621a66 FOREIGN KEY (subject) REFERENCES public.subjects(id);


--
-- TOC entry 2891 (class 2606 OID 220974)
-- Name: names fkbc93d93e6e5f3328; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.names
    ADD CONSTRAINT fkbc93d93e6e5f3328 FOREIGN KEY (node) REFERENCES public.nodes(id);


--
-- TOC entry 2905 (class 2606 OID 221054)
-- Name: placements fkc0e10c9e3248e604; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placements
    ADD CONSTRAINT fkc0e10c9e3248e604 FOREIGN KEY (plantref) REFERENCES public.plants(id);


--
-- TOC entry 2904 (class 2606 OID 221049)
-- Name: placements fkc0e10c9eb90128e9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.placements
    ADD CONSTRAINT fkc0e10c9eb90128e9 FOREIGN KEY (id) REFERENCES public.patchelements(id);


--
-- TOC entry 2870 (class 2606 OID 221034)
-- Name: implants fkc5aecc622eabff88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.implants
    ADD CONSTRAINT fkc5aecc622eabff88 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2927 (class 2606 OID 220929)
-- Name: species fkc60024dad5eac857; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT fkc60024dad5eac857 FOREIGN KEY (id) REFERENCES public.nodes(id);


--
-- TOC entry 2848 (class 2606 OID 220861)
-- Name: aftercultures_mappping fkca638c5e54978f1c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aftercultures_mappping
    ADD CONSTRAINT fkca638c5e54978f1c FOREIGN KEY (aftercultures_id) REFERENCES public.plants(id);


--
-- TOC entry 2849 (class 2606 OID 220866)
-- Name: aftercultures_mappping fkca638c5e88598ab8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aftercultures_mappping
    ADD CONSTRAINT fkca638c5e88598ab8 FOREIGN KEY (id) REFERENCES public.plants(id);


--
-- TOC entry 2930 (class 2606 OID 220964)
-- Name: taxa fkd9948beed5eac857; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taxa
    ADD CONSTRAINT fkd9948beed5eac857 FOREIGN KEY (id) REFERENCES public.nodes(id);


--
-- TOC entry 2885 (class 2606 OID 221039)
-- Name: lifetimes fkd9f61e132eabff88; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lifetimes
    ADD CONSTRAINT fkd9f61e132eabff88 FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2911 (class 2606 OID 220871)
-- Name: precultures_mappping fkdc68415b165d28d1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precultures_mappping
    ADD CONSTRAINT fkdc68415b165d28d1 FOREIGN KEY (precultures_id) REFERENCES public.plants(id);


--
-- TOC entry 2912 (class 2606 OID 220876)
-- Name: precultures_mappping fkdc68415b88598ab8; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precultures_mappping
    ADD CONSTRAINT fkdc68415b88598ab8 FOREIGN KEY (id) REFERENCES public.plants(id);


--
-- TOC entry 2914 (class 2606 OID 220944)
-- Name: precultures_mappping fke5e2ed0c12572275; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precultures_mappping
    ADD CONSTRAINT fke5e2ed0c12572275 FOREIGN KEY (id) REFERENCES public.plants(id);


--
-- TOC entry 2913 (class 2606 OID 220939)
-- Name: precultures_mappping fke5e2ed0c82c3648c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precultures_mappping
    ADD CONSTRAINT fke5e2ed0c82c3648c FOREIGN KEY (precultures_id) REFERENCES public.plants(id);


--
-- TOC entry 2918 (class 2606 OID 220969)
-- Name: predicates fkeab859b44f779e03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.predicates
    ADD CONSTRAINT fkeab859b44f779e03 FOREIGN KEY (parentref) REFERENCES public.predicates(id);


--
-- TOC entry 2866 (class 2606 OID 220881)
-- Name: harvests fkeae714e88ccde5cb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.harvests
    ADD CONSTRAINT fkeae714e88ccde5cb FOREIGN KEY (id) REFERENCES public.timeperiods(id);


--
-- TOC entry 2863 (class 2606 OID 220886)
-- Name: effects fked1facb097913f13; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.effects
    ADD CONSTRAINT fked1facb097913f13 FOREIGN KEY (id) REFERENCES public.nodes(id);


--
-- TOC entry 2917 (class 2606 OID 220891)
-- Name: predicates fkee168f909a170b64; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.predicates
    ADD CONSTRAINT fkee168f909a170b64 FOREIGN KEY (parentref) REFERENCES public.predicates(id);


--
-- TOC entry 2864 (class 2606 OID 220924)
-- Name: effects fkf07cc02fd5eac857; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.effects
    ADD CONSTRAINT fkf07cc02fd5eac857 FOREIGN KEY (id) REFERENCES public.nodes(id);


--
-- TOC entry 2908 (class 2606 OID 220896)
-- Name: plants fkfa03d1e4f6e3815; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.plants
    ADD CONSTRAINT fkfa03d1e4f6e3815 FOREIGN KEY (id) REFERENCES public.species(id);


--
-- TOC entry 2920 (class 2606 OID 220901)
-- Name: seedmaturitys fkfde48b5f8ccde5cb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seedmaturitys
    ADD CONSTRAINT fkfde48b5f8ccde5cb FOREIGN KEY (id) REFERENCES public.timeperiods(id);


-- Completed on 2021-07-13 06:54:42

--
-- PostgreSQL database dump complete
--

