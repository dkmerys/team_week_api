--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: danielmerys
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO danielmerys;

--
-- Name: businesses; Type: TABLE; Schema: public; Owner: danielmerys
--

CREATE TABLE public.businesses (
    id bigint NOT NULL,
    name character varying,
    address character varying,
    link character varying,
    category character varying
);


ALTER TABLE public.businesses OWNER TO danielmerys;

--
-- Name: businesses_id_seq; Type: SEQUENCE; Schema: public; Owner: danielmerys
--

CREATE SEQUENCE public.businesses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.businesses_id_seq OWNER TO danielmerys;

--
-- Name: businesses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: danielmerys
--

ALTER SEQUENCE public.businesses_id_seq OWNED BY public.businesses.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: danielmerys
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO danielmerys;

--
-- Name: businesses id; Type: DEFAULT; Schema: public; Owner: danielmerys
--

ALTER TABLE ONLY public.businesses ALTER COLUMN id SET DEFAULT nextval('public.businesses_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: danielmerys
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-15 16:36:05.515539	2020-06-15 16:36:05.515539
\.


--
-- Data for Name: businesses; Type: TABLE DATA; Schema: public; Owner: danielmerys
--

COPY public.businesses (id, name, address, link, category) FROM stdin;
130	Kee's Loaded Kitchen	3625 NE MLK Jr Blvd, Portland Or	https://www.facebook.com/KeesLoadedKitchen/	food/bev
131	Yaad Style Jamaican Cuisine	3532 NE MLK Jr Blvd, Portland Or	http://www.yaadstylejamaican.com/	food/bev
132	Caribbean Spice	4516 NE 42nd Ave, Portland Or	https://www.yelp.com/biz/caribbean-spice-portland	food/bev
133	42nd Ave Fish & Chips	5302 NE 42nd Ave, Portland Or	https://www.yelp.com/biz/42nd-ave-fish-and-chips-portland	food/bev
134	Hana's New Orleans Snowballs & More	NE Martin Luther King Jr Blvd, Portland Or	https://www.facebook.com/hanaspdx/	food/bev
135	Jamaican Homestyle Cuisine	441 N Killingsworth St, Portland Or	https://www.jamaicanhomestylepdx.com/	food/bev
136	Cannon's Rib Express	3625 NE Martin Luther King\nPortland, Or	http://www.cannonsribexpress.com/	food/bev
137	Catfish Lane	8145 SE 82nd Ave, Portland Or	http://www.cartlandia.com/carts#/catfish-lane	food/bev
138	Best Brows In Portland	11 NE Martin Luther King Jr Blvd Suite 301, Portland Or	http://www.bestbrowsinportland.com/	beauty
139	Amir's Motherland Dish	7100 NE Glisan St, Portland Or	https://amirs-motherland-dish.business.site/	food/bev
140	DB Dessert Company	6824 NE Glisan St, Portland Or 	https://www.dbdessertcompany.com/	food/bev
141	Dean's Beauty Salon	215 NE Hancock St, Portland Or	http://deansbeautysalon.com/	beauty
142	Designz By Shiree	unavailable	https://designzbyshiree.squarespace.com/	design
143	Cason's Fine Meats	5015 NE MLK Jr Blvd, Portland Or	https://www.casonsfinemeats.com/	food/bev
144	Deadstock Coffee Roasters	408 NW Couch st. Suite 408, Portland Or	http://www.deadstockcoffee.com/	food/bev
145	Merkato Ethiopian Music & Food Store	2605 NE MLK jr Blvd, Portland Or	https://www.mesopdx.org/merkato-ethiopian-food-store-llc/	food/bev
146	Hayat Somali Restaurant	16755 SW Baseline Rd, Beaverton Or	http://www.hayatsomalirestaurant.com/	food/bev
147	Queen of Sheba Resturant	2413 NE MLK Jr Blvd, Portland Or	https://queenofsheba.biz/	food/bev
148	Bole Etheopian Restuarant	915 NE Alberta, Portland Or	https://www.facebook.com/boleethiopianpdx/	food/bev
149	Trap Kitchen	8523 SE Stark, Portland Or	https://www.trapkitchen.com/	food/bev
150	Po'Shines Cafe De La Soul	8139 N Denver Ave, Portland Or	http://www.poshines.com/	food/bev
151	Fish Fusion	5800 NE MLK Jr Blvd, Portland Or	https://www.facebook.com/fishfusion/	food/bev
152	Black Star Grill	1927 SW 4th Ave, Portland OR	http://blackstargrill.com/	food/bev
153	Champions Barbering Institute	424 NE Killingsworth St, Portland, OR	https://www.cbi.life/	beauty
154	Conscious Coils	1033 SW Yamhill St. Suite 103, Portland, Or	http://www.consciouscoils.com/	beauty
155	Design + Culture Lab	unavailable	http://www.designculturelab.com/	design
156	Dub's St. Johns	8727 N Lombard St. Portland, Or	https://www.facebook.com/dubstjohns/	food/bev
157	Enat Kitchen	300 N Killingsworth St Portland, Or	https://www.facebook.com/Enat-Kitchen-125506387476653/about/	food/bev
158	Felton and Mary's Artisan Foods	unavailable	https://feltonandmary.com/#felton-mary	food/bev
159	Flowers Chiropractic	2124 NE Hancock St Portland, Or	https://drbillyflowers.com/	healthcare
160	Green Haus Botique + Gallery	376 NE Sumner St, Portland, OR	http://www.greenhausgallery.com/	clothing
161	A Heavenly Taste Cafe	4200 NE MLK Jr Blvd, Portland, Or	https://www.facebook.com/AHeavenlyTasteCafe/about/	food/bev
162	Highland African American Youth Community Coalition	7600 NE Glisan Street, Portland, OR	http://haaycc.com/home/index.php/about/	misc
163	Holla Mentors	3435 NE 45th Ave. Suite E, Portland, Or	http://www.hollamentors.org/	misc
164	Ignorant/Reflections	unavailable	http://ignorantreflections.bigcartel.com/	clothing
165	Imara Publishing	unavailable	https://www.imarapublishing.com/	publishing
166	We Out Here Magazine	unavailable	http://www.weouthere.net/	publishing
167	Portland Observer	4747 NE MLK Jr Blvd, Portland, Or	http://portlandobserver.com/	publishing
168	The Sugar Mama	1704 NE 32nd Ave, Portland, Or	http://www.thesugarmamapdx.com/	beauty
169	Thirty 27 Boutique	3519 Ne MLK Jr Blvd, Portland Or	https://www.thirty27boutique.com/	clothing
170	Tempo Cycling and Pilates	1623 SE 12th Ave, Portland, Or	http://www.tempocycles.com/#!/page/243727/home	healtcare
171	Big Elephant Kitchen	3530 SW Multnomah Blvd. Portland, Or	https://www.facebook.com/BigElephantKitchen/	food/bev
172	The Brown Beauty	unavailable	https://www.thebrownbeauty.com/	beauty
173	Soapbox Theory	unavailable	http://shop.soapboxtheory.com/	clothing
174	Six Nine Nine Hair Design	545 NE Killingsworth st. Portland, Or	http://sixninehairdesign.com/	beauty
175	Swyft Studios	unavailable	https://www.swyftstudios.com/	design
176	Sistahs 4 Life	3131 N Vancouver Ave. Portland Or	http://www.sistahs4life.com/	misc
177	E'Njoni Cafe	910 N Killingsworth St, Portland Or	unavailable	food/bev
178	EcoVibe Apparel	1408 NE Alberta St, Portland Or	https://ecovibestyle.com/	clothing
179	Mirage Salon	2948 NE Martin Luther King Jr Blvd #3051, Portland Or	https://mirage-salon-beauty-salon.business.site/	beauty
180	MAXXIMO Insurance Services	731 N Hayden Meadows Dr #209, Portland Or	https://mymaxximo.com/	misc
181	Show Dogs Grooming	926 N Lombard, Portland Or	http://showdogsgrooming.com/index_files/Page446.htm	misc
182	Reo's Ribs	4211 NE Sandy Blvd	http://reosribsbbq.com/	food/bev
183	Miru Vodka	unavailable	https://www.facebook.com/miruvodka/	food/bev
184	Right Bayou Cajun	unavailable	http://www.rightbayoucajun.com/	food/bev
185	Revelations Hair Design	5140 NE 42nd Ave. Portland, Or	https://www.facebook.com/revelationshairdesign/?ref=page_internal	beauty
186	Releaf Health	3213 NE MLK Jr. Blvd Portland, OR	https://releafhealth.green/?fbclid=IwAR1x7IbZmGRuT9gFv7SKYqRyjnBAiYLHJtCqZ4pxRz8Hi5lr9S5TExNBtUg	healthcare
187	Portland Movers Company	1320 NE 63rd Ave, Portland, Or	https://portlandmoversco.com/	misc
188	New Normal 4 Now	uavailable	https://www.newnormal4now.com/	clothing
189	Okojie Wellness	7319 N John Ave Suite 101 Portland, Or	https://www.okojiewellness.com/	healthcare
190	Now It's Done Seasonings	unavailable	https://nowitsdoneseasonings.com/	food/bev
191	NE Creperie	unavailable	https://www.facebook.com/necreperie/	food/bev
192	Niam Hasan Photography	unavailable	https://www.naimhasanphotography.com/	design
193	Ms. T's Chicken & Catfish	8145 SE 82d Ave. Portland, Or	https://www.facebook.com/Ms.Ts.ChickenNCatfish/	food/bev
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: danielmerys
--

COPY public.schema_migrations (version) FROM stdin;
20200615163247
20200615202606
\.


--
-- Name: businesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: danielmerys
--

SELECT pg_catalog.setval('public.businesses_id_seq', 194, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: danielmerys
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: businesses businesses_pkey; Type: CONSTRAINT; Schema: public; Owner: danielmerys
--

ALTER TABLE ONLY public.businesses
    ADD CONSTRAINT businesses_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: danielmerys
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

