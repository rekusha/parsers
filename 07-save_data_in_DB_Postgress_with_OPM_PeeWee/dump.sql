--
-- PostgreSQL database dump
--

-- Dumped from database version 13.0
-- Dumped by pg_dump version 13.0

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
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    price character varying(255) NOT NULL
);


ALTER TABLE public.coin OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coin_id_seq OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;


--
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


--
-- Data for Name: coin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coin (id, name, url, price) FROM stdin;
1	Bitcoin	https://www.coingecko.com/en/coins/bitcoin	10730.71
2	Ethereum	https://www.coingecko.com/en/coins/ethereum	351.81
3	Tether	https://www.coingecko.com/en/coins/tether	0.999681
4	XRP	https://www.coingecko.com/en/coins/xrp	0.254525
5	Binance Coin	https://www.coingecko.com/en/coins/binance-coin	28.92
6	Bitcoin Cash	https://www.coingecko.com/en/coins/bitcoin-cash	220.22
7	Polkadot	https://www.coingecko.com/en/coins/polkadot	4.08
8	Chainlink	https://www.coingecko.com/en/coins/chainlink	9.38
9	Crypto.com Coin	https://www.coingecko.com/en/coins/crypto-com-coin	0.149254
10	Litecoin	https://www.coingecko.com/en/coins/litecoin	46.35
11	Cardano	https://www.coingecko.com/en/coins/cardano	0.09678861
12	Bitcoin SV	https://www.coingecko.com/en/coins/bitcoin-sv	161.43
13	USD Coin	https://www.coingecko.com/en/coins/usd-coin	1.00
14	EOS	https://www.coingecko.com/en/coins/eos	2.51
15	Monero	https://www.coingecko.com/en/coins/monero	111.32
16	TRON	https://www.coingecko.com/en/coins/tron	0.02619805
17	OKB	https://www.coingecko.com/en/coins/okb	6.14
18	Tezos	https://www.coingecko.com/en/coins/tezos	2.11
19	Stellar	https://www.coingecko.com/en/coins/stellar	0.07377182
20	Cosmos	https://www.coingecko.com/en/coins/cosmos	5.18
21	NEO	https://www.coingecko.com/en/coins/neo	17.11
22	LEO Token	https://www.coingecko.com/en/coins/leo-token	1.23
23	cDAI	https://www.coingecko.com/en/coins/compound-dai	0.02096921
24	NEM	https://www.coingecko.com/en/coins/nem	0.121168
25	Huobi Token	https://www.coingecko.com/en/coins/huobi-token	4.61
26	Wrapped Bitcoin	https://www.coingecko.com/en/coins/wrapped-bitcoin	10752.51
27	Dai	https://www.coingecko.com/en/coins/dai	1.01
28	IOTA	https://www.coingecko.com/en/coins/iota	0.265741
29	Theta Network	https://www.coingecko.com/en/coins/theta-network	0.713762
30	VeChain	https://www.coingecko.com/en/coins/vechain	0.01091356
31	Zcash	https://www.coingecko.com/en/coins/zcash	63.84
32	Dash	https://www.coingecko.com/en/coins/dash	66.75
33	Aave	https://www.coingecko.com/en/coins/aave-old	0.485583
34	Ethereum Classic	https://www.coingecko.com/en/coins/ethereum-classic	5.11
35	Binance USD	https://www.coingecko.com/en/coins/binance-usd	0.999492
36	Uniswap	https://www.coingecko.com/en/coins/uniswap	3.04
37	yearn.finance	https://www.coingecko.com/en/coins/yearn-finance	18383.75
38	OMG Network	https://www.coingecko.com/en/coins/omg-network	3.66
39	Maker	https://www.coingecko.com/en/coins/maker	545.64
40	Synthetix Network Token	https://www.coingecko.com/en/coins/synthetix-network-token	3.86
41	Celsius Network	https://www.coingecko.com/en/coins/celsius-network-token	1.26
42	TrueUSD	https://www.coingecko.com/en/coins/true-usd	1.00
43	UMA	https://www.coingecko.com/en/coins/uma	7.06
44	Compound	https://www.coingecko.com/en/coins/compound	113.69
45	Ontology	https://www.coingecko.com/en/coins/ontology	0.581588
46	DigiByte	https://www.coingecko.com/en/coins/digibyte	0.02510159
47	Dogecoin	https://www.coingecko.com/en/coins/dogecoin	0.00260804
48	FTX Token	https://www.coingecko.com/en/coins/ftx-token	3.55
49	Basic Attention Token	https://www.coingecko.com/en/coins/basic-attention-token	0.219477
50	Paxos Standard	https://www.coingecko.com/en/coins/paxos-standard	0.999638
51	Kusama	https://www.coingecko.com/en/coins/kusama	31.22
52	cETH	https://www.coingecko.com/en/coins/compound-ether	7.05
53	renBTC	https://www.coingecko.com/en/coins/renbtc	10744.27
54	0x	https://www.coingecko.com/en/coins/0x	0.364251
55	Algorand	https://www.coingecko.com/en/coins/algorand	0.303174
56	Aave LINK	https://www.coingecko.com/en/coins/aave-link	9.40
57	Nexus Mutual	https://www.coingecko.com/en/coins/nexus-mutual	31.12
58	Waves	https://www.coingecko.com/en/coins/waves	2.31
59	Qtum	https://www.coingecko.com/en/coins/qtum	2.23
60	Energy Web Token	https://www.coingecko.com/en/coins/energy-web-token	7.36
61	ICON	https://www.coingecko.com/en/coins/icon	0.387210
62	Zilliqa	https://www.coingecko.com/en/coins/zilliqa	0.01955629
63	Aave [New]	https://www.coingecko.com/en/coins/aave	50.21
64	BitTorrent	https://www.coingecko.com/en/coins/bittorrent	0.00032525
65	yUSD	https://www.coingecko.com/en/coins/yusd	1.15
66	Loopring	https://www.coingecko.com/en/coins/loopring	0.179591
67	REN	https://www.coingecko.com/en/coins/ren	0.237094
68	Aave TUSD	https://www.coingecko.com/en/coins/aave-tusd	0.992479
69	cUSDC	https://www.coingecko.com/en/coins/compound-usd-coin	0.02119762
70	Aave USDC	https://www.coingecko.com/en/coins/aave-usdc	0.995202
71	Arweave	https://www.coingecko.com/en/coins/arweave	3.99
72	Kyber Network	https://www.coingecko.com/en/coins/kyber-network	0.884559
73	Hedera Hashgraph	https://www.coingecko.com/en/coins/hedera-hashgraph	0.03049575
74	Lisk	https://www.coingecko.com/en/coins/lisk	1.11
75	Aave ETH	https://www.coingecko.com/en/coins/aave-eth	351.79
76	Numeraire	https://www.coingecko.com/en/coins/numeraire	28.38
77	Decred	https://www.coingecko.com/en/coins/decred	11.52
78	Enjin Coin	https://www.coingecko.com/en/coins/enjin-coin	0.149410
79	Bitcoin Gold	https://www.coingecko.com/en/coins/bitcoin-gold	7.76
80	Terra	https://www.coingecko.com/en/coins/terra-luna	0.301752
81	Band Protocol	https://www.coingecko.com/en/coins/band-protocol	5.88
82	Blockstack	https://www.coingecko.com/en/coins/blockstack	0.148995
83	HUSD	https://www.coingecko.com/en/coins/husd	1.00
84	Balancer	https://www.coingecko.com/en/coins/balancer	15.37
85	Siacoin	https://www.coingecko.com/en/coins/siacoin	0.00273683
86	Aragon	https://www.coingecko.com/en/coins/aragon	3.51
87	Elrond	https://www.coingecko.com/en/coins/elrond	8.19
88	Quant	https://www.coingecko.com/en/coins/quant	9.05
89	Ocean Protocol	https://www.coingecko.com/en/coins/ocean-protocol	0.308972
90	Bytom	https://www.coingecko.com/en/coins/bytom	0.06504834
91	Solana	https://www.coingecko.com/en/coins/solana	2.54
92	Ampleforth	https://www.coingecko.com/en/coins/ampleforth	0.832849
93	Decentraland	https://www.coingecko.com/en/coins/decentraland	0.07548481
94	Nervos Network	https://www.coingecko.com/en/coins/nervos-network	0.00476108
95	Bitcoin Diamond	https://www.coingecko.com/en/coins/bitcoin-diamond	0.526055
96	Nano	https://www.coingecko.com/en/coins/nano	0.737431
97	Nest Protocol	https://www.coingecko.com/en/coins/nest-protocol	0.05699346
98	Ravencoin	https://www.coingecko.com/en/coins/ravencoin	0.01354790
99	GateToken	https://www.coingecko.com/en/coins/gatetoken	0.517468
100	DxChain Token	https://www.coingecko.com/en/coins/dxchain-token	0.00201054
101	Swipe	https://www.coingecko.com/en/coins/swipe	1.27
102	Tether Gold	https://www.coingecko.com/en/coins/tether-gold	1907.48
103	Avalanche	https://www.coingecko.com/en/coins/avalanche	3.72
104	MonaCoin	https://www.coingecko.com/en/coins/monacoin	1.24
105	Golem	https://www.coingecko.com/en/coins/golem	0.08999215
106	Status	https://www.coingecko.com/en/coins/status	0.02269258
107	Holo	https://www.coingecko.com/en/coins/holo	0.00046907
108	Reserve Rights Token	https://www.coingecko.com/en/coins/reserve-rights-token	0.00891120
109	IOST	https://www.coingecko.com/en/coins/iost	0.00544850
110	Thorchain	https://www.coingecko.com/en/coins/thorchain	0.371237
111	Sushi	https://www.coingecko.com/en/coins/sushi	0.771501
112	NEXO	https://www.coingecko.com/en/coins/nexo	0.135624
113	Divi	https://www.coingecko.com/en/coins/divi	0.03876431
114	Serum	https://www.coingecko.com/en/coins/serum	1.48
115	TerraKRW	https://www.coingecko.com/en/coins/terra-krw	0.00085360
116	Keep Network	https://www.coingecko.com/en/coins/keep-network	0.718087
117	DFI.money	https://www.coingecko.com/en/coins/dfi-money	1850.34
118	sUSD	https://www.coingecko.com/en/coins/susd	1.01
119	Velas	https://www.coingecko.com/en/coins/velas	0.05137222
120	Bancor Network Token	https://www.coingecko.com/en/coins/bancor-network	1.09
121	Matic Network	https://www.coingecko.com/en/coins/matic-network	0.01836202
122	Augur	https://www.coingecko.com/en/coins/augur	13.78
123	Fantom	https://www.coingecko.com/en/coins/fantom	0.02753911
124	Verge	https://www.coingecko.com/en/coins/verge	0.00417189
125	KuCoin Shares	https://www.coingecko.com/en/coins/kucoin-shares	0.838421
126	Komodo	https://www.coingecko.com/en/coins/komodo	0.546108
127	Storj	https://www.coingecko.com/en/coins/storj	0.466305
128	Wrapped NXM	https://www.coingecko.com/en/coins/wrapped-nxm	30.20
129	MCO	https://www.coingecko.com/en/coins/mco	4.15
130	PAX Gold	https://www.coingecko.com/en/coins/pax-gold	1918.86
131	Livepeer	https://www.coingecko.com/en/coins/livepeer	2.73
132	Kava	https://www.coingecko.com/en/coins/kava	2.05
133	iExec RLC	https://www.coingecko.com/en/coins/iexec-rlc	0.858504
134	TomoChain	https://www.coingecko.com/en/coins/tomochain	0.782997
135	UTRUST	https://www.coingecko.com/en/coins/utrust	0.130718
136	Chiliz	https://www.coingecko.com/en/coins/chiliz	0.01094685
137	BitShares	https://www.coingecko.com/en/coins/bitshares	0.02094171
138	Vitae	https://www.coingecko.com/en/coins/vitae	2.82
139	Steem	https://www.coingecko.com/en/coins/steem	0.152913
140	Electroneum	https://www.coingecko.com/en/coins/electroneum	0.00545631
141	Hive	https://www.coingecko.com/en/coins/hive	0.148796
142	Constellation	https://www.coingecko.com/en/coins/constellation	0.01180673
143	Horizen	https://www.coingecko.com/en/coins/horizen	5.37
144	Helium	https://www.coingecko.com/en/coins/helium	1.19
145	ShareToken	https://www.coingecko.com/en/coins/sharetoken	0.02197794
146	RIF Token	https://www.coingecko.com/en/coins/rif-token	0.08208890
147	c0x	https://www.coingecko.com/en/coins/compound-0x	0.00737945
148	WAX	https://www.coingecko.com/en/coins/wax	0.03858892
149	Eight Hours	https://www.coingecko.com/en/coins/eight-hours	0.02733348
150	SwissBorg	https://www.coingecko.com/en/coins/swissborg	0.07196722
151	Uquid Coin	https://www.coingecko.com/en/coins/uquid-coin	5.18
152	IRISnet	https://www.coingecko.com/en/coins/irisnet	0.05971248
153	HyperCash	https://www.coingecko.com/en/coins/hypercash	1.10
154	Handshake	https://www.coingecko.com/en/coins/handshake	0.154647
155	cUSDT	https://www.coingecko.com/en/coins/compound-usdt	0.02027194
156	MXC	https://www.coingecko.com/en/coins/mxc	0.01998412
157	Enigma	https://www.coingecko.com/en/coins/enigma	0.574866
158	Ultra	https://www.coingecko.com/en/coins/ultra	0.113495
159	Ardor	https://www.coingecko.com/en/coins/ardor	0.04750512
160	Gnosis	https://www.coingecko.com/en/coins/gnosis	42.66
161	JUST	https://www.coingecko.com/en/coins/just	0.03198855
162	Unibright	https://www.coingecko.com/en/coins/unibright	0.321390
163	Insolar	https://www.coingecko.com/en/coins/insolar	0.317823
164	Hyperion	https://www.coingecko.com/en/coins/hyperion	0.211273
165	elf	https://www.coingecko.com/en/coins/elf	0.09382743
166	MaidSafeCoin	https://www.coingecko.com/en/coins/maidsafecoin	0.09518810
167	Hxro	https://www.coingecko.com/en/coins/hxro	0.214994
168	Zcoin	https://www.coingecko.com/en/coins/zcoin	3.87
169	WaykiChain	https://www.coingecko.com/en/coins/waykichain	0.223415
170	Curve DAO Token	https://www.coingecko.com/en/coins/curve-dao-token	0.566175
171	xDAI Stake	https://www.coingecko.com/en/coins/xdai-stake	14.56
172	Rocket Pool	https://www.coingecko.com/en/coins/rocket-pool	2.65
173	Ark	https://www.coingecko.com/en/coins/ark	0.273871
174	IoTeX	https://www.coingecko.com/en/coins/iotex	0.00714299
175	Edgeware	https://www.coingecko.com/en/coins/edgeware	0.00813620
176	Stratis	https://www.coingecko.com/en/coins/stratis	0.411945
177	Aeternity	https://www.coingecko.com/en/coins/aeternity	0.111254
178	V.SYSTEMS	https://www.coingecko.com/en/coins/v-systems	0.01928130
179	Energi	https://www.coingecko.com/en/coins/energi	1.20
180	MATH	https://www.coingecko.com/en/coins/math	0.355088
181	WHALE	https://www.coingecko.com/en/coins/whale	9.04
182	STASIS EURO	https://www.coingecko.com/en/coins/stasis-eurs	1.17
183	SingularityNET	https://www.coingecko.com/en/coins/singularitynet	0.03964077
184	Ankr	https://www.coingecko.com/en/coins/ankr-network	0.00639184
185	OriginTrail	https://www.coingecko.com/en/coins/origintrail	0.127697
186	BTU Protocol	https://www.coingecko.com/en/coins/btu-protocol	0.459019
187	Aion	https://www.coingecko.com/en/coins/aion	0.07823396
188	Harmony	https://www.coingecko.com/en/coins/harmony	0.00498222
189	mStable USD	https://www.coingecko.com/en/coins/mstable-usd	0.995968
190	Lambda	https://www.coingecko.com/en/coins/lambda	0.01909308
191	Kleros	https://www.coingecko.com/en/coins/kleros	0.06639795
192	Bitmax Token	https://www.coingecko.com/en/coins/bitmax-token	0.04493392
193	Power Ledger	https://www.coingecko.com/en/coins/power-ledger	0.08019503
194	SOLVE	https://www.coingecko.com/en/coins/solve-care	0.09697796
195	Fetch.ai	https://www.coingecko.com/en/coins/fetch-ai	0.04901791
196	Chimpion	https://www.coingecko.com/en/coins/chimpion	0.856928
197	Elastos	https://www.coingecko.com/en/coins/elastos	1.76
198	Pundi X	https://www.coingecko.com/en/coins/pundi-x	0.00013888
199	Secret	https://www.coingecko.com/en/coins/secret	0.575065
200	IDEX	https://www.coingecko.com/en/coins/idex	0.05958244
201	Wanchain	https://www.coingecko.com/en/coins/wanchain	0.247469
202	Beowulf	https://www.coingecko.com/en/coins/beowulf	0.03043612
203	SERO	https://www.coingecko.com/en/coins/sero	0.103425
204	Bytecoin	https://www.coingecko.com/en/coins/bytecoin	0.00016446
205	ZB Token	https://www.coingecko.com/en/coins/zb-token	0.282538
206	QuarkChain	https://www.coingecko.com/en/coins/quarkchain	0.00511115
207	GXChain	https://www.coingecko.com/en/coins/gxchain	0.416232
208	DIA	https://www.coingecko.com/en/coins/dia	1.14
209	Streamr DATAcoin	https://www.coingecko.com/en/coins/streamr-datacoin	0.04146616
210	Polymath Network	https://www.coingecko.com/en/coins/polymath-network	0.04086929
211	Force Protocol	https://www.coingecko.com/en/coins/force-protocol	0.03189969
212	Melon	https://www.coingecko.com/en/coins/melon	25.73
213	Aave DAI	https://www.coingecko.com/en/coins/aave-dai	1.01
214	SAND	https://www.coingecko.com/en/coins/sand	0.04681642
215	ThunderCore	https://www.coingecko.com/en/coins/thundercore	0.00439837
216	WOM Protocol	https://www.coingecko.com/en/coins/wom-protocol	0.278743
217	Syscoin	https://www.coingecko.com/en/coins/syscoin	0.04647705
218	KardiaChain	https://www.coingecko.com/en/coins/kardiachain	0.01519359
219	Haven	https://www.coingecko.com/en/coins/haven	1.92
220	CRDT	https://www.coingecko.com/en/coins/crdt	0.140064
221	sBTC	https://www.coingecko.com/en/coins/sbtc	10980.67
222	Nuls	https://www.coingecko.com/en/coins/nuls	0.265497
223	WINk	https://www.coingecko.com/en/coins/wink	0.00008244
224	Reddcoin	https://www.coingecko.com/en/coins/reddcoin	0.00096507
225	Ultiledger	https://www.coingecko.com/en/coins/ultiledger	0.01468976
226	Digitex Futures Exchange	https://www.coingecko.com/en/coins/digitex-futures-exchange	0.02986653
227	Origin Protocol	https://www.coingecko.com/en/coins/origin-protocol	0.195195
228	Voyager Token	https://www.coingecko.com/en/coins/voyager-token	0.113996
229	Bluzelle	https://www.coingecko.com/en/coins/bluzelle	0.101538
230	Nectar Token	https://www.coingecko.com/en/coins/nectar-token	0.156512
231	Loki Network	https://www.coingecko.com/en/coins/loki-network	0.477693
232	Aurora	https://www.coingecko.com/en/coins/aurora	0.00554591
233	ZBG Token	https://www.coingecko.com/en/coins/zbg_token	0.04780537
234	VIDT Datalink	https://www.coingecko.com/en/coins/vidt-datalink	0.515137
235	Based Money	https://www.coingecko.com/en/coins/based-money	0.858199
236	Tellor	https://www.coingecko.com/en/coins/tellor	15.83
237	PIVX	https://www.coingecko.com/en/coins/pivx	0.351698
238	USDK	https://www.coingecko.com/en/coins/usdk	1.00
239	WazirX	https://www.coingecko.com/en/coins/wazirx	0.09401530
240	MX Token	https://www.coingecko.com/en/coins/mx-token	0.143173
241	Unitrade	https://www.coingecko.com/en/coins/unitrade	0.787644
242	Contentos	https://www.coingecko.com/en/coins/contentos	0.00734149
243	Eterbase Utility Token	https://www.coingecko.com/en/coins/eterbase	0.02204702
244	Yuan Chain Coin	https://www.coingecko.com/en/coins/yuan-chain-coin	0.00672723
245	Wirex	https://www.coingecko.com/en/coins/wirex	0.00933655
246	Prometeus	https://www.coingecko.com/en/coins/prometeus	3.11
247	Gas	https://www.coingecko.com/en/coins/gas	1.51
248	Ergo	https://www.coingecko.com/en/coins/ergo	0.832515
249	COTI	https://www.coingecko.com/en/coins/coti	0.03669111
250	CRYPTO20	https://www.coingecko.com/en/coins/crypto20	0.615580
251	FUSION	https://www.coingecko.com/en/coins/fusion	0.323199
252	Travala.com	https://www.coingecko.com/en/coins/travala	0.520404
253	Stakenet	https://www.coingecko.com/en/coins/stakenet	0.186509
254	dForce Token	https://www.coingecko.com/en/coins/dforce-token	0.161030
255	Ripio Credit Network	https://www.coingecko.com/en/coins/ripio-credit-network	0.03827375
256	Akropolis	https://www.coingecko.com/en/coins/akropolis	0.00976307
257	BEAM	https://www.coingecko.com/en/coins/beam	0.268934
258	Metal	https://www.coingecko.com/en/coins/metal	0.299775
259	Darico Ecosystem Coin	https://www.coingecko.com/en/coins/darico-ecosystem-coin	0.306617
260	bZx Protocol	https://www.coingecko.com/en/coins/bzx-protocol	0.136883
261	AdEx	https://www.coingecko.com/en/coins/adex	0.188178
262	YFValue	https://www.coingecko.com/en/coins/yfvalue	5.17
263	ChainX	https://www.coingecko.com/en/coins/chainx	2.69
264	AirSwap	https://www.coingecko.com/en/coins/airswap	0.109627
265	Xfinance	https://www.coingecko.com/en/coins/xfinance	759.61
266	Sora	https://www.coingecko.com/en/coins/sora	53.11
267	Crypterium	https://www.coingecko.com/en/coins/crypterium	0.217717
268	Trustswap	https://www.coingecko.com/en/coins/trustswap	0.286212
269	VeThor Token	https://www.coingecko.com/en/coins/vethor-token	0.00065221
270	Switcheo	https://www.coingecko.com/en/coins/switcheo	0.02566563
271	Bella Protocol	https://www.coingecko.com/en/coins/bella-protocol	1.25
272	Obyte	https://www.coingecko.com/en/coins/obyte	23.49
273	Dent	https://www.coingecko.com/en/coins/dent	0.00021333
274	NOIA Network	https://www.coingecko.com/en/coins/noia-network	0.05476541
275	Cindicator	https://www.coingecko.com/en/coins/cindicator	0.00913039
276	Hashgard	https://www.coingecko.com/en/coins/hashgard	0.00025499
277	Quantstamp	https://www.coingecko.com/en/coins/quantstamp	0.02456635
278	ARPA Chain	https://www.coingecko.com/en/coins/arpa-chain	0.01998035
279	FunFair	https://www.coingecko.com/en/coins/funfair	0.00290600
280	Cream	https://www.coingecko.com/en/coins/cream	40.63
281	Celer Network	https://www.coingecko.com/en/coins/celer-network	0.00431010
282	Orion Protocol	https://www.coingecko.com/en/coins/orion-protocol	1.90
283	Nimiq	https://www.coingecko.com/en/coins/nimiq	0.00253187
284	BOSAGORA	https://www.coingecko.com/en/coins/bosagora	0.06123314
285	AXEL	https://www.coingecko.com/en/coins/axel	0.183537
286	Newscrypto Coin	https://www.coingecko.com/en/coins/newscrypto-coin	0.165919
287	Alchemy Pay	https://www.coingecko.com/en/coins/alchemy-pay	0.01771678
288	Grin	https://www.coingecko.com/en/coins/grin	0.304259
289	Perpetual Protocol	https://www.coingecko.com/en/coins/perpetual-protocol	1.06
290	Civic	https://www.coingecko.com/en/coins/civic	0.02454603
291	BTSE Token	https://www.coingecko.com/en/coins/btse-token	2.32
292	Kadena	https://www.coingecko.com/en/coins/kadena	0.360289
293	STP Network	https://www.coingecko.com/en/coins/stp-network	0.01761268
294	Loom Network	https://www.coingecko.com/en/coins/loom-network	0.01921744
295	StormX	https://www.coingecko.com/en/coins/stormx	0.00199882
296	Darwinia Network Native Token	https://www.coingecko.com/en/coins/darwinia-network-native-token	0.03552251
297	Meta	https://www.coingecko.com/en/coins/meta	2.76
298	MANTRA DAO	https://www.coingecko.com/en/coins/mantra-dao	0.144775
299	YF Link	https://www.coingecko.com/en/coins/yf-link	331.90
300	Pickle Finance	https://www.coingecko.com/en/coins/pickle-finance	19.03
301	LTO Network	https://www.coingecko.com/en/coins/lto-network	0.06269895
302	SAFE2	https://www.coingecko.com/en/coins/safe2	287.12
303	Nebulas	https://www.coingecko.com/en/coins/nebulas	0.331632
304	Request	https://www.coingecko.com/en/coins/request-network	0.01940337
305	Ignis	https://www.coingecko.com/en/coins/ignis	0.01947789
306	Phala Network	https://www.coingecko.com/en/coins/phala-network	0.107727
307	Zap	https://www.coingecko.com/en/coins/zap	0.06165139
308	RedFOX Labs	https://www.coingecko.com/en/coins/redfox-labs	0.178947
309	Mainframe	https://www.coingecko.com/en/coins/mainframe	0.00151993
310	Wing Finance	https://www.coingecko.com/en/coins/wing-finance	24.45
311	Carry	https://www.coingecko.com/en/coins/carry	0.00156545
312	Medibloc	https://www.coingecko.com/en/coins/medibloc	0.00462312
313	Xplosive Ethereum	https://www.coingecko.com/en/coins/xplosive-ethereum	8.27
314	Harvest Finance	https://www.coingecko.com/en/coins/harvest-finance	88.21
315	Metaverse ETP	https://www.coingecko.com/en/coins/metaverse-etp	0.170079
316	QASH	https://www.coingecko.com/en/coins/qash	0.03772598
317	Bit-Z Token	https://www.coingecko.com/en/coins/bit-z-token	0.103346
318	BitKan	https://www.coingecko.com/en/coins/bitkan	0.00242255
319	Vertcoin	https://www.coingecko.com/en/coins/vertcoin	0.225240
320	Dify.Finance	https://www.coingecko.com/en/coins/dify-finance	1301.17
321	COCOS BCX	https://www.coingecko.com/en/coins/cocos-bcx	0.00032916
322	First Blood	https://www.coingecko.com/en/coins/first-blood	0.157834
323	Chromia	https://www.coingecko.com/en/coins/chromia	0.02831677
324	Aavegotchi	https://www.coingecko.com/en/coins/aavegotchi	0.654927
325	Strong	https://www.coingecko.com/en/coins/strong	28.63
326	PowerPool Concentrated Voting Power	https://www.coingecko.com/en/coins/powerpool-concentrated-voting-power	2.30
327	Factom	https://www.coingecko.com/en/coins/factom	1.33
328	Dragonchain	https://www.coingecko.com/en/coins/dragonchain	0.04670556
329	NKN	https://www.coingecko.com/en/coins/nkn	0.01904497
330	Apollo	https://www.coingecko.com/en/coins/apollo	0.00084138
331	cBAT	https://www.coingecko.com/en/coins/compound-basic-attention-token	0.00448951
332	Groestlcoin	https://www.coingecko.com/en/coins/groestlcoin	0.161726
333	Monolith	https://www.coingecko.com/en/coins/monolith	0.349115
334	PARSIQ	https://www.coingecko.com/en/coins/parsiq	0.113789
335	FIO Protocol	https://www.coingecko.com/en/coins/fio-protocol	0.109517
336	LibraToken	https://www.coingecko.com/en/coins/libratoken	0.01734459
337	YAM	https://www.coingecko.com/en/coins/yam	0.766094
338	Nash Exchange	https://www.coingecko.com/en/coins/nash-exchange	0.831480
339	DUSK Network	https://www.coingecko.com/en/coins/dusk-network	0.03966119
340	Aave USDT	https://www.coingecko.com/en/coins/aave-usdt	0.996300
341	Oduwa Coin	https://www.coingecko.com/en/coins/oduwa-coin	0.768126
342	Zenon	https://www.coingecko.com/en/coins/zenon	2.12
343	Raiden Network Token	https://www.coingecko.com/en/coins/raiden-network	0.169085
344	Kulupu	https://www.coingecko.com/en/coins/kulupu	0.354081
345	Gemini Dollar	https://www.coingecko.com/en/coins/gemini-dollar	0.998592
346	PlatonCoin	https://www.coingecko.com/en/coins/platoncoin	0.309789
347	CoinMetro	https://www.coingecko.com/en/coins/coinmetro	0.05237141
348	Pirate Chain	https://www.coingecko.com/en/coins/pirate-chain	0.06466798
349	Aave SNX	https://www.coingecko.com/en/coins/aave-snx	4.28
350	pNetwork	https://www.coingecko.com/en/coins/pnetwork	0.405528
351	Nexus	https://www.coingecko.com/en/coins/nexus	0.179627
352	Sentivate	https://www.coingecko.com/en/coins/sentivate	0.00557605
353	VideoCoin	https://www.coingecko.com/en/coins/videocoin	0.07170331
354	DMM: Governance	https://www.coingecko.com/en/coins/dmm-governance	0.262350
355	LBRY Credits	https://www.coingecko.com/en/coins/lbry-credits	0.02149123
356	INSTAR	https://www.coingecko.com/en/coins/instar	0.04753698
357	DigixDAO	https://www.coingecko.com/en/coins/digixdao	67.36
358	Dune	https://www.coingecko.com/en/coins/dune	0.02051667
359	DOS Network	https://www.coingecko.com/en/coins/dos-network	0.07577270
360	Compound Coin	https://www.coingecko.com/en/coins/compound-coin	0.00010720
361	Quantum Resistant Ledger	https://www.coingecko.com/en/coins/quantum-resistant-ledger	0.137615
362	Telcoin	https://www.coingecko.com/en/coins/telcoin	0.00019776
363	Verus Coin	https://www.coingecko.com/en/coins/verus-coin	0.169156
364	Hegic	https://www.coingecko.com/en/coins/hegic	0.108569
365	Waltonchain	https://www.coingecko.com/en/coins/waltonchain	0.332175
366	Einsteinium	https://www.coingecko.com/en/coins/einsteinium	0.04363325
367	Aergo	https://www.coingecko.com/en/coins/aergo	0.03646449
368	Safe Haven	https://www.coingecko.com/en/coins/safe-haven	0.00210674
369	sETH	https://www.coingecko.com/en/coins/seth	354.03
370	FOAM	https://www.coingecko.com/en/coins/foam	0.02698735
371	Aave MKR	https://www.coingecko.com/en/coins/aave-mkr	547.44
372	0chain	https://www.coingecko.com/en/coins/0chain	0.189719
373	Bitcoin 2	https://www.coingecko.com/en/coins/bitcoin-2	0.513588
374	NXT	https://www.coingecko.com/en/coins/nxt	0.00904381
375	Skycoin	https://www.coingecko.com/en/coins/skycoin	0.462869
376	Arcblock	https://www.coingecko.com/en/coins/arcblock	0.09095703
377	Minter	https://www.coingecko.com/en/coins/bip	0.00323391
378	LikeCoin	https://www.coingecko.com/en/coins/likecoin	0.00882340
379	GoChain	https://www.coingecko.com/en/coins/gochain	0.00849180
380	Santiment Network Token	https://www.coingecko.com/en/coins/santiment-network-token	0.137886
381	Phantasma	https://www.coingecko.com/en/coins/phantasma	0.09419108
382	B2BX	https://www.coingecko.com/en/coins/b2bx	0.541037
383	Vite	https://www.coingecko.com/en/coins/vite	0.01618527
384	Sai	https://www.coingecko.com/en/coins/sai	1.82
385	SALT	https://www.coingecko.com/en/coins/salt	0.09846713
386	XMax	https://www.coingecko.com/en/coins/xmax	0.00031886
387	LCX	https://www.coingecko.com/en/coins/lcx	0.01503965
388	Effect.AI	https://www.coingecko.com/en/coins/effect-ai	0.03946885
389	PAC Global	https://www.coingecko.com/en/coins/pac-global	0.00070043
390	Linkeye	https://www.coingecko.com/en/coins/linkeye	0.01299537
391	Metronome	https://www.coingecko.com/en/coins/metronome	0.732160
392	Measurable Data Token	https://www.coingecko.com/en/coins/measurable-data-token	0.01332884
393	Rarible	https://www.coingecko.com/en/coins/rarible	4.90
394	Bounce Token	https://www.coingecko.com/en/coins/bounce-token	306.32
395	NavCoin	https://www.coingecko.com/en/coins/navcoin	0.113997
396	Populous	https://www.coingecko.com/en/coins/populous	0.221736
397	PieDAO DOUGH v2	https://www.coingecko.com/en/coins/piedao-dough-v2	2.09
398	Wings	https://www.coingecko.com/en/coins/wings	0.08576237
399	Etherisc DIP Token	https://www.coingecko.com/en/coins/etherisc	0.04634657
400	PumaPay	https://www.coingecko.com/en/coins/pumapay	0.00029170
401	IQeon	https://www.coingecko.com/en/coins/iqeon	1.45
402	SWFT Blockchain	https://www.coingecko.com/en/coins/swft-blockchain	0.00114621
403	Cartesi	https://www.coingecko.com/en/coins/cartesi	0.03760999
404	CNNS	https://www.coingecko.com/en/coins/cnns	0.00424814
405	Sentinel Protocol	https://www.coingecko.com/en/coins/sentinel-protocol	0.02255730
406	Wagerr	https://www.coingecko.com/en/coins/wagerr	0.03418206
407	Neblio	https://www.coingecko.com/en/coins/neblio	0.436967
408	DXDao	https://www.coingecko.com/en/coins/dxdao	150.98
409	ProximaX	https://www.coingecko.com/en/coins/proximax	0.00114086
410	CyberMiles	https://www.coingecko.com/en/coins/cybermiles	0.00925510
411	Aleph.im	https://www.coingecko.com/en/coins/aleph-im	0.129494
412	Robonomics Network	https://www.coingecko.com/en/coins/robonomics-network	10.59
413	#MetaHash	https://www.coingecko.com/en/coins/metahash	0.00323117
414	iETH	https://www.coingecko.com/en/coins/ieth	282.47
415	SmartCash	https://www.coingecko.com/en/coins/smartcash	0.00319462
416	Blocknet	https://www.coingecko.com/en/coins/blocknet	0.979158
417	Meme	https://www.coingecko.com/en/coins/meme	335.72
418	Ubiq	https://www.coingecko.com/en/coins/ubiq	0.164633
419	Achain	https://www.coingecko.com/en/coins/achain	0.00816593
420	Bibox Token	https://www.coingecko.com/en/coins/bibox-token	0.06118165
421	TenX	https://www.coingecko.com/en/coins/tenx	0.05838652
422	Polkastarter	https://www.coingecko.com/en/coins/polkastarter	0.425367
423	Hycon	https://www.coingecko.com/en/coins/hycon	0.00298685
424	Time New Bank	https://www.coingecko.com/en/coins/time-new-bank	0.00200022
425	LockTrip	https://www.coingecko.com/en/coins/locktrip	0.413295
426	Universa	https://www.coingecko.com/en/coins/universa	0.00220895
427	IoT Chain	https://www.coingecko.com/en/coins/iot-chain	0.09452909
428	Lition	https://www.coingecko.com/en/coins/lition	0.118318
429	DMarket	https://www.coingecko.com/en/coins/dmarket	0.129986
430	Hyprr (Howdoo)	https://www.coingecko.com/en/coins/howdoo	0.02421704
431	PCHAIN	https://www.coingecko.com/en/coins/pchain	0.00814073
432	Lamden	https://www.coingecko.com/en/coins/lamden	0.04154722
433	district0x	https://www.coingecko.com/en/coins/district0x	0.00861571
434	Syndicate	https://www.coingecko.com/en/coins/syndicate	0.156273
435	SpankChain	https://www.coingecko.com/en/coins/spankchain	0.01065700
436	Aave WBTC	https://www.coingecko.com/en/coins/aave-wbtc	10715.47
437	Cap	https://www.coingecko.com/en/coins/cap	63.88
438	Pluton	https://www.coingecko.com/en/coins/pluton	7.53
439	Statera	https://www.coingecko.com/en/coins/statera	0.07485791
440	ODEM	https://www.coingecko.com/en/coins/odem	0.02919334
441	TE-FOOD	https://www.coingecko.com/en/coins/te-food	0.01125301
442	DODO	https://www.coingecko.com/en/coins/dodo	0.613070
443	Lien	https://www.coingecko.com/en/coins/lien	39.37
444	Cherry	https://www.coingecko.com/en/coins/cherry	1.63
445	Empty Set Dollar	https://www.coingecko.com/en/coins/empty-set-dollar	1.10
446	Dock	https://www.coingecko.com/en/coins/dock	0.01111914
447	I/O Coin	https://www.coingecko.com/en/coins/iocoin	0.303606
448	Genaro Network	https://www.coingecko.com/en/coins/genaro-network	0.02127780
449	bitCNY	https://www.coingecko.com/en/coins/bitcny	0.148528
450	Gifto	https://www.coingecko.com/en/coins/gifto	0.00922764
451	GMB	https://www.coingecko.com/en/coins/gmb	0.00980787
452	LINKA	https://www.coingecko.com/en/coins/linka	0.00373881
453	Namecoin	https://www.coingecko.com/en/coins/namecoin	0.379187
454	Swerve	https://www.coingecko.com/en/coins/swerve	0.800888
455	Digix Gold	https://www.coingecko.com/en/coins/digix-gold	61.35
456	Bankroll Network	https://www.coingecko.com/en/coins/bankroll-network	0.520105
457	Ferrum Network	https://www.coingecko.com/en/coins/ferrum-network	0.05062968
458	Propy	https://www.coingecko.com/en/coins/propy	0.100709
459	Shroom.Finance	https://www.coingecko.com/en/coins/shroom-finance	0.120605
460	Ubique Chain of Things (UCOT)	https://www.coingecko.com/en/coins/ucot	0.01093889
461	SingularDTV	https://www.coingecko.com/en/coins/singulardtv	0.00643655
462	POA Network	https://www.coingecko.com/en/coins/poa-network	0.02038761
463	Aragon Court	https://www.coingecko.com/en/coins/aragon-court	0.04424087
464	Steem Dollars	https://www.coingecko.com/en/coins/steem-dollars	0.955464
465	SUKU	https://www.coingecko.com/en/coins/suku	0.06565891
466	Grid+	https://www.coingecko.com/en/coins/grid	0.142222
467	Troy	https://www.coingecko.com/en/coins/troy	0.00292843
468	CBDAO	https://www.coingecko.com/en/coins/cbdao	5.26
469	SmartMesh	https://www.coingecko.com/en/coins/smartmesh	0.00332100
470	TOP Network	https://www.coingecko.com/en/coins/top-network	0.00134892
471	TrueChain	https://www.coingecko.com/en/coins/truechain	0.232292
472	Peercoin	https://www.coingecko.com/en/coins/peercoin	0.212182
473	Sense	https://www.coingecko.com/en/coins/sense	0.00470384
474	Jarvis Reward Token	https://www.coingecko.com/en/coins/jarvis-reward-token	0.06398245
475	Stakecube	https://www.coingecko.com/en/coins/stakecube	0.718929
476	MovieBloc	https://www.coingecko.com/en/coins/moviebloc	0.00151222
477	EOSDT	https://www.coingecko.com/en/coins/eosdt	0.991595
478	Stafi	https://www.coingecko.com/en/coins/stafi	0.910935
479	Sirin Labs Token	https://www.coingecko.com/en/coins/sirin-labs-token	0.00989005
480	Dero	https://www.coingecko.com/en/coins/dero	0.522387
481	Telos	https://www.coingecko.com/en/coins/telos	0.01817866
482	Polis	https://www.coingecko.com/en/coins/polis	0.438775
483	CoinHe Token	https://www.coingecko.com/en/coins/coinhe-token	0.07835184
484	HUNT	https://www.coingecko.com/en/coins/hunt	0.04750851
485	Morpheus Labs	https://www.coingecko.com/en/coins/morpheus-labs	0.01316061
486	Presearch	https://www.coingecko.com/en/coins/presearch	0.01304110
487	Tixl	https://www.coingecko.com/en/coins/tixl	0.09433588
488	Everex	https://www.coingecko.com/en/coins/everex	0.234288
489	Tael	https://www.coingecko.com/en/coins/tael	0.08651096
490	Revain	https://www.coingecko.com/en/coins/revain	0.01052279
491	Bread	https://www.coingecko.com/en/coins/bread	0.07245374
492	OneRoot Network	https://www.coingecko.com/en/coins/oneroot-network	0.01791055
493	Sentinel	https://www.coingecko.com/en/coins/sentinel	0.00253346
494	BuySell	https://www.coingecko.com/en/coins/buysell	1.00
495	Hakka Finance	https://www.coingecko.com/en/coins/hakka-finance	0.04587909
496	GET Protocol	https://www.coingecko.com/en/coins/get-protocol	0.308388
497	BITTO	https://www.coingecko.com/en/coins/bitto	0.539712
498	DAOstack	https://www.coingecko.com/en/coins/daostack	0.108222
499	Genesis Vision	https://www.coingecko.com/en/coins/genesis-vision	1.12
500	Starname	https://www.coingecko.com/en/coins/starname	0.04102649
501	Moeda Loyalty Points	https://www.coingecko.com/en/coins/moeda-loyalty-points	0.252999
502	Chain Games	https://www.coingecko.com/en/coins/chain-games	0.01630300
503	Sport and Leisure	https://www.coingecko.com/en/coins/sport-and-leisure	0.02022285
504	Burst	https://www.coingecko.com/en/coins/burst	0.00234460
505	GHOST	https://www.coingecko.com/en/coins/ghost	0.340127
506	XIO	https://www.coingecko.com/en/coins/xio	0.250700
507	DigitalNote	https://www.coingecko.com/en/coins/digitalnote	0.00091291
508	SelfKey	https://www.coingecko.com/en/coins/selfkey	0.00172681
509	Falconswap	https://www.coingecko.com/en/coins/falconswap	0.140794
510	Particl	https://www.coingecko.com/en/coins/particl	0.492928
511	Yee	https://www.coingecko.com/en/coins/yee	0.00159470
512	OceanEX Token	https://www.coingecko.com/en/coins/oceanex-token	0.00125027
513	Electra	https://www.coingecko.com/en/coins/electra	0.00016093
514	Bitcoin Rhodium	https://www.coingecko.com/en/coins/bitcoin-rhodium	4.57
515	SONM	https://www.coingecko.com/en/coins/sonm	0.01072545
516	Ruff	https://www.coingecko.com/en/coins/ruff	0.00497769
517	UniLayer	https://www.coingecko.com/en/coins/unilayer	0.267363
518	YOU Chain	https://www.coingecko.com/en/coins/you-chain	0.00634061
519	INT	https://www.coingecko.com/en/coins/int	0.01212699
520	DexTools	https://www.coingecko.com/en/coins/dextools	0.05242709
521	Circuits of Value	https://www.coingecko.com/en/coins/circuits-of-value	0.00578570
522	OST	https://www.coingecko.com/en/coins/ost	0.00664812
523	TokenClub	https://www.coingecko.com/en/coins/tokenclub	0.00795551
524	BEAT	https://www.coingecko.com/en/coins/beat	0.00372979
525	Dynamic	https://www.coingecko.com/en/coins/dynamic	0.302404
526	BiLira	https://www.coingecko.com/en/coins/bilira	0.127266
527	High Performance Blockchain	https://www.coingecko.com/en/coins/high-performance-blockchain	0.118289
528	Cloudbric	https://www.coingecko.com/en/coins/cloudbric	0.00704071
529	Aave MANA	https://www.coingecko.com/en/coins/aave-mana	0.07448608
530	dHedge DAO	https://www.coingecko.com/en/coins/dhedge-dao	0.738453
531	IONChain	https://www.coingecko.com/en/coins/ionchain	0.01038023
532	tBTC	https://www.coingecko.com/en/coins/tbtc	11069.62
533	Blox	https://www.coingecko.com/en/coins/blox	0.00659124
534	Dentacoin	https://www.coingecko.com/en/coins/dentacoin	0.00000497
535	OneSwap DAO Token	https://www.coingecko.com/en/coins/oneswap-dao-token	0.602293
536	Zano	https://www.coingecko.com/en/coins/zano	0.352113
537	Lua Token	https://www.coingecko.com/en/coins/lua-token	0.260943
538	Mossland	https://www.coingecko.com/en/coins/mossland	0.01566849
539	WePower	https://www.coingecko.com/en/coins/wepower	0.00708048
540	Hive Dollar	https://www.coingecko.com/en/coins/hive_dollar	0.934048
541	Compendia	https://www.coingecko.com/en/coins/compendia	0.04162886
542	BLOCKv	https://www.coingecko.com/en/coins/blockv	0.00150216
543	GameCredits	https://www.coingecko.com/en/coins/gamecredits	0.05867489
544	NIX	https://www.coingecko.com/en/coins/nix-platform	0.08641379
545	Viacoin	https://www.coingecko.com/en/coins/viacoin	0.178476
546	DuckDaoDime	https://www.coingecko.com/en/coins/duckdaodime	4.52
547	FLO	https://www.coingecko.com/en/coins/flo	0.02648596
548	OctoFi	https://www.coingecko.com/en/coins/octofi	11.69
549	Linear	https://www.coingecko.com/en/coins/linear	0.01246182
550	DaTa eXchange Token	https://www.coingecko.com/en/coins/data-exchange-token	0.01799758
551	GHOSTPRISM	https://www.coingecko.com/en/coins/ghostprism	2.49
552	Sashimi	https://www.coingecko.com/en/coins/sashimi	0.06797024
553	DistX	https://www.coingecko.com/en/coins/distx	0.120097
554	BeeKan / Beenews	https://www.coingecko.com/en/coins/beekan-beenews	0.00095007
555	Asch	https://www.coingecko.com/en/coins/asch	0.03307334
556	cREP	https://www.coingecko.com/en/coins/compound-augur	0.275376
557	EarnBet	https://www.coingecko.com/en/coins/earnbet	0.05550199
558	DATA	https://www.coingecko.com/en/coins/data	0.00034343
559	Bitcore	https://www.coingecko.com/en/coins/bitcore	0.207188
560	Po.et	https://www.coingecko.com/en/coins/poet	0.00150200
561	Idena	https://www.coingecko.com/en/coins/idena	0.118761
562	Gulden	https://www.coingecko.com/en/coins/gulden	0.00720998
563	Raven Protocol	https://www.coingecko.com/en/coins/raven-protocol	0.00087886
564	Jibrel Network	https://www.coingecko.com/en/coins/jibrel	0.02190196
565	QLC Chain	https://www.coingecko.com/en/coins/qlc-chain	0.01564299
566	FairGame	https://www.coingecko.com/en/coins/fairgame	0.00611807
567	GeoDB	https://www.coingecko.com/en/coins/geodb	0.305939
568	Pillar	https://www.coingecko.com/en/coins/pillar	0.01415929
569	Roobee	https://www.coingecko.com/en/coins/roobee	0.00304643
570	Airbloc	https://www.coingecko.com/en/coins/airbloc	0.01274947
571	Swingby	https://www.coingecko.com/en/coins/swingby	0.113125
572	Rotten	https://www.coingecko.com/en/coins/rotten	0.140750
573	OAX	https://www.coingecko.com/en/coins/oax	0.06510365
574	Neumark	https://www.coingecko.com/en/coins/neumark	0.119415
575	DigitalBits	https://www.coingecko.com/en/coins/digitalbits	0.01039274
576	ALQO	https://www.coingecko.com/en/coins/alqo	0.05184671
577	Covesting	https://www.coingecko.com/en/coins/covesting	0.198076
578	BitMart Token	https://www.coingecko.com/en/coins/bitmart-token	0.02384520
579	All Sports	https://www.coingecko.com/en/coins/all-sports	0.00299897
580	PowerTrade Fuel	https://www.coingecko.com/en/coins/powertrade-fuel	0.593545
581	Tierion	https://www.coingecko.com/en/coins/tierion	0.00820147
582	Hi Mutual Society	https://www.coingecko.com/en/coins/hi-mutual-society	0.00857952
583	Fesschain	https://www.coingecko.com/en/coins/fesschain	0.03461331
584	U Network	https://www.coingecko.com/en/coins/u-network	0.00048618
585	Counterparty	https://www.coingecko.com/en/coins/counterparty	1.30
586	Mithril	https://www.coingecko.com/en/coins/mithril	0.00540745
587	Plair	https://www.coingecko.com/en/coins/plair	0.00006603
588	Auctus	https://www.coingecko.com/en/coins/auctus	0.08835291
589	DAPS Coin	https://www.coingecko.com/en/coins/daps-coin	0.00005381
590	Liquidity Dividends Protocol	https://www.coingecko.com/en/coins/liquidity-dividends-protocol	0.03789927
591	UnlimitedIP	https://www.coingecko.com/en/coins/unlimitedip	0.00259987
592	Bezant	https://www.coingecko.com/en/coins/bezant	0.00712438
593	Frontier	https://www.coingecko.com/en/coins/frontier	0.341393
594	AppCoins	https://www.coingecko.com/en/coins/appcoins	0.02986258
595	CanYaCoin	https://www.coingecko.com/en/coins/canyacoin	0.03714501
596	XAYA	https://www.coingecko.com/en/coins/xaya	0.06092902
597	Decentr	https://www.coingecko.com/en/coins/decentr	0.05380313
598	ExNetwork Token	https://www.coingecko.com/en/coins/exnetwork-token	0.04999221
599	CanonChain	https://www.coingecko.com/en/coins/canonchain	0.00338660
600	MediShares	https://www.coingecko.com/en/coins/medishares	0.00278675
601	Apex Network	https://www.coingecko.com/en/coins/apex-network	0.00690574
602	Ultrain	https://www.coingecko.com/en/coins/ultrain	0.01127973
603	Napoleon X	https://www.coingecko.com/en/coins/napoleon-x	0.123174
604	Mysterium	https://www.coingecko.com/en/coins/mysterium	0.176939
605	Phore	https://www.coingecko.com/en/coins/phore	0.136925
606	Merculet	https://www.coingecko.com/en/coins/merculet	0.00065375
607	Content Neutrality Network	https://www.coingecko.com/en/coins/content-neutrality-network	0.00005160
608	XYO Network	https://www.coingecko.com/en/coins/xyo-network	0.00036565
609	Rivex	https://www.coingecko.com/en/coins/rivex	0.174819
610	Gridcoin	https://www.coingecko.com/en/coins/gridcoin-research	0.00692490
611	Zel	https://www.coingecko.com/en/coins/zelcash	0.02714019
612	Abyss	https://www.coingecko.com/en/coins/abyss	0.01321133
613	SunContract	https://www.coingecko.com/en/coins/suncontract	0.02465246
614	Egretia	https://www.coingecko.com/en/coins/egretia	0.00077254
615	Tidex Token	https://www.coingecko.com/en/coins/tidex-token	0.298468
616	Flits	https://www.coingecko.com/en/coins/flits	1.36
617	Spendcoin	https://www.coingecko.com/en/coins/spendcoin	0.00306545
618	VIG	https://www.coingecko.com/en/coins/vig	0.00431851
619	MoonSwap	https://www.coingecko.com/en/coins/moonswap	0.486184
620	Unit Protocol	https://www.coingecko.com/en/coins/unit-protocol	0.00014306
621	NAGA	https://www.coingecko.com/en/coins/naga	0.03791029
622	Content Value Network	https://www.coingecko.com/en/coins/content-value-network	0.00454090
623	SakeToken	https://www.coingecko.com/en/coins/sake-token	0.05335559
624	CHADS VC	https://www.coingecko.com/en/coins/chads-vc	0.05651366
625	ZrCoin	https://www.coingecko.com/en/coins/zrcoin	0.715787
626	CUTcoin	https://www.coingecko.com/en/coins/cutcoin	0.02345196
627	Ulord	https://www.coingecko.com/en/coins/ulord	0.01975960
628	Viberate	https://www.coingecko.com/en/coins/viberate	0.01534774
629	Unification	https://www.coingecko.com/en/coins/unification	0.02846234
630	dfohub	https://www.coingecko.com/en/coins/dfohub	0.940484
631	Mobius	https://www.coingecko.com/en/coins/mobius	0.00541203
632	Endor Protocol Token	https://www.coingecko.com/en/coins/endor-protocol-token	0.00392342
633	CREDITS	https://www.coingecko.com/en/coins/credits	0.01637446
634	Agrello	https://www.coingecko.com/en/coins/agrello	0.03353460
635	MCDex	https://www.coingecko.com/en/coins/mcdex	1.38
636	Hydro	https://www.coingecko.com/en/coins/hydro	0.00025621
637	Aave KNC	https://www.coingecko.com/en/coins/aave-knc	0.895834
638	CACHE Gold	https://www.coingecko.com/en/coins/cache-gold	61.40
639	HitChain	https://www.coingecko.com/en/coins/hitchain	0.00004314
640	BnkToTheFuture	https://www.coingecko.com/en/coins/bnktothefuture	0.00805117
641	GROWTH DeFi	https://www.coingecko.com/en/coins/growth-defi	23.11
642	Bismuth	https://www.coingecko.com/en/coins/bismuth	0.128707
643	Odyssey	https://www.coingecko.com/en/coins/odyssey	0.00026385
644	Midas	https://www.coingecko.com/en/coins/midas	1.41
645	VIBE	https://www.coingecko.com/en/coins/vibe	0.01394309
646	Xiotri	https://www.coingecko.com/en/coins/xiotri	593.19
647	Diamond	https://www.coingecko.com/en/coins/diamond	0.729491
648	SpaceChain (ERC-20)	https://www.coingecko.com/en/coins/spacechain-erc-20	0.00426977
649	RMPL	https://www.coingecko.com/en/coins/rmpl	0.757812
650	Tendies	https://www.coingecko.com/en/coins/tendies	0.316378
651	BUILD Finance	https://www.coingecko.com/en/coins/build-finance	25.10
652	Falcon Project	https://www.coingecko.com/en/coins/falcon-project	0.00031358
653	NFX Coin	https://www.coingecko.com/en/coins/nfx-coin	0.02044201
654	Aave BAT	https://www.coingecko.com/en/coins/aave-bat	0.220984
655	BlackCoin	https://www.coingecko.com/en/coins/blackcoin	0.04097821
656	Xaurum	https://www.coingecko.com/en/coins/xaurum	0.03442568
657	Doc.com	https://www.coingecko.com/en/coins/doc-com	0.00342884
658	yfBeta	https://www.coingecko.com/en/coins/yfbeta	128.27
659	Verasity	https://www.coingecko.com/en/coins/verasity	0.00066838
660	Hydro Protocol	https://www.coingecko.com/en/coins/hydro-protocol	0.00597416
661	Cardstack	https://www.coingecko.com/en/coins/cardstack	0.00085133
662	Rope	https://www.coingecko.com/en/coins/rope	86.09
663	ScPrime	https://www.coingecko.com/en/coins/scprime	0.06685325
664	YAM v2	https://www.coingecko.com/en/coins/yam-v2	5.59
665	BaaSid	https://www.coingecko.com/en/coins/baasid	0.00046565
666	Monetha	https://www.coingecko.com/en/coins/monetha	0.00679163
667	Enecuum	https://www.coingecko.com/en/coins/enecuum	0.01777890
668	PolySwarm	https://www.coingecko.com/en/coins/polyswarm	0.00148884
669	Aave SUSD	https://www.coingecko.com/en/coins/aave-susd	1.01
670	BNSD Finance	https://www.coingecko.com/en/coins/bnsd-finance	0.04057275
671	Akropolis Delphi	https://www.coingecko.com/en/coins/akropolis-delphi	0.386805
672	TERA	https://www.coingecko.com/en/coins/tera	0.00356593
673	Alias	https://www.coingecko.com/en/coins/alias	0.08693599
674	Ambrosus	https://www.coingecko.com/en/coins/ambrosus	0.01601037
675	Bolt	https://www.coingecko.com/en/coins/bolt	0.00243989
676	ContentBox	https://www.coingecko.com/en/coins/contentbox	0.00250116
677	Stealth	https://www.coingecko.com/en/coins/stealth	0.06173771
678	FinNexus	https://www.coingecko.com/en/coins/finnexus	0.167031
679	iLINK	https://www.coingecko.com/en/coins/ilink	15.85
680	Skrumble Network	https://www.coingecko.com/en/coins/skrumble-network	0.00214234
681	Aventus	https://www.coingecko.com/en/coins/aventus	0.277901
682	LATOKEN	https://www.coingecko.com/en/coins/latoken	0.03456391
683	AMLT Network	https://www.coingecko.com/en/coins/amlt-network	0.00665739
684	Litecoin Cash	https://www.coingecko.com/en/coins/litecoin-cash	0.00320712
685	Red Pulse Phoenix	https://www.coingecko.com/en/coins/red-pulse-phoenix	0.00246948
686	REVV	https://www.coingecko.com/en/coins/revv	0.01887334
687	HippoFinance	https://www.coingecko.com/en/coins/hippo-finance	13.47
688	AstroTools	https://www.coingecko.com/en/coins/astrotools	0.730906
689	SIX Network	https://www.coingecko.com/en/coins/six-network	0.00795878
690	GEEQ	https://www.coingecko.com/en/coins/geeq	0.514709
691	Rupiah Token	https://www.coingecko.com/en/coins/rupiah-token	0.00006746
692	LGO Token	https://www.coingecko.com/en/coins/lgo-token	0.01325418
693	Kambria	https://www.coingecko.com/en/coins/kambria	0.00179176
694	CryptoPing	https://www.coingecko.com/en/coins/cryptoping	0.238376
695	Shift	https://www.coingecko.com/en/coins/shift	0.151361
696	Cube	https://www.coingecko.com/en/coins/cube	0.00030907
697	DeepOnion	https://www.coingecko.com/en/coins/deeponion	0.09340661
698	Myriad	https://www.coingecko.com/en/coins/myriad	0.00117958
699	BitTube	https://www.coingecko.com/en/coins/bittube	0.00735924
700	OpenPredict Token	https://www.coingecko.com/en/coins/open-predict-token	2.05
701	Unifi	https://www.coingecko.com/en/coins/unifi	0.298978
702	Hacken Token	https://www.coingecko.com/en/coins/hackenai	0.01739754
703	LITEX	https://www.coingecko.com/en/coins/litex	0.00148248
704	JustLiquidity	https://www.coingecko.com/en/coins/justliquidity	40.23
705	DeepBrain Chain	https://www.coingecko.com/en/coins/deepbrain-chain	0.00063686
706	DeFiPulse Index	https://www.coingecko.com/en/coins/defipulse-index	87.41
707	Vexanium	https://www.coingecko.com/en/coins/vexanium	0.00285674
708	Origo	https://www.coingecko.com/en/coins/origo	0.01209053
709	VeriBlock	https://www.coingecko.com/en/coins/veriblock	0.00387103
710	Tripio	https://www.coingecko.com/en/coins/tripio	0.00074040
711	CoTrader	https://www.coingecko.com/en/coins/cotrader	0.00011827
712	Merebel	https://www.coingecko.com/en/coins/merebel	0.224438
713	Trias	https://www.coingecko.com/en/coins/trias	0.00085410
714	BarterTrade	https://www.coingecko.com/en/coins/bartertrade	0.02793880
715	Mcashchain	https://www.coingecko.com/en/coins/mcashchain	0.00350844
716	Ternio	https://www.coingecko.com/en/coins/ternio	0.00449437
717	ProChain	https://www.coingecko.com/en/coins/prochain	0.03880282
718	BitCapitalVendor	https://www.coingecko.com/en/coins/bcv	0.00229825
719	Coinbene Token	https://www.coingecko.com/en/coins/coinbene-token	0.00904292
720	Pylon Finance	https://www.coingecko.com/en/coins/pylon-finance	146.11
721	UltrAlpha	https://www.coingecko.com/en/coins/ultralpha	0.06303920
722	WeOwn	https://www.coingecko.com/en/coins/own	0.01491229
723	Remme	https://www.coingecko.com/en/coins/remme	0.00201015
724	OneLedger	https://www.coingecko.com/en/coins/oneledger	0.00433568
725	BCdiploma-EvidenZ	https://www.coingecko.com/en/coins/bcdiploma	0.05105765
726	AllianceBlock	https://www.coingecko.com/en/coins/allianceblock	0.07524220
727	Uptrennd	https://www.coingecko.com/en/coins/uptrennd	0.00762639
728	QunQun	https://www.coingecko.com/en/coins/qunqun	0.00282882
729	DEUS Finance	https://www.coingecko.com/en/coins/deus-finance	1.02
730	Blockmason Credit Protocol	https://www.coingecko.com/en/coins/blockmason-credit-protocol	0.01610790
731	1World	https://www.coingecko.com/en/coins/1world	0.07356937
732	TrueFlip	https://www.coingecko.com/en/coins/trueflip	0.275389
733	SafeCapital	https://www.coingecko.com/en/coins/safecapital	0.121128
734	Change	https://www.coingecko.com/en/coins/change	0.09160190
735	Cryptopay	https://www.coingecko.com/en/coins/cryptopay	0.04729667
736	CoinEx Token	https://www.coingecko.com/en/coins/coinex-token	0.00778048
737	Omni	https://www.coingecko.com/en/coins/omni	2.90
738	Chai	https://www.coingecko.com/en/coins/chai	1.01
739	Radium	https://www.coingecko.com/en/coins/radium	0.435867
740	CashBet Coin	https://www.coingecko.com/en/coins/cashbet-coin	0.00914405
741	SyncFab	https://www.coingecko.com/en/coins/syncfab	0.00703529
742	Nyzo	https://www.coingecko.com/en/coins/nyzo	0.126615
743	EmerCoin	https://www.coingecko.com/en/coins/emercoin	0.03812940
744	Earthcoin	https://www.coingecko.com/en/coins/earthcoin	0.00013777
745	Aave ZRX	https://www.coingecko.com/en/coins/aave-zrx	0.367945
746	Parachute	https://www.coingecko.com/en/coins/parachute	0.00294314
747	Dev Protocol	https://www.coingecko.com/en/coins/dev-protocol	2.01
748	OIN Finance	https://www.coingecko.com/en/coins/oin-finance	0.257714
749	Hotbit Token	https://www.coingecko.com/en/coins/hotbit-token	0.00420360
750	Dimecoin	https://www.coingecko.com/en/coins/dimecoin	0.00000419
751	Mooncoin	https://www.coingecko.com/en/coins/mooncoin	0.00000751
752	Bitgear	https://www.coingecko.com/en/coins/bitgear	0.02861790
753	Crown	https://www.coingecko.com/en/coins/crown	0.06527332
754	Robonomics Web Services	https://www.coingecko.com/en/coins/robonomics-web-services	33316
755	Pibble	https://www.coingecko.com/en/coins/pibble	0.00014064
756	Lightstreams Photon	https://www.coingecko.com/en/coins/lightstreams-photon	0.03407089
757	MyToken	https://www.coingecko.com/en/coins/mytoken	0.00085766
758	Carlive Chain	https://www.coingecko.com/en/coins/carlive-chain	0.00025019
759	BUX Platform Token	https://www.coingecko.com/en/coins/bux-platform-token	0.02845691
760	unibot.cash	https://www.coingecko.com/en/coins/unibot-cash	3227.87
761	Intelligent Investment Chain	https://www.coingecko.com/en/coins/intelligent-investment-chain	0.00013772
762	Ink Protocol	https://www.coingecko.com/en/coins/ink-protocol	0.00374396
763	U.CASH	https://www.coingecko.com/en/coins/ucash	0.00015356
764	PegNet	https://www.coingecko.com/en/coins/pegnet	0.00082003
765	Noxbox	https://www.coingecko.com/en/coins/noxbox	0.01438218
766	Electronic Gulden	https://www.coingecko.com/en/coins/electronicgulden	0.07514454
767	BetProtocol	https://www.coingecko.com/en/coins/betprotocol	0.00085390
768	Feathercoin	https://www.coingecko.com/en/coins/feathercoin	0.00665723
769	LGCY Network	https://www.coingecko.com/en/coins/lgcy-network	0.00017855
770	Lympo	https://www.coingecko.com/en/coins/lympo	0.00184687
771	smol	https://www.coingecko.com/en/coins/smol	30.04
772	VIPSTARCOIN	https://www.coingecko.com/en/coins/vipstarcoin	0.00002436
773	cWBTC	https://www.coingecko.com/en/coins/compound-wrapped-btc	216.81
774	DigitalPrice	https://www.coingecko.com/en/coins/digitalprice	0.03961090
775	DAEX	https://www.coingecko.com/en/coins/daex	0.00433750
776	Quark	https://www.coingecko.com/en/coins/quark	0.00568700
777	OKCash	https://www.coingecko.com/en/coins/okcash	0.01971265
778	Curecoin	https://www.coingecko.com/en/coins/curecoin	0.06133259
779	zzz.finance	https://www.coingecko.com/en/coins/zzz-finance	129.73
780	Crowd Machine	https://www.coingecko.com/en/coins/crowd-machine	0.00096500
781	Starbase	https://www.coingecko.com/en/coins/starbase	0.00725836
782	YfDAI.finance	https://www.coingecko.com/en/coins/yfdai-finance	431.58
783	Nucleus Vision	https://www.coingecko.com/en/coins/nucleus-vision	0.00051333
784	Offshift	https://www.coingecko.com/en/coins/offshift	0.794289
785	YOYOW	https://www.coingecko.com/en/coins/yoyow	0.00844098
786	Hiveterminal token	https://www.coingecko.com/en/coins/hiveterminal-token	0.00409212
787	42-coin	https://www.coingecko.com/en/coins/42-coin	34913
788	Swapfolio	https://www.coingecko.com/en/coins/swapfolio	0.07245976
789	Internxt	https://www.coingecko.com/en/coins/internxt	2.32
790	BitGreen	https://www.coingecko.com/en/coins/bitgreen	0.122356
791	BitScreener	https://www.coingecko.com/en/coins/bitscreener	0.00876263
792	Shardus	https://www.coingecko.com/en/coins/shardus	0.06517959
793	X-CASH	https://www.coingecko.com/en/coins/x-cash	0.00002412
794	Hempcoin	https://www.coingecko.com/en/coins/hempcoin-thc	0.00546127
795	Rubycoin	https://www.coingecko.com/en/coins/rubycoin	0.05107991
796	UniCrypt	https://www.coingecko.com/en/coins/unicrypt	0.01084456
797	Ethverse	https://www.coingecko.com/en/coins/ethverse	0.154212
798	Titan Coin	https://www.coingecko.com/en/coins/titan-coin	0.00154297
799	Terracoin	https://www.coingecko.com/en/coins/terracoin	0.06114969
800	qiibee	https://www.coingecko.com/en/coins/qiibee	0.00333078
801	THEKEY	https://www.coingecko.com/en/coins/thekey	0.00027513
802	Keysians Network	https://www.coingecko.com/en/coins/keysians-network	2.50
803	carVertical	https://www.coingecko.com/en/coins/carvertical	0.00018519
804	0xcert	https://www.coingecko.com/en/coins/0xcert	0.00331493
805	DACC	https://www.coingecko.com/en/coins/dacc	0.00011168
806	eosDAC	https://www.coingecko.com/en/coins/eosdac	0.00143398
807	Zclassic	https://www.coingecko.com/en/coins/zclassic	0.150458
808	BONK Token	https://www.coingecko.com/en/coins/bonk-token	0.450943
809	Wownero	https://www.coingecko.com/en/coins/wownero	0.03404091
810	Refereum	https://www.coingecko.com/en/coins/refereum	0.00027559
811	Add.xyz	https://www.coingecko.com/en/coins/add-xyz	0.04913916
812	Potcoin	https://www.coingecko.com/en/coins/potcoin	0.00596913
813	DSLA Protocol	https://www.coingecko.com/en/coins/dsla-protocol	0.00024663
814	Banano	https://www.coingecko.com/en/coins/banano	0.00123644
815	Digital Asset Guarantee Token	https://www.coingecko.com/en/coins/digital-asset-guarantee-token	0.05663081
816	KRYLL	https://www.coingecko.com/en/coins/kryll	0.09682600
817	Walletreum	https://www.coingecko.com/en/coins/walletreum	0.04406145
818	Infinitecoin	https://www.coingecko.com/en/coins/infinitecoin	0.00001422
819	Callisto Network	https://www.coingecko.com/en/coins/callisto-network	0.00048391
820	Tokenomy	https://www.coingecko.com/en/coins/tokenomy	0.02291960
821	Meter Governance	https://www.coingecko.com/en/coins/meter-governance	0.546943
822	MultiVAC	https://www.coingecko.com/en/coins/multivac	0.00036696
823	ChatCoin	https://www.coingecko.com/en/coins/chatcoin	0.00183880
824	Dextoken Governance	https://www.coingecko.com/en/coins/dextoken-governance	63.07
825	HalalChain	https://www.coingecko.com/en/coins/halalchain	0.00400514
826	ADAMANT Messenger	https://www.coingecko.com/en/coins/adamant-messenger	0.01225357
827	Pamp Network	https://www.coingecko.com/en/coins/pamp-network	0.466355
828	SpaceChain	https://www.coingecko.com/en/coins/spacechain	0.00586660
829	CommerceBlock Token	https://www.coingecko.com/en/coins/commerceblock-token	0.00708859
830	Usechain	https://www.coingecko.com/en/coins/usechain	0.00028333
831	Adshares	https://www.coingecko.com/en/coins/adshares	0.03552047
832	Dapp.com	https://www.coingecko.com/en/coins/dapp-com	0.00087611
833	Teloscoin	https://www.coingecko.com/en/coins/teloscoin	0.00760710
834	VeriCoin	https://www.coingecko.com/en/coins/vericoin	0.03785113
835	Swarm Fund	https://www.coingecko.com/en/coins/swarm-fund	0.01557488
836	ZMINE	https://www.coingecko.com/en/coins/zmine	0.00200280
837	EUNO	https://www.coingecko.com/en/coins/euno	0.02995044
838	SafeCoin	https://www.coingecko.com/en/coins/safecoin	0.03695540
839	Bloom	https://www.coingecko.com/en/coins/bloom	0.02130095
840	HodlTree	https://www.coingecko.com/en/coins/hodltree	0.265817
841	Coin Artist	https://www.coingecko.com/en/coins/coin-artist	1.36
842	Unikoin Gold	https://www.coingecko.com/en/coins/unikoin-gold	0.00798214
843	chrono.tech	https://www.coingecko.com/en/coins/chronobank	1.68
844	Expanse	https://www.coingecko.com/en/coins/expanse	0.05435861
845	Auxilium	https://www.coingecko.com/en/coins/auxilium	0.00972095
846	sharder protocol	https://www.coingecko.com/en/coins/sharder-protocol	0.00518525
847	Amon	https://www.coingecko.com/en/coins/amon	0.00174790
848	Tolar	https://www.coingecko.com/en/coins/tolar	0.00528684
849	Penta Network Token	https://www.coingecko.com/en/coins/penta-network-token	0.00005476
850	VirgoX Token	https://www.coingecko.com/en/coins/virgox-token	0.02723289
851	Robotina	https://www.coingecko.com/en/coins/robotina	0.00443325
852	Sumokoin	https://www.coingecko.com/en/coins/sumokoin	0.04003799
853	EchoLink	https://www.coingecko.com/en/coins/echolink	0.00228123
854	DomRaider	https://www.coingecko.com/en/coins/domraider	0.00109383
855	Vether	https://www.coingecko.com/en/coins/vether	3.99
856	Pivot Token	https://www.coingecko.com/en/coins/pivot-token	0.00022506
857	sDEFI	https://www.coingecko.com/en/coins/sdefi	2849.02
858	ChartEx	https://www.coingecko.com/en/coins/chartex	0.03286774
859	pTokens BTC	https://www.coingecko.com/en/coins/ptokens-btc	10440.03
860	Perth Mint Gold Token	https://www.coingecko.com/en/coins/perth-mint-gold-token	1909.85
861	aXpire	https://www.coingecko.com/en/coins/axpire	0.00396428
862	FLEX Coin	https://www.coingecko.com/en/coins/flex-coin	0.07000000
863	EveriToken	https://www.coingecko.com/en/coins/everitoken	0.00225514
864	Shard Coin	https://www.coingecko.com/en/coins/shard-coin	0.04266822
865	Trendering	https://www.coingecko.com/en/coins/trendering	11.21
866	CoinPoker	https://www.coingecko.com/en/coins/coinpoker	0.00355838
867	Hybrix	https://www.coingecko.com/en/coins/hybrix	0.592273
868	ZENZO	https://www.coingecko.com/en/coins/zenzo	0.05645617
869	BABB	https://www.coingecko.com/en/coins/babb	0.00003361
870	Beaxy	https://www.coingecko.com/en/coins/beaxy	0.00301784
871	SoMee.Social	https://www.coingecko.com/en/coins/ong-social	0.01199680
872	Zebi	https://www.coingecko.com/en/coins/zebi	0.00217892
873	AGA Token	https://www.coingecko.com/en/coins/aga-token	0.573615
874	Smartlands Network	https://www.coingecko.com/en/coins/smartlands	0.211225
875	Ycash	https://www.coingecko.com/en/coins/ycash	0.101246
876	Gene Source Code Token	https://www.coingecko.com/en/coins/gene-source-code-token	0.00242248
877	Jur	https://www.coingecko.com/en/coins/jur	0.00774648
878	Quadrant Protocol	https://www.coingecko.com/en/coins/quadrant-protocol	0.00204513
879	FansTime	https://www.coingecko.com/en/coins/fanstime	0.00016488
880	NPCoin	https://www.coingecko.com/en/coins/npcoin	0.03272617
881	Peerplays	https://www.coingecko.com/en/coins/peerplays	0.231193
882	Primecoin	https://www.coingecko.com/en/coins/primecoin	0.04082288
883	webdollar	https://www.coingecko.com/en/coins/webdollar	0.00006934
884	adbank	https://www.coingecko.com/en/coins/adbank	0.00127601
885	SINOVATE	https://www.coingecko.com/en/coins/sinovate	0.00155411
886	Reserve	https://www.coingecko.com/en/coins/reserve	0.998895
887	ToaCoin	https://www.coingecko.com/en/coins/toacoin	0.00010759
888	CargoX	https://www.coingecko.com/en/coins/cargox	0.00645493
889	Boosted Finance	https://www.coingecko.com/en/coins/boosted-finance	16.20
890	YFFS Finance	https://www.coingecko.com/en/coins/yffs-finance	27.73
891	Epic Cash	https://www.coingecko.com/en/coins/epic-cash	0.112749
892	NEXT.coin	https://www.coingecko.com/en/coins/next-coin	0.140810
893	Netbox Coin	https://www.coingecko.com/en/coins/netbox-coin	0.01303081
894	Ivy	https://www.coingecko.com/en/coins/ivy	0.00306676
895	SnowGem	https://www.coingecko.com/en/coins/snowgem	0.03422613
896	TurtleCoin	https://www.coingecko.com/en/coins/turtlecoin	0.00001182
897	Flow Protocol	https://www.coingecko.com/en/coins/flow-protocol	0.137886
898	NoLimitCoin	https://www.coingecko.com/en/coins/nolimitcoin	0.00235799
899	TouchCon	https://www.coingecko.com/en/coins/touchcon	0.00421418
900	Chi Gastoken	https://www.coingecko.com/en/coins/chi-gastoken	0.495822
901	Vodi X	https://www.coingecko.com/en/coins/vodi-x	0.00182282
902	MainCoin	https://www.coingecko.com/en/coins/maincoin	0.00310405
903	Boom Token	https://www.coingecko.com/en/coins/boom-token	0.00151949
904	Restart Energy	https://www.coingecko.com/en/coins/restart-energy	0.00214170
905	Ubex	https://www.coingecko.com/en/coins/ubex	0.00030521
906	IHT Real Estate Protocol	https://www.coingecko.com/en/coins/iht-real-estate-protocol	0.00096540
907	MonetaryUnit	https://www.coingecko.com/en/coins/monetaryunit	0.00471633
908	Snetwork	https://www.coingecko.com/en/coins/snetwork	0.00451417
909	indaHash	https://www.coingecko.com/en/coins/indahash	0.00287807
910	Pascal	https://www.coingecko.com/en/coins/pascal	0.02907509
911	2key.network	https://www.coingecko.com/en/coins/2key-network	0.03394750
912	ATN	https://www.coingecko.com/en/coins/atn	0.01085073
913	Alphacat	https://www.coingecko.com/en/coins/alphacat	0.00027819
914	Pirl	https://www.coingecko.com/en/coins/pirl	0.01153653
915	Ethbits	https://www.coingecko.com/en/coins/ethbits	0.670189
916	Zen Protocol	https://www.coingecko.com/en/coins/zen-protocol	0.02662327
917	Datum	https://www.coingecko.com/en/coins/datum	0.00089464
918	Neurotoken	https://www.coingecko.com/en/coins/neurotoken	0.01074241
919	yffi finance	https://www.coingecko.com/en/coins/yffi-finance	16.82
920	Binance GBP Stable Coin	https://www.coingecko.com/en/coins/binance-gbp-stable-coin	1.30
921	Debitum Network	https://www.coingecko.com/en/coins/debitum-network	0.00434376
922	CVCoin	https://www.coingecko.com/en/coins/cvcoin	0.05981320
923	Cortex	https://www.coingecko.com/en/coins/cortex	0.08883307
924	BoolBerry	https://www.coingecko.com/en/coins/boolberry	0.06758142
925	Experty	https://www.coingecko.com/en/coins/experty	0.03092676
926	Gather	https://www.coingecko.com/en/coins/gather	0.06074154
927	Denarius	https://www.coingecko.com/en/coins/denarius	0.119954
928	Humaniq	https://www.coingecko.com/en/coins/humaniq	0.00471208
929	Emanate	https://www.coingecko.com/en/coins/emanate	0.00642379
930	VeriSafe	https://www.coingecko.com/en/coins/verisafe	0.00010730
931	Honest	https://www.coingecko.com/en/coins/honest	0.00939322
932	FREE coin	https://www.coingecko.com/en/coins/free-coin	0.00000009
933	VEIL	https://www.coingecko.com/en/coins/veil	0.00974292
934	CPChain	https://www.coingecko.com/en/coins/cpchain	0.00212742
935	Dether	https://www.coingecko.com/en/coins/dether	0.01006611
936	Scry.info	https://www.coingecko.com/en/coins/scry-info	0.00193110
937	Squirrel Finance	https://www.coingecko.com/en/coins/squirrel-finance	0.853098
938	Bottos	https://www.coingecko.com/en/coins/bottos	0.00155086
939	MobileGo	https://www.coingecko.com/en/coins/mobilego	0.01085794
940	Donut	https://www.coingecko.com/en/coins/donut	0.00806729
941	Medicalchain	https://www.coingecko.com/en/coins/medicalchain	0.00281426
942	PhoenixDAO	https://www.coingecko.com/en/coins/phoenixdao	0.02205498
943	Educoin	https://www.coingecko.com/en/coins/educoin	0.00009271
944	Opacity	https://www.coingecko.com/en/coins/opacity	0.00654513
945	Gastoken	https://www.coingecko.com/en/coins/gastoken	43.73
946	Conceal	https://www.coingecko.com/en/coins/conceal	0.09202283
947	Hush	https://www.coingecko.com/en/coins/hush	0.08171015
948	Edenchain	https://www.coingecko.com/en/coins/edenchain	0.00138791
949	WeTrust	https://www.coingecko.com/en/coins/wetrust	0.00844428
950	GoWithMi	https://www.coingecko.com/en/coins/gowithmi	0.00033212
951	Pinkcoin	https://www.coingecko.com/en/coins/pinkcoin	0.00182144
952	Infinity Esaham	https://www.coingecko.com/en/coins/infinity-esaham	1.21
953	EXRNchain	https://www.coingecko.com/en/coins/exrnchain	0.00000877
954	Blue Protocol	https://www.coingecko.com/en/coins/blue-protocol	0.01969494
955	PiplCoin	https://www.coingecko.com/en/coins/piplcoin	0.00430071
956	PayPie	https://www.coingecko.com/en/coins/paypie	0.00882118
957	DeCash	https://www.coingecko.com/en/coins/decash	0.03934104
958	Primas	https://www.coingecko.com/en/coins/primas	0.01583657
959	VegaWallet Token	https://www.coingecko.com/en/coins/vegawallet-token	0.03175085
960	ethArt	https://www.coingecko.com/en/coins/ethart	3.80
961	Bitcoin Confidential	https://www.coingecko.com/en/coins/bitcoin-confidential	0.00010684
962	Tokenbox	https://www.coingecko.com/en/coins/tokenbox	0.06770240
963	Deex	https://www.coingecko.com/en/coins/deex	0.01576255
964	TraDove B2BCoin	https://www.coingecko.com/en/coins/tradove	0.00155011
965	BOScoin	https://www.coingecko.com/en/coins/boscoin	0.00171932
966	AI Doctor	https://www.coingecko.com/en/coins/ai-doctor	0.00174527
967	Credo	https://www.coingecko.com/en/coins/credo	0.00344105
968	MalwareChain	https://www.coingecko.com/en/coins/malwarechain	0.153671
969	YFOX Finance	https://www.coingecko.com/en/coins/yfox-finance	128.65
970	Zero	https://www.coingecko.com/en/coins/zero	0.08098267
971	Small Love Potion	https://www.coingecko.com/en/coins/small-love-potion	0.03130510
972	RAC	https://www.coingecko.com/en/coins/rac	1.20
973	Bitball	https://www.coingecko.com/en/coins/bitball	0.00304332
974	Percent	https://www.coingecko.com/en/coins/percent	0.08568564
975	Uranus	https://www.coingecko.com/en/coins/uranus	0.00035335
976	Gimli	https://www.coingecko.com/en/coins/gimli	0.00843723
977	TokenPay	https://www.coingecko.com/en/coins/tokenpay	0.03388097
978	Modern Investment Coin	https://www.coingecko.com/en/coins/modern-investment-coin	0.836056
979	Espers	https://www.coingecko.com/en/coins/espers	0.00002810
980	Hold	https://www.coingecko.com/en/coins/hold	0.00103346
981	Pandacoin	https://www.coingecko.com/en/coins/pandacoin	0.00002035
982	Qwertycoin	https://www.coingecko.com/en/coins/qwertycoin	0.00000536
983	FNKOS	https://www.coingecko.com/en/coins/fnkos	0.00462420
984	QChi	https://www.coingecko.com/en/coins/qchi	0.03365399
985	HashCoin	https://www.coingecko.com/en/coins/hashcoin	0.00002250
986	Meritcoins	https://www.coingecko.com/en/coins/meritcoins	0.00010770
987	Cloakcoin	https://www.coingecko.com/en/coins/cloakcoin	0.127362
988	sXAG	https://www.coingecko.com/en/coins/sxag	25.00
989	Infinito	https://www.coingecko.com/en/coins/infinito	0.00056280
990	DegenVC	https://www.coingecko.com/en/coins/degenvc	0.927372
991	Bridge Protocol	https://www.coingecko.com/en/coins/bridge-protocol	0.00304704
992	CREA	https://www.coingecko.com/en/coins/crea	0.03326962
993	Sentient Coin	https://www.coingecko.com/en/coins/sentient-coin	0.00034533
994	DeFiPie	https://www.coingecko.com/en/coins/defipie	0.03806473
995	Martkist	https://www.coingecko.com/en/coins/martkist	0.05114832
996	Edgeless	https://www.coingecko.com/en/coins/edgeless	0.00587747
997	Essentia	https://www.coingecko.com/en/coins/essentia	0.00078327
998	0xBitcoin	https://www.coingecko.com/en/coins/0xbitcoin	0.104760
999	Ink	https://www.coingecko.com/en/coins/ink	0.00144877
1000	AICHAIN	https://www.coingecko.com/en/coins/aichain	0.00106853
1001	SignatureChain	https://www.coingecko.com/en/coins/signaturechain	0.00134491
1002	KERMAN	https://www.coingecko.com/en/coins/kerman	0.155215
1003	Tokens of Babel	https://www.coingecko.com/en/coins/tokens-of-babel	0.767690
1004	Real Estate Asset Ledger	https://www.coingecko.com/en/coins/real-estate-asset-ledger	0.05115809
1005	Aegis	https://www.coingecko.com/en/coins/aegis	0.374185
1006	UniPower	https://www.coingecko.com/en/coins/unipower	0.641702
1007	Matrix AI Network	https://www.coingecko.com/en/coins/matrix-ai-network	0.00418616
1008	Direct Insurance Token	https://www.coingecko.com/en/coins/direct-insurance-token	0.00131907
1009	ESBC	https://www.coingecko.com/en/coins/esbc	0.02495962
1010	Banca	https://www.coingecko.com/en/coins/banca	0.00003113
1011	Mercury	https://www.coingecko.com/en/coins/mercury	0.00613128
1012	sLINK	https://www.coingecko.com/en/coins/slink	9.51
1013	MOJI Experience Points	https://www.coingecko.com/en/coins/moji-experience-points	38.08
1014	AquariusCoin	https://www.coingecko.com/en/coins/aquariuscoin	0.195863
1015	BlakeBitcoin	https://www.coingecko.com/en/coins/blakebitcoin	0.02906218
1016	MATRYX	https://www.coingecko.com/en/coins/matryx	0.02589624
1017	PalletOneToken	https://www.coingecko.com/en/coins/palletonetoken	0.00151348
1018	Datamine	https://www.coingecko.com/en/coins/datamine	0.118726
1019	Lobstex	https://www.coingecko.com/en/coins/lobstex	0.03009458
1020	Cubiex	https://www.coingecko.com/en/coins/cubiex	0.00718309
1021	LUXCoin	https://www.coingecko.com/en/coins/luxcoin	0.06656635
1022	Sapien	https://www.coingecko.com/en/coins/sapien	0.00176047
1023	Rubic	https://www.coingecko.com/en/coins/rubic	0.00608278
1024	MetricExchange	https://www.coingecko.com/en/coins/metric-exchange	2.13
1025	Yggdrash	https://www.coingecko.com/en/coins/yggdrash	0.00010957
1026	BitcoinZ	https://www.coingecko.com/en/coins/bitcoinz	0.00007349
1027	Moon Juice	https://www.coingecko.com/en/coins/moon-juice	0.527543
1028	EBCoin	https://www.coingecko.com/en/coins/ebcoin	0.00012003
1029	Fedoracoin	https://www.coingecko.com/en/coins/fedoracoin	0.00000105
1030	Midas Protocol	https://www.coingecko.com/en/coins/midas-protocol	0.00179788
1031	ROM Token	https://www.coingecko.com/en/coins/rom-token	0.00000852
1032	Decentrahub Coin	https://www.coingecko.com/en/coins/decentrahub-coin	2.83
1033	Liquidity Network	https://www.coingecko.com/en/coins/liquidity-network	0.01084003
1034	EOSForce	https://www.coingecko.com/en/coins/eosforce	0.00202923
1035	Nexty	https://www.coingecko.com/en/coins/nexty	0.00000354
1036	Commerce Data Connection	https://www.coingecko.com/en/coins/commerce-data-connection	0.00009158
1037	Foresight	https://www.coingecko.com/en/coins/foresight	0.04573067
1038	X8X Token	https://www.coingecko.com/en/coins/x8x-token	0.00718505
1039	Zipper Network	https://www.coingecko.com/en/coins/zipper-network	0.00003416
1040	FYDcoin	https://www.coingecko.com/en/coins/fydcoin	0.00107511
1041	MyWish	https://www.coingecko.com/en/coins/mywish	0.05017449
1042	Smartshare	https://www.coingecko.com/en/coins/smartshare	0.00011418
1043	Origin Sport	https://www.coingecko.com/en/coins/origin-sport	0.00281706
1044	DeFiat	https://www.coingecko.com/en/coins/defiat	2.36
1045	MyBit Token	https://www.coingecko.com/en/coins/mybit-token	0.00301865
1046	DPRating	https://www.coingecko.com/en/coins/dprating	0.00012103
1047	LocalCoinSwap	https://www.coingecko.com/en/coins/localcoinswap	0.01406738
1048	Community Token	https://www.coingecko.com/en/coins/community-token	0.808635
1049	Machi X	https://www.coingecko.com/en/coins/machi-x	0.00166832
1050	Swarm City	https://www.coingecko.com/en/coins/swarm-city	0.06162483
1051	Faceter	https://www.coingecko.com/en/coins/faceter	0.00098158
1052	EXRT Network	https://www.coingecko.com/en/coins/exrt-network	0.00118581
1053	Portal	https://www.coingecko.com/en/coins/portal	0.00072164
1054	Dextrust	https://www.coingecko.com/en/coins/dextrust	0.01529477
1055	Atlant	https://www.coingecko.com/en/coins/atlant	0.01710101
1056	ABLE X Token	https://www.coingecko.com/en/coins/able-x-token	0.00008333
1057	STK	https://www.coingecko.com/en/coins/stk	0.00148710
1058	Alchemint	https://www.coingecko.com/en/coins/alchemint-standards	0.00090081
1059	Bitcoin Private	https://www.coingecko.com/en/coins/bitcoin-private	0.106276
1060	yffc.finance	https://www.coingecko.com/en/coins/yffc-finance	19.88
1061	SureRemit	https://www.coingecko.com/en/coins/sureremit	0.00101368
1062	Trinity Network Credit	https://www.coingecko.com/en/coins/trinity-network-credit	0.00104013
1063	IQ.cash	https://www.coingecko.com/en/coins/iq-cash	0.02572014
1064	Membrana	https://www.coingecko.com/en/coins/membrana-platform	0.00265676
1065	MoneyToken	https://www.coingecko.com/en/coins/moneytoken	0.00005147
1066	cSAI	https://www.coingecko.com/en/coins/compound-sai	0.03869067
1067	Trittium	https://www.coingecko.com/en/coins/trittium	0.00380119
1068	On.Live	https://www.coingecko.com/en/coins/on-live	0.02243676
1069	French Digital Reserve	https://www.coingecko.com/en/coins/french-digital-reserve	0.07079202
1070	Grimcoin	https://www.coingecko.com/en/coins/grimcoin	0.00454702
1071	Gatcoin	https://www.coingecko.com/en/coins/gatcoin	0.00070501
1072	PDX	https://www.coingecko.com/en/coins/pdx	0.00023191
1073	ImageCoin	https://www.coingecko.com/en/coins/imagecoin	0.04671841
1074	Bitcoin Plus	https://www.coingecko.com/en/coins/bitcoin-plus	3.25
1075	BOX Token	https://www.coingecko.com/en/coins/box-token	0.01342654
1076	AITRA	https://www.coingecko.com/en/coins/aitra	0.236079
1077	Bgogo Token	https://www.coingecko.com/en/coins/bgogo-token	0.00047964
1078	Energi Token	https://www.coingecko.com/en/coins/energi-token	0.00031360
1079	ThingsOperatingSystem	https://www.coingecko.com/en/coins/thingsoperatingsystem	0.00059413
1080	The ChampCoin	https://www.coingecko.com/en/coins/the-champcoin	0.00261892
1081	Axe	https://www.coingecko.com/en/coins/axe	0.07967025
1082	Rate3	https://www.coingecko.com/en/coins/rate3	0.00046853
1083	Equilibria	https://www.coingecko.com/en/coins/equilibria	0.01512140
1084	BlockCDN	https://www.coingecko.com/en/coins/blockcdn	0.00134376
1085	Covalent	https://www.coingecko.com/en/coins/covalent	0.00021970
1086	Stably Dollar	https://www.coingecko.com/en/coins/stably	0.910000
1087	GSENetwork	https://www.coingecko.com/en/coins/gsenetwork	0.00002301
1088	TerraCredit	https://www.coingecko.com/en/coins/terracredit	0.00492184
1089	NativeCoin	https://www.coingecko.com/en/coins/nativecoin	0.02231383
1090	TrustDAO	https://www.coingecko.com/en/coins/trustdao	0.01810129
1091	DoYourTip	https://www.coingecko.com/en/coins/doyourtip	0.308179
1092	Bob's Repair	https://www.coingecko.com/en/coins/bobs-repair	0.00167976
1093	Freicoin	https://www.coingecko.com/en/coins/freicoin	0.00400550
1094	ATROMG8	https://www.coingecko.com/en/coins/atromg8	0.03535833
1095	ABCC Token	https://www.coingecko.com/en/coins/abcc-token	0.01010441
1096	4thpillar technologies	https://www.coingecko.com/en/coins/the-4th-pillar	0.00354408
1097	Delphy	https://www.coingecko.com/en/coins/delphy	0.00708919
1098	Karbo	https://www.coingecko.com/en/coins/karbo	0.04920467
1099	Shadow Token	https://www.coingecko.com/en/coins/shadow-token	0.06075489
1100	Fire Lotto	https://www.coingecko.com/en/coins/fire-lotto	0.00395735
1101	Niobium Coin	https://www.coingecko.com/en/coins/niobium-coin	0.00625230
1102	FintruX	https://www.coingecko.com/en/coins/fintrux	0.00500522
1103	HBZ	https://www.coingecko.com/en/coins/hbz	0.00042596
1104	ngot	https://www.coingecko.com/en/coins/ngot	0.00027764
1105	Goldmint	https://www.coingecko.com/en/coins/goldmint	0.230273
1106	Open Platform	https://www.coingecko.com/en/coins/open-platform	0.00066238
1107	Relevant	https://www.coingecko.com/en/coins/relevant	0.747541
1108	Ormeus Coin	https://www.coingecko.com/en/coins/ormeuscoin	0.02396052
1109	Tacos	https://www.coingecko.com/en/coins/tacos	0.04129153
1110	SIBCoin	https://www.coingecko.com/en/coins/sibcoin	0.02175555
1111	Origin Dollar	https://www.coingecko.com/en/coins/origin-dollar	1.01
1112	Potentiam	https://www.coingecko.com/en/coins/potentiam	0.01094258
1113	Charg Coin	https://www.coingecko.com/en/coins/charg-coin	0.08287043
1114	sXAU	https://www.coingecko.com/en/coins/sxau	1967.89
1115	AidCoin	https://www.coingecko.com/en/coins/aidcoin	0.00734019
1116	Maximine	https://www.coingecko.com/en/coins/maximine	0.00008461
1117	Sentinel Chain	https://www.coingecko.com/en/coins/sentinel-chain	0.00130004
1118	Solaris	https://www.coingecko.com/en/coins/solaris	0.214104
1119	Patientory	https://www.coingecko.com/en/coins/patientory	0.00573945
1120	Zeusshield	https://www.coingecko.com/en/coins/zeusshield	0.00020198
1121	Etherparty	https://www.coingecko.com/en/coins/etherparty	0.00039995
1122	BitDegree	https://www.coingecko.com/en/coins/bitdegree	0.00101270
1123	SafeInsure	https://www.coingecko.com/en/coins/safeinsure	0.01988219
1124	Centric	https://www.coingecko.com/en/coins/centric	0.00097435
1125	Swagg Network	https://www.coingecko.com/en/coins/swagg-network	0.08062571
1126	Pylon Network	https://www.coingecko.com/en/coins/pylon-network	0.676736
1127	Ixcoin	https://www.coingecko.com/en/coins/ixcoin	0.01822938
1128	XEL	https://www.coingecko.com/en/coins/xel	0.00418871
1129	FACTS	https://www.coingecko.com/en/coins/facts	0.00011801
1130	Lunyr	https://www.coingecko.com/en/coins/lunyr	0.141658
1131	Autonio	https://www.coingecko.com/en/coins/autonio	0.01098325
1132	sADA	https://www.coingecko.com/en/coins/sada	0.09787778
1133	Aeron	https://www.coingecko.com/en/coins/aeron	0.01876430
1134	Smileycoin	https://www.coingecko.com/en/coins/smileycoin	0.00001190
1135	BitBlocks	https://www.coingecko.com/en/coins/bitblocks-project	0.00150467
1136	BOMB	https://www.coingecko.com/en/coins/bomb	0.453141
1137	Beetle Coin	https://www.coingecko.com/en/coins/beetle-coin	0.00152812
1138	SophiaTX	https://www.coingecko.com/en/coins/sophiatx	0.00102445
1139	XP	https://www.coingecko.com/en/coins/xp	0.00023602
1140	Cappasity	https://www.coingecko.com/en/coins/cappasity	0.00066982
1141	Coin	https://www.coingecko.com/en/coins/coin	0.04064333
1142	FlynnJamm	https://www.coingecko.com/en/coins/flynnjamm	0.07635752
1143	Safex Cash	https://www.coingecko.com/en/coins/safex-cash	0.00557432
1144	Switch	https://www.coingecko.com/en/coins/switch	0.03181118
1145	VeriumReserve	https://www.coingecko.com/en/coins/veriumreserve	0.123700
1146	EtherGem	https://www.coingecko.com/en/coins/ethergem	0.01446364
1147	Devery	https://www.coingecko.com/en/coins/devery	0.00574663
1148	Indorse	https://www.coingecko.com/en/coins/indorse	0.00849289
1149	Jupiter	https://www.coingecko.com/en/coins/jupiter	0.00116980
1150	Ties.DB	https://www.coingecko.com/en/coins/ties-db	0.00867123
1151	SPINDLE	https://www.coingecko.com/en/coins/spindle	0.00012781
1152	NANJCOIN	https://www.coingecko.com/en/coins/nanjcoin	0.00001757
1153	Friendz	https://www.coingecko.com/en/coins/friendz	0.00059006
1154	uPlexa	https://www.coingecko.com/en/coins/uplexa	0.00014471
1155	PlusOneCoin	https://www.coingecko.com/en/coins/plusonecoin	0.03953236
1156	CoinUs	https://www.coingecko.com/en/coins/coinus	0.00054849
1157	Evedo	https://www.coingecko.com/en/coins/evedo	0.02580984
1158	Zero Utility Token	https://www.coingecko.com/en/coins/zero-utility-token	354.68
1159	PirateCash	https://www.coingecko.com/en/coins/piratecash	0.01350809
1160	MYX Network	https://www.coingecko.com/en/coins/myx-network	0.00040212
1161	ExclusiveCoin	https://www.coingecko.com/en/coins/exclusivecoin	0.05816466
1162	BYTZ	https://www.coingecko.com/en/coins/bytz	0.00004448
1163	DxSale Network	https://www.coingecko.com/en/coins/dxsale-network	0.01275524
1164	Electrify.Asia	https://www.coingecko.com/en/coins/electrify-asia	0.00063303
1165	PieDAO BTC++	https://www.coingecko.com/en/coins/piedao-btc	10777.15
1166	Spaghetti	https://www.coingecko.com/en/coins/spaghetti	0.02434040
1167	Thrive	https://www.coingecko.com/en/coins/thrive	0.00278862
1168	Memetic	https://www.coingecko.com/en/coins/memetic	0.00845974
1169	Swap	https://www.coingecko.com/en/coins/swap	0.02885779
1170	Ether-1	https://www.coingecko.com/en/coins/ether-1	0.00662042
1171	Trollcoin	https://www.coingecko.com/en/coins/trollcoin	0.00053807
1172	Substratum	https://www.coingecko.com/en/coins/substratum	0.00128548
1173	Zuflo Coin	https://www.coingecko.com/en/coins/zuflo-coin	0.00292248
1174	IDEX Membership	https://www.coingecko.com/en/coins/idex-membership	160.90
1175	Ether Zero	https://www.coingecko.com/en/coins/ether-zero	0.00159468
1176	DUO Network	https://www.coingecko.com/en/coins/duo-network	0.00877521
1177	AAAchain	https://www.coingecko.com/en/coins/aaachain	0.00005695
1178	DarkPayCoin	https://www.coingecko.com/en/coins/darkpaycoin	0.05077671
1179	BiblePay	https://www.coingecko.com/en/coins/biblepay	0.00012327
1180	Sphere	https://www.coingecko.com/en/coins/sphere	0.08895736
1181	Paws Funds	https://www.coingecko.com/en/coins/paws-funds	0.05885747
1182	Jetcoin	https://www.coingecko.com/en/coins/jetcoin	0.03168322
1183	ITO Utility Token	https://www.coingecko.com/en/coins/ito-utility-token	0.00332396
1184	MotaCoin	https://www.coingecko.com/en/coins/motacoin	0.00461967
1185	Datawallet	https://www.coingecko.com/en/coins/datawallet	0.00083476
1186	Hackspace Capital	https://www.coingecko.com/en/coins/hackspace-capital	0.00104550
1187	Block-Logic	https://www.coingecko.com/en/coins/block-logic	0.01501972
1188	Note Blockchain	https://www.coingecko.com/en/coins/note-blockchain	0.00003584
1189	NobleCoin	https://www.coingecko.com/en/coins/noblecoin	0.00012827
1190	Swing	https://www.coingecko.com/en/coins/swing	0.06284171
1191	ATMChain	https://www.coingecko.com/en/coins/atmchain	0.00011065
1192	IPChain	https://www.coingecko.com/en/coins/ipchain	0.01496726
1193	Aave BUSD	https://www.coingecko.com/en/coins/aave-busd	0.996787
1194	Hobonickels	https://www.coingecko.com/en/coins/hobonickels	0.00269373
1195	Crypton	https://www.coingecko.com/en/coins/crypton	0.108602
1196	Aced	https://www.coingecko.com/en/coins/aced	0.00151441
1197	MintMe.com Coin	https://www.coingecko.com/en/coins/mintme-com-coin	0.00160278
1198	Infinitus Token	https://www.coingecko.com/en/coins/infinitus-token	0.01216674
1199	Mochimo	https://www.coingecko.com/en/coins/mochimo	0.04397003
1200	EverGreenCoin	https://www.coingecko.com/en/coins/evergreencoin	0.02023573
1201	Vision Network	https://www.coingecko.com/en/coins/vision-network	0.00134881
1202	Social Send	https://www.coingecko.com/en/coins/social-send	0.00401618
1203	Waifu Token	https://www.coingecko.com/en/coins/waifu-token	0.00035900
1204	Traceability Chain	https://www.coingecko.com/en/coins/traceability-chain	0.00060030
1205	TrueDeck	https://www.coingecko.com/en/coins/truedeck	0.00696556
1206	MoneyByte	https://www.coingecko.com/en/coins/moneybyte	0.04824036
1207	TOKPIE	https://www.coingecko.com/en/coins/tokpie	0.00916349
1208	Shuffle Monster	https://www.coingecko.com/en/coins/shuffle-monster	0.283779
1209	Ryo Currency	https://www.coingecko.com/en/coins/ryo-currency	0.01136102
1210	Stox	https://www.coingecko.com/en/coins/stox	0.00512326
1211	Red	https://www.coingecko.com/en/coins/red	0.00292897
1212	Imbrex	https://www.coingecko.com/en/coins/imbrex	0.02950146
1213	Transcodium	https://www.coingecko.com/en/coins/transcodium	0.00340723
1214	Bitcoin Scrypt	https://www.coingecko.com/en/coins/bitcoin-scrypt	0.01374639
1215	Elite	https://www.coingecko.com/en/coins/elite	0.00000903
1216	adToken	https://www.coingecko.com/en/coins/adtoken	0.00032212
1217	Utrum	https://www.coingecko.com/en/coins/utrum	0.00122783
1218	Typerium	https://www.coingecko.com/en/coins/typerium	0.00037984
1219	X42 Protocol	https://www.coingecko.com/en/coins/x42-protocol	0.01333328
1220	EventChain	https://www.coingecko.com/en/coins/eventchain	0.00842058
1221	Fujicoin	https://www.coingecko.com/en/coins/fujicoin	0.00010760
1222	Zeitcoin	https://www.coingecko.com/en/coins/zeitcoin	0.00000701
1223	BLTV Token	https://www.coingecko.com/en/coins/bltv-token	0.00043086
1224	C3 Wallet	https://www.coingecko.com/en/coins/c3-wallet	0.00002029
1225	CoinFi	https://www.coingecko.com/en/coins/coinfi	0.00116072
1226	NeuroChain	https://www.coingecko.com/en/coins/neurochain	0.00062705
1227	Neutron	https://www.coingecko.com/en/coins/neutron	0.00529631
1228	SatoPay	https://www.coingecko.com/en/coins/satopay	0.00119204
1229	Insula	https://www.coingecko.com/en/coins/insula	0.251540
1230	Toast.finance	https://www.coingecko.com/en/coins/toast-finance	22.49
1231	Maverick Chain	https://www.coingecko.com/en/coins/maverick-chain	0.00268110
1232	Alex	https://www.coingecko.com/en/coins/alex	0.04784450
1233	DopeCoin	https://www.coingecko.com/en/coins/dopecoin	0.00172233
1234	HorusPay	https://www.coingecko.com/en/coins/horuspay	0.00026168
1235	HEROcoin	https://www.coingecko.com/en/coins/herocoin	0.00167156
1236	PromotionChain	https://www.coingecko.com/en/coins/promotionchain	0.00005184
1237	Synergy	https://www.coingecko.com/en/coins/synergy	0.05034282
1238	Mogwai Coin	https://www.coingecko.com/en/coins/mogwai	0.01876770
1239	Sequence	https://www.coingecko.com/en/coins/sequence	0.00526260
1240	OTCBTC Token	https://www.coingecko.com/en/coins/otcbtc-token	0.00343539
1241	HelloGold	https://www.coingecko.com/en/coins/hellogold	0.00074401
1242	Netkoin	https://www.coingecko.com/en/coins/netkoin	0.00005287
1243	REOSC Ecosystem	https://www.coingecko.com/en/coins/reosc-ecosystem	0.00010766
1244	DeFi Omega	https://www.coingecko.com/en/coins/defi-omega	2.43
1245	Birake	https://www.coingecko.com/en/coins/birake	0.00251101
1246	KNOW	https://www.coingecko.com/en/coins/know	0.00198772
1247	LatiumX	https://www.coingecko.com/en/coins/latiumx	0.00203489
1248	GoNetwork	https://www.coingecko.com/en/coins/gonetwork	0.00334898
1249	TrezarCoin	https://www.coingecko.com/en/coins/trezarcoin	0.00101546
1250	InsurePal	https://www.coingecko.com/en/coins/insurepal	0.00107151
1251	Pakcoin	https://www.coingecko.com/en/coins/pakcoin	0.00331107
1252	yfrb.Finance	https://www.coingecko.com/en/coins/yfrb-finance	19.60
1253	Chaincoin	https://www.coingecko.com/en/coins/chaincoin	0.01217765
1254	HOQU	https://www.coingecko.com/en/coins/hoqu	0.00109970
1255	AllSafe	https://www.coingecko.com/en/coins/allsafe	0.02075657
1256	Nerva	https://www.coingecko.com/en/coins/nerva	0.01269200
1257	FuzeX	https://www.coingecko.com/en/coins/fuzex	0.00027464
1258	Project SHIVOM	https://www.coingecko.com/en/coins/project-shivom	0.00024521
1259	ZCore	https://www.coingecko.com/en/coins/zcore	0.02896507
1260	BitcoinSoV	https://www.coingecko.com/en/coins/bitcoinsov	0.06099412
1261	Rentberry	https://www.coingecko.com/en/coins/rentberry	0.00076048
1262	LHT	https://www.coingecko.com/en/coins/lht	0.00458525
1263	OWNDATA	https://www.coingecko.com/en/coins/owndata	0.00002129
1264	Snovian.Space	https://www.coingecko.com/en/coins/snovian-space	0.00065153
1265	Lead Token	https://www.coingecko.com/en/coins/lead-token	0.00049743
1266	Cash2	https://www.coingecko.com/en/coins/cash2	0.04818341
1267	Cat Token	https://www.coingecko.com/en/coins/cat-token	0.03461540
1268	Bitcoin Incognito	https://www.coingecko.com/en/coins/bitcoin-incognito	0.01438423
1269	Rapids	https://www.coingecko.com/en/coins/rapids	0.00008377
1270	Gameflip	https://www.coingecko.com/en/coins/gameflip	0.00396334
1271	ICOS	https://www.coingecko.com/en/coins/icos	0.825767
1272	eXPerience Chain	https://www.coingecko.com/en/coins/experience-chain	0.00000190
1273	Bitcoin Pro	https://www.coingecko.com/en/coins/bitcoin-pro	11.45
1274	Moonlight Lux	https://www.coingecko.com/en/coins/moonlight	0.00038608
1275	DATx	https://www.coingecko.com/en/coins/datx	0.00022368
1276	StrongHands	https://www.coingecko.com/en/coins/stronghands	0.00001265
1277	Blocktix	https://www.coingecko.com/en/coins/blocktix	0.00478052
1278	Lukki Operating Token	https://www.coingecko.com/en/coins/lukki-operating-token	0.00370514
1279	Dovu	https://www.coingecko.com/en/coins/dovu	0.00069516
1280	PutinCoin	https://www.coingecko.com/en/coins/putincoin	0.00001073
1281	Pigeoncoin	https://www.coingecko.com/en/coins/pigeoncoin	0.00003443
1282	Startcoin	https://www.coingecko.com/en/coins/startcoin	0.00259694
1283	KnoxFS	https://www.coingecko.com/en/coins/knoxfs	0.00096400
1284	BuzzCoin	https://www.coingecko.com/en/coins/buzzcoin	0.00001060
1285	Crypto Sports	https://www.coingecko.com/en/coins/crypto-sports	0.05983467
1286	Aave REP	https://www.coingecko.com/en/coins/aave-rep	20.61
1287	FlypMe	https://www.coingecko.com/en/coins/flypme	0.01241584
1288	Opus	https://www.coingecko.com/en/coins/opus	0.00149845
1289	TOPBTC Token	https://www.coingecko.com/en/coins/topbtc-token	0.00752021
1290	PAL Network	https://www.coingecko.com/en/coins/pal-network	0.00032234
1291	DIMCOIN	https://www.coingecko.com/en/coins/dimcoin	0.00009930
1292	Mao Zedong	https://www.coingecko.com/en/coins/mao-zedong	0.03192020
1293	Vidulum	https://www.coingecko.com/en/coins/vidulum	0.01823683
1294	Arbidex	https://www.coingecko.com/en/coins/arbidex	0.00995378
1295	Silent Notary	https://www.coingecko.com/en/coins/silent-notary	0.00000126
1296	Graviocoin	https://www.coingecko.com/en/coins/graviocoin	0.00028712
1297	BoutsPro	https://www.coingecko.com/en/coins/boutspro	0.00411461
1298	Zeepin	https://www.coingecko.com/en/coins/zeepin	0.00039992
1299	Decent	https://www.coingecko.com/en/coins/decent	0.00365069
1300	Blocktrade	https://www.coingecko.com/en/coins/blocktrade	0.00344950
1301	Paypex	https://www.coingecko.com/en/coins/paypex	0.00177563
1302	Ethereum Gold	https://www.coingecko.com/en/coins/ethereum-gold	0.01095702
1303	Lendingblock	https://www.coingecko.com/en/coins/lendingblock	0.00025058
1304	Alpha Token	https://www.coingecko.com/en/coins/alpha-token	0.00389830
1305	Veles	https://www.coingecko.com/en/coins/veles	0.139364
1306	GoByte	https://www.coingecko.com/en/coins/gobyte	0.02653698
1307	Coil	https://www.coingecko.com/en/coins/coil	0.705250
1308	Bezop	https://www.coingecko.com/en/coins/bezop	0.00334352
1309	MetaMorph	https://www.coingecko.com/en/coins/metamorph	0.00137543
1310	Klimatas	https://www.coingecko.com/en/coins/klimatas	0.02398942
1311	Pundi X NEM	https://www.coingecko.com/en/coins/pundi-x-nem	0.00007340
1312	Pesetacoin	https://www.coingecko.com/en/coins/pesetacoin	0.00134543
1313	DeFi of Thrones	https://www.coingecko.com/en/coins/defi-of-thrones	0.04916653
1314	HyperQuant	https://www.coingecko.com/en/coins/hyperquant	0.00101662
1315	Deutsche eMark	https://www.coingecko.com/en/coins/deutsche-emark	0.00236827
1316	Guppy	https://www.coingecko.com/en/coins/guppy	0.00258210
1317	Mothership	https://www.coingecko.com/en/coins/mothership	0.00101795
1318	Signals	https://www.coingecko.com/en/coins/signals	0.00161638
1319	DMScript	https://www.coingecko.com/en/coins/dmscript	0.00577815
1320	MIB Coin	https://www.coingecko.com/en/coins/mib-coin	0.00289343
1321	LiteDoge	https://www.coingecko.com/en/coins/litedoge	0.00001140
1322	Winstex	https://www.coingecko.com/en/coins/winstex	0.00097460
1323	DAV Network	https://www.coingecko.com/en/coins/dav-network	0.00025360
1324	OpenAlexa Protocol	https://www.coingecko.com/en/coins/openalexa-protocol	0.716043
1325	Qbao	https://www.coingecko.com/en/coins/qbao	0.00269980
1326	IdealCash	https://www.coingecko.com/en/coins/idealcash	0.00010728
1327	LinkCoin Token	https://www.coingecko.com/en/coins/linkcoin-token	0.00067831
1328	Zippie	https://www.coingecko.com/en/coins/zippie	0.00044679
1329	Bitcoin Classic	https://www.coingecko.com/en/coins/bitcoin-classic	0.01181650
1330	Fortuna	https://www.coingecko.com/en/coins/fortuna	0.00053493
1331	Joulecoin	https://www.coingecko.com/en/coins/joulecoin	0.00440021
1332	ZcCoin	https://www.coingecko.com/en/coins/zccoin	0.00100941
1333	EquiTrader	https://www.coingecko.com/en/coins/equitrader	0.01204923
1334	Yield Farming Token	https://www.coingecko.com/en/coins/yield-farming-token	15.31
1335	KoreCoin	https://www.coingecko.com/en/coins/korecoin	0.06445030
1336	Cobinhood	https://www.coingecko.com/en/coins/cobinhood	0.00042883
1337	Bitcurrency	https://www.coingecko.com/en/coins/bitcurrency	0.00064058
1338	renZEC	https://www.coingecko.com/en/coins/renzec	65.93
1339	Emerald Crypto	https://www.coingecko.com/en/coins/emerald-crypto	0.00878656
1340	Krypton Galaxy Coin	https://www.coingecko.com/en/coins/krypton-galaxy-coin	0.00018998
1341	Uniform Fiscal Object	https://www.coingecko.com/en/coins/uniform-fiscal-object	0.00004303
1342	CRYCASH	https://www.coingecko.com/en/coins/crycash	0.03481318
1343	Helix	https://www.coingecko.com/en/coins/helix	0.00570720
1344	Transfercoin	https://www.coingecko.com/en/coins/transfercoin	0.01992050
1345	Jumpcoin	https://www.coingecko.com/en/coins/jumpcoin	0.00774727
1346	Blockcloud	https://www.coingecko.com/en/coins/blockcloud	0.00028031
1347	Billionaire Token	https://www.coingecko.com/en/coins/billionaire-token	0.04897745
1348	Aeryus	https://www.coingecko.com/en/coins/aeryus	0.00965376
1349	Streamity	https://www.coingecko.com/en/coins/streamity	0.00387198
1350	MMOCoin	https://www.coingecko.com/en/coins/mmocoin	0.00139863
1351	Actinium	https://www.coingecko.com/en/coins/actinium	0.00637635
1352	Traxia	https://www.coingecko.com/en/coins/traxia	0.00034222
1353	Masari	https://www.coingecko.com/en/coins/masari	0.01094236
1354	RealChain	https://www.coingecko.com/en/coins/realchain	0.00026231
1355	Ubcoin Market	https://www.coingecko.com/en/coins/ubcoin-market	0.00045143
1356	Kobocoin	https://www.coingecko.com/en/coins/kobocoin	0.00601763
1357	Giga Watt Token	https://www.coingecko.com/en/coins/giga-watt-token	0.02406989
1358	Bolivarcoin	https://www.coingecko.com/en/coins/bolivarcoin	0.01032172
1359	KekCoin	https://www.coingecko.com/en/coins/kekcoin	0.01225884
1360	1Million Token	https://www.coingecko.com/en/coins/1million-token	0.184692
1361	Helium Chain	https://www.coingecko.com/en/coins/helium-chain	0.01254307
1362	LanaCoin	https://www.coingecko.com/en/coins/lanacoin	0.00007475
1363	En-Tan-Mo	https://www.coingecko.com/en/coins/en-tan-mo	0.00380098
1364	LOCIcoin	https://www.coingecko.com/en/coins/locicoin	0.00362570
1365	SF Capital	https://www.coingecko.com/en/coins/sf-capital	0.00202664
1366	Flixxo	https://www.coingecko.com/en/coins/flixxo	0.00290547
1367	Megacoin	https://www.coingecko.com/en/coins/megacoin	0.00377190
1368	HollyWoodCoin	https://www.coingecko.com/en/coins/hollywoodcoin	0.00344185
1369	Allive	https://www.coingecko.com/en/coins/allive	0.00040997
1370	AudioCoin	https://www.coingecko.com/en/coins/audiocoin	0.00013806
1371	Bigbom	https://www.coingecko.com/en/coins/bigbom	0.00039628
1372	Bagcoin	https://www.coingecko.com/en/coins/bagcoin	0.00150142
1373	Dropil	https://www.coingecko.com/en/coins/dropil	0.00000689
1374	Vsync	https://www.coingecko.com/en/coins/vsync	0.00075027
1375	Maxcoin	https://www.coingecko.com/en/coins/maxcoin	0.00194614
1376	Magi	https://www.coingecko.com/en/coins/magi	0.01214000
1377	Truegame	https://www.coingecko.com/en/coins/truegame	0.00164829
1378	Fera	https://www.coingecko.com/en/coins/fera	0.00073697
1379	RELEASE	https://www.coingecko.com/en/coins/release	0.00000232
1380	PEPS Coin	https://www.coingecko.com/en/coins/pepscoin	0.00235969
1381	vSlice	https://www.coingecko.com/en/coins/vslice	0.00163103
1382	JET8	https://www.coingecko.com/en/coins/jet8	0.00024371
1383	EurocoinToken	https://www.coingecko.com/en/coins/eurocointoken	0.03160376
1384	DeVault	https://www.coingecko.com/en/coins/devault	0.00045039
1385	Globex	https://www.coingecko.com/en/coins/globex	0.00000353
1386	sXRP	https://www.coingecko.com/en/coins/sxrp	0.258268
1387	Volume Network	https://www.coingecko.com/en/coins/volume-network	0.00043919
1388	WandX	https://www.coingecko.com/en/coins/wandx	0.00814354
1389	Nebula AI	https://www.coingecko.com/en/coins/nebula-ai	0.00044080
1390	Bethereum	https://www.coingecko.com/en/coins/bethereum	0.00022551
1391	Profile Utility Token	https://www.coingecko.com/en/coins/profile-utility-token	0.00226507
1392	Rito	https://www.coingecko.com/en/coins/rito	0.00008580
1393	Zilla	https://www.coingecko.com/en/coins/zilla	0.00257787
1394	Noir	https://www.coingecko.com/en/coins/noir	0.00622246
1395	Bitbar	https://www.coingecko.com/en/coins/bitbar	2.68
1396	Tesla Token	https://www.coingecko.com/en/coins/tesla-token	0.00021600
1397	IncaKoin	https://www.coingecko.com/en/coins/incakoin	0.00000701
1398	MicroMoney	https://www.coingecko.com/en/coins/micromoney	0.00716348
1399	Civitas	https://www.coingecko.com/en/coins/civitas	0.01606867
1400	Coinsbit Token	https://www.coingecko.com/en/coins/coinsbit-token	0.00030042
1401	PolypuX	https://www.coingecko.com/en/coins/polypux	0.00311154
1402	Delion	https://www.coingecko.com/en/coins/delion	0.00215149
1403	Graft Blockchain	https://www.coingecko.com/en/coins/graft-blockchain	0.00008847
1404	FEIRM	https://www.coingecko.com/en/coins/feirm	0.01651196
1405	Globatalent	https://www.coingecko.com/en/coins/globatalent	0.00022130
1406	Rivetz	https://www.coingecko.com/en/coins/rivetz	0.00426587
1407	renBCH	https://www.coingecko.com/en/coins/renbch	225.41
1408	SwiftCash	https://www.coingecko.com/en/coins/swiftcash	0.00075197
1409	Baguette Token	https://www.coingecko.com/en/coins/baguette-token	0.00865609
1410	BlitzPredict	https://www.coingecko.com/en/coins/blitzpredict	0.00033217
1411	Pangea Arbitration Token (Bitnation)	https://www.coingecko.com/en/coins/pangea-arbitration-token	0.00000352
1412	TIG Token	https://www.coingecko.com/en/coins/tig-token	0.01352073
1413	FSBT API	https://www.coingecko.com/en/coins/fsbt-api	0.03471566
1414	AiLink Token	https://www.coingecko.com/en/coins/ailink-token	0.00002434
1415	iBTC	https://www.coingecko.com/en/coins/ibtc	8725.61
1416	Savedroid	https://www.coingecko.com/en/coins/savedroid	0.00003911
1417	Storiqa	https://www.coingecko.com/en/coins/storiqa	0.00001029
1418	CoinJanitor	https://www.coingecko.com/en/coins/coinjanitor	0.00208183
1419	Armours	https://www.coingecko.com/en/coins/armours	0.00021838
1420	Proton Token	https://www.coingecko.com/en/coins/proton-token	0.00002790
1421	BitWhite	https://www.coingecko.com/en/coins/bitwhite	0.00175057
1422	DeltaChain	https://www.coingecko.com/en/coins/deltachain	0.00001490
1423	Arionum	https://www.coingecko.com/en/coins/arionum	0.00053823
1424	Gapcoin	https://www.coingecko.com/en/coins/gapcoin	0.00684137
1425	sBNB	https://www.coingecko.com/en/coins/sbnb	29.65
1426	Raise Token	https://www.coingecko.com/en/coins/raise-token	0.00743997
1427	BetterBetting	https://www.coingecko.com/en/coins/betterbetting	0.00068297
1428	Ozziecoin	https://www.coingecko.com/en/coins/ozziecoin	0.00000891
1429	Blur Network	https://www.coingecko.com/en/coins/blur-network	0.01708637
1430	Kolin	https://www.coingecko.com/en/coins/kolin	0.00010602
1431	PWR Coin	https://www.coingecko.com/en/coins/pwr-coin	0.00001054
1432	Sucrecoin	https://www.coingecko.com/en/coins/sucrecoin	0.01782369
1433	Artis Turba	https://www.coingecko.com/en/coins/artis-turba	0.00365432
1434	Parkgene	https://www.coingecko.com/en/coins/parkgene	0.00036597
1435	Quoxent	https://www.coingecko.com/en/coins/quoxent	0.00032185
1436	PatexShares	https://www.coingecko.com/en/coins/patexshares	2.09
1437	Monkey Project	https://www.coingecko.com/en/coins/monkey-project	0.00928221
1438	INSaNe	https://www.coingecko.com/en/coins/insane	0.00417123
1439	Kids Cash	https://www.coingecko.com/en/coins/kids-cash	0.09832490
1440	APR Coin	https://www.coingecko.com/en/coins/apr-coin	0.00814683
1441	Ecoin	https://www.coingecko.com/en/coins/ecoin	0.00195007
1442	USDX	https://www.coingecko.com/en/coins/usdx	0.02671979
1443	Gentarium	https://www.coingecko.com/en/coins/gentarium	0.02124232
1444	HOTchain	https://www.coingecko.com/en/coins/hotchain	0.00030003
1445	BitRent	https://www.coingecko.com/en/coins/bitrent	0.00011809
1446	TCASH	https://www.coingecko.com/en/coins/tcash	0.00276141
1447	Verify	https://www.coingecko.com/en/coins/verify	0.00635788
1448	ugChain	https://www.coingecko.com/en/coins/ugchain	0.00017630
1449	FLUX	https://www.coingecko.com/en/coins/flux	0.975341
1450	Bounty0x	https://www.coingecko.com/en/coins/bounty0x	0.00059522
1451	SWYFT	https://www.coingecko.com/en/coins/swyft	0.149451
1452	Master Swiscoin	https://www.coingecko.com/en/coins/master-swiscoin	0.00009644
1453	Popchain	https://www.coingecko.com/en/coins/popchain	0.00013255
1454	Giant	https://www.coingecko.com/en/coins/giant	0.01120978
1455	Wiki Token	https://www.coingecko.com/en/coins/wiki-token	0.352671
1456	Truckcoin	https://www.coingecko.com/en/coins/truckcoin	0.00029088
1457	ArQmA	https://www.coingecko.com/en/coins/arqma	0.00735431
1458	Lethean	https://www.coingecko.com/en/coins/lethean	0.00010757
1459	Aditus	https://www.coingecko.com/en/coins/aditus	0.00039188
1460	TEAM	https://www.coingecko.com/en/coins/team	0.00892007
1461	TigerCash	https://www.coingecko.com/en/coins/tigercash	0.00534904
1462	WomenCoin	https://www.coingecko.com/en/coins/womencoin	0.00000168
1463	BitSend	https://www.coingecko.com/en/coins/bitsend	0.00322480
1464	Porkchop	https://www.coingecko.com/en/coins/porkchop	0.00509290
1465	Thingschain	https://www.coingecko.com/en/coins/thingschain	0.00000359
1466	EstxCoin	https://www.coingecko.com/en/coins/estxcoin	0.00556767
1467	Know Your Developer	https://www.coingecko.com/en/coins/know-your-developer	0.00747003
1468	Netko	https://www.coingecko.com/en/coins/netko	0.00813730
1469	Soft Link	https://www.coingecko.com/en/coins/softlink	10.50
1470	ChallengeDAC	https://www.coingecko.com/en/coins/challengedac	0.00003297
1471	Catex Token	https://www.coingecko.com/en/coins/catex-token	0.00010659
1472	NOODLE.Finance	https://www.coingecko.com/en/coins/noodle-finance	0.00051962
1473	Obee Network	https://www.coingecko.com/en/coins/obee-network	0.00164350
1474	Mindexcoin	https://www.coingecko.com/en/coins/mindexcoin	0.00219350
1475	Bithereum	https://www.coingecko.com/en/coins/bithereum	0.00279255
1476	AltEstate Token	https://www.coingecko.com/en/coins/alt-estate-token	0.00012265
1477	Webcoin	https://www.coingecko.com/en/coins/webcoin	0.00190406
1478	Bitcoin Zero	https://www.coingecko.com/en/coins/bitcoin-zero	0.00293541
1479	Sp8de	https://www.coingecko.com/en/coins/sp8de	0.00001061
1480	OBITS	https://www.coingecko.com/en/coins/obits	0.00567627
1481	Spheroid Universe	https://www.coingecko.com/en/coins/spheroid-universe	0.00799613
1482	CROAT	https://www.coingecko.com/en/coins/croat	0.00118439
1483	Bitcoin Token	https://www.coingecko.com/en/coins/bitcoin-token	0.00696504
1484	Jiaozi	https://www.coingecko.com/en/coins/jiaozi	0.00042368
1485	Bitstar	https://www.coingecko.com/en/coins/bitstar	0.00386260
1486	iDeFi	https://www.coingecko.com/en/coins/idefi	4808.07
1487	SkyMap	https://www.coingecko.com/en/coins/skymap	0.00200017
1488	Kora Network	https://www.coingecko.com/en/coins/kora-network	0.00023932
1489	Crystal Token	https://www.coingecko.com/en/coins/crystal-token	0.00410774
1490	SnodeCoin	https://www.coingecko.com/en/coins/snodecoin	0.00149283
1491	Sharpay	https://www.coingecko.com/en/coins/sharpay	0.00003872
1492	PluraCoin	https://www.coingecko.com/en/coins/pluracoin	0.00010723
1493	MFCoin	https://www.coingecko.com/en/coins/mfcoin	0.00365260
1494	Social Lending Token	https://www.coingecko.com/en/coins/social-lending-token	0.00031597
1495	Bitradio	https://www.coingecko.com/en/coins/bitradio	0.00546716
1496	Riecoin	https://www.coingecko.com/en/coins/riecoin	0.00139867
1497	Peony Coin	https://www.coingecko.com/en/coins/peony-coin	0.01500777
1498	Elysian	https://www.coingecko.com/en/coins/elysian	0.00066619
1499	Gems	https://www.coingecko.com/en/coins/gems	0.00011010
1500	FundRequest	https://www.coingecko.com/en/coins/fundrequest	0.00154629
1501	MultiCoinCasino	https://www.coingecko.com/en/coins/multicoincasino	0.00956515
1502	SteepCoin	https://www.coingecko.com/en/coins/steepcoin	0.00010759
1503	KuboCoin	https://www.coingecko.com/en/coins/kubocoin	0.00000085
1504	Bitcloud	https://www.coingecko.com/en/coins/bitcloud	0.00214746
1505	InterValue	https://www.coingecko.com/en/coins/intervalue	0.00054757
1506	Suretly	https://www.coingecko.com/en/coins/suretly	0.337001
1507	Bitcoin CZ	https://www.coingecko.com/en/coins/bitcoin-cz	0.02380518
1508	Scanetchain	https://www.coingecko.com/en/coins/scanetchain	0.00014774
1509	Bitcoin Instant	https://www.coingecko.com/en/coins/bitcoin-instant	0.00053834
1510	InMax	https://www.coingecko.com/en/coins/inmax	0.02119130
1511	Ultragate	https://www.coingecko.com/en/coins/ultragate	0.00740218
1512	Scorum	https://www.coingecko.com/en/coins/scorum	0.00729574
1513	Titcoin	https://www.coingecko.com/en/coins/titcoin	0.00107169
1514	HYPNOXYS	https://www.coingecko.com/en/coins/hypnoxys	0.00000343
1515	ChessCoin	https://www.coingecko.com/en/coins/chesscoin	0.00075209
1516	Payfair	https://www.coingecko.com/en/coins/payfair	0.00083018
1517	YunEx Yun Token	https://www.coingecko.com/en/coins/yunex-yun-token	0.00082735
1518	Skillcoin	https://www.coingecko.com/en/coins/skillcoin	0.00000363
1519	Coinsuper Ecosystem Network	https://www.coingecko.com/en/coins/coinsuper-ecosystem-network	0.00062693
1520	Kalkulus	https://www.coingecko.com/en/coins/kalkulus	0.00364753
1521	Decentralized Asset Trading Platform	https://www.coingecko.com/en/coins/decentralized-asset-trading-platform	0.00000387
1522	Bonpay	https://www.coingecko.com/en/coins/bonpay	0.00706583
1523	Privatix	https://www.coingecko.com/en/coins/privatix	0.06131264
1524	Hurify	https://www.coingecko.com/en/coins/hurify	0.00030856
1525	Hero Node Token	https://www.coingecko.com/en/coins/hero-node-token	0.00006323
1526	Sether	https://www.coingecko.com/en/coins/sether	0.00327870
1527	SCRIV	https://www.coingecko.com/en/coins/scriv	0.00073829
1528	Opal	https://www.coingecko.com/en/coins/opal	0.00431318
1529	Golden Ratio Token	https://www.coingecko.com/en/coins/golden-ratio-token	4.21
1530	Ethereum Gold Project	https://www.coingecko.com/en/coins/ethereum-gold-project	0.00001073
1531	Ellaism	https://www.coingecko.com/en/coins/ellaism	0.00171600
1532	USDQ	https://www.coingecko.com/en/coins/usdq	0.996055
1533	PKG Token	https://www.coingecko.com/en/coins/pkg-token	0.00000648
1534	Colossuscoin V2	https://www.coingecko.com/en/coins/colossuscoin-v2	0.00000507
1535	Bata	https://www.coingecko.com/en/coins/bata	0.01231644
1536	CryptoSoul	https://www.coingecko.com/en/coins/cryptosoul	0.00022907
1537	CHEESE	https://www.coingecko.com/en/coins/cheese	0.00015019
1538	Lunch Money	https://www.coingecko.com/en/coins/lunch-money	0.00077691
1539	Eroscoin	https://www.coingecko.com/en/coins/eroscoin	0.00032221
1540	TranslateMe Network Token	https://www.coingecko.com/en/coins/translateme-network-token	0.00265051
1541	BOAT	https://www.coingecko.com/en/coins/boat	0.00079627
1542	DogeCash	https://www.coingecko.com/en/coins/dogecash	0.00674639
1543	CryptCoin	https://www.coingecko.com/en/coins/cryptcoin	0.01178564
1544	Kripton	https://www.coingecko.com/en/coins/kripton	0.00008849
1545	PieDAO USD++	https://www.coingecko.com/en/coins/piedao-usd	0.864599
1546	Litecoin Plus	https://www.coingecko.com/en/coins/litecoin-plus	0.02036599
1547	Veros	https://www.coingecko.com/en/coins/veros	0.05049132
1548	ExchangeCoin	https://www.coingecko.com/en/coins/exchangecoin	0.00246661
1549	Advanced Technology Coin	https://www.coingecko.com/en/coins/advanced-technology-coin	0.00203388
1550	PengolinCoin	https://www.coingecko.com/en/coins/pengolincoin	0.00331049
1551	Mafia.Network	https://www.coingecko.com/en/coins/mafia-network	0.00870905
1552	ImageCash	https://www.coingecko.com/en/coins/imagecash	0.01169331
1553	Whalesburg	https://www.coingecko.com/en/coins/whalesburg	0.00064140
1554	Quantis	https://www.coingecko.com/en/coins/quantis	0.00010757
1555	LKR Coin	https://www.coingecko.com/en/coins/lkr-coin	0.00364658
1556	Iridium	https://www.coingecko.com/en/coins/iridium	0.00257881
1557	YFUEL	https://www.coingecko.com/en/coins/yfuel	4.67
1558	ProxyNode	https://www.coingecko.com/en/coins/proxynode	0.00032183
1559	ShowHand	https://www.coingecko.com/en/coins/showhand	0.00000025
1560	Genesis Network	https://www.coingecko.com/en/coins/genesis-network	0.00007723
1561	sBCH	https://www.coingecko.com/en/coins/sbch	243.07
1562	KanadeCoin	https://www.coingecko.com/en/coins/kanadecoin	0.00001060
1563	ANON	https://www.coingecko.com/en/coins/anon	0.00349778
1564	HondaisCoin	https://www.coingecko.com/en/coins/hondaiscoin	0.00000108
1565	Emrals	https://www.coingecko.com/en/coins/emrals	0.00945979
1566	FoodCoin	https://www.coingecko.com/en/coins/foodcoin	0.00018238
1567	Harrison First	https://www.coingecko.com/en/coins/harrison-first	0.01406682
1568	Bitcoin Fast	https://www.coingecko.com/en/coins/bitcoin-fast	0.00214741
1569	GravityCoin	https://www.coingecko.com/en/coins/gravitycoin	0.01567132
1570	CrowdWiz	https://www.coingecko.com/en/coins/crowdwiz	0.01101125
1571	AC3	https://www.coingecko.com/en/coins/ac3	0.00010001
1572	WavesGo	https://www.coingecko.com/en/coins/wavesgo	0.01004020
1573	GOSSIP-Coin	https://www.coingecko.com/en/coins/gossipcoin	0.00161237
1574	ConnectJob	https://www.coingecko.com/en/coins/connectjob	0.00043599
1575	ETHplode	https://www.coingecko.com/en/coins/ethplode	0.00098494
1576	PENG	https://www.coingecko.com/en/coins/penguin	0.00000505
1577	JOON	https://www.coingecko.com/en/coins/joon	0.03506587
1578	OVCODE	https://www.coingecko.com/en/coins/ovcode	0.00250370
1579	DecentBet	https://www.coingecko.com/en/coins/decentbet	0.00206347
1580	GoHelpFund	https://www.coingecko.com/en/coins/gohelpfund	0.00117741
1581	CatoCoin	https://www.coingecko.com/en/coins/catocoin	0.00139080
1582	Mchain	https://www.coingecko.com/en/coins/mchain	0.00110164
1583	MEDIBIT	https://www.coingecko.com/en/coins/medibit	0.00000210
1584	Kittoken	https://www.coingecko.com/en/coins/kittoken	0.00000728
1585	BitCoen	https://www.coingecko.com/en/coins/bitcoen	0.00718806
1586	Capricoin	https://www.coingecko.com/en/coins/capricoin	0.03588428
1587	Mainstream For The Underground	https://www.coingecko.com/en/coins/mainstream-for-the-underground	0.00006332
1588	ArbitrageCT	https://www.coingecko.com/en/coins/arbitragect	0.00010603
1589	Xuez Coin	https://www.coingecko.com/en/coins/xuez-coin	0.01082740
1590	Yup	https://www.coingecko.com/en/coins/yup	0.498641
1591	Birdchain	https://www.coingecko.com/en/coins/birdchain	0.00027557
1592	YUKI COIN	https://www.coingecko.com/en/coins/yuki-coin	0.00000352
1593	CryptoAds Marketplace	https://www.coingecko.com/en/coins/cryptoads-marketplace	0.00332070
1594	Phantomx	https://www.coingecko.com/en/coins/phantomx	0.00097049
1595	Ethereum Cash	https://www.coingecko.com/en/coins/ethereum-cash	0.00336718
1596	Ethorse	https://www.coingecko.com/en/coins/ethorse	0.00043277
1597	EZOOW	https://www.coingecko.com/en/coins/ezoow	0.00000346
1598	PayFrequent USD	https://www.coingecko.com/en/coins/payfrequent-usd	1.00
1599	01coin	https://www.coingecko.com/en/coins/01coin	0.00427804
1600	Wild Crypto	https://www.coingecko.com/en/coins/wild-crypto	0.00072134
1601	Electronero	https://www.coingecko.com/en/coins/electronero	0.00000136
1602	SelfSell	https://www.coingecko.com/en/coins/selfsell	0.00011596
1603	Dalecoin	https://www.coingecko.com/en/coins/dalecoin	0.04756838
1604	Apollon Network	https://www.coingecko.com/en/coins/apollon-network	0.00024686
1605	Cranepay	https://www.coingecko.com/en/coins/cranepay	0.00064324
1606	EvenCoin	https://www.coingecko.com/en/coins/evencoin	0.00273820
1607	SkinCoin	https://www.coingecko.com/en/coins/skincoin	0.00048828
1608	WOLLO	https://www.coingecko.com/en/coins/wollo	0.00022709
1609	Social Activity Token	https://www.coingecko.com/en/coins/social-activity-token	0.00035083
1610	Brazio	https://www.coingecko.com/en/coins/brazio	0.00050939
1611	PopularCoin	https://www.coingecko.com/en/coins/popularcoin	0.00001056
1612	PRiVCY	https://www.coingecko.com/en/coins/privcy	0.00139488
1613	2GIVE	https://www.coingecko.com/en/coins/2give	0.00008091
1614	Dowcoin	https://www.coingecko.com/en/coins/dowcoin	0.00358174
1615	2ACoin	https://www.coingecko.com/en/coins/2acoin	0.00611517
1616	Photon	https://www.coingecko.com/en/coins/photon	0.00000116
1617	Prospectors Gold	https://www.coingecko.com/en/coins/prospectors-gold	0.01893227
1618	Exosis	https://www.coingecko.com/en/coins/exosis	0.06635631
1619	OASIS	https://www.coingecko.com/en/coins/oasis	0.07666629
1620	ATBCoin	https://www.coingecko.com/en/coins/atbcoin	0.00107244
1621	EDRCoin	https://www.coingecko.com/en/coins/edrcoin	0.01088550
1622	sXTZ	https://www.coingecko.com/en/coins/sxtz	2.15
1623	SuperCoin	https://www.coingecko.com/en/coins/supercoin	0.00075033
1624	KwhCoin	https://www.coingecko.com/en/coins/kwhcoin	0.00001406
1625	Touriva	https://www.coingecko.com/en/coins/touriva	0.02357947
1626	Atheneum	https://www.coingecko.com/en/coins/atheneum	0.00123007
1627	DNotes	https://www.coingecko.com/en/coins/dnotes	0.00010661
1628	StrongHands Masternode	https://www.coingecko.com/en/coins/stronghands-masternode	0.01567195
1629	Altbet	https://www.coingecko.com/en/coins/altbet	0.01521905
1630	Tokok	https://www.coingecko.com/en/coins/tokok	0.00283890
1631	Moin	https://www.coingecko.com/en/coins/moin	0.00289169
1632	Omnitude	https://www.coingecko.com/en/coins/omnitude	0.00096108
1633	LiteBar	https://www.coingecko.com/en/coins/litebar	0.02880378
1634	FunTime Coin	https://www.coingecko.com/en/coins/funtime-coin	0.00761273
1635	Custom contract network	https://www.coingecko.com/en/coins/custom-contract-network	0.00002231
1636	BERNcash	https://www.coingecko.com/en/coins/berncash	0.00037874
1637	SDUSD	https://www.coingecko.com/en/coins/sdusd	1.00
1638	Blocklancer	https://www.coingecko.com/en/coins/blocklancer	0.00032211
1639	Tourist Token	https://www.coingecko.com/en/coins/tourist-token	0.00000536
1640	Evil Coin	https://www.coingecko.com/en/coins/evil-coin	0.00161043
1641	CryptoDezireCash	https://www.coingecko.com/en/coins/cryptodezirecash	0.00712161
1642	Eternity	https://www.coingecko.com/en/coins/eternity	0.00389374
1643	UChain	https://www.coingecko.com/en/coins/uchain	0.00011444
1644	Audax	https://www.coingecko.com/en/coins/audax	0.00311123
1645	Italian Lira	https://www.coingecko.com/en/coins/italian-lira	0.00000138
1646	Cashbery Coin	https://www.coingecko.com/en/coins/cashbery-coin	0.00558757
1647	Eska	https://www.coingecko.com/en/coins/eska	0.00278800
1648	LOTEU	https://www.coingecko.com/en/coins/loteu	0.00041468
1649	Genix	https://www.coingecko.com/en/coins/genix	0.00032330
1650	Adzcoin	https://www.coingecko.com/en/coins/adzcoin	0.00050314
1651	DogeFi	https://www.coingecko.com/en/coins/dogefi	0.06422555
1652	QUINADS	https://www.coingecko.com/en/coins/quinads	0.00000230
1653	CyberMusic	https://www.coingecko.com/en/coins/cybermusic	0.00000191
1654	ACE	https://www.coingecko.com/en/coins/ace	0.00545542
1655	Xavander Coin	https://www.coingecko.com/en/coins/xavander-coin	0.00732214
1656	Niobio Cash	https://www.coingecko.com/en/coins/niobio-cash	0.00021446
1657	GCN Coin	https://www.coingecko.com/en/coins/gcn-coin	0.00000020
1658	C2C System	https://www.coingecko.com/en/coins/c2c-system	0.00010035
1659	COWRY	https://www.coingecko.com/en/coins/cowry	0.03117882
1660	Blockparty	https://www.coingecko.com/en/coins/blockparty	0.00091757
1661	Medic Coin	https://www.coingecko.com/en/coins/medic-coin	0.00007519
1662	Bullion	https://www.coingecko.com/en/coins/bullion	0.02718787
1663	XGOX	https://www.coingecko.com/en/coins/xgox	0.00000924
1664	Dextro	https://www.coingecko.com/en/coins/dextro	0.01275495
1665	Partner	https://www.coingecko.com/en/coins/partner	0.00000351
1666	Origami Network	https://www.coingecko.com/en/coins/origami-network	0.00655715
1667	Bitcoin Red	https://www.coingecko.com/en/coins/bitcoin-red	0.00143257
1668	KIWI Token	https://www.coingecko.com/en/coins/kiwi-token	0.00006003
1669	sEOS	https://www.coingecko.com/en/coins/seos	3.20
1670	CoffeeCoin	https://www.coingecko.com/en/coins/coffeecoin	0.00075095
1671	Stakinglab	https://www.coingecko.com/en/coins/stakinglab	0.00665130
1672	NYXCoin	https://www.coingecko.com/en/coins/nyxcoin	0.00333381
1673	LiteBitcoin	https://www.coingecko.com/en/coins/litebitcoin	0.00012714
1674	Chess Coin	https://www.coingecko.com/en/coins/chess-coin	0.00081152
1675	Winco	https://www.coingecko.com/en/coins/winco	0.00003855
1676	Narrative	https://www.coingecko.com/en/coins/narrative	0.00053940
1677	Eltcoin	https://www.coingecko.com/en/coins/eltcoin	0.00028053
1678	Themis Network	https://www.coingecko.com/en/coins/themis	0.00219827
1679	BlockBurn	https://www.coingecko.com/en/coins/blockburn	0.00003110
1680	Smartcoin	https://www.coingecko.com/en/coins/smartcoin	0.00085651
1681	Rupaya	https://www.coingecko.com/en/coins/rupaya	0.00034431
1682	sCEX	https://www.coingecko.com/en/coins/scex	959.94
1683	SprinkleCoin	https://www.coingecko.com/en/coins/sprinklecoin	0.00076427
1684	IGToken	https://www.coingecko.com/en/coins/igtoken	0.00000703
1685	BitcoinV	https://www.coingecko.com/en/coins/bitcoinv	0.00614979
1686	Arepacoin	https://www.coingecko.com/en/coins/arepacoin	0.00142683
1687	Havy	https://www.coingecko.com/en/coins/havy	0.00000270
1688	JBOX	https://www.coingecko.com/en/coins/jbox	0.00493453
1689	GlobalToken	https://www.coingecko.com/en/coins/globaltoken	0.00021456
1690	Nanucoin	https://www.coingecko.com/en/coins/nanucoin	0.01402442
1691	Voyager	https://www.coingecko.com/en/coins/voyager	0.00008289
1692	SINOC	https://www.coingecko.com/en/coins/sinoc	0.00140480
1693	Jade Currency	https://www.coingecko.com/en/coins/jade-currency	0.00041561
1694	Maza	https://www.coingecko.com/en/coins/maza	0.00001322
1695	AIAScoin	https://www.coingecko.com/en/coins/aiascoin	0.00128829
1696	Impleum	https://www.coingecko.com/en/coins/impleum	0.00278940
1697	Intelligent Trading Foundation	https://www.coingecko.com/en/coins/intelligent-trading-foundation	0.00236014
1698	Spacecoin	https://www.coingecko.com/en/coins/spacecoin	0.00080080
1699	XDNA	https://www.coingecko.com/en/coins/xdna	0.00289523
1700	Livenodes	https://www.coingecko.com/en/coins/livenodes	0.00728269
1701	2X2	https://www.coingecko.com/en/coins/2x2	0.00107278
1702	SLOPPS	https://www.coingecko.com/en/coins/slopps	0.00128541
1703	Mynt	https://www.coingecko.com/en/coins/mynt	0.00004089
1704	YENTEN	https://www.coingecko.com/en/coins/yenten	0.00085694
1705	HeartBout	https://www.coingecko.com/en/coins/heartbout	0.00116645
1706	Asura	https://www.coingecko.com/en/coins/asura	0.00017669
1707	FUTURAX	https://www.coingecko.com/en/coins/futurax	0.00000275
1708	DeepCloud AI	https://www.coingecko.com/en/coins/deepcloud-ai	0.00053780
1709	Arion	https://www.coingecko.com/en/coins/arion	0.00160837
1710	TokenDesk	https://www.coingecko.com/en/coins/tokendesk	0.00142787
1711	MNPCoin	https://www.coingecko.com/en/coins/mnpcoin	0.00215347
1712	rDAI	https://www.coingecko.com/en/coins/rdai	0.933458
1713	Kind Ads Token	https://www.coingecko.com/en/coins/kind-ads-token	0.00060295
1714	Australia Cash	https://www.coingecko.com/en/coins/australia-cash	0.00225889
1715	Ludos Protocol	https://www.coingecko.com/en/coins/ludos-protocol	0.00012633
1716	Guard	https://www.coingecko.com/en/coins/guard	0.00128739
1717	Electron	https://www.coingecko.com/en/coins/electron	0.00075602
1718	Masternet	https://www.coingecko.com/en/coins/masternet	0.00013068
1719	Swipp	https://www.coingecko.com/en/coins/swipp	0.00279729
1720	Bitsum	https://www.coingecko.com/en/coins/bitsum	0.00001575
1721	Onix	https://www.coingecko.com/en/coins/onix	0.00015915
1722	ROIyal Coin	https://www.coingecko.com/en/coins/roiyal-coin	0.01308830
1723	BitcoiNote	https://www.coingecko.com/en/coins/bitcoinote	0.00161602
1724	Worldcore	https://www.coingecko.com/en/coins/worldcore	0.00010743
1725	Teslafunds	https://www.coingecko.com/en/coins/teslafunds	0.00435207
1726	Beacon	https://www.coingecko.com/en/coins/beacon	0.01301549
1727	Neetcoin	https://www.coingecko.com/en/coins/neetcoin	0.00225896
1728	CaluraCoin	https://www.coingecko.com/en/coins/caluracoin	0.00139731
1729	Absolute	https://www.coingecko.com/en/coins/absolute	0.00107117
1730	TriveChain	https://www.coingecko.com/en/coins/trivechain	0.00043045
1731	Italo	https://www.coingecko.com/en/coins/italo	0.00302689
1732	Bloc.Money	https://www.coingecko.com/en/coins/bloc-money	0.00107252
1733	4New	https://www.coingecko.com/en/coins/4new	0.00030956
1734	Dreamcoin	https://www.coingecko.com/en/coins/dreamcoin	0.00662820
1735	NevaCoin	https://www.coingecko.com/en/coins/nevacoin	0.00319653
1736	Junsonmingchancoin	https://www.coingecko.com/en/coins/junsonmingchancoin	0.00000064
1737	Guider	https://www.coingecko.com/en/coins/guider	0.00006523
1738	X-Coin	https://www.coingecko.com/en/coins/xcoin	0.00053626
1739	Guncoin	https://www.coingecko.com/en/coins/guncoin	0.00005302
1740	BUCK	https://www.coingecko.com/en/coins/buck	0.00003148
1741	SportyCo	https://www.coingecko.com/en/coins/sportyco	0.00031646
1742	Bulleon	https://www.coingecko.com/en/coins/bulleon	0.01387754
1743	Valuto	https://www.coingecko.com/en/coins/valuto	0.00021456
1744	SaveNode	https://www.coingecko.com/en/coins/savenode	0.00010588
1745	JSECOIN	https://www.coingecko.com/en/coins/jsecoin	0.00003587
1746	POMA	https://www.coingecko.com/en/coins/poma	0.00010174
1747	Tourist Review Token	https://www.coingecko.com/en/coins/tourist-review-token	0.00000352
1748	Data Transaction Token	https://www.coingecko.com/en/coins/data-transaction-token	0.00006683
1749	ARAW Token	https://www.coingecko.com/en/coins/araw-token	0.00000628
1750	GeyserCoin	https://www.coingecko.com/en/coins/geysercoin	0.01179437
1751	Daneel	https://www.coingecko.com/en/coins/daneel	0.00071029
1752	Galactrum	https://www.coingecko.com/en/coins/galactrum	0.00204225
1753	Herbalist Token	https://www.coingecko.com/en/coins/herbalist-token	0.00000208
1754	Galilel	https://www.coingecko.com/en/coins/galilel	0.00075235
1755	FXPay	https://www.coingecko.com/en/coins/fxpay	0.00005964
1756	RPICoin	https://www.coingecko.com/en/coins/rpicoin	0.00001404
1757	Game Stars	https://www.coingecko.com/en/coins/game-stars	0.00005315
1758	BoostCoin	https://www.coingecko.com/en/coins/boostcoin	0.00075027
1759	Carebit	https://www.coingecko.com/en/coins/carebit	0.00008675
1760	CIPHER	https://www.coingecko.com/en/coins/cipher	0.00022519
1761	Digital Money Bits	https://www.coingecko.com/en/coins/digital-money-bits	0.00010720
1762	404	https://www.coingecko.com/en/coins/404	0.00868494
1763	Cryptrust	https://www.coingecko.com/en/coins/cryptrust	0.00000192
1764	Soma	https://www.coingecko.com/en/coins/soma	0.00114431
1765	Soarcoin	https://www.coingecko.com/en/coins/soarcoin	0.00001167
1766	Zealium	https://www.coingecko.com/en/coins/zealium	0.00086122
1767	SoftChain	https://www.coingecko.com/en/coins/softchain	0.00021109
1768	Neural Protocol	https://www.coingecko.com/en/coins/neural-protocol	0.00000144
1769	Datarius Credit	https://www.coingecko.com/en/coins/datarius-credit	0.00009195
1770	EAZY Community Node	https://www.coingecko.com/en/coins/eazy-community-node	0.00144956
1771	PeerGuess	https://www.coingecko.com/en/coins/peerguess	0.00022323
1772	VikkyToken	https://www.coingecko.com/en/coins/vikkytoken	0.00000138
1773	Curium	https://www.coingecko.com/en/coins/curium	0.00129322
1774	ModulTrade	https://www.coingecko.com/en/coins/modultrade	0.00074297
1775	Netrum	https://www.coingecko.com/en/coins/netrum	0.00707143
1776	Influxcoin	https://www.coingecko.com/en/coins/influxcoin	0.00410197
1777	Guaranteed Ethurance Token Extra	https://www.coingecko.com/en/coins/guaranteed-ethurance-token-extra	0.00004162
1778	Keyco	https://www.coingecko.com/en/coins/keyco	0.01560859
1779	INFOCoin	https://www.coingecko.com/en/coins/infocoin	0.00016329
1780	xGalaxy	https://www.coingecko.com/en/coins/xgalaxy	0.00215041
1781	Ether Kingdoms Token	https://www.coingecko.com/en/coins/ether-kingdoms-token	0.00160891
1782	WillowCoin	https://www.coingecko.com/en/coins/willowcoin	0.00002422
1783	Stipend	https://www.coingecko.com/en/coins/stipend	0.00102180
1784	Blakecoin	https://www.coingecko.com/en/coins/blakecoin	0.00042620
1785	Block Array	https://www.coingecko.com/en/coins/block-array	0.00017199
1786	Crypto Trading Solutions Coin	https://www.coingecko.com/en/coins/cts-coin	0.00023351
1787	Alpha Coin	https://www.coingecko.com/en/coins/alpha-coin	0.00017899
1788	Collegicoin	https://www.coingecko.com/en/coins/collegicoin	0.00312027
1789	VOISE	https://www.coingecko.com/en/coins/voise	0.00001907
1790	KemaCoin	https://www.coingecko.com/en/coins/kemacoin	0.00042913
1791	Soothing Coin	https://www.coingecko.com/en/coins/soothing-coin	0.00349776
1792	RonPaulCoin	https://www.coingecko.com/en/coins/ronpaulcoin	0.00969004
1793	BitMoney	https://www.coingecko.com/en/coins/bitmoney	0.00002151
1794	SRH	https://www.coingecko.com/en/coins/srh	0.00000208
1795	Theresa May Coin	https://www.coingecko.com/en/coins/theresa-may-coin	0.00010615
1796	Arto	https://www.coingecko.com/en/coins/arto	0.00064488
1797	Tuxcoin	https://www.coingecko.com/en/coins/tuxcoin	0.00021441
1798	Sierracoin	https://www.coingecko.com/en/coins/sierracoin	0.00181016
1799	NITRO	https://www.coingecko.com/en/coins/nitro	0.00020997
1800	sXMR	https://www.coingecko.com/en/coins/sxmr	99.88
1801	CPUchain	https://www.coingecko.com/en/coins/cpuchain	0.00030055
1802	SkyHub	https://www.coingecko.com/en/coins/skyhub	0.01269365
1803	Connect	https://www.coingecko.com/en/coins/connect	0.00011588
1804	Bitcomo	https://www.coingecko.com/en/coins/bitcomo	0.00160511
1805	NioShares	https://www.coingecko.com/en/coins/nioshares	0.01273360
1806	Reecore	https://www.coingecko.com/en/coins/reecore	0.00118013
1807	ChanCoin	https://www.coingecko.com/en/coins/chancoin	0.00043040
1808	Abitshadow Token	https://www.coingecko.com/en/coins/abitshadow-token	0.00006243
1809	Zenad	https://www.coingecko.com/en/coins/zenad	0.00024807
1810	bitJob	https://www.coingecko.com/en/coins/bitjob	0.00009559
1811	ExperienceCoin	https://www.coingecko.com/en/coins/experiencecoin	0.00000047
1812	Sugar Exchange	https://www.coingecko.com/en/coins/sugar-exchange	0.00038175
1813	SUB1X	https://www.coingecko.com/en/coins/sub1x	0.157824
1814	GINcoin	https://www.coingecko.com/en/coins/gincoin	0.00109792
1815	AEROTOKEN	https://www.coingecko.com/en/coins/aerotoken	0.01952577
1816	Archetypal Network	https://www.coingecko.com/en/coins/archetypal-network	0.00000120
1817	Datacoin	https://www.coingecko.com/en/coins/datacoin	0.00021182
1818	BaconSwap	https://www.coingecko.com/en/coins/baconswap	0.00074662
1819	Sativacoin	https://www.coingecko.com/en/coins/sativacoin	0.00116102
1820	Gexan	https://www.coingecko.com/en/coins/gexan	0.00225135
1821	Boldman Capital	https://www.coingecko.com/en/coins/boldman-capital	0.00001407
1822	IPSUM	https://www.coingecko.com/en/coins/ipsum	0.00032314
1823	Secure Cash	https://www.coingecko.com/en/coins/secure-cash	0.08303759
1824	TajCoin	https://www.coingecko.com/en/coins/tajcoin	0.00040195
1825	ExchangeN	https://www.coingecko.com/en/coins/exchangen	0.00360626
1826	HASH	https://www.coingecko.com/en/coins/hash	0.00021446
1827	Ethereum Meta	https://www.coingecko.com/en/coins/ethereum-meta	0.00007415
1828	DWS	https://www.coingecko.com/en/coins/dws	0.00002373
1829	Authorship	https://www.coingecko.com/en/coins/authorship	0.00007268
1830	KINGSCOIN	https://www.coingecko.com/en/coins/kingscoin	0.00106003
1831	YOLOCash	https://www.coingecko.com/en/coins/yolocash	0.00022162
1832	Roi Coin	https://www.coingecko.com/en/coins/roi-coin	0.00001015
1833	Joint Ventures	https://www.coingecko.com/en/coins/joint-ventures	0.00037846
1834	Kabberry	https://www.coingecko.com/en/coins/kabberry	0.00032225
1835	GOLD Reward Token	https://www.coingecko.com/en/coins/gold-reward-token	0.00051331
1836	Soverain	https://www.coingecko.com/en/coins/soverain	0.00085823
1837	PAXEX	https://www.coingecko.com/en/coins/paxex	0.00021453
1838	MarteXcoin	https://www.coingecko.com/en/coins/martexcoin	0.00150719
1839	Balkan coin	https://www.coingecko.com/en/coins/balkan-coin	0.00003141
1840	SpectrumX	https://www.coingecko.com/en/coins/spectrumx	0.00042839
1841	sTRX	https://www.coingecko.com/en/coins/strx	0.03228676
1842	CryptoHashTank Coin	https://www.coingecko.com/en/coins/cryptohashtank-coin	0.00764520
1843	Snowball	https://www.coingecko.com/en/coins/snowball	0.00002147
1844	Ccore	https://www.coingecko.com/en/coins/ccore	0.00362202
1845	DICE.FINANCE	https://www.coingecko.com/en/coins/dice-finance	25.09
1846	Emergency Coin	https://www.coingecko.com/en/coins/emergency-coin	0.00075149
1847	HOdlcoin	https://www.coingecko.com/en/coins/hodlcoin	0.00002048
1848	Cryptonodes	https://www.coingecko.com/en/coins/cryptonodes	0.00052650
1849	CoinMegaTrend	https://www.coingecko.com/en/coins/coinmegatrend	0.00293531
1850	FinTab	https://www.coingecko.com/en/coins/fintab	0.00183212
1851	BunnyToken	https://www.coingecko.com/en/coins/bunnytoken	0.00002091
1852	SCAVO Technologies	https://www.coingecko.com/en/coins/scavo-technologies	0.00000371
1853	Agouti	https://www.coingecko.com/en/coins/agouti	0.00222230
1854	AmsterdamCoin	https://www.coingecko.com/en/coins/amsterdamcoin	0.00003687
1855	StakeShare	https://www.coingecko.com/en/coins/stakeshare	0.00193432
1856	ParkByte	https://www.coingecko.com/en/coins/parkbyte	0.00088726
1857	STRAKS	https://www.coingecko.com/en/coins/straks	0.00053698
1858	Natmin	https://www.coingecko.com/en/coins/natmin	0.00002831
1859	Welltrado	https://www.coingecko.com/en/coins/welltrado	0.00010778
1860	Meraki	https://www.coingecko.com/en/coins/meraki	0.00246536
1861	BitStation	https://www.coingecko.com/en/coins/bitstation	0.00000097
1862	KODcoin	https://www.coingecko.com/en/coins/kodcoin	0.00011829
1863	Game Fanz	https://www.coingecko.com/en/coins/game-fanz	0.00000013
1864	Soniq	https://www.coingecko.com/en/coins/soniq	0.00010146
1865	Bitcoin LE	https://www.coingecko.com/en/coins/bitcoin-le	0.00058124
1866	Mano Coin	https://www.coingecko.com/en/coins/mano-coin	0.00064052
1867	Vivid Coin	https://www.coingecko.com/en/coins/vivid-coin	0.00052802
1868	MustangCoin	https://www.coingecko.com/en/coins/mustangcoin	0.00631291
1869	ARbit Coin	https://www.coingecko.com/en/coins/arbit-coin	0.00038414
1870	Fantasy Sports	https://www.coingecko.com/en/coins/fantasy-sports	0.00091622
1871	DigiMoney	https://www.coingecko.com/en/coins/digimoney	0.00107605
1872	ODIN Blockchain	https://www.coingecko.com/en/coins/odin-blockchain	0.00003714
1873	Couchain	https://www.coingecko.com/en/coins/couchain	0.00000039
1874	RouletteToken	https://www.coingecko.com/en/coins/roulettetoken	0.00032135
1875	JavaScript Token	https://www.coingecko.com/en/coins/javascript-token	0.00047964
1876	Crystal Clear	https://www.coingecko.com/en/coins/crystal-clear	0.00063639
1877	Advanced Integrated Blocks	https://www.coingecko.com/en/coins/advanced-integrated-blocks	0.00146686
1878	Accelerator Network	https://www.coingecko.com/en/coins/accelerator-network	0.00394135
1879	Dash Green	https://www.coingecko.com/en/coins/dash-green	0.00114900
1880	Creditbit	https://www.coingecko.com/en/coins/creditbit	0.00020505
1881	1X2 Coin	https://www.coingecko.com/en/coins/1x2-coin	0.00063292
1882	SLT	https://www.coingecko.com/en/coins/slt	0.00021456
1883	KAASO	https://www.coingecko.com/en/coins/kaaso	0.00024675
1884	ZXTH	https://www.coingecko.com/en/coins/zxth	0.00027800
1885	Mobit Global	https://www.coingecko.com/en/coins/mobit-global	0.00096508
1886	BANKEX	https://www.coingecko.com/en/coins/bankex	0.00000807
1887	BillaryCoin	https://www.coingecko.com/en/coins/billarycoin	0.00029637
1888	EXUS Coin	https://www.coingecko.com/en/coins/exus-coin	0.00012705
1889	Litenero	https://www.coingecko.com/en/coins/litenero	0.00002348
1890	Japan Content Token	https://www.coingecko.com/en/coins/japan-content-token	0.00008800
1891	Nibble	https://www.coingecko.com/en/coins/nibble	0.00096567
1892	iXRP	https://www.coingecko.com/en/coins/ixrp	0.150012
1893	Cointorox	https://www.coingecko.com/en/coins/cointorox	0.00038144
1894	STREAMIT COIN	https://www.coingecko.com/en/coins/streamit-coin	0.00021457
1895	Quotation Coin	https://www.coingecko.com/en/coins/quotation-coin	0.00010728
1896	OFIN TOKEN	https://www.coingecko.com/en/coins/ofin-token	0.00144545
1897	KIMEX	https://www.coingecko.com/en/coins/kimex	0.00000769
1898	BEVERAGE	https://www.coingecko.com/en/coins/beverage	0.00000002
1899	BitcoinBrand	https://www.coingecko.com/en/coins/bitcoinbrand	0.00000062
1900	Lithium	https://www.coingecko.com/en/coins/lithium	0.00010635
1901	ORIUM	https://www.coingecko.com/en/coins/orium	0.00001422
1902	Bitcoin Unicorn	https://www.coingecko.com/en/coins/bitcoin-unicorn	0.00010598
1903	HavEtherToken	https://www.coingecko.com/en/coins/havethertoken	0.00237113
1904	Universal Molecule	https://www.coingecko.com/en/coins/universal-molecule	0.00063273
1905	SAROS	https://www.coingecko.com/en/coins/saros	0.00020732
1906	sETC	https://www.coingecko.com/en/coins/setc	6.95
1907	Varius	https://www.coingecko.com/en/coins/varius	0.00000107
1908	Electrum Dark	https://www.coingecko.com/en/coins/electrum-dark	0.00027372
1909	INTUCoin	https://www.coingecko.com/en/coins/intucoin	0.00000231
1910	Veco	https://www.coingecko.com/en/coins/veco	0.00010728
1911	CDMCOIN	https://www.coingecko.com/en/coins/cdmcoin	0.00000040
1912	Hilux	https://www.coingecko.com/en/coins/hilux	0.00010778
1913	Ripped	https://www.coingecko.com/en/coins/ripped	0.00003326
1914	Kreds	https://www.coingecko.com/en/coins/kreds	0.00010607
1915	CRowdCLassic	https://www.coingecko.com/en/coins/crowdclassic	0.00010728
1916	FaithCoin	https://www.coingecko.com/en/coins/faithcoin	0.00010244
1917	Zent Cash	https://www.coingecko.com/en/coins/zent-cash	0.00000040
1918	Dinero	https://www.coingecko.com/en/coins/dinero	0.00003227
1919	Tritanium	https://www.coingecko.com/en/coins/tritanium	0.00001068
1920	Hyperspace	https://www.coingecko.com/en/coins/hyperspace	0.00000005
1921	iXMR	https://www.coingecko.com/en/coins/ixmr	26.71
1922	BrixCoin	https://www.coingecko.com/en/coins/brixcoin	0.00007949
1923	TokenLand Coin	https://www.coingecko.com/en/coins/tokenland-coin	0.00000001
1924	Evimeria	https://www.coingecko.com/en/coins/evimeria	0.00000002
1925	iXTZ	https://www.coingecko.com/en/coins/ixtz	2.62
1926	UltraNote	https://www.coingecko.com/en/coins/ultranote	0.00000044
1927	sDASH	https://www.coingecko.com/en/coins/sdash	96.02
1928	Speed Mining Service	https://www.coingecko.com/en/coins/speed-mining-service	0.218883
1929	Solarcoin	https://www.coingecko.com/en/coins/solarcoin	0.00000154
1930	Borderless	https://www.coingecko.com/en/coins/borderless	0.00039875
1931	ComBit	https://www.coingecko.com/en/coins/combit	0.00000016
1932	eBitcoin	https://www.coingecko.com/en/coins/ebitcoin	0.00000242
1933	ION	https://www.coingecko.com/en/coins/ion	0.02407784
1934	Krosscoin	https://www.coingecko.com/en/coins/krosscoin	0.00000006
1935	Deflacoin	https://www.coingecko.com/en/coins/deflacoin	0.00001399
1936	Provoco	https://www.coingecko.com/en/coins/provoco	0.00000001
1937	Bitcoinus	https://www.coingecko.com/en/coins/bitcoinus	0.00000001
1938	Argentum	https://www.coingecko.com/en/coins/argentum	0.00000002
1939	TrocaNinja	https://www.coingecko.com/en/coins/trocaninja	0.00011483
1940	BZEdge	https://www.coingecko.com/en/coins/bzedge	0.00008483
1941	GramGold Coin	https://www.coingecko.com/en/coins/gramgold-coin	0.00000038
1942	Peepcoin	https://www.coingecko.com/en/coins/peepcoin	0.00000136
1943	Castle	https://www.coingecko.com/en/coins/cstl	0.00095377
1944	UpToken	https://www.coingecko.com/en/coins/uptoken	0.00000000
1945	Darsek	https://www.coingecko.com/en/coins/darsek	0.00118176
1946	ParallelCoin	https://www.coingecko.com/en/coins/parallelcoin	0.113690
1947	Mineum	https://www.coingecko.com/en/coins/mineum	0.00191231
1948	Motocoin	https://www.coingecko.com/en/coins/motocoin	0.01118385
1949	Desire	https://www.coingecko.com/en/coins/desire	0.00117987
1950	EDUCare	https://www.coingecko.com/en/coins/educare	0.00403630
1951	PressOne	https://www.coingecko.com/en/coins/pressone	0.01779079
1952	SHIELD	https://www.coingecko.com/en/coins/shield	0.00086861
1953	XTRABYTES	https://www.coingecko.com/en/coins/xtrabytes	0.00709740
1954	LeadCoin	https://www.coingecko.com/en/coins/leadcoin	0.00020322
1955	iTicoin	https://www.coingecko.com/en/coins/iticoin	2.10
1956	I0Coin	https://www.coingecko.com/en/coins/i0coin	0.02146920
1957	Halcyon	https://www.coingecko.com/en/coins/halcyon	0.00154795
1958	ALTOM	https://www.coingecko.com/en/coins/altom	0.00358954
1959	RealTract	https://www.coingecko.com/en/coins/realtract	0.00004573
1960	View	https://www.coingecko.com/en/coins/view	0.00449892
1961	Molecular Future	https://www.coingecko.com/en/coins/molecular-future	0.207986
1962	SparksPay	https://www.coingecko.com/en/coins/sparkspay	0.00115638
1963	eGold	https://www.coingecko.com/en/coins/egold	0.00000000
1964	VirtualCoin	https://www.coingecko.com/en/coins/virtualcoin	0.646903
1965	Diplexcoin	https://www.coingecko.com/en/coins/diplexcoin	0.00971968
1966	TIMEcoin	https://www.coingecko.com/en/coins/timecoin	0.00030419
1967	AurumCoin	https://www.coingecko.com/en/coins/aurumcoin	11.75
1968	DubaiCoin-DBIX	https://www.coingecko.com/en/coins/dubaicoin-dbix	0.04190106
1969	VPNCoin	https://www.coingecko.com/en/coins/vpncoin	0.00066752
1970	CannabisCoin	https://www.coingecko.com/en/coins/cannabiscoin	0.00548939
1971	PHOBOS	https://www.coingecko.com/en/coins/phobos	0.00006696
1972	Nerves	https://www.coingecko.com/en/coins/nerves	0.00000790
1973	Binarium	https://www.coingecko.com/en/coins/binarium	0.00021514
1974	ARTAX	https://www.coingecko.com/en/coins/artax	0.00033503
1975	Shping	https://www.coingecko.com/en/coins/shping	0.00001758
1976	MouseMN	https://www.coingecko.com/en/coins/mousemn	0.00064655
1977	BitcoinXGames	https://www.coingecko.com/en/coins/bitcoinxgames	0.00000011
1978	CEEK Smart VR Token	https://www.coingecko.com/en/coins/ceek-smart-vr-token	0.00322797
1979	Forte Coin	https://www.coingecko.com/en/coins/forte-coin	0.00010620
1980	SanDeGo	https://www.coingecko.com/en/coins/sandego	0.00000054
1981	Russian Miner Coin	https://www.coingecko.com/en/coins/russian-miner-coin	0.04244252
1982	Cerium	https://www.coingecko.com/en/coins/cerium	0.00453630
1983	Cryptoflow	https://www.coingecko.com/en/coins/cryptoflow	0.00010549
1984	EarnzCoin	https://www.coingecko.com/en/coins/earnzcoin	0.00018262
1985	GETModer	https://www.coingecko.com/en/coins/getmoder	0.243015
1986	Ragnarok	https://www.coingecko.com/en/coins/ragnarok	0.00042892
1987	Acute Angle Cloud	https://www.coingecko.com/en/coins/acute-angle-cloud	0.01265852
1988	Blockchain Quotations Index Token	https://www.coingecko.com/en/coins/blockchain-quotations-index-token	0.00286360
1989	UDAP	https://www.coingecko.com/en/coins/udap	0.00080244
1990	Maggie	https://www.coingecko.com/en/coins/maggie	0.00010757
1991	Magnachain	https://www.coingecko.com/en/coins/magnachain	0.00006681
1992	BitNewChain	https://www.coingecko.com/en/coins/bitnewchain	0.00693543
1993	Qubitica	https://www.coingecko.com/en/coins/qubitica	2.01
1994	TUNE	https://www.coingecko.com/en/coins/tune	0.00000084
1995	Vantaur	https://www.coingecko.com/en/coins/vantaur	0.00001062
1996	StarChain	https://www.coingecko.com/en/coins/starchain	0.00001601
1997	MBitBooks	https://www.coingecko.com/en/coins/mbitbooks	0.00628275
1998	Ucoin	https://www.coingecko.com/en/coins/ucoin	0.03520932
1999	Bizkey	https://www.coingecko.com/en/coins/bizkey	0.00002083
2000	Henga	https://www.coingecko.com/en/coins/henga	0.00001128
2001	CEEK Smart VR Token	https://www.coingecko.com/en/coins/ceek-smart-vr-token	0.00322797
2002	Forte Coin	https://www.coingecko.com/en/coins/forte-coin	0.00010620
2003	SanDeGo	https://www.coingecko.com/en/coins/sandego	0.00000054
2004	Russian Miner Coin	https://www.coingecko.com/en/coins/russian-miner-coin	0.04244252
2005	Cerium	https://www.coingecko.com/en/coins/cerium	0.00453630
2006	Cryptoflow	https://www.coingecko.com/en/coins/cryptoflow	0.00010549
2007	EarnzCoin	https://www.coingecko.com/en/coins/earnzcoin	0.00018262
2008	GETModer	https://www.coingecko.com/en/coins/getmoder	0.243015
2009	Ragnarok	https://www.coingecko.com/en/coins/ragnarok	0.00042892
2010	Acute Angle Cloud	https://www.coingecko.com/en/coins/acute-angle-cloud	0.01265852
2011	Blockchain Quotations Index Token	https://www.coingecko.com/en/coins/blockchain-quotations-index-token	0.00286360
2012	UDAP	https://www.coingecko.com/en/coins/udap	0.00080244
2013	Maggie	https://www.coingecko.com/en/coins/maggie	0.00010757
2014	BitNewChain	https://www.coingecko.com/en/coins/bitnewchain	0.00693543
2015	Qubitica	https://www.coingecko.com/en/coins/qubitica	2.01
2016	TUNE	https://www.coingecko.com/en/coins/tune	0.00000084
2017	Vantaur	https://www.coingecko.com/en/coins/vantaur	0.00001062
2018	Era Swap Token	https://www.coingecko.com/en/coins/era-swap-token	0.05600008
2019	StarChain	https://www.coingecko.com/en/coins/starchain	0.00001601
2020	MBitBooks	https://www.coingecko.com/en/coins/mbitbooks	0.00628275
2021	Ucoin	https://www.coingecko.com/en/coins/ucoin	0.03520932
2022	eosBLACK	https://www.coingecko.com/en/coins/eosblack	0.00083206
2023	Bizkey	https://www.coingecko.com/en/coins/bizkey	0.00002083
2024	Henga	https://www.coingecko.com/en/coins/henga	0.00001128
2025	Worx	https://www.coingecko.com/en/coins/worx	0.00031554
2026	LuckyBit	https://www.coingecko.com/en/coins/luckybit	0.00010907
2027	HKD Tether	https://www.coingecko.com/en/coins/hkd-tether	0.00685334
2028	Coinnec	https://www.coingecko.com/en/coins/coinnec	0.00000312
2029	Mirai	https://www.coingecko.com/en/coins/mirai	0.00182529
2030	smARTOFGIVING	https://www.coingecko.com/en/coins/smartofgiving	0.107105
2031	Ontology Gas	https://www.coingecko.com/en/coins/ontology-gas	0.118997
2032	Race	https://www.coingecko.com/en/coins/race	0.00091639
2033	AWARE	https://www.coingecko.com/en/coins/aware	0.00094632
2034	Earneo	https://www.coingecko.com/en/coins/earneo	0.01119799
2035	TRBO	https://www.coingecko.com/en/coins/trbo	0.00003991
2036	Bitcoin Atom	https://www.coingecko.com/en/coins/bitcoin-atom	0.133990
2037	First Bitcoin	https://www.coingecko.com/en/coins/first-bitcoin	0.00835515
2038	KingXChain	https://www.coingecko.com/en/coins/kingxchain	0.00000204
2039	Bitcoin Adult	https://www.coingecko.com/en/coins/bitcoin-adult	0.00085823
2040	Kzcash	https://www.coingecko.com/en/coins/kzcash	0.00181568
2041	Bitcoin Final	https://www.coingecko.com/en/coins/bitcoin-final	0.00014988
2042	CelCoin	https://www.coingecko.com/en/coins/celcoin	0.00008366
2043	SWTC	https://www.coingecko.com/en/coins/swtc	0.00017308
2044	Auscoin	https://www.coingecko.com/en/coins/auscoin	0.00496152
2045	Elrond ERD	https://www.coingecko.com/en/coins/elrond-erd	0.02592859
2046	Spectre.ai Utility Token	https://www.coingecko.com/en/coins/spectre-utility-token	0.06109268
2047	Spectre.ai Dividend Token	https://www.coingecko.com/en/coins/spectre-dividend-token	0.07581719
2048	Accel	https://www.coingecko.com/en/coins/accel	0.00057194
2049	Davies	https://www.coingecko.com/en/coins/davies	0.229837
2050	Kcash	https://www.coingecko.com/en/coins/kcash	0.05945675
2051	TurtleNetwork	https://www.coingecko.com/en/coins/turtlenetwork	0.00998049
2052	Leverj	https://www.coingecko.com/en/coins/leverj	0.07654766
2053	Lunes	https://www.coingecko.com/en/coins/lunes	0.00649632
2054	TWIST	https://www.coingecko.com/en/coins/twist	0.02146242
2055	Elamachain	https://www.coingecko.com/en/coins/elamachain	0.02005064
2056	Charity	https://www.coingecko.com/en/coins/charity	0.00965553
2057	TopChain	https://www.coingecko.com/en/coins/topchain	0.00517732
2058	BTCMoon	https://www.coingecko.com/en/coins/btcmoon	0.00123197
2059	Global Cryptocurrency	https://www.coingecko.com/en/coins/global-cryptocurrency	0.00409309
2060	Orbitcoin	https://www.coingecko.com/en/coins/orbitcoin	0.130493
2061	Unobtanium	https://www.coingecko.com/en/coins/unobtanium	61.17
2062	Xriba	https://www.coingecko.com/en/coins/xriba	0.00920542
2063	Moneynet	https://www.coingecko.com/en/coins/moneynet	0.00011821
2064	GameXCoin	https://www.coingecko.com/en/coins/gamexcoin	0.00246125
2065	CDX Network	https://www.coingecko.com/en/coins/cdx-network	0.00160676
2066	EveryCoin	https://www.coingecko.com/en/coins/everycoin	0.00092352
2067	Vankia Chain	https://www.coingecko.com/en/coins/vankia-chain	0.00212389
2068	Lives Token	https://www.coingecko.com/en/coins/lives-token	0.00008089
2069	LunarX	https://www.coingecko.com/en/coins/lunarx	0.00049968
2070	Bitcoin God	https://www.coingecko.com/en/coins/bitcoin-god	0.124955
2071	Ad Flex Token	https://www.coingecko.com/en/coins/ad-flex-token	0.462225
2072	OC Protocol	https://www.coingecko.com/en/coins/oc-protocol	0.00451931
2073	Quotient	https://www.coingecko.com/en/coins/quotient	0.00009368
2074	VeriDocGlobal	https://www.coingecko.com/en/coins/veridocglobal	0.00017589
2075	Manna	https://www.coingecko.com/en/coins/manna	0.00164781
2076	Cash Poker Pro	https://www.coingecko.com/en/coins/cash-poker-pro	0.00084388
2077	Sovereign Coin	https://www.coingecko.com/en/coins/sovereign-coin	0.00043107
2078	INDINODE	https://www.coingecko.com/en/coins/indinode	0.00001072
2079	LevelApp	https://www.coingecko.com/en/coins/levelapp	0.00000471
2080	iEthereum	https://www.coingecko.com/en/coins/iethereum	0.08659867
2081	nDEX	https://www.coingecko.com/en/coins/ndex	0.00000090
2082	PerksCoin	https://www.coingecko.com/en/coins/perkscoin	0.00032146
2083	Gold Poker	https://www.coingecko.com/en/coins/gold-poker	0.00182373
2084	Qube	https://www.coingecko.com/en/coins/qube	0.00002779
2085	B2Bcoin	https://www.coingecko.com/en/coins/b2bcoin	0.00071362
2086	InvestDigital	https://www.coingecko.com/en/coins/investdigital	0.00288713
2087	Bitcoin Silver	https://www.coingecko.com/en/coins/bitcoin-silver	4.80
2088	Ethereum Lite	https://www.coingecko.com/en/coins/ethereum-lite	0.01134781
2089	BitBay	https://www.coingecko.com/en/coins/bitbay	0.101014
2090	Tokyo Coin	https://www.coingecko.com/en/coins/tokyo	0.00002149
2091	QYNO	https://www.coingecko.com/en/coins/qyno	0.00032329
2092	MOAC	https://www.coingecko.com/en/coins/moac	0.08645600
2093	Venox	https://www.coingecko.com/en/coins/venox	0.00123601
2094	Schilling-Coin	https://www.coingecko.com/en/coins/schilling-coin	0.00139400
2095	Smart Application Coin	https://www.coingecko.com/en/coins/smart-application-chain	0.00524292
2096	WETH	https://www.coingecko.com/en/coins/weth	351.50
2097	Ignition	https://www.coingecko.com/en/coins/ignition	0.06611110
2098	All.me	https://www.coingecko.com/en/coins/all-me	0.01084141
2099	Davinci Coin	https://www.coingecko.com/en/coins/davinci-coin	0.00422285
2100	President Trump	https://www.coingecko.com/en/coins/president-trump	0.00892397
2101	Obitan Chain	https://www.coingecko.com/en/coins/obitan-chain	0.00000350
2102	COMSA	https://www.coingecko.com/en/coins/comsa	0.06461819
2103	Exchange Union	https://www.coingecko.com/en/coins/exchange-union	1.54
2104	CyberFM	https://www.coingecko.com/en/coins/cyberfm	0.00000088
2105	BeatzCoin	https://www.coingecko.com/en/coins/beatzcoin	0.00028442
2106	Blockpass	https://www.coingecko.com/en/coins/blockpass	0.00123196
2107	MEET.ONE	https://www.coingecko.com/en/coins/meetone	0.00030348
2108	Cryptaur	https://www.coingecko.com/en/coins/cryptaur	0.00014106
2109	ClearPoll	https://www.coingecko.com/en/coins/clearpoll	0.00116765
2110	Bean Cash	https://www.coingecko.com/en/coins/bean-cash	0.00029476
2111	Crave	https://www.coingecko.com/en/coins/crave	0.02980230
2112	Nyerium	https://www.coingecko.com/en/coins/nyerium	0.00021476
2113	FingerPrint	https://www.coingecko.com/en/coins/fingerprint	0.03158175
2114	Vetri	https://www.coingecko.com/en/coins/vetri	0.00409760
2115	Nasdacoin	https://www.coingecko.com/en/coins/nasdacoin	0.03078332
2116	Uncloak	https://www.coingecko.com/en/coins/uncloak	0.00123691
2117	Elicoin	https://www.coingecko.com/en/coins/elicoin	0.00053604
2118	SuperEdge	https://www.coingecko.com/en/coins/superedge	0.00001630
2119	Cloud	https://www.coingecko.com/en/coins/cloud	0.00064034
2120	Cybex	https://www.coingecko.com/en/coins/cybex	0.01229871
2121	Latino Token	https://www.coingecko.com/en/coins/latino-token	0.00042970
2122	NewsToken	https://www.coingecko.com/en/coins/newstoken	0.00056754
2123	InterCrone	https://www.coingecko.com/en/coins/intercrone	0.00031370
2124	Valorbit	https://www.coingecko.com/en/coins/valorbit	0.00000036
2125	Insight Chain	https://www.coingecko.com/en/coins/insight-chain	1.05
2126	LINA	https://www.coingecko.com/en/coins/lina	0.01323399
2127	HTMLCOIN	https://www.coingecko.com/en/coins/htmlcoin	0.00004203
2128	Commercium	https://www.coingecko.com/en/coins/commercium	0.00107362
2129	OP Coin	https://www.coingecko.com/en/coins/op-coin	0.00002814
2130	XOVBank	https://www.coingecko.com/en/coins/xov	0.00003482
2131	Coinlancer	https://www.coingecko.com/en/coins/coinlancer	0.00246860
2132	Modum	https://www.coingecko.com/en/coins/modum	0.125431
2133	Mixin	https://www.coingecko.com/en/coins/mixin	136.38
2134	HYDROCARBON 8	https://www.coingecko.com/en/coins/hydrocarbon-8	5.07
2135	AML Bitcoin	https://www.coingecko.com/en/coins/aml-bitcoin	0.09742183
2136	LIFE	https://www.coingecko.com/en/coins/life	0.00000240
2137	Wild Beast Block	https://www.coingecko.com/en/coins/wild-beast-block	0.01374342
2138	Bitswift	https://www.coingecko.com/en/coins/bitswift	0.222891
2139	Linfinity	https://www.coingecko.com/en/coins/linfinity	0.00003254
2140	The Movement	https://www.coingecko.com/en/coins/the-movement	0.02853406
2141	DarkLisk	https://www.coingecko.com/en/coins/darklisk	0.00030868
2142	Citadel	https://www.coingecko.com/en/coins/citadel	0.00149502
2143	Landcoin	https://www.coingecko.com/en/coins/landcoin	0.00052757
2144	Lynx	https://www.coingecko.com/en/coins/lynx	0.00002405
2145	New Power Coin	https://www.coingecko.com/en/coins/new-power-coin	0.01183000
2146	Hyundai DAC	https://www.coingecko.com/en/coins/hyundai-dac	0.01763649
2147	Energycoin	https://www.coingecko.com/en/coins/energycoin	0.00182292
2148	WeShow Token	https://www.coingecko.com/en/coins/weshow-token	0.01238084
2149	Bitforex Token	https://www.coingecko.com/en/coins/bitforex	0.00205219
2150	Semux	https://www.coingecko.com/en/coins/semux	0.02724862
2151	Mavro	https://www.coingecko.com/en/coins/mavro	48.26
2152	Methuselah	https://www.coingecko.com/en/coins/methuselah	0.00011499
2153	Volt	https://www.coingecko.com/en/coins/volt	0.00004677
2154	Luna Stars	https://www.coingecko.com/en/coins/luna-stars	0.00000686
2155	Everus	https://www.coingecko.com/en/coins/everus	0.04375957
2156	Foldingcoin	https://www.coingecko.com/en/coins/foldingcoin	0.00106406
2157	Kuai Token	https://www.coingecko.com/en/coins/kuaitoken	0.172207
2158	TV-TWO	https://www.coingecko.com/en/coins/tv-two	0.00081581
2159	SiaCashCoin	https://www.coingecko.com/en/coins/siacashcoin	0.00000362
2160	ExChain Token	https://www.coingecko.com/en/coins/exchain-token	0.00000174
2161	Endorsit	https://www.coingecko.com/en/coins/endorsit	0.00000400
2162	Soldo	https://www.coingecko.com/en/coins/soldo	0.02963052
2163	Morpheus Network	https://www.coingecko.com/en/coins/morpheus-network	0.160663
2164	Maecenas	https://www.coingecko.com/en/coins/maecenas	0.00867852
2165	GNY	https://www.coingecko.com/en/coins/gny	0.00358827
2166	Block-chain.com	https://www.coingecko.com/en/coins/block-chain-com	0.02930549
2167	ZPER	https://www.coingecko.com/en/coins/zper	0.00030044
2168	Globalvillage Ecosystem	https://www.coingecko.com/en/coins/globalvillage-ecosystem	0.00012457
2169	Centurion	https://www.coingecko.com/en/coins/centurion	0.00007746
2170	Bitparkcoin	https://www.coingecko.com/en/coins/bitparkcoin	0.00020594
2171	bitz	https://www.coingecko.com/en/coins/bitz	0.01496271
2172	Mincoin	https://www.coingecko.com/en/coins/mincoin	0.00183991
2173	Netcoin	https://www.coingecko.com/en/coins/netcoin	0.00005092
2174	INFLIV	https://www.coingecko.com/en/coins/infliv	0.00492383
2175	ValueCyberToken	https://www.coingecko.com/en/coins/valuecybertoken	0.00061327
2176	LVX	https://www.coingecko.com/en/coins/lvx	0.122608
2177	Eidoo	https://www.coingecko.com/en/coins/eidoo	0.114246
2178	Belacoin	https://www.coingecko.com/en/coins/belacoin	0.00235894
2179	SPOKKZ	https://www.coingecko.com/en/coins/spokkz	0.01432198
2180	Cosmo Coin	https://www.coingecko.com/en/coins/cosmo-coin	0.00053671
2181	Fast Access Blockchain	https://www.coingecko.com/en/coins/fast-access-blockchain	0.03075267
2182	CNY Tether	https://www.coingecko.com/en/coins/cny-tether	0.149351
2183	Metadium	https://www.coingecko.com/en/coins/metadium	0.00799652
2184	Phoneum	https://www.coingecko.com/en/coins/phoneum	0.00007101
2185	Kashhcoin	https://www.coingecko.com/en/coins/kashhcoin	0.00001665
2186	GemVault Coin	https://www.coingecko.com/en/coins/gemvault-coin	0.00096987
2187	ZINC	https://www.coingecko.com/en/coins/zinc	0.03360949
2188	Moozicore	https://www.coingecko.com/en/coins/moozicore	0.00010998
2189	PlayX	https://www.coingecko.com/en/coins/playx	0.00002411
2190	No BS Crypto	https://www.coingecko.com/en/coins/no-bs-crypto	0.00002641
2191	Rutheneum	https://www.coingecko.com/en/coins/rutheneum	0.00009371
2192	Buzcoin	https://www.coingecko.com/en/coins/buzcoin	0.00876894
2193	Hut34 Entropy	https://www.coingecko.com/en/coins/hut34-entropy	0.107955
2194	Shivers	https://www.coingecko.com/en/coins/shivers	0.00081873
2195	EtherDoge	https://www.coingecko.com/en/coins/etherdoge	0.00000000
2196	HiCoin	https://www.coingecko.com/en/coins/hicoin	0.00004423
2197	Foresting	https://www.coingecko.com/en/coins/foresting	0.00001392
2198	WOKEcash	https://www.coingecko.com/en/coins/wokecash	0.104621
2199	Fox Trading Token	https://www.coingecko.com/en/coins/fox-trading-token	0.00822759
2200	Woonkly	https://www.coingecko.com/en/coins/woonkly	0.00594052
2201	FarmaTrust	https://www.coingecko.com/en/coins/farmatrust	0.00307782
2202	ADAB Solutions	https://www.coingecko.com/en/coins/adab-solutions	0.00003874
2203	Lightning Bitcoin	https://www.coingecko.com/en/coins/lightning-bitcoin	1.07
2204	Tavittcoin	https://www.coingecko.com/en/coins/tavittcoin	0.126606
2205	SaveToken	https://www.coingecko.com/en/coins/savetoken	0.00470104
2206	Hara Token	https://www.coingecko.com/en/coins/hara-token	0.00120231
2207	Hyper Pay	https://www.coingecko.com/en/coins/hyper-pay	0.00052783
2208	Bastonet	https://www.coingecko.com/en/coins/bastonet	0.00000017
2209	Staker Token	https://www.coingecko.com/en/coins/staker	0.00183059
2210	Pledgecamp	https://www.coingecko.com/en/coins/pledgecamp	0.00012600
2211	SwapToken	https://www.coingecko.com/en/coins/swaptoken	0.00000007
2212	CEDEX	https://www.coingecko.com/en/coins/cedex-coin	0.00422745
2213	Beldex	https://www.coingecko.com/en/coins/beldex	0.08282205
2214	Acreage Coin	https://www.coingecko.com/en/coins/acreage-coin	0.00064341
2215	Peculium	https://www.coingecko.com/en/coins/peculium	0.00144229
2216	ALIS	https://www.coingecko.com/en/coins/alis	0.02722973
2217	Incent	https://www.coingecko.com/en/coins/incent	0.03344594
2218	HEAT	https://www.coingecko.com/en/coins/heat	0.01857848
2219	VIDY	https://www.coingecko.com/en/coins/vidy	0.00122684
2220	Action Coin	https://www.coingecko.com/en/coins/action-coin	0.00013917
2221	Help The Homeless Coin	https://www.coingecko.com/en/coins/help-the-homeless-coin	0.00001138
2222	Rootstock RSK	https://www.coingecko.com/en/coins/rsk	11352.81
2223	BitRewards Token	https://www.coingecko.com/en/coins/bitrewards-token	0.00014981
2224	FortKnoxster	https://www.coingecko.com/en/coins/fortknoxster	0.00220557
2225	Afro	https://www.coingecko.com/en/coins/afro	0.00002465
2226	MyFiChain	https://www.coingecko.com/en/coins/myfichain	0.00000318
2227	Enumivo	https://www.coingecko.com/en/coins/enumivo	0.00075375
2228	Atlas Network	https://www.coingecko.com/en/coins/atlas-network	0.00066286
2229	NTOK	https://www.coingecko.com/en/coins/ntok	0.00021682
2230	Hubii Network	https://www.coingecko.com/en/coins/hubii-network	0.106298
2231	Mediex	https://www.coingecko.com/en/coins/mediex	0.00019931
2232	Everipedia	https://www.coingecko.com/en/coins/everipedia	0.00202512
2233	Sinergia	https://www.coingecko.com/en/coins/sinergia	0.01316801
2234	WM PROFESSIONAL	https://www.coingecko.com/en/coins/wm-professional	0.00107491
2235	Tokenize Xchange	https://www.coingecko.com/en/coins/tokenize-xchange	1.51
2236	QuickX Protocol	https://www.coingecko.com/en/coins/quickx-protocol	0.02035112
2237	Karatgold Coin	https://www.coingecko.com/en/coins/karatgold-coin	0.00504849
2238	Sudan Gold Coin	https://www.coingecko.com/en/coins/sudan-gold-coin	0.02000533
2239	Sandcoin	https://www.coingecko.com/en/coins/sandcoin	0.00091979
2240	REV	https://www.coingecko.com/en/coins/rchain	0.02002646
2241	One	https://www.coingecko.com/en/coins/one	0.00240070
2242	CariNet	https://www.coingecko.com/en/coins/carinet	0.00048834
2243	Rilcoin	https://www.coingecko.com/en/coins/rilcoin	0.00021458
2244	Color Platform	https://www.coingecko.com/en/coins/color-platform	0.00807368
2245	Ice Rock Mining	https://www.coingecko.com/en/coins/ice-rock-mining	0.01206467
2246	EncryptoTel [Waves]	https://www.coingecko.com/en/coins/encryptotel-waves	0.00448045
2247	Safe	https://www.coingecko.com/en/coins/safe	0.248272
2248	Data Saver Coin	https://www.coingecko.com/en/coins/data-saver-coin	0.00010689
2249	Proof Token	https://www.coingecko.com/en/coins/proof-token	2.63
2250	Atlas Protocol	https://www.coingecko.com/en/coins/atlas-protocol	0.00124125
2251	PlayKey	https://www.coingecko.com/en/coins/playkey	0.01869335
2252	KickToken	https://www.coingecko.com/en/coins/kickico	0.00002074
2253	Daikicoin	https://www.coingecko.com/en/coins/daikicoin	0.03654773
2254	Digital Ticks	https://www.coingecko.com/en/coins/digital-ticks	0.126391
2255	Insureum	https://www.coingecko.com/en/coins/insureum	0.00406288
2256	BAW Network	https://www.coingecko.com/en/coins/baw-network	0.00000107
2257	REGA	https://www.coingecko.com/en/coins/rega	0.255253
2258	Proud Money	https://www.coingecko.com/en/coins/proud-money	0.00117825
2259	EOS Network	https://www.coingecko.com/en/coins/eon	0.00060834
2260	Master Contract Token	https://www.coingecko.com/en/coins/master-contract-token	0.00069628
2261	Foin	https://www.coingecko.com/en/coins/foin	0.601094
2262	Dacsee	https://www.coingecko.com/en/coins/dacsee	0.00053405
2263	Save Environment Token	https://www.coingecko.com/en/coins/save-environment-token	0.01631966
2264	Project Pai	https://www.coingecko.com/en/coins/project-pai	0.00993119
2265	Ammbr	https://www.coingecko.com/en/coins/ammbr	0.00590615
2266	Macro	https://www.coingecko.com/en/coins/macro	0.02988571
2267	Infinity Economics	https://www.coingecko.com/en/coins/infinity-economics	0.00076538
2268	GSMcoin	https://www.coingecko.com/en/coins/gsmcoin	0.00431568
2269	Seer	https://www.coingecko.com/en/coins/seer	0.00021791
2270	MoneroV	https://www.coingecko.com/en/coins/monerov	0.00300034
2271	DigiFinexToken	https://www.coingecko.com/en/coins/digifinextoken	0.169358
2272	InziderX	https://www.coingecko.com/en/coins/inziderx	0.00107370
2273	LIPCHAIN	https://www.coingecko.com/en/coins/lipchain	0.00012702
2274	Squeezer	https://www.coingecko.com/en/coins/squeezer	0.00022950
2275	Pesobit	https://www.coingecko.com/en/coins/pesobit	0.00285906
2276	Bittwatt	https://www.coingecko.com/en/coins/bittwatt	0.00085990
2277	Galaxy eSolutions	https://www.coingecko.com/en/coins/galaxy-esolutions	0.00000102
2278	Bitcoin File	https://www.coingecko.com/en/coins/bitcoin-file	0.00067963
2279	Beauty Chain	https://www.coingecko.com/en/coins/beauty-chain	0.00895282
2280	ColossusXT	https://www.coingecko.com/en/coins/colossusxt	0.00021551
2281	Shilling	https://www.coingecko.com/en/coins/shilling	0.00118305
2282	Community Generation Core	https://www.coingecko.com/en/coins/community-generation-core	0.00000701
2283	Thorecash (ERC-20)	https://www.coingecko.com/en/coins/thorecash	0.00030605
2284	Uservice	https://www.coingecko.com/en/coins/uservice	0.01121102
2285	Vectorspace AI	https://www.coingecko.com/en/coins/vectorspace-ai	0.154175
2286	Epluscoin	https://www.coingecko.com/en/coins/epluscoin	0.00046139
2287	Agricoin	https://www.coingecko.com/en/coins/agricoin	0.02145944
2288	Lucyd	https://www.coingecko.com/en/coins/lucyd	0.00122413
2289	Kin	https://www.coingecko.com/en/coins/kin	0.00000518
2290	Jobscoin	https://www.coingecko.com/en/coins/jobscoin	0.00001275
2291	BitStake	https://www.coingecko.com/en/coins/bitstake	0.931443
2292	Creatanium	https://www.coingecko.com/en/coins/creatanium	0.01059227
2293	BitCanna	https://www.coingecko.com/en/coins/bitcanna	0.04516406
2294	BitDice	https://www.coingecko.com/en/coins/bitdice	0.03515481
2295	Betrium	https://www.coingecko.com/en/coins/betrium	0.00030032
2296	LightPayCoin	https://www.coingecko.com/en/coins/lightpaycoin	0.00150532
2297	GenesisX	https://www.coingecko.com/en/coins/genesisx	0.00156442
2298	Chronologic	https://www.coingecko.com/en/coins/chronologic	0.201344
2299	Artex Coin	https://www.coingecko.com/en/coins/artex-coin	0.00010155
2300	Buddy	https://www.coingecko.com/en/coins/buddy	0.00000362
2301	4ART Coin	https://www.coingecko.com/en/coins/4art-coin	0.02302451
2302	Game	https://www.coingecko.com/en/coins/game	0.00701591
2303	Plus Coin	https://www.coingecko.com/en/coins/plus-coin	0.00003969
2304	Perlin	https://www.coingecko.com/en/coins/perlin	0.02328149
2305	Globitex	https://www.coingecko.com/en/coins/globitex	0.00788789
2306	Kala	https://www.coingecko.com/en/coins/kala	0.00040996
2307	Lykke	https://www.coingecko.com/en/coins/lykke	0.00959939
2308	SID Token	https://www.coingecko.com/en/coins/sid-token	0.00011672
2309	CoinAnalyst	https://www.coingecko.com/en/coins/coinanalyst	0.00621060
2310	Coupit	https://www.coingecko.com/en/coins/coupit	0.00019880
2311	GazeCoin	https://www.coingecko.com/en/coins/gazecoin	0.00975836
2312	Vault Guardian Token	https://www.coingecko.com/en/coins/vault-guardian-token	0.00570830
2313	MAD Network Token	https://www.coingecko.com/en/coins/mad-network-token	0.07392495
2314	Rotharium	https://www.coingecko.com/en/coins/rotharium	0.905899
2315	Thorecoin	https://www.coingecko.com/en/coins/thorecoin	2096.31
2316	Nilu	https://www.coingecko.com/en/coins/nilu	0.00321834
2317	Bali Coin	https://www.coingecko.com/en/coins/bali-coin	0.01415444
2318	Wi Coin	https://www.coingecko.com/en/coins/wicoin	0.00010174
2319	EDC Blockchain	https://www.coingecko.com/en/coins/edc-blockchain	0.146473
2320	Clams	https://www.coingecko.com/en/coins/clams	0.597225
2321	Lines	https://www.coingecko.com/en/coins/lines	0.00010303
2322	Rabbit	https://www.coingecko.com/en/coins/rabbit	0.00086079
2323	Orbs	https://www.coingecko.com/en/coins/orbs	0.01238027
2324	TronClassic	https://www.coingecko.com/en/coins/tronclassic	0.00000354
2325	Zero Carbon Project	https://www.coingecko.com/en/coins/zero-carbon-project	0.192290
2326	Paycent	https://www.coingecko.com/en/coins/paycent	0.00288411
2327	ioeX	https://www.coingecko.com/en/coins/ioex	0.02050913
2328	PlayChip	https://www.coingecko.com/en/coins/playchip	0.00051923
2329	Monarch Token	https://www.coingecko.com/en/coins/monarch-token	0.00119943
2330	DreamTeam	https://www.coingecko.com/en/coins/dreamteam	0.01938783
2331	Taklimakan Network	https://www.coingecko.com/en/coins/taklimakan-network	0.00372258
2332	Propx	https://www.coingecko.com/en/coins/propx	0.01727390
2333	Northern	https://www.coingecko.com/en/coins/northern	0.01008516
2334	Engine	https://www.coingecko.com/en/coins/engine	0.00007435
2335	APIS	https://www.coingecko.com/en/coins/apis	0.00033590
2336	Over Powered Coin	https://www.coingecko.com/en/coins/over-powered-coin	0.00010458
2337	Bankera	https://www.coingecko.com/en/coins/bankera	0.00143087
2338	BROTHER	https://www.coingecko.com/en/coins/brother	0.00001184
2339	Azbit	https://www.coingecko.com/en/coins/azbit	0.00000750
2340	GAMB	https://www.coingecko.com/en/coins/gamb	0.00011914
2341	HoryouToken	https://www.coingecko.com/en/coins/horyoutoken	0.00104401
2342	CoinLion	https://www.coingecko.com/en/coins/coinlion	0.00753579
2343	Drep	https://www.coingecko.com/en/coins/drep	0.00374286
2344	RiseCoin Token	https://www.coingecko.com/en/coins/risecointoken	0.00012045
2345	AGROLOT	https://www.coingecko.com/en/coins/agrolot	0.00010765
2346	LiteCoin Ultra	https://www.coingecko.com/en/coins/litecoin-ultra	0.00089953
2347	Elya	https://www.coingecko.com/en/coins/elya	0.00025119
2348	Akroma	https://www.coingecko.com/en/coins/akroma	0.00042875
2349	Bitcoiin	https://www.coingecko.com/en/coins/bitcoiin	0.00032135
2350	Fantasy Gold	https://www.coingecko.com/en/coins/fantasy-gold	0.00246753
2351	ECOMI	https://www.coingecko.com/en/coins/ecomi	0.00004663
2352	W Green Pay	https://www.coingecko.com/en/coins/w-green-pay	0.00743363
2353	IOTW	https://www.coingecko.com/en/coins/iotw	0.00097184
2354	GreenPower	https://www.coingecko.com/en/coins/greenpower	0.00356056
2355	NPCcoin	https://www.coingecko.com/en/coins/npccoin	0.00802719
2356	Eximchain	https://www.coingecko.com/en/coins/eximchain	0.00650353
2357	Zloadr	https://www.coingecko.com/en/coins/zloadr	0.00345728
2358	Zonecoin	https://www.coingecko.com/en/coins/zonecoin	0.00051238
2359	Mojocoin	https://www.coingecko.com/en/coins/mojocoin	0.00117809
2360	Bunnycoin	https://www.coingecko.com/en/coins/bunnycoin	0.00000019
2361	Bluecoin	https://www.coingecko.com/en/coins/bluecoin	0.00021739
2362	Digitalcoin	https://www.coingecko.com/en/coins/digitalcoin	0.00129071
2363	Newton Project	https://www.coingecko.com/en/coins/newton-project	0.00044842
2364	EVO	https://www.coingecko.com/en/coins/evo	0.00049399
2365	Repo Coin	https://www.coingecko.com/en/coins/repo	0.08379626
2366	Skychain	https://www.coingecko.com/en/coins/skychain	0.08505109
2367	Edge	https://www.coingecko.com/en/coins/edge	0.03178702
2368	Jinbi Token	https://www.coingecko.com/en/coins/jinbi-token	187.19
2369	Escroco Emerald	https://www.coingecko.com/en/coins/escroco-emerald	0.00000354
2370	ASOBI COIN	https://www.coingecko.com/en/coins/asobi-coin	0.00087579
2371	BBSCoin	https://www.coingecko.com/en/coins/bbscoin	0.00000046
2372	Dravite	https://www.coingecko.com/en/coins/dravite	0.00000004
2373	Iungo	https://www.coingecko.com/en/coins/iungo	0.00056072
2374	VIVO	https://www.coingecko.com/en/coins/vivo	0.00010752
2375	Crevacoin	https://www.coingecko.com/en/coins/crevacoin	0.00000079
2376	Arcona	https://www.coingecko.com/en/coins/arcona	0.01917665
2377	Sparkster	https://www.coingecko.com/en/coins/sparkster	0.00238155
2378	Global Social Chain	https://www.coingecko.com/en/coins/global-social-chain	0.00406229
2379	Freyrchain	https://www.coingecko.com/en/coins/freyrchain	0.00003899
2380	Aston	https://www.coingecko.com/en/coins/aston	0.00011851
2381	PRASM	https://www.coingecko.com/en/coins/prasm	0.00005127
2382	Cybereits	https://www.coingecko.com/en/coins/cybereits	0.00093523
2383	Cruisebit	https://www.coingecko.com/en/coins/cruisebit	0.00010736
2384	Climatecoin	https://www.coingecko.com/en/coins/climatecoin	0.00037837
2385	GlowShares	https://www.coingecko.com/en/coins/glowshares	0.02821997
2386	Relex	https://www.coingecko.com/en/coins/relex	0.00010577
2387	Worktips	https://www.coingecko.com/en/coins/worktips	0.00000371
2388	Taler	https://www.coingecko.com/en/coins/taler	0.00156724
2389	Blackmoon Crypto	https://www.coingecko.com/en/coins/blackmoon-crypto	0.04695031
2390	Solareum	https://www.coingecko.com/en/coins/solareum	0.00045958
2391	Budbo	https://www.coingecko.com/en/coins/budbo	0.04720234
2392	Bitex Global XBX Coin	https://www.coingecko.com/en/coins/bitex-global-xbx-coin	0.00820068
2393	ZEON Network	https://www.coingecko.com/en/coins/zeon-network	0.00036197
2394	International CryptoX	https://www.coingecko.com/en/coins/international-cryptox	0.00004498
2395	Level-Up Coin	https://www.coingecko.com/en/coins/level-up-coin	0.00001489
2396	Sociall	https://www.coingecko.com/en/coins/sociall	0.01241584
2397	Hitcoin	https://www.coingecko.com/en/coins/hitcoin	0.00000256
2398	Humanscape	https://www.coingecko.com/en/coins/humanscape	0.00326151
2399	Lif	https://www.coingecko.com/en/coins/lif	0.00000000
2400	Enkronos	https://www.coingecko.com/en/coins/enkronos	1.95
2401	CoinStarter	https://www.coingecko.com/en/coins/coinstarter	0.00008041
2402	MaisCoin	https://www.coingecko.com/en/coins/maiscoin	0.00000001
2403	Solace Coin	https://www.coingecko.com/en/coins/solace-coin	0.00000045
2404	easyMine	https://www.coingecko.com/en/coins/easymine	0.00065170
2405	VeriME	https://www.coingecko.com/en/coins/verime	0.00008137
2406	Sakura Bloom	https://www.coingecko.com/en/coins/sakura-bloom	0.00019797
2407	Cryptocean	https://www.coingecko.com/en/coins/cryptocean	0.211468
2408	RedCab	https://www.coingecko.com/en/coins/redcab	0.00001976
2409	Key	https://www.coingecko.com/en/coins/key	0.00079561
2410	WinStars Live	https://www.coingecko.com/en/coins/winstars-live	0.01539325
2411	United Traders Token	https://www.coingecko.com/en/coins/united-traders-token	0.129495
2412	Crowdholding	https://www.coingecko.com/en/coins/crowdholding	0.00003928
2413	Trumpcoin	https://www.coingecko.com/en/coins/trumpcoin	0.00868721
2414	GlobalBoost-Y	https://www.coingecko.com/en/coins/globalboost	0.07516385
2415	Vectoraic	https://www.coingecko.com/en/coins/vectoraic	0.00000400
2416	CoinLoan	https://www.coingecko.com/en/coins/coinloan	1.40
2417	NYNJACoin	https://www.coingecko.com/en/coins/nynjacoin	0.00102448
2418	Õpet Foundation	https://www.coingecko.com/en/coins/opet-foundation	0.00001300
2419	Umbrella Coin	https://www.coingecko.com/en/coins/umbrellacoin	0.00024014
2420	Esports.com	https://www.coingecko.com/en/coins/esports	0.00078939
2421	Rise	https://www.coingecko.com/en/coins/rise	0.00657781
2422	BitMinutes	https://www.coingecko.com/en/coins/bitminutes	0.00160501
2423	WHEN Token	https://www.coingecko.com/en/coins/when-token	0.00063740
2424	MarketCash	https://www.coingecko.com/en/coins/marketcash	0.00015548
2425	Newton Coin Project	https://www.coingecko.com/en/coins/newton-coin-project	0.00023646
2426	ESR Wallet	https://www.coingecko.com/en/coins/esr-wallet	0.01692172
2427	Krios	https://www.coingecko.com/en/coins/krios	0.01932300
2428	GoldBlocks	https://www.coingecko.com/en/coins/goldblocks	0.00235658
2429	MB8 Coin	https://www.coingecko.com/en/coins/mb8-coin	0.00589603
2430	CGCX	https://www.coingecko.com/en/coins/cgcx	0.00079843
2431	Mirocana	https://www.coingecko.com/en/coins/mirocana	0.00149716
2432	Ino Coin	https://www.coingecko.com/en/coins/ino-coin	2.37
2433	BlockMesh	https://www.coingecko.com/en/coins/blockmesh	0.00016318
2434	Octocoin	https://www.coingecko.com/en/coins/octocoin	0.00027989
2435	JOYS	https://www.coingecko.com/en/coins/joys	0.00728874
2436	KStarCoin	https://www.coingecko.com/en/coins/kstarcoin	0.00550002
2437	Successlife	https://www.coingecko.com/en/coins/successlife	0.02077324
2438	Solar DAO	https://www.coingecko.com/en/coins/solar-dao	0.01302527
2439	imusify	https://www.coingecko.com/en/coins/imusify	0.00009028
2440	WORBLI	https://www.coingecko.com/en/coins/worbli	N/A
2441	SaTT	https://www.coingecko.com/en/coins/satt	0.00239759
2442	Bitcoin Interest	https://www.coingecko.com/en/coins/bitcoin-interest	0.00322713
2443	MARK.SPACE	https://www.coingecko.com/en/coins/mark-space	0.00010867
2444	GameBet	https://www.coingecko.com/en/coins/gamebetcoin	0.00013084
2445	Bottlecaps	https://www.coingecko.com/en/coins/bottlecaps	0.00011556
2446	Loopring [NEO]	https://www.coingecko.com/en/coins/loopring-neo	0.01600730
2447	PayperEx	https://www.coingecko.com/en/coins/payperex	3.54
2448	Fuloos	https://www.coingecko.com/en/coins/fuloos	0.00358425
2449	Innovative Bioresearch Coin	https://www.coingecko.com/en/coins/innovative-bioresearch	0.00001006
2450	Proxeus	https://www.coingecko.com/en/coins/proxeus	0.00168764
2451	Eros	https://www.coingecko.com/en/coins/eros	0.346294
2452	BitClave	https://www.coingecko.com/en/coins/bitclave	0.00021478
2453	Biotron	https://www.coingecko.com/en/coins/biotron	0.00021443
2454	Pixie Coin	https://www.coingecko.com/en/coins/pixie-coin	0.00128348
2455	GANA	https://www.coingecko.com/en/coins/gana	0.00008921
2456	Tapcoin	https://www.coingecko.com/en/coins/tapcoin	0.00013706
2457	Abulaba	https://www.coingecko.com/en/coins/abulaba	0.00005312
2458	GIVES	https://www.coingecko.com/en/coins/gives	0.00000919
2459	PlatinCoin	https://www.coingecko.com/en/coins/platincoin	5.55
2460	Noku	https://www.coingecko.com/en/coins/noku	0.06284937
2461	Envion	https://www.coingecko.com/en/coins/envion	0.09635359
2462	AMO Coin	https://www.coingecko.com/en/coins/amo-coin	0.00070202
2463	Nuggets	https://www.coingecko.com/en/coins/nuggets	0.00053269
2464	Trade Token X	https://www.coingecko.com/en/coins/trade-token-x	0.02233137
2465	ShipChain	https://www.coingecko.com/en/coins/shipchain	0.00972445
2466	Pegascoin	https://www.coingecko.com/en/coins/pegascoin	0.00032221
2467	Bryllite	https://www.coingecko.com/en/coins/bryllite	0.00465130
2468	e-Chat	https://www.coingecko.com/en/coins/e-chat	0.00000034
2469	Agetron	https://www.coingecko.com/en/coins/agetron	0.00010735
2470	RigoBlock	https://www.coingecko.com/en/coins/rigoblock	1.06
2471	FuturoCoin	https://www.coingecko.com/en/coins/futurocoin	0.00408054
2472	DAO PlayMarket 2.0	https://www.coingecko.com/en/coins/playmarket	0.06375339
2473	Saturn DAO Token	https://www.coingecko.com/en/coins/saturn-dao-token	0.00051488
2474	The Universal Settlement Coin	https://www.coingecko.com/en/coins/the-universal-settlement-coin	0.00001091
2475	Reality Clash	https://www.coingecko.com/en/coins/reality-clash	0.01343172
2476	Unitus	https://www.coingecko.com/en/coins/unitus	0.00064591
2477	Sprouts	https://www.coingecko.com/en/coins/sprouts	0.00000000
2478	Phoenixcoin	https://www.coingecko.com/en/coins/phoenixcoin	0.00508387
2479	Cachecoin	https://www.coingecko.com/en/coins/cachecoin	0.00316344
2480	Starcoin	https://www.coingecko.com/en/coins/starcointv	0.00039428
2481	SocialGood	https://www.coingecko.com/en/coins/socialgood	1.90
2482	Menlo One	https://www.coingecko.com/en/coins/menlo-one	0.00098461
2483	HarmonyCoin	https://www.coingecko.com/en/coins/harmonycoin	0.00026229
2484	MYCE	https://www.coingecko.com/en/coins/myce	0.00032185
2485	Ombre	https://www.coingecko.com/en/coins/ombre	0.00000885
2486	BrickBlock	https://www.coingecko.com/en/coins/brickblock	0.01426176
2487	OracleChain	https://www.coingecko.com/en/coins/oraclechain	0.00948463
2488	BolttCoin	https://www.coingecko.com/en/coins/bolttcoin	0.01641496
2489	Orchid Protocol	https://www.coingecko.com/en/coins/orchid-protocol	0.265954
2490	Dignity	https://www.coingecko.com/en/coins/dignity	0.00000002
2491	AgriChain	https://www.coingecko.com/en/coins/agrichain	0.00805136
2492	Decoin	https://www.coingecko.com/en/coins/decoin	0.02915902
2493	BidiPass	https://www.coingecko.com/en/coins/bidipass	0.00426048
2494	CyberVeinToken	https://www.coingecko.com/en/coins/cyberveintoken	0.122322
2495	TrueBit	https://www.coingecko.com/en/coins/truebit	2.47
2496	Acoin	https://www.coingecko.com/en/coins/acoin	0.04786448
2497	Linker Coin	https://www.coingecko.com/en/coins/linker-coin	0.00871524
2498	Rover Coin	https://www.coingecko.com/en/coins/rover-coin	0.00007638
2499	MIND	https://www.coingecko.com/en/coins/mind	0.00001718
2500	iXledger	https://www.coingecko.com/en/coins/ixledger	0.00807572
2501	NuShares	https://www.coingecko.com/en/coins/nushares	0.00025747
2502	SilkChain	https://www.coingecko.com/en/coins/silkchain	0.00053205
2503	Project-X	https://www.coingecko.com/en/coins/project-x	14266.53
2504	Noiz Chain	https://www.coingecko.com/en/coins/noiz-chain	0.03812152
2505	Rawcoin	https://www.coingecko.com/en/coins/rawcoin	0.00107117
2506	Skillchain	https://www.coingecko.com/en/coins/skillchain	0.03511580
2507	VapersCoin	https://www.coingecko.com/en/coins/vaperscoin	0.00000207
2508	OsmiumCoin	https://www.coingecko.com/en/coins/osmiumcoin	0.00233344
2509	Monero-Classic	https://www.coingecko.com/en/coins/monero-classic-xmc	0.138489
2510	Invictus Hyperion Fund	https://www.coingecko.com/en/coins/invictus-hyperion-fund	0.163778
2511	Scala	https://www.coingecko.com/en/coins/scala	0.00004220
2512	ReeCoin	https://www.coingecko.com/en/coins/reecoin	0.00115653
2513	Rupee	https://www.coingecko.com/en/coins/rupee	0.00214558
2514	LEOcoin	https://www.coingecko.com/en/coins/leocoin	0.194112
2515	EtherInc	https://www.coingecko.com/en/coins/etherinc	0.00011008
2516	Swace	https://www.coingecko.com/en/coins/swace	0.00366679
2517	AI Crypto	https://www.coingecko.com/en/coins/ai-crypto	0.00007044
2518	Digiwage	https://www.coingecko.com/en/coins/digiwage	0.00043032
2519	Debitcoin	https://www.coingecko.com/en/coins/debitcoin	0.00049099
2520	TerraNova	https://www.coingecko.com/en/coins/terranova	0.00310640
2521	Aricoin	https://www.coingecko.com/en/coins/aricoin	0.00010614
2522	PostCoin	https://www.coingecko.com/en/coins/postcoin	0.00128270
2523	XTRD	https://www.coingecko.com/en/coins/xtrd	0.00128220
2524	BriaCoin	https://www.coingecko.com/en/coins/briacoin	0.01001511
2525	Link Platform	https://www.coingecko.com/en/coins/link-platform	0.695553
2526	Clubcoin	https://www.coingecko.com/en/coins/clubcoin	0.04309798
2527	NuBits	https://www.coingecko.com/en/coins/nubits	0.268131
2528	Appics	https://www.coingecko.com/en/coins/appics	0.01964604
2529	BitTokens	https://www.coingecko.com/en/coins/bittokens	0.144169
2530	XRTFoundation	https://www.coingecko.com/en/coins/xrtfoundation	0.00037348
2531	InflationCoin	https://www.coingecko.com/en/coins/inflationcoin	0.00000234
2532	Shorty	https://www.coingecko.com/en/coins/shorty	0.00975685
2533	Riptide Coin	https://www.coingecko.com/en/coins/riptide-coin	0.00000000
2534	Alloy Project	https://www.coingecko.com/en/coins/alloy-project	0.00030928
2535	Metrix Coin	https://www.coingecko.com/en/coins/metrix-coin	0.00025753
2536	IDNI Agoras	https://www.coingecko.com/en/coins/idni-agoras	0.493004
2537	SperoCoin	https://www.coingecko.com/en/coins/sperocoin	0.05214627
2538	Dynamic Trading Rights	https://www.coingecko.com/en/coins/dynamic-trading-rights	0.01684006
2539	Cubits	https://www.coingecko.com/en/coins/cubits	0.00047962
2540	Rapture	https://www.coingecko.com/en/coins/rapture	0.00004246
2541	DynamicCoin	https://www.coingecko.com/en/coins/dynamiccoin	0.00010509
2542	UniversalRoyalCoin	https://www.coingecko.com/en/coins/universalroyalcoin	0.00002999
2543	Sexcoin	https://www.coingecko.com/en/coins/sexcoin	0.00235619
2544	MergeCoin	https://www.coingecko.com/en/coins/mergecoin	0.00729823
2545	Miners' Reward Token	https://www.coingecko.com/en/coins/miners-reward-token	0.00130178
2546	Cryptonia Poker	https://www.coingecko.com/en/coins/cryptonia-poker	0.00003279
2547	Chaucha	https://www.coingecko.com/en/coins/chaucha	0.01161208
2548	United Bitcoin	https://www.coingecko.com/en/coins/united-bitcoin	0.803632
2549	StockChain	https://www.coingecko.com/en/coins/stockchain	0.00007046
2550	HEdpAY	https://www.coingecko.com/en/coins/hedpay	0.02342296
2551	POS Coin	https://www.coingecko.com/en/coins/pos-coin	0.00000001
2552	ABC Chain	https://www.coingecko.com/en/coins/abc-chain	0.00590208
2553	CONUN	https://www.coingecko.com/en/coins/conun	0.01730908
2554	OMEGA	https://www.coingecko.com/en/coins/omega	0.00018487
2555	BTC Lite	https://www.coingecko.com/en/coins/btc-lite	0.00247414
2556	Polybius	https://www.coingecko.com/en/coins/polybius	1.58
2557	Vote Coin	https://www.coingecko.com/en/coins/vote-coin	0.00167101
2558	PHANTOM	https://www.coingecko.com/en/coins/phantom	0.00009662
2559	Super Bitcoin	https://www.coingecko.com/en/coins/super-bitcoin	0.126714
2560	OBSERVER Coin	https://www.coingecko.com/en/coins/observer-coin	0.00351693
2561	XChain Token	https://www.coingecko.com/en/coins/xchain-token	0.00011981
2562	Sophon Capital Token	https://www.coingecko.com/en/coins/sophon-capital-token	0.01512940
2563	BitcoinX	https://www.coingecko.com/en/coins/bitcoinx	0.00034359
2564	VTChain	https://www.coingecko.com/en/coins/vtchain	0.00035811
2565	Kuky Star	https://www.coingecko.com/en/coins/kuky-star	0.00089873
2566	AZ Fundchain	https://www.coingecko.com/en/coins/az-fundchain	0.01294953
2567	LIVEEN	https://www.coingecko.com/en/coins/liveen	0.00278695
2568	STB Chain	https://www.coingecko.com/en/coins/stb-chain	0.00063741
2569	Stem Cell Coin	https://www.coingecko.com/en/coins/stem-cell-coin	0.152361
2570	Deviant Coin	https://www.coingecko.com/en/coins/deviant-coin	0.530445
2571	Filecoin [IOU]	https://www.coingecko.com/en/coins/filecoin	24.82
2572	Flash	https://www.coingecko.com/en/coins/flash	0.00364298
2573	RcoinChain	https://www.coingecko.com/en/coins/rcoinchain	0.480223
2574	Kuende	https://www.coingecko.com/en/coins/kuende	0.00018681
2575	Bitvote	https://www.coingecko.com/en/coins/bitvote	0.347136
2576	AFRICUNIA BANK	https://www.coingecko.com/en/coins/africunia-bank	1.88
2577	Artemine	https://www.coingecko.com/en/coins/artemine	0.00471316
2578	OTOCASH	https://www.coingecko.com/en/coins/otocash	0.263962
2579	Flowchain	https://www.coingecko.com/en/coins/flowchain	0.311517
2580	Bit World Token	https://www.coingecko.com/en/coins/bit-world-token	0.00533588
2581	Stellar Classic	https://www.coingecko.com/en/coins/stellar-classic	0.00037949
2582	Vena Network	https://www.coingecko.com/en/coins/vena-network	0.00141158
2583	SpringRole	https://www.coingecko.com/en/coins/springrole	0.00000011
2584	Slimcoin	https://www.coingecko.com/en/coins/slimcoin	0.00021783
2585	PawCoin	https://www.coingecko.com/en/coins/pawcoin	0.00603259
2586	Athero	https://www.coingecko.com/en/coins/athero	0.00006251
2587	AIDUS Token	https://www.coingecko.com/en/coins/aidus-token	0.00709915
2588	MediConnect	https://www.coingecko.com/en/coins/mediconnect	0.00203745
2589	Atomic Wallet Coin	https://www.coingecko.com/en/coins/atomic-wallet-coin	0.669675
2590	Stronghold Token	https://www.coingecko.com/en/coins/stronghold-token	0.00000473
2591	Fountain	https://www.coingecko.com/en/coins/fountain	0.01947530
2592	Cryptosolartech	https://www.coingecko.com/en/coins/cryptosolartech	0.00010752
2593	Bitgem	https://www.coingecko.com/en/coins/bitgem	0.229936
2594	BitcoinUltra	https://www.coingecko.com/en/coins/bitcoin-ultra	0.02264775
2595	Cryptonite	https://www.coingecko.com/en/coins/cryptonite	0.00010409
2596	Casinocoin	https://www.coingecko.com/en/coins/casinocoin	0.00037481
2597	Anoncoin	https://www.coingecko.com/en/coins/anoncoin	0.02655270
2598	The Currency Analytics	https://www.coingecko.com/en/coins/the-currency-analytics	0.00910916
2599	SUN	https://www.coingecko.com/en/coins/sun	0.00010562
2600	BMCHAIN token	https://www.coingecko.com/en/coins/bmchain-token	0.00056438
2601	GigEcoin	https://www.coingecko.com/en/coins/gigecoin	0.162416
2602	Asian Fintech	https://www.coingecko.com/en/coins/asian-fintech	0.00447443
2603	TenXCoin	https://www.coingecko.com/en/coins/tenxcoin	0.01554771
2604	Chaucha	https://www.coingecko.com/en/coins/chaucha	0.01161208
2605	United Bitcoin	https://www.coingecko.com/en/coins/united-bitcoin	0.803632
2606	LYZE	https://www.coingecko.com/en/coins/lyze	0.00029151
2607	NASGO	https://www.coingecko.com/en/coins/nasgo	0.00375168
2608	ST Project	https://www.coingecko.com/en/coins/st-project	0.00386584
2609	Life Style Chain	https://www.coingecko.com/en/coins/life-style-chain	0.00211203
2610	City Coin	https://www.coingecko.com/en/coins/city-coin	0.04156164
2611	MOUSECOIN	https://www.coingecko.com/en/coins/mousecoin	0.00000001
2612	StockChain	https://www.coingecko.com/en/coins/stockchain	0.00007046
2613	HEdpAY	https://www.coingecko.com/en/coins/hedpay	0.02342296
2614	M Chain	https://www.coingecko.com/en/coins/m-chain	0.00099888
2615	POS Coin	https://www.coingecko.com/en/coins/pos-coin	0.00000001
2616	ABC Chain	https://www.coingecko.com/en/coins/abc-chain	0.00590208
2617	CONUN	https://www.coingecko.com/en/coins/conun	0.01730908
2618	OMEGA	https://www.coingecko.com/en/coins/omega	0.00018487
2619	BTC Lite	https://www.coingecko.com/en/coins/btc-lite	0.00247414
2620	Olestars	https://www.coingecko.com/en/coins/olestars	0.00010597
2621	Dogz	https://www.coingecko.com/en/coins/dogz	0.00002253
2622	Aliencoin	https://www.coingecko.com/en/coins/aliencoin	0.00000005
2623	Polybius	https://www.coingecko.com/en/coins/polybius	1.58
2624	Vote Coin	https://www.coingecko.com/en/coins/vote-coin	0.00167101
2625	PHANTOM	https://www.coingecko.com/en/coins/phantom	0.00009662
2626	Albos	https://www.coingecko.com/en/coins/albos	0.00000453
2627	Super Bitcoin	https://www.coingecko.com/en/coins/super-bitcoin	0.126714
2628	OBSERVER Coin	https://www.coingecko.com/en/coins/observer-coin	0.00351693
2629	XChain Token	https://www.coingecko.com/en/coins/xchain-token	0.00011981
2630	GroovyHooman	https://www.coingecko.com/en/coins/groovyhooman	0.00000344
2631	Sophon Capital Token	https://www.coingecko.com/en/coins/sophon-capital-token	0.01512940
2632	BitcoinX	https://www.coingecko.com/en/coins/bitcoinx	0.00034359
2633	Vena Network	https://www.coingecko.com/en/coins/vena-network	0.00141158
2634	VTChain	https://www.coingecko.com/en/coins/vtchain	0.00035811
2635	Kuky Star	https://www.coingecko.com/en/coins/kuky-star	0.00089873
2636	AZ Fundchain	https://www.coingecko.com/en/coins/az-fundchain	0.01294953
2637	LIVEEN	https://www.coingecko.com/en/coins/liveen	0.00278695
2638	STB Chain	https://www.coingecko.com/en/coins/stb-chain	0.00063741
2639	Stem Cell Coin	https://www.coingecko.com/en/coins/stem-cell-coin	0.152361
2640	Deviant Coin	https://www.coingecko.com/en/coins/deviant-coin	0.530445
2641	Filecoin [IOU]	https://www.coingecko.com/en/coins/filecoin	24.82
2642	Flash	https://www.coingecko.com/en/coins/flash	0.00364298
2643	RcoinChain	https://www.coingecko.com/en/coins/rcoinchain	0.480223
2644	Kuende	https://www.coingecko.com/en/coins/kuende	0.00018681
2645	Bitvote	https://www.coingecko.com/en/coins/bitvote	0.347136
2646	LiquidWave	https://www.coingecko.com/en/coins/liquidwave	0.06001691
2647	AFRICUNIA BANK	https://www.coingecko.com/en/coins/africunia-bank	1.88
2648	Artemine	https://www.coingecko.com/en/coins/artemine	0.00471316
2649	OTOCASH	https://www.coingecko.com/en/coins/otocash	0.263962
2650	Flowchain	https://www.coingecko.com/en/coins/flowchain	0.311517
2651	Bit World Token	https://www.coingecko.com/en/coins/bit-world-token	0.00533588
2652	Paytomat	https://www.coingecko.com/en/coins/paytomat	0.00292247
2653	Stellar Classic	https://www.coingecko.com/en/coins/stellar-classic	0.00037949
2654	Royal Online Vegas	https://www.coingecko.com/en/coins/royal-online-vegas	0.00023887
2655	SpringRole	https://www.coingecko.com/en/coins/springrole	0.00000011
2656	Slimcoin	https://www.coingecko.com/en/coins/slimcoin	0.00021783
2657	PawCoin	https://www.coingecko.com/en/coins/pawcoin	0.00603259
2658	Athero	https://www.coingecko.com/en/coins/athero	0.00006251
2659	AIDUS Token	https://www.coingecko.com/en/coins/aidus-token	0.00709915
2660	MediConnect	https://www.coingecko.com/en/coins/mediconnect	0.00203745
2661	Atomic Wallet Coin	https://www.coingecko.com/en/coins/atomic-wallet-coin	0.669675
2662	WeSing Coin	https://www.coingecko.com/en/coins/wesing-coin	0.00155823
2663	Stronghold Token	https://www.coingecko.com/en/coins/stronghold-token	0.00000473
2664	Fountain	https://www.coingecko.com/en/coins/fountain	0.01947530
2665	Cryptosolartech	https://www.coingecko.com/en/coins/cryptosolartech	0.00010752
2666	Bitgem	https://www.coingecko.com/en/coins/bitgem	0.229936
2667	HyperExchange	https://www.coingecko.com/en/coins/hyperexchange	0.01291189
2668	Voyage	https://www.coingecko.com/en/coins/voyage	0.00000100
2669	BitcoinUltra	https://www.coingecko.com/en/coins/bitcoin-ultra	0.02264775
2670	Tycoon Global	https://www.coingecko.com/en/coins/tycoon-global	2.18
2671	Cryptonite	https://www.coingecko.com/en/coins/cryptonite	0.00010409
2672	Casinocoin	https://www.coingecko.com/en/coins/casinocoin	0.00037481
2673	Anoncoin	https://www.coingecko.com/en/coins/anoncoin	0.02655270
2674	Decentralized Currency Assets	https://www.coingecko.com/en/coins/decentralized-currency-assets	0.00175871
2675	The Currency Analytics	https://www.coingecko.com/en/coins/the-currency-analytics	0.00910916
2676	SUN	https://www.coingecko.com/en/coins/sun	0.00010562
2677	BMCHAIN token	https://www.coingecko.com/en/coins/bmchain-token	0.00056438
2678	Londinium	https://www.coingecko.com/en/coins/londinium	0.00007440
2679	Bitcoin Faith	https://www.coingecko.com/en/coins/bitcoin-faith	2.20
2680	BonusCloud	https://www.coingecko.com/en/coins/bonuscloud	0.00022755
2681	Centauri Coin	https://www.coingecko.com/en/coins/centauri-coin	0.00171518
2682	BankCoin BCash	https://www.coingecko.com/en/coins/bankcoin-bcash	0.00104973
2683	Bricktox	https://www.coingecko.com/en/coins/bricktox	0.01333219
2684	Chain Finance	https://www.coingecko.com/en/coins/chain-finance	0.00142134
2685	S4FE	https://www.coingecko.com/en/coins/s4fe	0.04801088
2686	P2P Coin	https://www.coingecko.com/en/coins/p2p-coin	0.00257504
2687	BitRewards	https://www.coingecko.com/en/coins/bitrewards	0.00000274
2688	Woyager	https://www.coingecko.com/en/coins/woyager	0.00000107
2689	RYAcoin	https://www.coingecko.com/en/coins/ryacoin	0.01577595
2690	FITCASH	https://www.coingecko.com/en/coins/fitcash	0.00010636
2691	JMTIME	https://www.coingecko.com/en/coins/jmtime	0.00016270
2692	Parallel network	https://www.coingecko.com/en/coins/parellel-network	0.01280215
2693	Hazza	https://www.coingecko.com/en/coins/hazza	0.01992846
2694	Signal Token	https://www.coingecko.com/en/coins/signal-token	0.00002820
2695	OLXA	https://www.coingecko.com/en/coins/olxa	0.00021455
2696	SaluS	https://www.coingecko.com/en/coins/salus	16.44
2697	CoinAll Token	https://www.coingecko.com/en/coins/coinall-token	0.00021323
2698	EOSHASH	https://www.coingecko.com/en/coins/eoshash	0.08934648
2699	AXiaL	https://www.coingecko.com/en/coins/axial	0.00793156
2700	ONO	https://www.coingecko.com/en/coins/ono	0.00004070
2701	VTChain	https://www.coingecko.com/en/coins/vtchain	0.00035811
2702	ZeTo	https://www.coingecko.com/en/coins/zeto	0.03017318
2703	Kuky Star	https://www.coingecko.com/en/coins/kuky-star	0.00089873
2704	AZ Fundchain	https://www.coingecko.com/en/coins/az-fundchain	0.01294953
2705	Vip Coin	https://www.coingecko.com/en/coins/vip-coin	0.00566314
2706	Scrypta	https://www.coingecko.com/en/coins/scrypta	0.03444196
2707	LIVEEN	https://www.coingecko.com/en/coins/liveen	0.00278695
2708	STB Chain	https://www.coingecko.com/en/coins/stb-chain	0.00063741
2709	Stem Cell Coin	https://www.coingecko.com/en/coins/stem-cell-coin	0.152361
2710	Deviant Coin	https://www.coingecko.com/en/coins/deviant-coin	0.530445
2711	Filecoin [IOU]	https://www.coingecko.com/en/coins/filecoin	24.82
2712	Flash	https://www.coingecko.com/en/coins/flash	0.00364298
2713	RcoinChain	https://www.coingecko.com/en/coins/rcoinchain	0.480223
2714	Kuende	https://www.coingecko.com/en/coins/kuende	0.00018681
2715	Bitvote	https://www.coingecko.com/en/coins/bitvote	0.347136
2716	Transfer Coin	https://www.coingecko.com/en/coins/transfer-coin	0.00565917
2717	AFRICUNIA BANK	https://www.coingecko.com/en/coins/africunia-bank	1.88
2718	Beyond The Scene Coin	https://www.coingecko.com/en/coins/beyond-the-scene-coin	0.00010661
2719	Artemine	https://www.coingecko.com/en/coins/artemine	0.00471316
2720	OTOCASH	https://www.coingecko.com/en/coins/otocash	0.263962
2721	Flowchain	https://www.coingecko.com/en/coins/flowchain	0.311517
2722	Max Property Group	https://www.coingecko.com/en/coins/max-property-group	0.00000424
2723	Bit World Token	https://www.coingecko.com/en/coins/bit-world-token	0.00533588
2724	Stellar Classic	https://www.coingecko.com/en/coins/stellar-classic	0.00037949
2725	SpringRole	https://www.coingecko.com/en/coins/springrole	0.00000011
2726	Slimcoin	https://www.coingecko.com/en/coins/slimcoin	0.00021783
2727	PawCoin	https://www.coingecko.com/en/coins/pawcoin	0.00603259
2728	Athero	https://www.coingecko.com/en/coins/athero	0.00006251
2729	AIDUS Token	https://www.coingecko.com/en/coins/aidus-token	0.00709915
2730	MediConnect	https://www.coingecko.com/en/coins/mediconnect	0.00203745
2731	Atomic Wallet Coin	https://www.coingecko.com/en/coins/atomic-wallet-coin	0.669675
2732	Stronghold Token	https://www.coingecko.com/en/coins/stronghold-token	0.00000473
2733	Fountain	https://www.coingecko.com/en/coins/fountain	0.01947530
2734	DreamTeam3	https://www.coingecko.com/en/coins/dreamteam3	0.00003358
2735	Cryptosolartech	https://www.coingecko.com/en/coins/cryptosolartech	0.00010752
2736	Bitgem	https://www.coingecko.com/en/coins/bitgem	0.229936
2737	BitcoinUltra	https://www.coingecko.com/en/coins/bitcoin-ultra	0.02264775
2738	Cryptonite	https://www.coingecko.com/en/coins/cryptonite	0.00010409
2739	Casinocoin	https://www.coingecko.com/en/coins/casinocoin	0.00037481
2740	Revelation coin	https://www.coingecko.com/en/coins/revelation-coin	0.00000919
2741	Anoncoin	https://www.coingecko.com/en/coins/anoncoin	0.02655270
2742	The Currency Analytics	https://www.coingecko.com/en/coins/the-currency-analytics	0.00910916
2743	SUN	https://www.coingecko.com/en/coins/sun	0.00010562
2744	BMCHAIN token	https://www.coingecko.com/en/coins/bmchain-token	0.00056438
2745	Bitcoin Faith	https://www.coingecko.com/en/coins/bitcoin-faith	2.20
2746	ZJLT Distributed Factoring Network	https://www.coingecko.com/en/coins/zjlt-distributed-factoring-network	0.00055371
2747	BonusCloud	https://www.coingecko.com/en/coins/bonuscloud	0.00022755
2748	GUNTHY	https://www.coingecko.com/en/coins/gunthy	0.08074838
2749	Piction Network	https://www.coingecko.com/en/coins/piction-network	0.01100024
2750	Elitium	https://www.coingecko.com/en/coins/elitium	0.894687
2751	Centauri Coin	https://www.coingecko.com/en/coins/centauri-coin	0.00171518
2752	Bricktox	https://www.coingecko.com/en/coins/bricktox	0.01333219
2753	Chain Finance	https://www.coingecko.com/en/coins/chain-finance	0.00142134
2754	S4FE	https://www.coingecko.com/en/coins/s4fe	0.04801088
2755	BitRewards	https://www.coingecko.com/en/coins/bitrewards	0.00000274
2756	Woyager	https://www.coingecko.com/en/coins/woyager	0.00000107
2757	RYAcoin	https://www.coingecko.com/en/coins/ryacoin	0.01577595
2758	BitCash	https://www.coingecko.com/en/coins/bitcash	0.01330155
2759	FITCASH	https://www.coingecko.com/en/coins/fitcash	0.00010636
2760	JMTIME	https://www.coingecko.com/en/coins/jmtime	0.00016270
2761	Parallel network	https://www.coingecko.com/en/coins/parellel-network	0.01280215
2762	Hazza	https://www.coingecko.com/en/coins/hazza	0.01992846
2763	Signal Token	https://www.coingecko.com/en/coins/signal-token	0.00002820
2764	OLXA	https://www.coingecko.com/en/coins/olxa	0.00021455
2765	SaluS	https://www.coingecko.com/en/coins/salus	16.44
2766	CoinAll Token	https://www.coingecko.com/en/coins/coinall-token	0.00021323
2767	AXiaL	https://www.coingecko.com/en/coins/axial	0.00793156
2768	ONO	https://www.coingecko.com/en/coins/ono	0.00004070
2769	Amoveo	https://www.coingecko.com/en/coins/amoveo	30.12
2770	GDAC Token	https://www.coingecko.com/en/coins/gdac-token	0.00015333
2771	Zulu Republic Token	https://www.coingecko.com/en/coins/zulu-republic-token	0.00041895
2772	Levolution	https://www.coingecko.com/en/coins/levolution	0.183445
2773	Invoice Coin	https://www.coingecko.com/en/coins/invoice-coin	0.00033138
2774	Kronn	https://www.coingecko.com/en/coins/kronn	0.00026497
2775	Pool of Stake	https://www.coingecko.com/en/coins/pool-of-stake	0.00715448
2776	Real-estate Sales Platform	https://www.coingecko.com/en/coins/real-estate-sales-platform	0.00002107
2777	Ohmcoin	https://www.coingecko.com/en/coins/ohm-coin	0.05265954
2778	TORQ Coin	https://www.coingecko.com/en/coins/torq-coin	0.00010490
2779	DarkSaga	https://www.coingecko.com/en/coins/sagacoin	0.00688057
2780	Woodcoin	https://www.coingecko.com/en/coins/woodcoin	0.06292161
2781	Cajutel	https://www.coingecko.com/en/coins/cajutel	1.51
2782	Cryptlo	https://www.coingecko.com/en/coins/cryptlo	0.00001645
2783	Bitcoin Stash	https://www.coingecko.com/en/coins/bitcoin-stash	1.08
2784	Tao Network	https://www.coingecko.com/en/coins/tao-network	0.03935744
2785	CryptoProfile	https://www.coingecko.com/en/coins/cryptoprofile	0.00147024
2786	Zayka Token	https://www.coingecko.com/en/coins/zayka-token	0.00022182
2787	Lendroid Support Token	https://www.coingecko.com/en/coins/lendroid-support-token	0.00114783
2788	SiaClassic	https://www.coingecko.com/en/coins/siaclassic	0.00002238
2789	Lytix	https://www.coingecko.com/en/coins/lytix	0.00032341
2790	Oculor	https://www.coingecko.com/en/coins/oculor	0.00000784
2791	Version	https://www.coingecko.com/en/coins/version	0.00025768
2792	Bitsten Token	https://www.coingecko.com/en/coins/bitsten-token	0.00573629
2793	Serenity	https://www.coingecko.com/en/coins/serenity	0.00126479
2794	BitGrin	https://www.coingecko.com/en/coins/bitgrin	0.00031964
2795	Tchain	https://www.coingecko.com/en/coins/tchain	0.00487420
2796	Line quality chain	https://www.coingecko.com/en/coins/line-quality-chain	0.00860305
2797	V-Dimension	https://www.coingecko.com/en/coins/v-dimension	0.451237
2798	Skraps	https://www.coingecko.com/en/coins/skraps	0.00067636
2799	Super Keep Token	https://www.coingecko.com/en/coins/super-keep-token	0.00000384
2800	BitcoinRegular	https://www.coingecko.com/en/coins/bitcoinregular	2.15
2801	Bricktox	https://www.coingecko.com/en/coins/bricktox	0.01333219
2802	Chain Finance	https://www.coingecko.com/en/coins/chain-finance	0.00142134
2803	S4FE	https://www.coingecko.com/en/coins/s4fe	0.04801088
2804	BitRewards	https://www.coingecko.com/en/coins/bitrewards	0.00000274
2805	VNS Coin	https://www.coingecko.com/en/coins/vns-coin	0.00293222
2806	Africa Trading Chain	https://www.coingecko.com/en/coins/africa-trading-chain	0.00000181
2807	Woyager	https://www.coingecko.com/en/coins/woyager	0.00000107
2808	RYAcoin	https://www.coingecko.com/en/coins/ryacoin	0.01577595
2809	FITCASH	https://www.coingecko.com/en/coins/fitcash	0.00010636
2810	JMTIME	https://www.coingecko.com/en/coins/jmtime	0.00016270
2811	Parallel network	https://www.coingecko.com/en/coins/parellel-network	0.01280215
2812	VirtaCoin	https://www.coingecko.com/en/coins/virtacoin	0.00000008
2813	Hazza	https://www.coingecko.com/en/coins/hazza	0.01992846
2814	ChronoCoin	https://www.coingecko.com/en/coins/chronocoin	0.00203675
2815	Signal Token	https://www.coingecko.com/en/coins/signal-token	0.00002820
2816	OLXA	https://www.coingecko.com/en/coins/olxa	0.00021455
2817	SaluS	https://www.coingecko.com/en/coins/salus	16.44
2818	CoinAll Token	https://www.coingecko.com/en/coins/coinall-token	0.00021323
2819	AXiaL	https://www.coingecko.com/en/coins/axial	0.00793156
2820	LightningCash Gold	https://www.coingecko.com/en/coins/lightningcash-gold	0.00059090
2821	ONO	https://www.coingecko.com/en/coins/ono	0.00004070
2822	GrafenoCash	https://www.coingecko.com/en/coins/grafenocash	0.00002938
2823	Amoveo	https://www.coingecko.com/en/coins/amoveo	30.12
2824	Zulu Republic Token	https://www.coingecko.com/en/coins/zulu-republic-token	0.00041895
2825	Levolution	https://www.coingecko.com/en/coins/levolution	0.183445
2826	Invoice Coin	https://www.coingecko.com/en/coins/invoice-coin	0.00033138
2827	Elphyrecoin	https://www.coingecko.com/en/coins/elphyrecoin	0.00010728
2828	SESSIA	https://www.coingecko.com/en/coins/sessia	0.07854521
2829	Kronn	https://www.coingecko.com/en/coins/kronn	0.00026497
2830	Xaviera Tech	https://www.coingecko.com/en/coins/xaviera-tech	0.00051912
2831	Pool of Stake	https://www.coingecko.com/en/coins/pool-of-stake	0.00715448
2832	Real-estate Sales Platform	https://www.coingecko.com/en/coins/real-estate-sales-platform	0.00002107
2833	Ohmcoin	https://www.coingecko.com/en/coins/ohm-coin	0.05265954
2834	TORQ Coin	https://www.coingecko.com/en/coins/torq-coin	0.00010490
2835	DarkSaga	https://www.coingecko.com/en/coins/sagacoin	0.00688057
2836	Woodcoin	https://www.coingecko.com/en/coins/woodcoin	0.06292161
2837	SimplyBrand	https://www.coingecko.com/en/coins/simplybrand	0.00044567
2838	Cajutel	https://www.coingecko.com/en/coins/cajutel	1.51
2839	Bitcoin Stash	https://www.coingecko.com/en/coins/bitcoin-stash	1.08
2840	CryptoProfile	https://www.coingecko.com/en/coins/cryptoprofile	0.00147024
2841	Lendroid Support Token	https://www.coingecko.com/en/coins/lendroid-support-token	0.00114783
2842	WPP Token	https://www.coingecko.com/en/coins/wpp-token	0.00135052
2843	SiaClassic	https://www.coingecko.com/en/coins/siaclassic	0.00002238
2844	Version	https://www.coingecko.com/en/coins/version	0.00025768
2845	Perkle	https://www.coingecko.com/en/coins/perkle	0.00342971
2846	Bilaxy Token	https://www.coingecko.com/en/coins/bilaxy-token	0.00349502
2847	Bitsten Token	https://www.coingecko.com/en/coins/bitsten-token	0.00573629
2848	Serenity	https://www.coingecko.com/en/coins/serenity	0.00126479
2849	Tchain	https://www.coingecko.com/en/coins/tchain	0.00487420
2850	BIKI	https://www.coingecko.com/en/coins/biki	0.03388239
2851	Line quality chain	https://www.coingecko.com/en/coins/line-quality-chain	0.00860305
2852	Super Keep Token	https://www.coingecko.com/en/coins/super-keep-token	0.00000384
2853	BitcoinRegular	https://www.coingecko.com/en/coins/bitcoinregular	2.15
2854	Dequant	https://www.coingecko.com/en/coins/dequant	0.00021457
2855	BaconCoin	https://www.coingecko.com/en/coins/baconcoin	0.412484
2856	Vanta Network	https://www.coingecko.com/en/coins/vanta-network	0.00113500
2857	Tercet Network	https://www.coingecko.com/en/coins/tercet-network	0.00001386
2858	MIR COIN	https://www.coingecko.com/en/coins/mir-coin	0.02793792
2859	MVL	https://www.coingecko.com/en/coins/mass-vehicle-ledger	0.00160280
2860	Hellenic Coin	https://www.coingecko.com/en/coins/hellenic-coin	0.265502
2861	Tronipay	https://www.coingecko.com/en/coins/tronipay	0.00105926
2862	PAISACOIN	https://www.coingecko.com/en/coins/paisacoin	0.00000048
2863	TENA	https://www.coingecko.com/en/coins/tena	0.02359368
2864	Wavesbet	https://www.coingecko.com/en/coins/wavesbet	0.00000021
2865	Self Storage Coin	https://www.coingecko.com/en/coins/self-storage-coin	1.87
2866	EnterCoin	https://www.coingecko.com/en/coins/entercoin	0.00419141
2867	Kitty Coin	https://www.coingecko.com/en/coins/kitty-coin	0.00000009
2868	Sesameseed	https://www.coingecko.com/en/coins/sesameseed	0.03063242
2869	UZURAS	https://www.coingecko.com/en/coins/uzuras	0.00001936
2870	P2P Global Network	https://www.coingecko.com/en/coins/p2p-global-network	0.00002814
2871	TronWeeklyJournal	https://www.coingecko.com/en/coins/tronweeklyjournal	0.00003853
2872	TRONdice	https://www.coingecko.com/en/coins/trondice	0.00018417
2873	VEY	https://www.coingecko.com/en/coins/vey	0.00032139
2874	Bitball Treasure	https://www.coingecko.com/en/coins/bitball-treasure	166.47
2875	EthermonToken	https://www.coingecko.com/en/coins/ethermontoken	0.02938260
2876	PatentTX	https://www.coingecko.com/en/coins/patenttx	0.00686616
2877	XRP Classic	https://www.coingecko.com/en/coins/xrp-classic	0.00000002
2878	TRONGOLD	https://www.coingecko.com/en/coins/trongold	0.00000122
2879	Bitcoin Bull	https://www.coingecko.com/en/coins/bitcoin-bull	0.00000352
2880	Education Ecosystem	https://www.coingecko.com/en/coins/education-ecosystem	0.00649950
2881	Animecoin	https://www.coingecko.com/en/coins/animecoin	0.00010755
2882	bitCEO	https://www.coingecko.com/en/coins/bitceo	0.141275
2883	Nekonium	https://www.coingecko.com/en/coins/nekonium	0.00021497
2884	Treasure SL	https://www.coingecko.com/en/coins/treasure-sl	0.00150338
2885	99Masternodes	https://www.coingecko.com/en/coins/99masternodes	0.00150110
2886	MixMarvel	https://www.coingecko.com/en/coins/mixmarvel	0.00336012
2887	SounDAC	https://www.coingecko.com/en/coins/soundac	0.00086545
2888	Grabity	https://www.coingecko.com/en/coins/grabity	0.00005184
2889	PlayGame	https://www.coingecko.com/en/coins/playgame	0.00005102
2890	Counos Coin	https://www.coingecko.com/en/coins/counos-coin	5.92
2891	BOOSTO	https://www.coingecko.com/en/coins/boosto	0.00123276
2892	ForFun	https://www.coingecko.com/en/coins/forfun	0.00292331
2893	Kaiser	https://www.coingecko.com/en/coins/kaiser	0.00031190
2894	Eulo	https://www.coingecko.com/en/coins/eulo	0.00106339
2895	Smart Valor	https://www.coingecko.com/en/coins/smart-valor	0.348149
2896	SonoCoin	https://www.coingecko.com/en/coins/sonocoin	0.01400849
2897	Noah Platinum	https://www.coingecko.com/en/coins/noah-platinum	0.00009835
2898	Treasure Financial Coin	https://www.coingecko.com/en/coins/treasure-financial-coin	0.00053800
2899	EOS ETH	https://www.coingecko.com/en/coins/eos-eth	0.00000695
2900	EOS BTC	https://www.coingecko.com/en/coins/eos-btc	11494.58
2901	Teccoin	https://www.coingecko.com/en/coins/teccoin	0.695453
2902	Ethereumx·NET	https://www.coingecko.com/en/coins/ethereumx-net	0.00140091
2903	Selenium	https://www.coingecko.com/en/coins/selenium	0.104368
2904	Universal US Dollar	https://www.coingecko.com/en/coins/universal-us-dollar	0.976819
2905	DARMA Cash	https://www.coingecko.com/en/coins/darma-cash	0.219165
2906	Universal Euro	https://www.coingecko.com/en/coins/universal-euro	0.844867
2907	Forkspot	https://www.coingecko.com/en/coins/forkspot	0.00053456
2908	Valireum	https://www.coingecko.com/en/coins/valireum	0.00096486
2909	MelonHeadSProtocol	https://www.coingecko.com/en/coins/melonheadsprotocol	0.00009812
2910	zTokens	https://www.coingecko.com/en/coins/ztokens	0.212893
2911	VINX COIN STO	https://www.coingecko.com/en/coins/vinx-coin-sto	0.03523136
2912	FireAnts	https://www.coingecko.com/en/coins/fireants	0.00000000
2913	Food Token	https://www.coingecko.com/en/coins/food-token	0.00000033
2914	BITSCOIN	https://www.coingecko.com/en/coins/bitscoin	0.00010730
2915	Medibeu	https://www.coingecko.com/en/coins/medibeu	0.00155572
2916	Pyrk	https://www.coingecko.com/en/coins/pyrk	0.01668347
2917	Crypto Holding Frank Token	https://www.coingecko.com/en/coins/crypto-holding-frank-token	1.09
2918	Super Game Union	https://www.coingecko.com/en/coins/super-game-union	0.00069932
2919	Advance Auto Parts	https://www.coingecko.com/en/coins/advance-auto-parts	139.83
2920	Best Buy	https://www.coingecko.com/en/coins/best-buy	79.99
2921	BioMarin Pharmaceutical Inc	https://www.coingecko.com/en/coins/biomarin-pharmaceutical-inc	93.55
2922	HXY Money	https://www.coingecko.com/en/coins/hxy-money	0.06337428
2923	Nimfex Token	https://www.coingecko.com/en/coins/nimfex-token	1.05
2924	BULLDOG	https://www.coingecko.com/en/coins/bulldog	0.05995963
2925	Seed2Need	https://www.coingecko.com/en/coins/seed2need	0.00006740
2926	News24	https://www.coingecko.com/en/coins/news24	0.00021506
2927	Chimera	https://www.coingecko.com/en/coins/chimera	0.00017275
2928	PETROLEUM	https://www.coingecko.com/en/coins/petroleum	19.34
2929	OILage	https://www.coingecko.com/en/coins/oilage	0.02696671
2930	TOKIO Coin	https://www.coingecko.com/en/coins/tokio-coin	17.60
2931	Jc Penney	https://www.coingecko.com/en/coins/jc-penney	0.193550
2932	Merck & Co Inc	https://www.coingecko.com/en/coins/merck-co-inc	77.20
2933	6ix9ine Chain	https://www.coingecko.com/en/coins/6ix9ine-chain	0.00000655
2934	ChainZ Arena	https://www.coingecko.com/en/coins/chainz-arena	0.217220
2935	Pivx Lite	https://www.coingecko.com/en/coins/pivx-lite	0.04342734
2936	Simple Software Solutions	https://www.coingecko.com/en/coins/simple-software-solutions	0.08786072
2937	Vanguard Information Technology ETF	https://www.coingecko.com/en/coins/vanguard-information-technology-etf	255.87
2938	Walgreen Boots Alliance	https://www.coingecko.com/en/coins/walgreen-boots-alliance	45.27
2939	Workday Inc	https://www.coingecko.com/en/coins/workday-inc	178.37
2940	Health Care Select Sector SPDR Fund	https://www.coingecko.com/en/coins/health-care-select-sector-spdr-fund	99.31
2941	Autonation	https://www.coingecko.com/en/coins/autonation	40.78
2942	Barkis Network	https://www.coingecko.com/en/coins/barkis-network	1.79
2943	Attila	https://www.coingecko.com/en/coins/attila	0.150136
2944	HotBets	https://www.coingecko.com/en/coins/hotbets	0.01060931
2945	ZIMBOCASH	https://www.coingecko.com/en/coins/zimbocash	0.00277220
2946	Pump Coin	https://www.coingecko.com/en/coins/pump-coin	0.00129025
2947	Kublaicoin	https://www.coingecko.com/en/coins/kublaicoin	0.03908406
2948	LaQ Pay	https://www.coingecko.com/en/coins/laq-pay	0.00042739
2949	Bluebird Bio Inc	https://www.coingecko.com/en/coins/bluebird-bio-inc	60.22
2950	Conagra Brands Inc	https://www.coingecko.com/en/coins/conagra-brands-inc	33.68
2951	CommScope Holding Company Inc	https://www.coingecko.com/en/coins/commscope-holding-company-inc	10.05
2952	Campbell Soup	https://www.coingecko.com/en/coins/campbell-soup	48.17
2953	BTCShort	https://www.coingecko.com/en/coins/btcshort	6169.46
2954	Wonder	https://www.coingecko.com/en/coins/wonder	2.52
2955	EFSANE	https://www.coingecko.com/en/coins/efsane	0.02428931
2956	BOY Cassette Tape by RAC	https://www.coingecko.com/en/coins/tape	248.71
2957	Lemon Bet	https://www.coingecko.com/en/coins/lemon-bet	0.990067
2958	HCA Healthcare	https://www.coingecko.com/en/coins/hca-healthcare	109.69
2959	International Paper	https://www.coingecko.com/en/coins/international-paper	38.97
2960	BTCDOWN	https://www.coingecko.com/en/coins/btcdown	5.29
2961	BTCUP	https://www.coingecko.com/en/coins/btcup	13.17
2962	Nuvo Cash	https://www.coingecko.com/en/coins/nuvo-cash	0.00003326
2963	LUKSO Token	https://www.coingecko.com/en/coins/lukso-token	0.570483
2964	BigdataCash	https://www.coingecko.com/en/coins/bigdata-cash	0.03057623
2965	Ethereum High Yield Set	https://www.coingecko.com/en/coins/ethereum-high-yield-set	129.46
2966	Bitcoin High Yield Set	https://www.coingecko.com/en/coins/bitcoin-high-yield-set	105.78
2967	100 Waves ETH/BTC Set	https://www.coingecko.com/en/coins/100-waves-eth-btc-set	143.93
2968	LINK/ETH Growth Alpha Set	https://www.coingecko.com/en/coins/link-eth-growth-alpha-set	213.51
2969	Asian ETH Sentiment Set	https://www.coingecko.com/en/coins/asian-eth-sentiment-set	106.89
2970	BTC On-Chain Beta Portfolio Set	https://www.coingecko.com/en/coins/btc-on-chain-beta-portfolio-set	130.40
2971	LINK Profit Taker Set	https://www.coingecko.com/en/coins/link-profit-taker-set	255.88
2972	ETH Super Set	https://www.coingecko.com/en/coins/eth-super-set	104.16
2973	Fart Set	https://www.coingecko.com/en/coins/fart-set	187.63
2974	CoindicatorBTC Set	https://www.coingecko.com/en/coins/coindicatorbtc-set	113.10
2975	100 Waves ETH/USD Yield Set	https://www.coingecko.com/en/coins/100-waves-eth-usd-yield-set	157.87
2976	Nifexcoin	https://www.coingecko.com/en/coins/nifexcoin	0.00135047
2977	Halloween	https://www.coingecko.com/en/coins/halloween	0.630603
2978	Mt Pelerin Shares	https://www.coingecko.com/en/coins/mt-pelerin-shares	3.74
2979	Cryptorg Token	https://www.coingecko.com/en/coins/cryptorg-token	0.00540010
2980	Singular J	https://www.coingecko.com/en/coins/singular-j	0.00380479
2981	Oikos	https://www.coingecko.com/en/coins/oikos	0.02715423
2982	The Scotts Miracle-Gro Company	https://www.coingecko.com/en/coins/the-scotts-miracle-gro-company	141.23
2983	Target Corp	https://www.coingecko.com/en/coins/target-corp	120.69
2984	Bnoincoin	https://www.coingecko.com/en/coins/bnoincoin	0.00005195
2985	Japan Excitement Coin	https://www.coingecko.com/en/coins/japan-excitement-coin	34.23
2986	Cotrace	https://www.coingecko.com/en/coins/cotrace	0.00086721
2987	Titanium Network	https://www.coingecko.com/en/coins/titanium-network	4.12
2988	King Maker Coin	https://www.coingecko.com/en/coins/king-maker-coin	0.01404476
2989	Mega	https://www.coingecko.com/en/coins/mega	0.03722462
2990	Minds	https://www.coingecko.com/en/coins/minds	0.00009137
2991	Botton	https://www.coingecko.com/en/coins/botton	0.03489583
2992	SAINT FAME: Genesis Shirt	https://www.coingecko.com/en/coins/saint-fame	867.50
2993	$ICK Mask	https://www.coingecko.com/en/coins/ick-mask	209.34
2994	Cipher Core Token	https://www.coingecko.com/en/coins/cipher-core-token	38.20
2995	Bitanium	https://www.coingecko.com/en/coins/bitanium	0.219572
2996	Gbrick	https://www.coingecko.com/en/coins/gbrick	0.00458515
2997	BTC Vol Switching Set	https://www.coingecko.com/en/coins/btc-vol-switching-set	89.63
2998	ETH Vol Switching Set	https://www.coingecko.com/en/coins/eth-vol-switching-set	96.58
2999	InfinityDeFi	https://www.coingecko.com/en/coins/infinitydefi	0.00053565
3000	BSYS	https://www.coingecko.com/en/coins/bsys	0.00503867
3001	Blockchain Game Alliance	https://www.coingecko.com/en/coins/blockchain-game-alliance	0.03419296
3002	Kepler Network	https://www.coingecko.com/en/coins/kepler-network	0.00010008
3003	Hyper Dimension Chain	https://www.coingecko.com/en/coins/hyper-dimension-chain	0.00517749
3004	Acash	https://www.coingecko.com/en/coins/acash	0.00010682
3005	WeiDai	https://www.coingecko.com/en/coins/weidai	0.309033
3006	CuraDAI	https://www.coingecko.com/en/coins/curadai	0.632609
3007	PLAAS FARMERS TOKEN	https://www.coingecko.com/en/coins/plaas-farmers-token	0.00818159
3008	Happy Leaf	https://www.coingecko.com/en/coins/happy-leaf	0.05465101
3009	CryptoBet	https://www.coingecko.com/en/coins/cryptobet	0.169956
3010	Aguard	https://www.coingecko.com/en/coins/aguard	0.00109874
3011	Leduro	https://www.coingecko.com/en/coins/leduro	0.00001055
3012	Zelwin	https://www.coingecko.com/en/coins/zelwin	6.82
3013	PYRO Network (TRON)	https://www.coingecko.com/en/coins/pyro-network-tron	0.00003041
3014	VEHICLE DATA ARTIFICIAL INTELLIGENCE PLATFORM	https://www.coingecko.com/en/coins/vehicle-data-artificial-intelligence-platform	0.196364
3015	BigBang Core	https://www.coingecko.com/en/coins/bigbang-core	1.77
3016	GermanCoin	https://www.coingecko.com/en/coins/germancoin	0.00010737
3017	NDN Link	https://www.coingecko.com/en/coins/ndn-link	0.00776777
3018	H3X	https://www.coingecko.com/en/coins/h3x	0.00101547
3019	Dawn Protocol	https://www.coingecko.com/en/coins/dawn-protocol	0.190221
3020	Chad Link Set	https://www.coingecko.com/en/coins/chad-link-set	180.62
3021	ZelaaPayAE	https://www.coingecko.com/en/coins/zelaapayae	0.00301989
3022	Paparazzi	https://www.coingecko.com/en/coins/paparazzi	0.02553611
3023	BuyUCoin Token	https://www.coingecko.com/en/coins/buyucoin-token	0.00002382
3024	Trustlines Network	https://www.coingecko.com/en/coins/trustline-network	0.04906519
3025	Silvering	https://www.coingecko.com/en/coins/silvering	0.420986
3026	Crowdfunding-2020	https://www.coingecko.com/en/coins/crowdfunding-2020	10.23
3027	Destiny Success	https://www.coingecko.com/en/coins/destiny-success	0.329373
3028	Asset GDP Token	https://www.coingecko.com/en/coins/asset-gdp-token	2.01
3029	Torex	https://www.coingecko.com/en/coins/torex	0.00201913
3030	Kevacoin	https://www.coingecko.com/en/coins/kevacoin	0.00060595
3031	HelixNetwork	https://www.coingecko.com/en/coins/helixnetwork	0.00011733
3032	CNG Casino	https://www.coingecko.com/en/coins/cng-casino	0.00001462
3033	Hiblocks	https://www.coingecko.com/en/coins/hiblocks	0.00038156
3034	Ystar	https://www.coingecko.com/en/coins/ystar	0.02958973
3035	RocketGame	https://www.coingecko.com/en/coins/rocketgame	0.00001533
3036	Walleteum	https://www.coingecko.com/en/coins/walleteum	0.327451
3037	Fanáticos Cash	https://www.coingecko.com/en/coins/fanaticos-cash	0.01973043
3038	Goldnero	https://www.coingecko.com/en/coins/goldnero	0.07365024
3039	Thorium	https://www.coingecko.com/en/coins/thorium	0.03016594
3040	Tensor Coin	https://www.coingecko.com/en/coins/tensor-coin	0.01291518
3041	Galatasaray Fan Token	https://www.coingecko.com/en/coins/galatasaray-fan-token	2.12
3042	Flama	https://www.coingecko.com/en/coins/flama	0.00864960
3043	Kryptofranc	https://www.coingecko.com/en/coins/kryptofranc	0.00001286
3044	Guapcoin	https://www.coingecko.com/en/coins/guapcoin	0.02337706
3045	CC	https://www.coingecko.com/en/coins/cc	0.00172850
3046	AurusGOLD	https://www.coingecko.com/en/coins/aurusgold	61.79
3047	Learno	https://www.coingecko.com/en/coins/learno	0.05939231
3048	EtherBone	https://www.coingecko.com/en/coins/etherbone	0.00014865
3049	HOM Token	https://www.coingecko.com/en/coins/hom-token	0.00352550
3050	Doch Coin	https://www.coingecko.com/en/coins/doch-coin	0.09526794
3051	Xank	https://www.coingecko.com/en/coins/xank	0.06072343
3052	Bitgesell	https://www.coingecko.com/en/coins/bitgesell	0.00969635
3053	Glufco	https://www.coingecko.com/en/coins/glufco	0.966549
3054	To The Moon	https://www.coingecko.com/en/coins/tothe-moon	0.04843115
3055	Assemble Protocol	https://www.coingecko.com/en/coins/assemble-protocol	0.02415188
3056	Ravencoin Classic	https://www.coingecko.com/en/coins/ravencoin-classic	0.00024692
3057	Intelligence Quickly Chain	https://www.coingecko.com/en/coins/intelligence-quickly-chain	0.00177081
3058	RiverMount	https://www.coingecko.com/en/coins/rivermount	0.00030004
3059	GLEX	https://www.coingecko.com/en/coins/glex	0.00027459
3060	Bitget DeFi Token	https://www.coingecko.com/en/coins/bitget-defi-token	0.01498530
3061	AlrightCoin	https://www.coingecko.com/en/coins/alrightcoin	0.01229786
3062	GM Holding	https://www.coingecko.com/en/coins/gm-holding	0.06558194
3063	Axion	https://www.coingecko.com/en/coins/axion	0.00015344
3064	Rewardiqa	https://www.coingecko.com/en/coins/rewardiqa	0.06436679
3065	Natizet.Network	https://www.coingecko.com/en/coins/natizet-network	0.06666473
3066	Token CashPay	https://www.coingecko.com/en/coins/token-cashpay	0.105097
3067	BITCOINHEDGE	https://www.coingecko.com/en/coins/bitcoinhedge	17.49
3068	Paris Saint-Germain Fan Token	https://www.coingecko.com/en/coins/paris-saint-germain-fan-token	6.80
3069	iBCH	https://www.coingecko.com/en/coins/ibch	237.39
3070	iEOS	https://www.coingecko.com/en/coins/ieos	2.09
3071	iADA	https://www.coingecko.com/en/coins/iada	0.185162
3072	IzerBlack	https://www.coingecko.com/en/coins/izerblack	0.00010495
3073	Golden Hoyeah Coin	https://www.coingecko.com/en/coins/golden-hoyeah-coin	0.00000227
3074	Unifier	https://www.coingecko.com/en/coins/unifier	1.08
3075	COVID19 Coin	https://www.coingecko.com/en/coins/covid19-coin	1.81
3076	RatCoin	https://www.coingecko.com/en/coins/ratcoin	0.00000058
3077	Render Token	https://www.coingecko.com/en/coins/render-token	0.177666
3078	UniDollar	https://www.coingecko.com/en/coins/unidollar	0.00003717
3079	Bankroll Vault	https://www.coingecko.com/en/coins/bankroll-vault	0.152193
3080	NoleWater	https://www.coingecko.com/en/coins/nolewater	0.00004161
3081	Monnos	https://www.coingecko.com/en/coins/monnos	0.00052902
3082	VINYL RECORDS TOKEN	https://www.coingecko.com/en/coins/vinyl-records-token	0.346802
3083	0xKOJO	https://www.coingecko.com/en/coins/0xkojo	309.12
3084	Defis	https://www.coingecko.com/en/coins/defis	0.00043292
3085	100 Waves ETH/USD Ether Hoard Set	https://www.coingecko.com/en/coins/100-waves-ethusd-ether-hoard-set	126.72
3086	ETH/BTC Price Action Candlestick Set	https://www.coingecko.com/en/coins/ethbtc-price-action-candlestick-set	152.67
3087	ETH RSI 60/40 Yield Set II	https://www.coingecko.com/en/coins/eth-rsi-60-40-yield-set-ii	242.37
3088	ETH 20 MA Crossover Yield Set II	https://www.coingecko.com/en/coins/eth-20-ma-crossover-yield-set-ii	499.29
3089	ETH 26 EMA Crossover Yield II	https://www.coingecko.com/en/coins/eth-26-ma-crossover-yield-ii	350.54
3090	ETH Momentum Trigger Set	https://www.coingecko.com/en/coins/eth-momentum-trigger-set	125.57
3091	BTC AI Limit Loss	https://www.coingecko.com/en/coins/btc-ai-limit-loss	104.56
3092	ETH AI Limit Loss	https://www.coingecko.com/en/coins/eth-ai-limit-loss	132.94
3093	Alligator + Fractal Set	https://www.coingecko.com/en/coins/alligator-fractal-set	142.36
3094	AVCCOIN	https://www.coingecko.com/en/coins/avccoin	1.20
3095	BitCherry	https://www.coingecko.com/en/coins/bitcherry	0.00553502
3096	ZOLOGOLD	https://www.coingecko.com/en/coins/zologold	0.00336165
3097	TURBO NB	https://www.coingecko.com/en/coins/turbo-nb	0.00899745
3098	Gold Mining Members	https://www.coingecko.com/en/coins/gold-mining-members	0.619785
3099	FreelancerChain	https://www.coingecko.com/en/coins/freelancerchain	0.00010727
3100	BELIEVER	https://www.coingecko.com/en/coins/believer	0.00021762
3101	OG	https://www.coingecko.com/en/coins/og	2.55
3102	Simulacrum	https://www.coingecko.com/en/coins/simulacrum	0.02230326
3103	Billetcoin	https://www.coingecko.com/en/coins/billetcoin	0.01775468
3104	Mountains and Valleys ETH/BTC Set	https://www.coingecko.com/en/coins/mountains-and-valleys-ethbtc-set	139.24
3105	AGR Tokens	https://www.coingecko.com/en/coins/agr-tokens	0.112627
3106	Akikcoin	https://www.coingecko.com/en/coins/akikcoin	0.00879470
3107	Treecle	https://www.coingecko.com/en/coins/treecle	0.02386805
3108	HilkCoin	https://www.coingecko.com/en/coins/hilkcoin	0.00000237
3109	Infinite Ricks	https://www.coingecko.com/en/coins/infinite-ricks	0.00096279
3110	Loon Network	https://www.coingecko.com/en/coins/loon-network	0.510450
3111	BTC Fund Active Trading Set	https://www.coingecko.com/en/coins/btc-fund-active-trading-set	113.00
3112	HEIDI	https://www.coingecko.com/en/coins/heidi	30.71
3113	Nokencoin	https://www.coingecko.com/en/coins/nokencoin	0.00376118
3114	BitcoinPoS	https://www.coingecko.com/en/coins/bitcoinpos	54.91
3115	NinjaCoin	https://www.coingecko.com/en/coins/ninjacoin	0.00010745
3116	Empow	https://www.coingecko.com/en/coins/empow	0.00127032
3117	CryptoCricketClub	https://www.coingecko.com/en/coins/cryptocricketclub	0.04983952
3118	LOTTO9	https://www.coingecko.com/en/coins/lotto9	0.05155705
3119	Meridian Network	https://www.coingecko.com/en/coins/meridian-network	0.138497
3120	AS Roma	https://www.coingecko.com/en/coins/as-roma	2.93
3121	Atletico Madrid	https://www.coingecko.com/en/coins/atletico-madrid	4.25
3122	STONK	https://www.coingecko.com/en/coins/stonk	0.00338956
3123	BurnDrop	https://www.coingecko.com/en/coins/burndrop	0.00427382
3124	Cryptid	https://www.coingecko.com/en/coins/cryptid	0.01765524
3125	FC Barcelona Fan Token	https://www.coingecko.com/en/coins/fc-barcelona-fan-token	3.19
3126	Insight Protocol	https://www.coingecko.com/en/coins/insight-protocol	0.04994675
3127	Derivex	https://www.coingecko.com/en/coins/derivex	0.00609392
3128	Superstringchain	https://www.coingecko.com/en/coins/superstringchain	0.01899427
3129	VN Token	https://www.coingecko.com/en/coins/vn-token	0.00615641
3130	RAIN Network	https://www.coingecko.com/en/coins/rain-network	0.00000969
3131	Simply Crypto	https://www.coingecko.com/en/coins/simply-crypto	0.00010677
3132	BTC1D3L	https://www.coingecko.com/en/coins/btc1d3l	1.52
3133	BTC1D3S	https://www.coingecko.com/en/coins/btc1d3s	0.378004
3134	ETH1D3L	https://www.coingecko.com/en/coins/eth1d3l	3.13
3135	ETH1D3S	https://www.coingecko.com/en/coins/eth1d3s	0.146002
3136	COST COIN+	https://www.coingecko.com/en/coins/cost-coin	0.00119985
3137	Essek Tov	https://www.coingecko.com/en/coins/essek-tov	0.01707415
3138	WORLDPET	https://www.coingecko.com/en/coins/worldpet	0.00001199
3139	RealToken 9943 Marlowe Street Detroit MI	https://www.coingecko.com/en/coins/realtoken-9943-marlowe-st-detroit-mi	73.22
3140	UBIC China	https://www.coingecko.com/en/coins/ubic-china	0.00202982
3141	EPC	https://www.coingecko.com/en/coins/epc	0.02441480
3142	Master Coin Point	https://www.coingecko.com/en/coins/master-coin-point	0.02060880
3143	EDC-20	https://www.coingecko.com/en/coins/edc-20	0.00090445
3144	GOLDQR COIN	https://www.coingecko.com/en/coins/goldqr-coin	0.00010876
3145	Proof Of Liquidity	https://www.coingecko.com/en/coins/proof-of-liquidity	0.02175740
3146	THC	https://www.coingecko.com/en/coins/thc	0.819761
3147	Force For Fast	https://www.coingecko.com/en/coins/force-for-fast	0.02537407
3148	The Chosen One	https://www.coingecko.com/en/coins/the-chosen-one	0.00000924
3149	EasySwap	https://www.coingecko.com/en/coins/easyswap	0.123383
3150	Unibomb	https://www.coingecko.com/en/coins/unibomb	0.00000000
3151	Aave LEND	https://www.coingecko.com/en/coins/aave-lend	0.524458
3152	BeautyPaycoin	https://www.coingecko.com/en/coins/beautypaycoin	0.308577
3153	Amun Bitcoin 3x Daily Long	https://www.coingecko.com/en/coins/amun-bitcoin-3x-daily-long	7.89
3154	Amun Bitcoin 3x Daily Short	https://www.coingecko.com/en/coins/amun-bitcoin-3x-daily-short	1.14
3155	Amun Ether 3x Daily Long	https://www.coingecko.com/en/coins/amun-ether-3x-daily-long	1.40
3156	Amun Ether 3x Daily Short	https://www.coingecko.com/en/coins/amun-ether-3x-daily-short	1252.14
3157	VGTGToken	https://www.coingecko.com/en/coins/vgtgtoken	0.209956
3158	Automatic Clearing High Speed	https://www.coingecko.com/en/coins/automatic-clearing-high-speed	0.155069
3159	MINI ETHEREUM	https://www.coingecko.com/en/coins/mini-ethereum	0.397198
3160	Mandi Token	https://www.coingecko.com/en/coins/mandi-token	0.07130995
3161	PowerBalt	https://www.coingecko.com/en/coins/powerbalt	0.343722
3162	LogicDEX	https://www.coingecko.com/en/coins/logicdex	0.00001507
3163	Union Fair Coin	https://www.coingecko.com/en/coins/union-fair-coin	0.09358028
3164	Travel1Click	https://www.coingecko.com/en/coins/travel1click	15284264784
3165	SHENG	https://www.coingecko.com/en/coins/sheng	0.01728139
3166	BitcoinBOSS	https://www.coingecko.com/en/coins/bitcoinboss	0.00113104
3167	Politicoin	https://www.coingecko.com/en/coins/politicoin	0.04118934
3168	DeFiChain	https://www.coingecko.com/en/coins/defichain	0.212246
3169	Idoneus Token	https://www.coingecko.com/en/coins/idoneus-token	10.01
3170	Winners Token	https://www.coingecko.com/en/coins/winners-token	1.72
3171	CHALLENGE	https://www.coingecko.com/en/coins/challenge	0.00003661
3172	Healing Plus	https://www.coingecko.com/en/coins/healing-plus	0.852750
3173	Ripple Alpha	https://www.coingecko.com/en/coins/ripple-alpha	0.00273591
3174	GameCash	https://www.coingecko.com/en/coins/gamecash	0.00010721
3175	Bithachi	https://www.coingecko.com/en/coins/bithachi	0.00000414
3176	CRYPTOCVDA	https://www.coingecko.com/en/coins/cryptocvda	0.00000682
3177	IOOX System	https://www.coingecko.com/en/coins/ioox-system	0.03818429
3178	ETHPlus	https://www.coingecko.com/en/coins/ethplus	0.03972038
3179	IMSMART Token	https://www.coingecko.com/en/coins/imsmart-token	0.06481889
3180	DecenTradex	https://www.coingecko.com/en/coins/decentradex	0.00066046
3181	Askobar Network	https://www.coingecko.com/en/coins/askobar-network	0.00555059
3182	Moon Coin	https://www.coingecko.com/en/coins/moon-coin	0.00018023
3183	Holistic BTC Set	https://www.coingecko.com/en/coins/holistic-btc-set	111.57
3184	Holistic ETH Set	https://www.coingecko.com/en/coins/holistic-eth-set	143.72
3185	BTC RSI Crossover Yield Set	https://www.coingecko.com/en/coins/btc-rsi-crossover-yield-set	114.01
3186	ChainLink Trading Set	https://www.coingecko.com/en/coins/chainlink-trading-set	212.72
3187	ETH Smart Beta Set	https://www.coingecko.com/en/coins/eth-smart-beta-set	143.33
3188	Set of Sets Trailblazer Fund	https://www.coingecko.com/en/coins/set-of-sets-trailblazer-fund	139.05
3189	Entone	https://www.coingecko.com/en/coins/entone	0.08135234
3190	La Devise Technologies	https://www.coingecko.com/en/coins/la-devise-technologies	0.00010753
3191	European Coin Alliance	https://www.coingecko.com/en/coins/european-coin-alliance	0.01057546
3192	VINX COIN	https://www.coingecko.com/en/coins/vinx-coin	4.09
3193	SmartX	https://www.coingecko.com/en/coins/smartx	0.00182478
3194	Secret Verification Network	https://www.coingecko.com/en/coins/secret-verification-network	0.00010702
3195	RHYPTON	https://www.coingecko.com/en/coins/rhypton	0.00310849
3196	HENA	https://www.coingecko.com/en/coins/hena	0.00089609
3197	Jurasaur	https://www.coingecko.com/en/coins/jurasaur	0.00007414
3198	1ClickToken	https://www.coingecko.com/en/coins/1clicktoken	10529.89
3199	CRYPTOFOREX	https://www.coingecko.com/en/coins/cryptoforex	1.00
3200	Ormeus Cash	https://www.coingecko.com/en/coins/ormeus-cash	0.00889314
3201	CRYPTOFOREX	https://www.coingecko.com/en/coins/cryptoforex	1.00
3202	Ormeus Cash	https://www.coingecko.com/en/coins/ormeus-cash	0.00889314
3203	Lung Protocol	https://www.coingecko.com/en/coins/lung-protocol	0.00187704
3204	KYC.Crypto	https://www.coingecko.com/en/coins/kyc-crypto	0.00596149
3205	Catscoin	https://www.coingecko.com/en/coins/catscoin	0.00636283
3206	Knyazev SA Token	https://www.coingecko.com/en/coins/knyazev-sa-token	1.40
3207	LBRL	https://www.coingecko.com/en/coins/lbrl	0.01051716
3208	DigiMax	https://www.coingecko.com/en/coins/digimax	0.00021428
3209	Almace Shards	https://www.coingecko.com/en/coins/almace-shards	6.62
3210	Rowan Coin	https://www.coingecko.com/en/coins/rowan-coin	0.01395250
3211	Hi Friends Coin	https://www.coingecko.com/en/coins/hi-friends-coin	0.00003625
3212	ODE	https://www.coingecko.com/en/coins/ode	46.92
3213	KAWANGGAWA	https://www.coingecko.com/en/coins/kawanggawa	0.00098331
3214	GLOBALTRUSTFUND TOKEN	https://www.coingecko.com/en/coins/globaltrustfund-token	0.00624050
3215	RING X PLATFORM	https://www.coingecko.com/en/coins/ring-x-platform	0.06207099
3216	Lastcoin Vision	https://www.coingecko.com/en/coins/lastcoin-vision	0.02960680
3217	Zbank Token	https://www.coingecko.com/en/coins/zbank-token	0.00161193
3218	Zcartz	https://www.coingecko.com/en/coins/zcartz	244.10
3219	snglsDAO Governance Token	https://www.coingecko.com/en/coins/snglsdao-governance-token	0.00035621
3220	Wallabee	https://www.coingecko.com/en/coins/wallabee	0.00129430
3221	INRToken	https://www.coingecko.com/en/coins/inrtoken	0.00010724
3222	Avalanche IOU	https://www.coingecko.com/en/coins/avalanche-iou	3.70
3223	Medalte	https://www.coingecko.com/en/coins/medalte	0.00000801
3224	Tatcoin	https://www.coingecko.com/en/coins/tatcoin	0.06140112
3225	Gold Cash	https://www.coingecko.com/en/coins/gold-cash	1.08
3226	AmazonaCoin	https://www.coingecko.com/en/coins/amazonacoin	0.00046711
3227	Winners Group Token	https://www.coingecko.com/en/coins/winners-group-token	0.03908798
3228	Katerium	https://www.coingecko.com/en/coins/katerium	0.00281138
3229	Dollar Electrino	https://www.coingecko.com/en/coins/dollar-electrino	0.00224089
3230	Bitcoin True	https://www.coingecko.com/en/coins/bitcoin-true	0.00007501
3231	Index Chain	https://www.coingecko.com/en/coins/index-chain	0.02103933
3232	NestEgg Coin	https://www.coingecko.com/en/coins/nestegg-coin	0.00436937
3233	TronSecureHybrid	https://www.coingecko.com/en/coins/tronsecurehybrid	0.00601480
3234	Golfcoin	https://www.coingecko.com/en/coins/golfcoin	0.00000192
3235	bZx Vesting Token	https://www.coingecko.com/en/coins/bzx-vesting-token	0.05299237
3236	THECASH	https://www.coingecko.com/en/coins/thecash	0.03617021
3237	Novem Gold Token	https://www.coingecko.com/en/coins/novem-gold-token	0.817199
3238	BlockBase	https://www.coingecko.com/en/coins/blockbase	0.00267704
3239	INTEXCOIN	https://www.coingecko.com/en/coins/intexcoin	0.00086397
3240	EXENOX MOBILE	https://www.coingecko.com/en/coins/exenox-mobile	0.240354
3241	DAX416	https://www.coingecko.com/en/coins/dax416	0.00043396
3242	BITICA COIN	https://www.coingecko.com/en/coins/bitica-coin	5.60
3243	LP-yCurve	https://www.coingecko.com/en/coins/lp-ycurve	1.05
3244	Bone	https://www.coingecko.com/en/coins/bone	0.218943
3245	Binance KRW	https://www.coingecko.com/en/coins/binance-krw	0.00086298
3246	Crypto Copyright System	https://www.coingecko.com/en/coins/crypto-copyright-system	0.00011631
3247	FOCV	https://www.coingecko.com/en/coins/focv	0.01230053
3248	FIND Token	https://www.coingecko.com/en/coins/find-token	0.00003101
3249	HealthChainUS	https://www.coingecko.com/en/coins/healthchainus	0.00327017
3250	MOTIV Protocol	https://www.coingecko.com/en/coins/motiv-protocol	0.00991552
3251	BLOCKCLOUT	https://www.coingecko.com/en/coins/blockclout	0.00001772
3252	TRONFamily	https://www.coingecko.com/en/coins/tronfamily	0.03120406
3253	NerveNetwork	https://www.coingecko.com/en/coins/nervenetwork	0.150498
3254	dKargo	https://www.coingecko.com/en/coins/dkargo	0.02850313
3255	FiveToken	https://www.coingecko.com/en/coins/fivetoken	0.00109932
3256	yUSD Synthetic Token Expiring 1 September 2020	https://www.coingecko.com/en/coins/yusd-synthetic-token-expiring-1-september-2020	0.936287
3257	Vibz8	https://www.coingecko.com/en/coins/vibz8	0.09465785
3258	GrafenoCoin	https://www.coingecko.com/en/coins/grafenocoin	0.00002562
3259	TimeLockCoin	https://www.coingecko.com/en/coins/timelockcoin	2.89
3260	CR Coin	https://www.coingecko.com/en/coins/cr-coin	0.963003
3261	Karma DAO	https://www.coingecko.com/en/coins/karma-dao	6.33
3262	HEY-BITCOIN	https://www.coingecko.com/en/coins/hey-bitcoin	0.08145303
3263	BYTN	https://www.coingecko.com/en/coins/bytn	0.00041478
3264	FIRE	https://www.coingecko.com/en/coins/fire	2.97
3265	ZOM	https://www.coingecko.com/en/coins/zom	0.01011349
3266	NEOBITCOIN	https://www.coingecko.com/en/coins/neobitcoin	8.64
3267	EcoDollar	https://www.coingecko.com/en/coins/ecodollar	0.03074843
3268	KVANT	https://www.coingecko.com/en/coins/kvant	0.206780
3269	eFIN	https://www.coingecko.com/en/coins/efin	0.00002465
3270	Darwinia Commitment Token	https://www.coingecko.com/en/coins/darwinia-commitment-token	60.05
3271	Ulgen Hash Power	https://www.coingecko.com/en/coins/ulgen-hash-power	0.183954
3272	DeFi Nation Signals DAO	https://www.coingecko.com/en/coins/defi-nation-signals-dao	1.21
3273	LP-sCurve	https://www.coingecko.com/en/coins/lp-scurve	1.03
3274	LP-cCurve	https://www.coingecko.com/en/coins/lp-ccurve	1.03
3275	IdleDAI (Yield)	https://www.coingecko.com/en/coins/idle-dai-yield	1.02
3276	DEMOS	https://www.coingecko.com/en/coins/demos	0.127725
3277	Crypto User Base	https://www.coingecko.com/en/coins/crypto-user-base	0.01507344
3278	Limestone Network	https://www.coingecko.com/en/coins/limestone-network	0.02464206
3279	SIMBA Storage Token	https://www.coingecko.com/en/coins/simba-storage-token	0.113083
3280	RealToken 9336 Patton Street Detroit MI	https://www.coingecko.com/en/coins/realtoken-9336-patton-st-detroit-mi	63.07
3281	RealToken 20200 Lesure Street Detroit MI	https://www.coingecko.com/en/coins/realtoken-20200-lesure-st-detroit-mi	69.05
3282	Sprint Coin	https://www.coingecko.com/en/coins/sprint-coin	0.00021527
3283	RealToken 25097 Andover Dr Dearborn MI	https://www.coingecko.com/en/coins/realtoken-25097-andover-dr-dearborn-mi	54.74
3351	0.5X Long Swipe Token	https://www.coingecko.com/en/coins/0-5x-long-swipe-token	9713.79
3284	RealToken 5942 Audubon Road Detroit MI	https://www.coingecko.com/en/coins/realtoken-5942-audubon-rd-detroit-mi	84.70
3285	RealToken16200 Fullerton Avenue Detroit MI	https://www.coingecko.com/en/coins/realtoken-16200-fullerton-avenue-detroit-mi	163.67
3286	RealToken 18276 Appoline St Detroit MI	https://www.coingecko.com/en/coins/realtoken-18276-appoline-st-detroit-mi	53.57
3287	RealToken 8342 Schaefer Hwy Detroit MI	https://www.coingecko.com/en/coins/realtoken-8342-schaefer-hwy-detroit-mi	55.00
3288	RealToken 10024 10028 Appoline St Detroit MI	https://www.coingecko.com/en/coins/realtoken-10024-10028-appoline-st-detroit-mi	143.68
3289	FreeTip	https://www.coingecko.com/en/coins/freetip	0.00003619
3290	UniTopia Token	https://www.coingecko.com/en/coins/unitopia-token	0.585532
3291	Antiample	https://www.coingecko.com/en/coins/antiample	0.00453444
3292	BNS Token	https://www.coingecko.com/en/coins/bns-token	0.07355532
3293	Cybercoin	https://www.coingecko.com/en/coins/cybercoin	0.00001257
3294	LIBERTAS	https://www.coingecko.com/en/coins/libertas	0.00346530
3295	IdleDAI (Risk Adjusted)	https://www.coingecko.com/en/coins/idle-dai-risk-adjusted	1.02
3296	IdleUSDC (Risk Adjusted)	https://www.coingecko.com/en/coins/idle-usdc-risk-adjusted	1.02
3297	IdleUSDT (Risk Adjusted)	https://www.coingecko.com/en/coins/idle-usdt-risk-adjusted	1.01
3298	IdleUSDC (Yield)	https://www.coingecko.com/en/coins/idle-usdc-yield	1.02
3299	IdleUSDT (Yield)	https://www.coingecko.com/en/coins/idle-usdt-yield	1.01
3300	IdleSUSD (Yield)	https://www.coingecko.com/en/coins/idle-susd-yield	1.03
3301	LP-paxCurve	https://www.coingecko.com/en/coins/lp-paxcurve	1.02
3302	LP-bCurve	https://www.coingecko.com/en/coins/lp-bcurve	1.06
3303	Shiba Inu	https://www.coingecko.com/en/coins/shiba-inu	0.00000000
3304	HELIO POWER TOKEN	https://www.coingecko.com/en/coins/helio-power-token	0.01341491
3305	Marvrodi Salute Vison	https://www.coingecko.com/en/coins/marvrodi-salute-vision	1.10
3306	JUIICE	https://www.coingecko.com/en/coins/juiice	0.00011477
3307	USGold	https://www.coingecko.com/en/coins/usgold	2332.53
3308	LP renBTC Curve	https://www.coingecko.com/en/coins/lp-renbtc-curve	10891.31
3309	LP sBTC Curve	https://www.coingecko.com/en/coins/lp-sbtc-curve	10797.67
3310	ThePowerCoin	https://www.coingecko.com/en/coins/thepowercoin	0.671293
3311	SeChain	https://www.coingecko.com/en/coins/sechain	0.00005646
3312	WhiteRockCasino	https://www.coingecko.com/en/coins/whiterockcasino	0.00791497
3313	eXciting Japan Coin	https://www.coingecko.com/en/coins/exciting-japan-coin	0.02682093
3314	ZYX	https://www.coingecko.com/en/coins/zyx	0.148113
3315	FlashX Advance	https://www.coingecko.com/en/coins/flashx-advance	0.00009568
3316	MNSCoin	https://www.coingecko.com/en/coins/mnscoin	0.00154480
3317	BlipCoin	https://www.coingecko.com/en/coins/blipcoin	358505
3318	YAS	https://www.coingecko.com/en/coins/yas	0.00412854
3319	3X Long Tether Gold Token	https://www.coingecko.com/en/coins/3x-long-tether-gold-token	10440.91
3320	3X Short Tether Gold Token	https://www.coingecko.com/en/coins/3x-short-tether-gold-token	2209.68
3321	ForesterX	https://www.coingecko.com/en/coins/foresterx	0.00332375
3322	1X Short Exchange Token Index Token	https://www.coingecko.com/en/coins/1x-short-exchange-token-index-token	2877.61
3323	3X Long Swipe Token	https://www.coingecko.com/en/coins/3x-long-swipe-token	626.78
3324	1X Short Algorand Token	https://www.coingecko.com/en/coins/1x-short-algorand-token	1544.63
3325	0.5X Long PAX Gold Token	https://www.coingecko.com/en/coins/0-5x-long-pax-gold-token	6179.32
3326	0.5X Long Matic Token	https://www.coingecko.com/en/coins/0-5x-long-matic-token	8571.29
3327	0.5X Long Litecoin Token	https://www.coingecko.com/en/coins/0-5x-long-litecoin-token	6587.44
3328	0.5X Long Chainlink Token	https://www.coingecko.com/en/coins/0-5x-long-chainlink-token	11744.05
3329	0.5X Long LEO Token	https://www.coingecko.com/en/coins/0-5x-long-leo-token	6445.12
3330	0.5X Long Huobi Token Token	https://www.coingecko.com/en/coins/0-5x-long-huobi-token-token	6605.58
3331	0.5X Long Shitcoin Index Token	https://www.coingecko.com/en/coins/0-5x-long-shitcoin-index-token	10879.35
3332	0.5X Long Bitcoin Token	https://www.coingecko.com/en/coins/0-5x-long-bitcoin-token	8156.99
3333	0.5X Long Exchange Token Index Token	https://www.coingecko.com/en/coins/0-5x-long-echange-token-index-token	6976.06
3334	0.5X Long Ethereum Token	https://www.coingecko.com/en/coins/0-5x-long-ethereum-token	9382.88
3335	0.5X Long Ethereum Classic Token	https://www.coingecko.com/en/coins/0-5x-long-ethereum-classic-token	7158.34
3336	0.5X Long EOS Token	https://www.coingecko.com/en/coins/0-5x-long-eos-token	6493.00
3337	0.5X Long Bitcoin SV Token	https://www.coingecko.com/en/coins/0-5x-long-bitcoin-sv-token	6708.11
3338	0.5X Long BNB Token	https://www.coingecko.com/en/coins/0-5x-long-bnb-token	8856.40
3339	0.5X Long Bitcoin Cash Token	https://www.coingecko.com/en/coins/0-5x-long-bitcoin-cash-token	6247.03
3340	0.5X Long Cosmos Token	https://www.coingecko.com/en/coins/0-5x-long-cosmos-token	9540.87
3341	0.5X Long Algorand Token	https://www.coingecko.com/en/coins/0-5x-long-algorand-token	8892.70
3342	3X Long DeFi Index Token	https://www.coingecko.com/en/coins/3x-long-defi-index-token	3694.29
3343	3X Short DeFi Index Token	https://www.coingecko.com/en/coins/3x-short-defi-index-token	245.69
3344	0.5X Long DeFi Index Token	https://www.coingecko.com/en/coins/0-5x-long-defi-index-token	8147.73
3345	1X Short DeFi Index Token	https://www.coingecko.com/en/coins/1x-short-defi-index-token	2702.12
3346	3X Long Privacy Index Token	https://www.coingecko.com/en/coins/3x-long-privacy-index-token	297.80
3347	3X Short Privacy Index Token	https://www.coingecko.com/en/coins/3x-short-privacy-index-token	467.21
3348	0.5X Long TomoChain Token	https://www.coingecko.com/en/coins/0-5x-long-tomochain-token	12318.24
3349	1X Short Privacy Index Token	https://www.coingecko.com/en/coins/1x-short-privacy-index-token	3418.29
3350	0.5X Long TRX Token	https://www.coingecko.com/en/coins/0-5x-long-trx-token	9498.99
3352	0.5X Long Midcap Index Token	https://www.coingecko.com/en/coins/0-5x-long-midcap-index-token	9091.96
3353	0.5X Long Kyber Network Token	https://www.coingecko.com/en/coins/0-5x-long-kyber-network-token	7580.98
3354	0.5X Long Theta Network Token	https://www.coingecko.com/en/coins/0-5x-long-theta-network-token	6879.17
3355	0.5X Long Tezos Token	https://www.coingecko.com/en/coins/0-5x-long-tezos-token	7053.41
3356	0.5X Long XRP Token	https://www.coingecko.com/en/coins/0-5x-long-xrp-token	7894.43
3357	3X Short Swipe Token	https://www.coingecko.com/en/coins/3x-short-swipe-token	1.41
3358	0.5X Long Tether Gold Token	https://www.coingecko.com/en/coins/0-5x-long-tether-gold-token	6822.98
3359	0.5X Long Tether Token	https://www.coingecko.com/en/coins/0-5x-long-tether-token	6155.62
3360	1X Short Ethereum Classic Token	https://www.coingecko.com/en/coins/1x-short-ethereum-classic-token	1700.95
3361	3X Long VeChain Token	https://www.coingecko.com/en/coins/3x-long-vechain-token	262.32
3362	1X Short Swipe Token	https://www.coingecko.com/en/coins/1x-short-swipe-token	1092.22
3363	3X Short VeChain Token	https://www.coingecko.com/en/coins/3x-short-vechain-token	3384.35
3364	1X Short VeChain Token	https://www.coingecko.com/en/coins/1x-short-vechain-token	6580.29
3365	Global Human Trust	https://www.coingecko.com/en/coins/global-human-trust	42.55
3366	Coin4Trade	https://www.coingecko.com/en/coins/coin4trade	2.14
3367	1X Short Compound Token Token	https://www.coingecko.com/en/coins/1x-short-compound-token-token	1886.89
3368	1X Short Kyber Network Token	https://www.coingecko.com/en/coins/1x-short-kyber-network-token	4513.94
3369	1X Short Theta Network Token	https://www.coingecko.com/en/coins/1x-short-theta-network-token	1645.51
3370	1X Short Tether Gold Token	https://www.coingecko.com/en/coins/1x-short-tether-gold-token	4516.96
3371	1X Short Tezos Token	https://www.coingecko.com/en/coins/1x-short-tezos-token	1130.01
3372	1X Short Cosmos Token	https://www.coingecko.com/en/coins/1x-short-cosmos-token	1121.14
3373	1X Short TomoChain Token	https://www.coingecko.com/en/coins/1x-short-tomochain-token	230.25
3374	3X Long Theta Network Token	https://www.coingecko.com/en/coins/3x-long-theta-network-token	2342.12
3375	1X Short BitMax Token Token	https://www.coingecko.com/en/coins/1x-short-bitmax-token-token	1355.36
3376	3X Short Theta Network Token	https://www.coingecko.com/en/coins/3x-short-theta-network-token	12.92
3377	1X Short Cardano Token	https://www.coingecko.com/en/coins/1x-short-cardano-token	766.10
3378	1X Short Matic Token	https://www.coingecko.com/en/coins/1x-short-matic-token	752.69
3379	1X Short Dogecoin Token	https://www.coingecko.com/en/coins/1x-short-dogecoin-token	2862.89
3380	1X Short Chainlink Token	https://www.coingecko.com/en/coins/1x-short-chainlink-token	235.33
3381	1X Short OKB Token	https://www.coingecko.com/en/coins/1x-short-okb-token	1155.04
3382	1X Short Huobi Token Token	https://www.coingecko.com/en/coins/1x-short-huobi-token-token	3063.58
3383	1X Short XRP Token	https://www.coingecko.com/en/coins/1x-short-xrp-token	3037.48
3384	1X Short TRX Token	https://www.coingecko.com/en/coins/1x-short-trx-token	1200.22
3385	1X Short LEO Token	https://www.coingecko.com/en/coins/1x-short-leo-token	9144.54
3386	1X Short BNB Token	https://www.coingecko.com/en/coins/1x-short-bnb-token	944.19
3387	3X Long DMM Governance Token	https://www.coingecko.com/en/coins/3x-long-dmm-governance-token	0.366434
3388	3X Long Kyber Network Token	https://www.coingecko.com/en/coins/3x-long-kyber-network-token	641.14
3389	3X Long Balancer Token	https://www.coingecko.com/en/coins/3x-long-balancer-token	135.03
3390	3X Long Maker Token	https://www.coingecko.com/en/coins/3x-long-maker-token	4496.83
3391	3X Short Compound USDT Token	https://www.coingecko.com/en/coins/3x-short-compound-usdt-token	5281.77
3392	3X Short Kyber Network Token	https://www.coingecko.com/en/coins/3x-short-kyber-network-token	993.12
3393	3X Long Compound USDT Token	https://www.coingecko.com/en/coins/3x-long-compound-usdt-token	5183.00
3394	3X Short Balancer Token	https://www.coingecko.com/en/coins/3x-short-balancer-token	9.86
3395	3X Short Maker Token	https://www.coingecko.com/en/coins/3x-short-maker-token	692.48
3396	3X Short DMM Governance Token	https://www.coingecko.com/en/coins/3x-short-dmm-governance-token	14627.58
3397	3X Long Compound Token Token	https://www.coingecko.com/en/coins/3x-long-compound-token-token	796.54
3398	3X Short Compound Token Token	https://www.coingecko.com/en/coins/3x-short-compound-token-token	19.99
3399	Feellike	https://www.coingecko.com/en/coins/feellike	0.05580813
3400	TEWKEN	https://www.coingecko.com/en/coins/tewken	0.01999501
3401	Evan	https://www.coingecko.com/en/coins/evan	0.09601872
3402	UCROWDME	https://www.coingecko.com/en/coins/ucrowdme	0.00232780
3403	Dionpay	https://www.coingecko.com/en/coins/dionpay	0.01628135
3404	One Hundred Coin	https://www.coingecko.com/en/coins/one-hundred-coin	0.00439394
3405	Super Running Coin	https://www.coingecko.com/en/coins/super-running-coin	0.00010718
3406	Halving Coin	https://www.coingecko.com/en/coins/halving-coin	0.01298724
3407	Aquila Protocol	https://www.coingecko.com/en/coins/aquila-protocol	0.00829834
3408	Cash Global Coin	https://www.coingecko.com/en/coins/cash-global-coin	0.00279724
3409	FUUPAY	https://www.coingecko.com/en/coins/fuupay	0.03868268
3410	PeerEx Network	https://www.coingecko.com/en/coins/peerex-network	0.00338175
3411	LoanBurst	https://www.coingecko.com/en/coins/loanburst	0.151048
3412	Soft Bitcoin	https://www.coingecko.com/en/coins/soft-bitcoin	0.00267489
3413	Blocery	https://www.coingecko.com/en/coins/blocery	0.02105667
3414	MONEY PARTY	https://www.coingecko.com/en/coins/money-party	0.00038659
3415	Aludra Network	https://www.coingecko.com/en/coins/aludra-network	0.00038418
3416	TW Token	https://www.coingecko.com/en/coins/tw-token	0.00004172
3417	MRV	https://www.coingecko.com/en/coins/mrv	0.01737904
3418	BullionPAY	https://www.coingecko.com/en/coins/bullionpay	0.00578226
3577	Ucoin	https://www.coingecko.com/en/coins/ucoin	0.03520932
3419	Sports Betting Marketplace	https://www.coingecko.com/en/coins/sports-betting-marketplace	0.00036632
3420	Frens Community	https://www.coingecko.com/en/coins/frens-community	1.70
3421	Gauntlet	https://www.coingecko.com/en/coins/gauntlet	0.00889753
3422	Trump Wins Token	https://www.coingecko.com/en/coins/trump-wins-token	0.399528
3423	Trump Loses Token	https://www.coingecko.com/en/coins/trump-loses-token	0.606143
3424	Atlantis Token	https://www.coingecko.com/en/coins/atlantis-token	0.658922
3425	Equus Mining Token	https://www.coingecko.com/en/coins/equus-mining-token	0.00025729
3426	SBET	https://www.coingecko.com/en/coins/sbet	0.00372193
3427	Bintex Futures	https://www.coingecko.com/en/coins/bintex-futures	0.01429079
3428	WaykiChain Governance Coin	https://www.coingecko.com/en/coins/waykichain-governance-coin	0.01325841
3429	Multiplier	https://www.coingecko.com/en/coins/multiplier	0.04694138
3430	Sendvibe	https://www.coingecko.com/en/coins/sendvibe	0.00012365
3431	BIDR	https://www.coingecko.com/en/coins/bidr	0.00006766
3432	UCX FOUNDATION	https://www.coingecko.com/en/coins/ucx-foundation	0.220868
3433	Defis Network	https://www.coingecko.com/en/coins/defis-network	4.90
3434	ROR Universe	https://www.coingecko.com/en/coins/ror-universe	0.00133230
3435	Aureus Nummus Gold	https://www.coingecko.com/en/coins/aureus-nummus-gold	0.00036996
3436	Schain Wallet	https://www.coingecko.com/en/coins/schain-wallet	0.00200749
3437	XFUEL	https://www.coingecko.com/en/coins/xfuel	0.00096485
3438	Bitalgo	https://www.coingecko.com/en/coins/bitalgo	10.51
3439	MixTrust	https://www.coingecko.com/en/coins/mixtrust	0.00183466
3440	Meter Stable	https://www.coingecko.com/en/coins/meter-stable	0.311439
3441	Shrimp Finance	https://www.coingecko.com/en/coins/shrimp-finance	0.155700
3442	INVIZION	https://www.coingecko.com/en/coins/invizion	0.901689
3443	Rebased	https://www.coingecko.com/en/coins/rebased	0.134578
3444	AMIX	https://www.coingecko.com/en/coins/amix	1.53
3445	CryptowarriorZ	https://www.coingecko.com/en/coins/cryptowarriorz	0.00015138
3446	Camouflage.eth	https://www.coingecko.com/en/coins/camouflage-eth	0.00027825
3447	AhaToken	https://www.coingecko.com/en/coins/ahatoken	0.00389666
3448	TRON ATM	https://www.coingecko.com/en/coins/tron-atm	0.00001006
3449	Connect Mining Token	https://www.coingecko.com/en/coins/connect-mining-token	0.00010260
3450	Most Protocol	https://www.coingecko.com/en/coins/most-protocol	0.01977289
3451	Bestay	https://www.coingecko.com/en/coins/bestay	1.17
3452	EthereumSC	https://www.coingecko.com/en/coins/ethereumsc	0.09002440
3453	Tonestra	https://www.coingecko.com/en/coins/tonestra	0.00000009
3454	UniCrapToken.xyz	https://www.coingecko.com/en/coins/unicrap	0.00754545
3455	IMSWallet	https://www.coingecko.com/en/coins/ims-wallet	0.00063606
3456	NFT Protocol	https://www.coingecko.com/en/coins/nft-protocol	0.09949981
3457	Meter Governance mapped by Meter.io	https://www.coingecko.com/en/coins/meter-governance-mapped-by-meter-io	0.525692
3458	Meter Stable mapped by Meter.io	https://www.coingecko.com/en/coins/meter-stable-mapped-by-meter-io	0.720207
3459	Crypto Price Index	https://www.coingecko.com/en/coins/crypto-price-index	91.77
3460	MORK	https://www.coingecko.com/en/coins/mork	4.21
3461	The Hash Speed	https://www.coingecko.com/en/coins/the-hash-speed	0.03958648
3462	TriipMiles	https://www.coingecko.com/en/coins/triipmiles	0.00247870
3463	Pawtocol	https://www.coingecko.com/en/coins/pawtocol	0.00021749
3464	MIKS COIN	https://www.coingecko.com/en/coins/miks-coin	0.00022803
3465	Free Tool Box	https://www.coingecko.com/en/coins/free-tool-box	0.01459226
3466	BeautyK	https://www.coingecko.com/en/coins/beautyk	0.00014004
3467	Ubiner	https://www.coingecko.com/en/coins/ubiner	0.00054274
3468	Grap Finance	https://www.coingecko.com/en/coins/grap-finance	0.05506865
3469	YMPL	https://www.coingecko.com/en/coins/ympl	0.403212
3470	Davecoin	https://www.coingecko.com/en/coins/davecoin	0.00513673
3471	UniGraph	https://www.coingecko.com/en/coins/unigraph	11.12
3472	Axis DeFi	https://www.coingecko.com/en/coins/axis-defi	1.10
3473	Orbicular	https://www.coingecko.com/en/coins/orbicular	0.00102145
3474	Fyooz	https://www.coingecko.com/en/coins/fyooz	0.361893
3475	LTCP	https://www.coingecko.com/en/coins/ltcp	0.772555
3476	Xtake	https://www.coingecko.com/en/coins/xtake	13.08
3477	CoomCoin	https://www.coingecko.com/en/coins/coomcoin	0.00000951
3478	Realio Network	https://www.coingecko.com/en/coins/realio-network	0.848021
3479	Yield Breeder DAO	https://www.coingecko.com/en/coins/yield-breeder-dao	0.04181611
3480	Libera	https://www.coingecko.com/en/coins/libera	0.239673
3481	PROXI DeFi	https://www.coingecko.com/en/coins/credit	0.03678428
3482	SPACE-iZ	https://www.coingecko.com/en/coins/space-iz	0.00493264
3483	CAT.trade Protocol	https://www.coingecko.com/en/coins/cat-trade-protocol	0.204464
3484	RIZE Token	https://www.coingecko.com/en/coins/rize-token	0.05729184
3485	Burency	https://www.coingecko.com/en/coins/burency	0.291298
3486	ORYX	https://www.coingecko.com/en/coins/oryx	0.01361241
3487	YFIEXCHANGE.FINANCE	https://www.coingecko.com/en/coins/yfiexchange-finance	3.37
3488	Vidya	https://www.coingecko.com/en/coins/vidya	0.01912298
3489	CAPCOIN	https://www.coingecko.com/en/coins/capcoin	0.177361
3490	Pollux Coin	https://www.coingecko.com/en/coins/pollux-coin	0.483579
3491	Libfx	https://www.coingecko.com/en/coins/libfx	55.03
3492	Gem Exchange And Trading	https://www.coingecko.com/en/coins/gem-exchange-and-trading	0.174058
3493	Zombie.Finance	https://www.coingecko.com/en/coins/zombie-finance	0.956912
3494	Cowboy.Finance	https://www.coingecko.com/en/coins/cowboy-finance	0.02256882
3495	Truample	https://www.coingecko.com/en/coins/truample	0.00095403
3578	Cerium	https://www.coingecko.com/en/coins/cerium	0.00453630
3496	yUSD Synthetic Token Expiring 1 October 2020	https://www.coingecko.com/en/coins/yusd-synthetic-token-expiring-1-october-2020	0.992486
3497	Algory	https://www.coingecko.com/en/coins/algory	0.104945
3498	Sperax	https://www.coingecko.com/en/coins/sperax	0.00922997
3499	FUTUREXCRYPTO	https://www.coingecko.com/en/coins/futurexcrypto	0.867417
3500	YUSRA	https://www.coingecko.com/en/coins/yusra	3.34
3501	Klever	https://www.coingecko.com/en/coins/klever	0.00515640
3502	Gold And Gold	https://www.coingecko.com/en/coins/gold-and-gold	0.216368
3503	Anyswap	https://www.coingecko.com/en/coins/anyswap	0.748733
3504	PICK	https://www.coingecko.com/en/coins/pick	0.00263120
3505	Port of DeFi Network	https://www.coingecko.com/en/coins/port-of-defi-network	0.172995
3506	Zodiac	https://www.coingecko.com/en/coins/zodiac	0.00397603
3507	Hands of Steel	https://www.coingecko.com/en/coins/hands-of-steel	0.00135383
3508	Blaze Network	https://www.coingecko.com/en/coins/blaze-network	0.723016
3509	BOA	https://www.coingecko.com/en/coins/boa	11870.96
3510	ONBUFF	https://www.coingecko.com/en/coins/onbuff	0.144110
3511	Vision	https://www.coingecko.com/en/coins/vision	0.06576077
3512	LORI	https://www.coingecko.com/en/coins/lori	0.168777
3513	CEDARS	https://www.coingecko.com/en/coins/cedars	0.177302
3514	unified Stable Dollar	https://www.coingecko.com/en/coins/unified-state-dollar	0.961333
3515	Tokamak Network	https://www.coingecko.com/en/coins/tokamak-network	3.43
3516	Aragon China	https://www.coingecko.com/en/coins/aragon-china	52.57
3517	Rocket Token	https://www.coingecko.com/en/coins/rocket-token	0.497478
3518	DeFinition Network	https://www.coingecko.com/en/coins/definition-network	0.477244
3519	ReFork	https://www.coingecko.com/en/coins/refork	0.01624210
3520	Organix	https://www.coingecko.com/en/coins/organix	0.185197
3521	TriumphX	https://www.coingecko.com/en/coins/triumphx	0.350991
3522	Dipper Network	https://www.coingecko.com/en/coins/dipper-network	0.00969973
3523	Newtonium	https://www.coingecko.com/en/coins/newtonium	0.09603565
3524	CVP Token	https://www.coingecko.com/en/coins/cvp-token	2.38
3525	Vesta	https://www.coingecko.com/en/coins/vesta	0.00073016
3526	YFISCURITY	https://www.coingecko.com/en/coins/yfiscurity	2.64
3527	MiraQle	https://www.coingecko.com/en/coins/miraqle	0.172652
3528	ATTN	https://www.coingecko.com/en/coins/attn	0.100567
3529	TimeMiner	https://www.coingecko.com/en/coins/timeminer	537.78
3530	Mobius Crypto	https://www.coingecko.com/en/coins/mobius-crypto	1.20
3531	Mirror World Token	https://www.coingecko.com/en/coins/mirror-world-token	0.119797
3532	Monkey King Token	https://www.coingecko.com/en/coins/monkey-king-token	0.290079
3533	Morley Cash	https://www.coingecko.com/en/coins/morley-cash	0.110892
3534	CPT	https://www.coingecko.com/en/coins/cpt	0.305618
3535	Fee Active Collateral Token	https://www.coingecko.com/en/coins/fee-active-collateral-token	1.31
3536	Bast	https://www.coingecko.com/en/coins/bast	94.32
3537	Jack Token	https://www.coingecko.com/en/coins/jack-token	0.07268955
3538	Novacoin	https://www.coingecko.com/en/coins/novacoin	0.180715
3539	Ybcoin	https://www.coingecko.com/en/coins/ybcoin	0.00710144
3540	Mintcoin	https://www.coingecko.com/en/coins/mintcoin	0.00008996
3541	Devcoin	https://www.coingecko.com/en/coins/devcoin	0.00010332
3542	Anoncoin	https://www.coingecko.com/en/coins/anoncoin	0.02655270
3543	Cachecoin	https://www.coingecko.com/en/coins/cachecoin	0.00316344
3544	Digitalcoin	https://www.coingecko.com/en/coins/digitalcoin	0.00129071
3545	Netcoin	https://www.coingecko.com/en/coins/netcoin	0.00005092
3546	Unobtanium	https://www.coingecko.com/en/coins/unobtanium	61.17
3547	Goldcoin	https://www.coingecko.com/en/coins/goldcoin	0.00404239
3548	Fluttercoin	https://www.coingecko.com/en/coins/fluttercoin	0.00010714
3549	Whitecoin	https://www.coingecko.com/en/coins/whitecoin	0.280068
3550	Casinocoin	https://www.coingecko.com/en/coins/casinocoin	0.00037481
3551	GlobalBoost-Y	https://www.coingecko.com/en/coins/globalboost	0.07516385
3552	Bluecoin	https://www.coingecko.com/en/coins/bluecoin	0.00021739
3553	Mincoin	https://www.coingecko.com/en/coins/mincoin	0.00183991
3554	CannabisCoin	https://www.coingecko.com/en/coins/cannabiscoin	0.00548939
3555	Bitmark	https://www.coingecko.com/en/coins/bitmark	0.00224916
3556	Sync	https://www.coingecko.com/en/coins/sync	0.948848
3557	HyperStake	https://www.coingecko.com/en/coins/hyperstake	0.00012905
3558	ArtByte	https://www.coingecko.com/en/coins/artbyte	0.00026712
3559	Cryptonite	https://www.coingecko.com/en/coins/cryptonite	0.00010409
3560	Sexcoin	https://www.coingecko.com/en/coins/sexcoin	0.00236268
3561	NuBits	https://www.coingecko.com/en/coins/nubits	0.268131
3562	NuShares	https://www.coingecko.com/en/coins/nushares	0.00025747
3563	Acoin	https://www.coingecko.com/en/coins/acoin	0.04786448
3564	Phoenixcoin	https://www.coingecko.com/en/coins/phoenixcoin	0.00508387
3565	Bottlecaps	https://www.coingecko.com/en/coins/bottlecaps	0.00011556
3566	GlowShares	https://www.coingecko.com/en/coins/glowshares	0.02821997
3567	Bunnycoin	https://www.coingecko.com/en/coins/bunnycoin	0.00000019
3568	Clams	https://www.coingecko.com/en/coins/clams	0.597225
3569	BitStake	https://www.coingecko.com/en/coins/bitstake	0.931443
3570	GSMcoin	https://www.coingecko.com/en/coins/gsmcoin	0.00431568
3571	bitz	https://www.coingecko.com/en/coins/bitz	0.01496271
3572	Bitswift	https://www.coingecko.com/en/coins/bitswift	0.222891
3573	Crave	https://www.coingecko.com/en/coins/crave	0.02980230
3574	Bean Cash	https://www.coingecko.com/en/coins/bean-cash	0.00029476
3575	BitBay	https://www.coingecko.com/en/coins/bitbay	0.101014
3576	Orbitcoin	https://www.coingecko.com/en/coins/orbitcoin	0.130493
3579	VPNCoin	https://www.coingecko.com/en/coins/vpncoin	0.00066752
3580	BitZeny	https://www.coingecko.com/en/coins/bitzeny	0.00214983
3581	Ratecoin	https://www.coingecko.com/en/coins/ratecoin	0.00038656
3582	Cryptokenz	https://www.coingecko.com/en/coins/cryptokenz	1.32
3583	MapCoin	https://www.coingecko.com/en/coins/mapcoin	0.03010036
3584	Metal Music Coin	https://www.coingecko.com/en/coins/metal-music-coin	0.00056363
3585	BitCrystals	https://www.coingecko.com/en/coins/bitcrystals	0.03240016
3586	Aeon	https://www.coingecko.com/en/coins/aeon	0.375402
3587	Yocoin	https://www.coingecko.com/en/coins/yocoin	0.00046043
3588	SounDAC	https://www.coingecko.com/en/coins/soundac	0.00086545
3589	Woodcoin	https://www.coingecko.com/en/coins/woodcoin	0.06292161
3590	SaluS	https://www.coingecko.com/en/coins/salus	16.44
3591	BitcoinUltra	https://www.coingecko.com/en/coins/bitcoin-ultra	0.02264775
3592	Bitgem	https://www.coingecko.com/en/coins/bitgem	0.229936
3593	IDNI Agoras	https://www.coingecko.com/en/coins/idni-agoras	0.493004
3594	Clubcoin	https://www.coingecko.com/en/coins/clubcoin	0.04309798
3595	LEOcoin	https://www.coingecko.com/en/coins/leocoin	0.194112
3596	Sprouts	https://www.coingecko.com/en/coins/sprouts	0.00000000
3597	Unitus	https://www.coingecko.com/en/coins/unitus	0.00064591
3598	GameBet	https://www.coingecko.com/en/coins/gamebetcoin	0.00013084
3599	Octocoin	https://www.coingecko.com/en/coins/octocoin	0.00027989
3600	GoldBlocks	https://www.coingecko.com/en/coins/goldblocks	0.00235658
3601	Rise	https://www.coingecko.com/en/coins/rise	0.00657781
3602	Trumpcoin	https://www.coingecko.com/en/coins/trumpcoin	0.00868721
3603	Hitcoin	https://www.coingecko.com/en/coins/hitcoin	0.00000256
3604	Crevacoin	https://www.coingecko.com/en/coins/crevacoin	0.00000079
3605	Mojocoin	https://www.coingecko.com/en/coins/mojocoin	0.00117809
3606	Zonecoin	https://www.coingecko.com/en/coins/zonecoin	0.00051238
3607	EDC Blockchain	https://www.coingecko.com/en/coins/edc-blockchain	0.146473
3608	Lykke	https://www.coingecko.com/en/coins/lykke	0.00959939
3609	Artex Coin	https://www.coingecko.com/en/coins/artex-coin	0.00010155
3610	Jobscoin	https://www.coingecko.com/en/coins/jobscoin	0.00001275
3611	Shilling	https://www.coingecko.com/en/coins/shilling	0.00118305
3612	Pesobit	https://www.coingecko.com/en/coins/pesobit	0.00285906
3613	HEAT	https://www.coingecko.com/en/coins/heat	0.01857848
3614	Incent	https://www.coingecko.com/en/coins/incent	0.03344594
3615	HiCoin	https://www.coingecko.com/en/coins/hicoin	0.00004423
3616	Kashhcoin	https://www.coingecko.com/en/coins/kashhcoin	0.00001665
3617	Belacoin	https://www.coingecko.com/en/coins/belacoin	0.00235894
3618	Bitparkcoin	https://www.coingecko.com/en/coins/bitparkcoin	0.00020594
3619	Centurion	https://www.coingecko.com/en/coins/centurion	0.00007746
3620	Foldingcoin	https://www.coingecko.com/en/coins/foldingcoin	0.00106406
3621	Energycoin	https://www.coingecko.com/en/coins/energycoin	0.00182292
3622	Wild Beast Block	https://www.coingecko.com/en/coins/wild-beast-block	0.01374342
3623	Global Cryptocurrency	https://www.coingecko.com/en/coins/global-cryptocurrency	0.00409309
3624	First Bitcoin	https://www.coingecko.com/en/coins/first-bitcoin	0.00835515
3625	MBitBooks	https://www.coingecko.com/en/coins/mbitbooks	0.00628275
3626	DubaiCoin-DBIX	https://www.coingecko.com/en/coins/dubaicoin-dbix	0.04190106
3627	VirtualCoin	https://www.coingecko.com/en/coins/virtualcoin	0.646903
3628	XTRABYTES	https://www.coingecko.com/en/coins/xtrabytes	0.00709740
3629	SwagBucks	https://www.coingecko.com/en/coins/swagbucks	0.03961079
3630	LuckChain	https://www.coingecko.com/en/coins/luckchain	0.00032099
3631	Visio	https://www.coingecko.com/en/coins/visio	0.00008479
3632	Geocoin	https://www.coingecko.com/en/coins/geocoin	0.210783
3633	CryptoCarbon	https://www.coingecko.com/en/coins/cryptocarbon	0.00544163
3634	Tagcoin	https://www.coingecko.com/en/coins/tagcoin	0.00397231
3635	Prizm	https://www.coingecko.com/en/coins/prizm	0.00788107
3636	Kurrent	https://www.coingecko.com/en/coins/kurrent	0.00113693
3637	Moneta	https://www.coingecko.com/en/coins/moneta	0.00013926
3638	NewYorkCoin	https://www.coingecko.com/en/coins/newyorkcoin	0.00001049
3639	Avoncoin	https://www.coingecko.com/en/coins/avoncoin	0.00000084
3640	Minereum	https://www.coingecko.com/en/coins/minereum	0.414962
3641	Ecobit	https://www.coingecko.com/en/coins/ecobit	0.00108569
3642	Legends Room	https://www.coingecko.com/en/coins/legends-room	0.01800782
3643	Internet of People	https://www.coingecko.com/en/coins/internet-of-people	0.02113489
3644	ECC	https://www.coingecko.com/en/coins/ecc	0.00010689
3645	Dinastycoin	https://www.coingecko.com/en/coins/dinastycoin	0.00246630
3646	Flash	https://www.coingecko.com/en/coins/flash	0.00364298
3647	Polybius	https://www.coingecko.com/en/coins/polybius	1.58
3648	Metrix Coin	https://www.coingecko.com/en/coins/metrix-coin	0.00025753
3649	Link Platform	https://www.coingecko.com/en/coins/link-platform	0.695553
3650	TerraNova	https://www.coingecko.com/en/coins/terranova	0.00311444
3651	Rupee	https://www.coingecko.com/en/coins/rupee	0.00214558
3652	iXledger	https://www.coingecko.com/en/coins/ixledger	0.00807572
3653	OracleChain	https://www.coingecko.com/en/coins/oraclechain	0.00948463
3654	HarmonyCoin	https://www.coingecko.com/en/coins/harmonycoin	0.00026229
3655	Sociall	https://www.coingecko.com/en/coins/sociall	0.01241584
3656	Blackmoon Crypto	https://www.coingecko.com/en/coins/blackmoon-crypto	0.04695031
3657	VIVO	https://www.coingecko.com/en/coins/vivo	0.00010752
3658	LiteCoin Ultra	https://www.coingecko.com/en/coins/litecoin-ultra	0.00089953
3659	BROTHER	https://www.coingecko.com/en/coins/brother	0.00001184
3660	Wi Coin	https://www.coingecko.com/en/coins/wicoin	0.00010174
3661	Chronologic	https://www.coingecko.com/en/coins/chronologic	0.201344
3662	BitDice	https://www.coingecko.com/en/coins/bitdice	0.03515481
3663	Kin	https://www.coingecko.com/en/coins/kin	0.00000518
3664	ColossusXT	https://www.coingecko.com/en/coins/colossusxt	0.00021551
3665	Infinity Economics	https://www.coingecko.com/en/coins/infinity-economics	0.00076538
3666	Macro	https://www.coingecko.com/en/coins/macro	0.02988571
3667	KickToken	https://www.coingecko.com/en/coins/kickico	0.00002074
3668	EncryptoTel [Waves]	https://www.coingecko.com/en/coins/encryptotel-waves	0.00448045
3669	REV	https://www.coingecko.com/en/coins/rchain	0.02002646
3670	Sandcoin	https://www.coingecko.com/en/coins/sandcoin	0.00091979
3671	Hubii Network	https://www.coingecko.com/en/coins/hubii-network	0.106298
3672	ALIS	https://www.coingecko.com/en/coins/alis	0.02722973
3673	Bastonet	https://www.coingecko.com/en/coins/bastonet	0.00000017
3674	EtherDoge	https://www.coingecko.com/en/coins/etherdoge	0.00000000
3675	Eidoo	https://www.coingecko.com/en/coins/eidoo	0.114246
3676	Maecenas	https://www.coingecko.com/en/coins/maecenas	0.00867852
3677	Everus	https://www.coingecko.com/en/coins/everus	0.04558020
3678	LIFE	https://www.coingecko.com/en/coins/life	0.00000240
3679	Modum	https://www.coingecko.com/en/coins/modum	0.125431
3680	ClearPoll	https://www.coingecko.com/en/coins/clearpoll	0.00116765
3681	Exchange Union	https://www.coingecko.com/en/coins/exchange-union	1.53
3682	Ethereum Lite	https://www.coingecko.com/en/coins/ethereum-lite	0.01134781
3683	Bitcoin Silver	https://www.coingecko.com/en/coins/bitcoin-silver	4.80
3684	iEthereum	https://www.coingecko.com/en/coins/iethereum	0.08659867
3685	Cash Poker Pro	https://www.coingecko.com/en/coins/cash-poker-pro	0.00084388
3686	BTCMoon	https://www.coingecko.com/en/coins/btcmoon	0.00123197
3687	Russian Miner Coin	https://www.coingecko.com/en/coins/russian-miner-coin	0.04244252
3688	eGold	https://www.coingecko.com/en/coins/egold	0.00000000
3689	ALTOM	https://www.coingecko.com/en/coins/altom	0.00358954
3690	SHIELD	https://www.coingecko.com/en/coins/shield	0.00086861
3691	Desire	https://www.coingecko.com/en/coins/desire	0.00117987
3692	Innova	https://www.coingecko.com/en/coins/innova	0.00787043
3693	DCORP	https://www.coingecko.com/en/coins/dcorp	0.00042780
3694	ERC20	https://www.coingecko.com/en/coins/erc20	0.01547795
3695	Blockpool	https://www.coingecko.com/en/coins/blockpool	0.00330698
3696	GoldPieces	https://www.coingecko.com/en/coins/goldpieces	0.01068490
3697	eBoost	https://www.coingecko.com/en/coins/eboost	0.00099976
3698	Creamcoin	https://www.coingecko.com/en/coins/creamcoin	0.00077249
3699	Oxycoin	https://www.coingecko.com/en/coins/oxycoin	0.00000000
3700	Upfiring	https://www.coingecko.com/en/coins/upfiring	0.09083213
3701	Cryptonex	https://www.coingecko.com/en/coins/cryptonex	0.357953
3702	EA Coin	https://www.coingecko.com/en/coins/ea-coin	0.00021095
3703	Astro	https://www.coingecko.com/en/coins/astro	0.513146
3704	BitBoost	https://www.coingecko.com/en/coins/bitboost	0.00579306
3705	EuropeCoin	https://www.coingecko.com/en/coins/europecoin	0.01013008
3706	Condensate	https://www.coingecko.com/en/coins/condensate	0.00000541
3707	WINCOIN	https://www.coingecko.com/en/coins/wincoin	0.00011375
3708	EncrypGen	https://www.coingecko.com/en/coins/encrypgen	0.00298389
3709	Pebbles	https://www.coingecko.com/en/coins/pebbles	0.00074126
3710	TaaS	https://www.coingecko.com/en/coins/taas	0.813127
3711	Etheroll	https://www.coingecko.com/en/coins/etheroll	0.379874
3712	Waves Community Token	https://www.coingecko.com/en/coins/waves-community-token	0.05997295
3713	Atmos	https://www.coingecko.com/en/coins/atmos	0.03529967
3714	Adelphoi	https://www.coingecko.com/en/coins/adelphoi	0.00365141
3715	Tokes	https://www.coingecko.com/en/coins/tokes	0.00916086
3716	DraftCoin	https://www.coingecko.com/en/coins/draftcoin	0.00500455
3717	Greencoin	https://www.coingecko.com/en/coins/greencoin	0.00047054
3718	Triaconta	https://www.coingecko.com/en/coins/triaconta	0.286340
3719	DAOBet	https://www.coingecko.com/en/coins/dao-casino	0.01161187
3720	Universal Currency	https://www.coingecko.com/en/coins/universal-currency	0.00099461
3721	Elementrem	https://www.coingecko.com/en/coins/elementrem	0.00063635
3722	GrowersCoin	https://www.coingecko.com/en/coins/growers-coin	0.09504398
3723	Unify	https://www.coingecko.com/en/coins/unify	0.01235537
3724	Carboncoin	https://www.coingecko.com/en/coins/carboncoin	0.00000494
3725	Happycoin	https://www.coingecko.com/en/coins/happycoin	0.00272161
3726	PetroDollar	https://www.coingecko.com/en/coins/petrodollar	0.00494681
3727	Nekonium	https://www.coingecko.com/en/coins/nekonium	0.00021497
3728	Animecoin	https://www.coingecko.com/en/coins/animecoin	0.00010755
3729	Hellenic Coin	https://www.coingecko.com/en/coins/hellenic-coin	0.265502
3730	Version	https://www.coingecko.com/en/coins/version	0.00025768
3731	DarkSaga	https://www.coingecko.com/en/coins/sagacoin	0.00688057
3732	Filecoin [IOU]	https://www.coingecko.com/en/coins/filecoin	24.82
3733	BitcoinX	https://www.coingecko.com/en/coins/bitcoinx	0.00034359
3734	Super Bitcoin	https://www.coingecko.com/en/coins/super-bitcoin	0.126714
3735	United Bitcoin	https://www.coingecko.com/en/coins/united-bitcoin	0.803632
3736	UniversalRoyalCoin	https://www.coingecko.com/en/coins/universalroyalcoin	0.00002996
3737	Cubits	https://www.coingecko.com/en/coins/cubits	0.00047962
3738	Dynamic Trading Rights	https://www.coingecko.com/en/coins/dynamic-trading-rights	0.01684006
3739	Shorty	https://www.coingecko.com/en/coins/shorty	0.00975685
3740	InflationCoin	https://www.coingecko.com/en/coins/inflationcoin	0.00000234
3741	BitTokens	https://www.coingecko.com/en/coins/bittokens	0.144169
3742	BriaCoin	https://www.coingecko.com/en/coins/briacoin	0.01001511
3743	PostCoin	https://www.coingecko.com/en/coins/postcoin	0.00128270
3744	Aricoin	https://www.coingecko.com/en/coins/aricoin	0.00010614
3745	Debitcoin	https://www.coingecko.com/en/coins/debitcoin	0.00049099
3746	ReeCoin	https://www.coingecko.com/en/coins/reecoin	0.00115653
3747	OsmiumCoin	https://www.coingecko.com/en/coins/osmiumcoin	0.00233344
3748	VapersCoin	https://www.coingecko.com/en/coins/vaperscoin	0.00000207
3749	Rawcoin	https://www.coingecko.com/en/coins/rawcoin	0.00107117
3750	Project-X	https://www.coingecko.com/en/coins/project-x	14266.53
3751	TrueBit	https://www.coingecko.com/en/coins/truebit	2.46
3752	BrickBlock	https://www.coingecko.com/en/coins/brickblock	0.01426176
3753	Reality Clash	https://www.coingecko.com/en/coins/reality-clash	0.01343172
3754	DAO PlayMarket 2.0	https://www.coingecko.com/en/coins/playmarket	0.06375339
3755	RigoBlock	https://www.coingecko.com/en/coins/rigoblock	1.06
3756	e-Chat	https://www.coingecko.com/en/coins/e-chat	0.00000034
3757	Trade Token X	https://www.coingecko.com/en/coins/trade-token-x	0.02233137
3758	Nuggets	https://www.coingecko.com/en/coins/nuggets	0.00053269
3759	Envion	https://www.coingecko.com/en/coins/envion	0.09635359
3760	Noku	https://www.coingecko.com/en/coins/noku	0.06284937
3761	Tapcoin	https://www.coingecko.com/en/coins/tapcoin	0.00013706
3762	BitClave	https://www.coingecko.com/en/coins/bitclave	0.00021478
3763	Eros	https://www.coingecko.com/en/coins/eros	0.346294
3764	PayperEx	https://www.coingecko.com/en/coins/payperex	3.54
3765	MARK.SPACE	https://www.coingecko.com/en/coins/mark-space	0.00010867
3766	Solar DAO	https://www.coingecko.com/en/coins/solar-dao	0.01302527
3767	KStarCoin	https://www.coingecko.com/en/coins/kstarcoin	0.00550002
3768	Mirocana	https://www.coingecko.com/en/coins/mirocana	0.00149716
3769	Krios	https://www.coingecko.com/en/coins/krios	0.01932300
3770	ESR Wallet	https://www.coingecko.com/en/coins/esr-wallet	0.01692172
3771	Esports.com	https://www.coingecko.com/en/coins/esports	0.00078939
3772	Umbrella Coin	https://www.coingecko.com/en/coins/umbrellacoin	0.00024014
3773	CoinLoan	https://www.coingecko.com/en/coins/coinloan	1.40
3774	Crowdholding	https://www.coingecko.com/en/coins/crowdholding	0.00003928
3775	United Traders Token	https://www.coingecko.com/en/coins/united-traders-token	0.129495
3776	VeriME	https://www.coingecko.com/en/coins/verime	0.00008137
3777	easyMine	https://www.coingecko.com/en/coins/easymine	0.00065084
3778	CoinStarter	https://www.coingecko.com/en/coins/coinstarter	0.00008041
3779	Lif	https://www.coingecko.com/en/coins/lif	0.00000000
3780	Level-Up Coin	https://www.coingecko.com/en/coins/level-up-coin	0.00001489
3781	Budbo	https://www.coingecko.com/en/coins/budbo	0.04720234
3782	Relex	https://www.coingecko.com/en/coins/relex	0.00010577
3783	Climatecoin	https://www.coingecko.com/en/coins/climatecoin	0.00037837
3784	Iungo	https://www.coingecko.com/en/coins/iungo	0.00056072
3785	Escroco Emerald	https://www.coingecko.com/en/coins/escroco-emerald	0.00000354
3786	Edge	https://www.coingecko.com/en/coins/edge	0.03178702
3787	Skychain	https://www.coingecko.com/en/coins/skychain	0.08527118
3788	EVO	https://www.coingecko.com/en/coins/evo	0.00049399
3789	Zloadr	https://www.coingecko.com/en/coins/zloadr	0.00345728
3790	CoinLion	https://www.coingecko.com/en/coins/coinlion	0.00753579
3791	Bankera	https://www.coingecko.com/en/coins/bankera	0.00143087
3792	Taklimakan Network	https://www.coingecko.com/en/coins/taklimakan-network	0.00372258
3793	DreamTeam	https://www.coingecko.com/en/coins/dreamteam	0.01938783
3794	Paycent	https://www.coingecko.com/en/coins/paycent	0.00288411
3795	Bali Coin	https://www.coingecko.com/en/coins/bali-coin	0.01415444
3796	Rotharium	https://www.coingecko.com/en/coins/rotharium	0.905899
3797	MAD Network Token	https://www.coingecko.com/en/coins/mad-network-token	0.07392495
3798	GazeCoin	https://www.coingecko.com/en/coins/gazecoin	0.00975836
3799	Kala	https://www.coingecko.com/en/coins/kala	0.00040996
3800	Globitex	https://www.coingecko.com/en/coins/globitex	0.00788789
3801	Game	https://www.coingecko.com/en/coins/game	0.00701591
3802	Betrium	https://www.coingecko.com/en/coins/betrium	0.00030032
3803	Lucyd	https://www.coingecko.com/en/coins/lucyd	0.00122413
3804	Agricoin	https://www.coingecko.com/en/coins/agricoin	0.02145944
3805	Vectorspace AI	https://www.coingecko.com/en/coins/vectorspace-ai	0.154175
3806	Uservice	https://www.coingecko.com/en/coins/uservice	0.01121102
3807	Galaxy eSolutions	https://www.coingecko.com/en/coins/galaxy-esolutions	0.00000102
3808	Squeezer	https://www.coingecko.com/en/coins/squeezer	0.00022950
3809	Ammbr	https://www.coingecko.com/en/coins/ammbr	0.00590615
3810	REGA	https://www.coingecko.com/en/coins/rega	0.255253
3811	PlayKey	https://www.coingecko.com/en/coins/playkey	0.01869335
3812	Proof Token	https://www.coingecko.com/en/coins/proof-token	2.63
3813	Ice Rock Mining	https://www.coingecko.com/en/coins/ice-rock-mining	0.01206467
3814	Rilcoin	https://www.coingecko.com/en/coins/rilcoin	0.00021458
3815	Sudan Gold Coin	https://www.coingecko.com/en/coins/sudan-gold-coin	0.02000533
3816	Sinergia	https://www.coingecko.com/en/coins/sinergia	0.01316801
3817	NTOK	https://www.coingecko.com/en/coins/ntok	0.00021682
3818	BitRewards Token	https://www.coingecko.com/en/coins/bitrewards-token	0.00014981
3819	Peculium	https://www.coingecko.com/en/coins/peculium	0.00144229
3820	CEDEX	https://www.coingecko.com/en/coins/cedex-coin	0.00422745
3821	SwapToken	https://www.coingecko.com/en/coins/swaptoken	0.00000007
3822	Hyper Pay	https://www.coingecko.com/en/coins/hyper-pay	0.00052783
3823	Lightning Bitcoin	https://www.coingecko.com/en/coins/lightning-bitcoin	1.07
3824	FarmaTrust	https://www.coingecko.com/en/coins/farmatrust	0.00307782
3825	Shivers	https://www.coingecko.com/en/coins/shivers	0.00081873
3826	Rutheneum	https://www.coingecko.com/en/coins/rutheneum	0.00009371
3827	Moozicore	https://www.coingecko.com/en/coins/moozicore	0.00010998
3828	Phoneum	https://www.coingecko.com/en/coins/phoneum	0.00007101
3829	Fast Access Blockchain	https://www.coingecko.com/en/coins/fast-access-blockchain	0.03075267
3830	Morpheus Network	https://www.coingecko.com/en/coins/morpheus-network	0.160663
3831	TV-TWO	https://www.coingecko.com/en/coins/tv-two	0.00081581
3832	Luna Stars	https://www.coingecko.com/en/coins/luna-stars	0.00000686
3833	Mavro	https://www.coingecko.com/en/coins/mavro	48.26
3834	Landcoin	https://www.coingecko.com/en/coins/landcoin	0.00052757
3835	DarkLisk	https://www.coingecko.com/en/coins/darklisk	0.00030868
3836	Mixin	https://www.coingecko.com/en/coins/mixin	136.38
3837	Coinlancer	https://www.coingecko.com/en/coins/coinlancer	0.00246860
3838	OP Coin	https://www.coingecko.com/en/coins/op-coin	0.00002814
3839	HTMLCOIN	https://www.coingecko.com/en/coins/htmlcoin	0.00004203
3840	Valorbit	https://www.coingecko.com/en/coins/valorbit	0.00000036
3841	Cloud	https://www.coingecko.com/en/coins/cloud	0.00064034
3842	Vetri	https://www.coingecko.com/en/coins/vetri	0.00409760
3843	Cryptaur	https://www.coingecko.com/en/coins/cryptaur	0.00014106
3844	COMSA	https://www.coingecko.com/en/coins/comsa	0.06461819
3845	President Trump	https://www.coingecko.com/en/coins/president-trump	0.00891374
3846	Ignition	https://www.coingecko.com/en/coins/ignition	0.06611110
3847	WETH	https://www.coingecko.com/en/coins/weth	351.50
3848	MOAC	https://www.coingecko.com/en/coins/moac	0.08645600
3849	Tokyo Coin	https://www.coingecko.com/en/coins/tokyo	0.00002149
3850	InvestDigital	https://www.coingecko.com/en/coins/investdigital	0.00288713
3851	Qube	https://www.coingecko.com/en/coins/qube	0.00002779
3852	Bitcoin God	https://www.coingecko.com/en/coins/bitcoin-god	0.124955
3853	CDX Network	https://www.coingecko.com/en/coins/cdx-network	0.00160676
3854	TopChain	https://www.coingecko.com/en/coins/topchain	0.00517347
3855	Leverj	https://www.coingecko.com/en/coins/leverj	0.07654766
3856	Kcash	https://www.coingecko.com/en/coins/kcash	0.05941280
3857	Spectre.ai Dividend Token	https://www.coingecko.com/en/coins/spectre-dividend-token	0.07581719
3858	Spectre.ai Utility Token	https://www.coingecko.com/en/coins/spectre-utility-token	0.06109268
3859	SWTC	https://www.coingecko.com/en/coins/swtc	0.00017308
3860	Kzcash	https://www.coingecko.com/en/coins/kzcash	0.00181568
3861	Bitcoin Atom	https://www.coingecko.com/en/coins/bitcoin-atom	0.133990
3862	AWARE	https://www.coingecko.com/en/coins/aware	0.00094632
3863	Coinnec	https://www.coingecko.com/en/coins/coinnec	0.00000312
3864	StarChain	https://www.coingecko.com/en/coins/starchain	0.00001601
3865	Maggie	https://www.coingecko.com/en/coins/maggie	0.00010757
3866	Acute Angle Cloud	https://www.coingecko.com/en/coins/acute-angle-cloud	0.01265852
3867	CEEK Smart VR Token	https://www.coingecko.com/en/coins/ceek-smart-vr-token	0.00322797
3868	Shping	https://www.coingecko.com/en/coins/shping	0.00001758
3869	AurumCoin	https://www.coingecko.com/en/coins/aurumcoin	11.75
3870	SparksPay	https://www.coingecko.com/en/coins/sparkspay	0.00115638
3871	Molecular Future	https://www.coingecko.com/en/coins/molecular-future	0.207503
3872	View	https://www.coingecko.com/en/coins/view	0.00449892
3873	Halcyon	https://www.coingecko.com/en/coins/halcyon	0.00154795
3874	I0Coin	https://www.coingecko.com/en/coins/i0coin	0.02146920
3875	iTicoin	https://www.coingecko.com/en/coins/iticoin	2.10
3876	LeadCoin	https://www.coingecko.com/en/coins/leadcoin	0.00020322
3877	PressOne	https://www.coingecko.com/en/coins/pressone	0.01779079
3878	EDUCare	https://www.coingecko.com/en/coins/educare	0.00403630
3879	Motocoin	https://www.coingecko.com/en/coins/motocoin	0.01118385
3880	Mineum	https://www.coingecko.com/en/coins/mineum	0.00191231
3881	ParallelCoin	https://www.coingecko.com/en/coins/parallelcoin	0.113690
3882	Darsek	https://www.coingecko.com/en/coins/darsek	0.00118134
3883	SixEleven	https://www.coingecko.com/en/coins/sixeleven	0.00920320
3884	Qbic	https://www.coingecko.com/en/coins/qbic	0.00031981
3885	Elementeum	https://www.coingecko.com/en/coins/elementeum	0.01230184
3886	Prime-XI	https://www.coingecko.com/en/coins/prime-xi	0.00010753
3887	TEKcoin	https://www.coingecko.com/en/coins/tekcoin	0.00000128
3888	CoinMeet	https://www.coingecko.com/en/coins/coinmeet	0.00527212
3889	Garlicoin	https://www.coingecko.com/en/coins/garlicoin	0.00203828
3890	Vanywhere	https://www.coingecko.com/en/coins/vanywhere	0.00107413
3891	Ultimate Secure Cash	https://www.coingecko.com/en/coins/ultimate-secure-cash	0.02688197
3892	FuzzBalls	https://www.coingecko.com/en/coins/fuzzballs	0.00311520
3893	SongCoin	https://www.coingecko.com/en/coins/songcoin	0.00009801
3894	FLOGmall	https://www.coingecko.com/en/coins/flogmall	0.00318282
3895	Nework	https://www.coingecko.com/en/coins/nework	0.00541716
3896	Equal	https://www.coingecko.com/en/coins/equal	0.00106762
3897	Agro Tech Farm	https://www.coingecko.com/en/coins/agro-tech-farm	0.00405457
3898	Spots	https://www.coingecko.com/en/coins/spots	0.00043057
3899	OceanChain	https://www.coingecko.com/en/coins/oceanchain	0.00025644
3900	Electronic PK Chain	https://www.coingecko.com/en/coins/electronic-pk-chain	0.00167306
3901	ValueChain	https://www.coingecko.com/en/coins/valuechain	0.00173029
3902	GPU Coin	https://www.coingecko.com/en/coins/gpu-coin	0.00011492
3903	PARETO Rewards	https://www.coingecko.com/en/coins/pareto-rewards	0.00000079
3904	P2P solutions foundation	https://www.coingecko.com/en/coins/p2p-solutions-foundation	0.172976
3905	DocTailor	https://www.coingecko.com/en/coins/doctailor	0.00000066
3906	JOYSO	https://www.coingecko.com/en/coins/joyso	0.02571420
3907	Cosplay Token	https://www.coingecko.com/en/coins/cosplay-token	0.05966713
3908	Quebecoin	https://www.coingecko.com/en/coins/quebecoin	0.00138823
3909	Dollar INTERNATIONAL	https://www.coingecko.com/en/coins/dollar-international	0.04312805
3910	Modex	https://www.coingecko.com/en/coins/modex	0.01084883
3911	Pitch	https://www.coingecko.com/en/coins/pitch	0.00042796
3912	CryptalDash	https://www.coingecko.com/en/coins/cryptaldash	0.05227900
3913	KALICOIN	https://www.coingecko.com/en/coins/kalicoin	0.00010728
3914	BitNautic	https://www.coingecko.com/en/coins/bitnautic	0.00085908
3915	Vault Coin	https://www.coingecko.com/en/coins/vault-coin	0.00010626
3916	GlobalCoin	https://www.coingecko.com/en/coins/globalcoin	0.00016928
3917	SproutsExtreme	https://www.coingecko.com/en/coins/sproutsextreme	0.00000043
3918	EtherSportz	https://www.coingecko.com/en/coins/ethersportz	0.04904203
3919	MktCoin	https://www.coingecko.com/en/coins/mktcoin	0.00005359
3920	XinFin	https://www.coingecko.com/en/coins/xinfin	0.00476874
3921	concertVR	https://www.coingecko.com/en/coins/concertvr	0.00676595
3922	YACoin	https://www.coingecko.com/en/coins/yacoin	0.00019424
3923	Californium	https://www.coingecko.com/en/coins/californium	0.00161695
3924	Yield Coin	https://www.coingecko.com/en/coins/yield-coin	0.00473090
3925	Optitoken	https://www.coingecko.com/en/coins/optitoken	0.00526227
3926	Cashaa	https://www.coingecko.com/en/coins/cashaa	0.01942473
3927	Vice Industry Token	https://www.coingecko.com/en/coins/vice-industry-token	0.00026769
3928	MobilinkToken	https://www.coingecko.com/en/coins/mobilink-token	0.00137244
3929	GoPower	https://www.coingecko.com/en/coins/gopower	0.00028547
3930	Aitheon	https://www.coingecko.com/en/coins/aitheon	0.00585376
3931	PHI TOKEN	https://www.coingecko.com/en/coins/phi-token	0.06633278
3932	ALAX	https://www.coingecko.com/en/coins/alax	0.00040276
3933	ORS Group	https://www.coingecko.com/en/coins/orsgroup-io	0.01189976
3934	PDATA	https://www.coingecko.com/en/coins/pdata	0.00034135
3935	Consentium	https://www.coingecko.com/en/coins/consentium	0.01107557
3936	Multicoin	https://www.coingecko.com/en/coins/multicoin	0.02729674
3937	Nami.Trade	https://www.coingecko.com/en/coins/nami-trade	0.01270580
3938	BitGuild PLAT	https://www.coingecko.com/en/coins/bitguild-plat	0.00023823
3939	MindCoin	https://www.coingecko.com/en/coins/mindcoin	0.00023031
3940	TAGRcoin	https://www.coingecko.com/en/coins/tagrcoin	0.00006668
3941	PonziCoin	https://www.coingecko.com/en/coins/ponzicoin	0.00083828
3942	Ride My Car	https://www.coingecko.com/en/coins/ride-my-car	0.00010741
3943	Orlycoin	https://www.coingecko.com/en/coins/orlycoin	0.00006000
3944	LetItRide	https://www.coingecko.com/en/coins/letitride	0.00018293
3945	BowsCoin	https://www.coingecko.com/en/coins/bowscoin	0.00073618
3946	iBank	https://www.coingecko.com/en/coins/ibank	0.00039454
3947	LemoChain	https://www.coingecko.com/en/coins/lemochain	0.00086272
3948	Future1Coin	https://www.coingecko.com/en/coins/future1coin	0.00015109
3949	AirPod	https://www.coingecko.com/en/coins/airpod	0.01037850
3950	PROVER	https://www.coingecko.com/en/coins/prover	0.00088161
3951	Carboneum	https://www.coingecko.com/en/coins/carboneum	0.00232808
3952	W3Coin	https://www.coingecko.com/en/coins/w3coin	0.00000005
3953	Patron	https://www.coingecko.com/en/coins/patron	0.00122809
3954	GoCrypto	https://www.coingecko.com/en/coins/gocrypto	0.01195556
3955	USAT	https://www.coingecko.com/en/coins/usat	0.00000694
3956	Invox Finance	https://www.coingecko.com/en/coins/invox-finance	0.00126072
3957	Maro	https://www.coingecko.com/en/coins/maro	0.01970941
3958	BoatPilot	https://www.coingecko.com/en/coins/boatpilot	0.00161715
3959	Rublix	https://www.coingecko.com/en/coins/rublix	0.02770522
3960	Etheal	https://www.coingecko.com/en/coins/etheal	0.01366804
3961	Konios	https://www.coingecko.com/en/coins/konios	0.00002512
3962	EXMR	https://www.coingecko.com/en/coins/exmr	0.01986233
3963	Atonomi	https://www.coingecko.com/en/coins/atonomi	0.00024555
3964	Seele	https://www.coingecko.com/en/coins/seele	0.00598804
3965	TraceTo	https://www.coingecko.com/en/coins/traceto	0.00044912
3966	Decentralized Machine Learning Protocol	https://www.coingecko.com/en/coins/decentralized-machine-learning	0.00076450
3967	ABBC	https://www.coingecko.com/en/coins/abbc	0.320158
3968	Cloud Moolah	https://www.coingecko.com/en/coins/cloud-moolah	0.00280549
3969	Dfinity [IOU]	https://www.coingecko.com/en/coins/dfinity-iou	14.80
3970	Seal Network	https://www.coingecko.com/en/coins/seal-network	0.00011138
3971	Blue Whale	https://www.coingecko.com/en/coins/blue-whale	0.04128546
3972	RedBUX	https://www.coingecko.com/en/coins/redbux	0.00131998
3973	Centrality	https://www.coingecko.com/en/coins/centrality	0.05746226
3974	Dragon Coin	https://www.coingecko.com/en/coins/dragon-coin	0.04801435
3975	ThinkCoin	https://www.coingecko.com/en/coins/thinkcoin	0.02843208
3976	Noah Platinum	https://www.coingecko.com/en/coins/noah-platinum	0.00009835
3977	BOOSTO	https://www.coingecko.com/en/coins/boosto	0.00123276
3978	Education Ecosystem	https://www.coingecko.com/en/coins/education-ecosystem	0.00649950
3979	MVL	https://www.coingecko.com/en/coins/mass-vehicle-ledger	0.00160280
3980	MIR COIN	https://www.coingecko.com/en/coins/mir-coin	0.02793792
3981	Lendroid Support Token	https://www.coingecko.com/en/coins/lendroid-support-token	0.00114783
3982	TORQ Coin	https://www.coingecko.com/en/coins/torq-coin	0.00010490
3983	Ohmcoin	https://www.coingecko.com/en/coins/ohm-coin	0.05265954
3984	Pool of Stake	https://www.coingecko.com/en/coins/pool-of-stake	0.00715448
3985	OLXA	https://www.coingecko.com/en/coins/olxa	0.00021455
3986	Signal Token	https://www.coingecko.com/en/coins/signal-token	0.00002820
3987	FITCASH	https://www.coingecko.com/en/coins/fitcash	0.00010636
3988	BitRewards	https://www.coingecko.com/en/coins/bitrewards	0.00000274
3989	Bricktox	https://www.coingecko.com/en/coins/bricktox	0.01333219
3990	Cryptosolartech	https://www.coingecko.com/en/coins/cryptosolartech	0.00010752
3991	SpringRole	https://www.coingecko.com/en/coins/springrole	0.00000011
3992	Artemine	https://www.coingecko.com/en/coins/artemine	0.00472535
3993	Bitvote	https://www.coingecko.com/en/coins/bitvote	0.347136
3994	Deviant Coin	https://www.coingecko.com/en/coins/deviant-coin	0.530445
3995	BTC Lite	https://www.coingecko.com/en/coins/btc-lite	0.00247414
3996	OMEGA	https://www.coingecko.com/en/coins/omega	0.00018487
3997	StockChain	https://www.coingecko.com/en/coins/stockchain	0.00007046
3998	Chaucha	https://www.coingecko.com/en/coins/chaucha	0.01161208
3999	Cryptonia Poker	https://www.coingecko.com/en/coins/cryptonia-poker	0.00003279
4000	Miners' Reward Token	https://www.coingecko.com/en/coins/miners-reward-token	0.00130178
4001	DynamicCoin	https://www.coingecko.com/en/coins/dynamiccoin	0.00010509
4002	Rapture	https://www.coingecko.com/en/coins/rapture	0.00004246
4003	SperoCoin	https://www.coingecko.com/en/coins/sperocoin	0.05214627
4004	Alloy Project	https://www.coingecko.com/en/coins/alloy-project	0.00030928
4005	Riptide Coin	https://www.coingecko.com/en/coins/riptide-coin	0.00000000
4006	XRTFoundation	https://www.coingecko.com/en/coins/xrtfoundation	0.00037348
4007	Appics	https://www.coingecko.com/en/coins/appics	0.01964604
4008	XTRD	https://www.coingecko.com/en/coins/xtrd	0.00128220
4009	Digiwage	https://www.coingecko.com/en/coins/digiwage	0.00043032
4010	AI Crypto	https://www.coingecko.com/en/coins/ai-crypto	0.00007044
4011	Swace	https://www.coingecko.com/en/coins/swace	0.00366679
4012	EtherInc	https://www.coingecko.com/en/coins/etherinc	0.00011008
4013	Scala	https://www.coingecko.com/en/coins/scala	0.00004220
4014	Invictus Hyperion Fund	https://www.coingecko.com/en/coins/invictus-hyperion-fund	0.163778
4015	Monero-Classic	https://www.coingecko.com/en/coins/monero-classic-xmc	0.138489
4016	Skillchain	https://www.coingecko.com/en/coins/skillchain	0.03511580
4017	Noiz Chain	https://www.coingecko.com/en/coins/noiz-chain	0.03812152
4018	SilkChain	https://www.coingecko.com/en/coins/silkchain	0.00053205
4019	MIND	https://www.coingecko.com/en/coins/mind	0.00001718
4020	Rover Coin	https://www.coingecko.com/en/coins/rover-coin	0.00007638
4021	Linker Coin	https://www.coingecko.com/en/coins/linker-coin	0.00871524
4022	CyberVeinToken	https://www.coingecko.com/en/coins/cyberveintoken	0.122305
4023	BidiPass	https://www.coingecko.com/en/coins/bidipass	0.00426153
4024	Decoin	https://www.coingecko.com/en/coins/decoin	0.02911331
4025	AgriChain	https://www.coingecko.com/en/coins/agrichain	0.00805136
4026	Dignity	https://www.coingecko.com/en/coins/dignity	0.00000002
4027	Orchid Protocol	https://www.coingecko.com/en/coins/orchid-protocol	0.265954
4028	BolttCoin	https://www.coingecko.com/en/coins/bolttcoin	0.01641496
4029	Ombre	https://www.coingecko.com/en/coins/ombre	0.00000885
4030	MYCE	https://www.coingecko.com/en/coins/myce	0.00032185
4031	Menlo One	https://www.coingecko.com/en/coins/menlo-one	0.00098461
4032	SocialGood	https://www.coingecko.com/en/coins/socialgood	1.90
4033	Starcoin	https://www.coingecko.com/en/coins/starcointv	0.00039428
4034	The Universal Settlement Coin	https://www.coingecko.com/en/coins/the-universal-settlement-coin	0.00001091
4035	Saturn DAO Token	https://www.coingecko.com/en/coins/saturn-dao-token	0.00051488
4036	FuturoCoin	https://www.coingecko.com/en/coins/futurocoin	0.00408054
4037	Agetron	https://www.coingecko.com/en/coins/agetron	0.00010735
4038	Bryllite	https://www.coingecko.com/en/coins/bryllite	0.00465130
4039	Pegascoin	https://www.coingecko.com/en/coins/pegascoin	0.00032221
4040	ShipChain	https://www.coingecko.com/en/coins/shipchain	0.00972445
4041	AMO Coin	https://www.coingecko.com/en/coins/amo-coin	0.00070202
4042	PlatinCoin	https://www.coingecko.com/en/coins/platincoin	5.55
4043	GIVES	https://www.coingecko.com/en/coins/gives	0.00000919
4044	Abulaba	https://www.coingecko.com/en/coins/abulaba	0.00005312
4045	GANA	https://www.coingecko.com/en/coins/gana	0.00008921
4046	Pixie Coin	https://www.coingecko.com/en/coins/pixie-coin	0.00128348
4047	Biotron	https://www.coingecko.com/en/coins/biotron	0.00021443
4048	Proxeus	https://www.coingecko.com/en/coins/proxeus	0.00168764
4049	Innovative Bioresearch Coin	https://www.coingecko.com/en/coins/innovative-bioresearch	0.00001006
4050	Fuloos	https://www.coingecko.com/en/coins/fuloos	0.00358425
4051	Loopring [NEO]	https://www.coingecko.com/en/coins/loopring-neo	0.01600730
4052	Bitcoin Interest	https://www.coingecko.com/en/coins/bitcoin-interest	0.00322713
4053	SaTT	https://www.coingecko.com/en/coins/satt	0.00239759
4054	WORBLI	https://www.coingecko.com/en/coins/worbli	N/A
4055	imusify	https://www.coingecko.com/en/coins/imusify	0.00009028
4056	Successlife	https://www.coingecko.com/en/coins/successlife	0.02077324
4057	JOYS	https://www.coingecko.com/en/coins/joys	0.00728874
4058	BlockMesh	https://www.coingecko.com/en/coins/blockmesh	0.00016318
4059	Ino Coin	https://www.coingecko.com/en/coins/ino-coin	2.37
4060	CGCX	https://www.coingecko.com/en/coins/cgcx	0.00079843
4061	MB8 Coin	https://www.coingecko.com/en/coins/mb8-coin	0.00589603
4062	Newton Coin Project	https://www.coingecko.com/en/coins/newton-coin-project	0.00023646
4063	MarketCash	https://www.coingecko.com/en/coins/marketcash	0.00015548
4064	WHEN Token	https://www.coingecko.com/en/coins/when-token	0.00063740
4065	BitMinutes	https://www.coingecko.com/en/coins/bitminutes	0.00160501
4066	Õpet Foundation	https://www.coingecko.com/en/coins/opet-foundation	0.00001300
4067	NYNJACoin	https://www.coingecko.com/en/coins/nynjacoin	0.00102448
4068	Vectoraic	https://www.coingecko.com/en/coins/vectoraic	0.00000400
4069	WinStars Live	https://www.coingecko.com/en/coins/winstars-live	0.01539325
4070	Key	https://www.coingecko.com/en/coins/key	0.00079561
4071	RedCab	https://www.coingecko.com/en/coins/redcab	0.00001976
4072	Cryptocean	https://www.coingecko.com/en/coins/cryptocean	0.211468
4073	Sakura Bloom	https://www.coingecko.com/en/coins/sakura-bloom	0.00019797
4074	Solace Coin	https://www.coingecko.com/en/coins/solace-coin	0.00000045
4075	MaisCoin	https://www.coingecko.com/en/coins/maiscoin	0.00000001
4076	Enkronos	https://www.coingecko.com/en/coins/enkronos	1.95
4077	Humanscape	https://www.coingecko.com/en/coins/humanscape	0.00326151
4078	International CryptoX	https://www.coingecko.com/en/coins/international-cryptox	0.00004498
4079	ZEON Network	https://www.coingecko.com/en/coins/zeon-network	0.00036197
4080	Bitex Global XBX Coin	https://www.coingecko.com/en/coins/bitex-global-xbx-coin	0.00820068
4081	Solareum	https://www.coingecko.com/en/coins/solareum	0.00045958
4082	Taler	https://www.coingecko.com/en/coins/taler	0.00156724
4083	Worktips	https://www.coingecko.com/en/coins/worktips	0.00000371
4084	Cruisebit	https://www.coingecko.com/en/coins/cruisebit	0.00010736
4085	Cybereits	https://www.coingecko.com/en/coins/cybereits	0.00093523
4086	PRASM	https://www.coingecko.com/en/coins/prasm	0.00005127
4087	Aston	https://www.coingecko.com/en/coins/aston	0.00011851
4088	Freyrchain	https://www.coingecko.com/en/coins/freyrchain	0.00003899
4089	Global Social Chain	https://www.coingecko.com/en/coins/global-social-chain	0.00406229
4090	Sparkster	https://www.coingecko.com/en/coins/sparkster	0.00238155
4091	Arcona	https://www.coingecko.com/en/coins/arcona	0.01917665
4092	Dravite	https://www.coingecko.com/en/coins/dravite	0.00000004
4093	BBSCoin	https://www.coingecko.com/en/coins/bbscoin	0.00000046
4094	ASOBI COIN	https://www.coingecko.com/en/coins/asobi-coin	0.00087579
4095	Jinbi Token	https://www.coingecko.com/en/coins/jinbi-token	187.19
4096	Repo Coin	https://www.coingecko.com/en/coins/repo	0.08379626
4097	Newton Project	https://www.coingecko.com/en/coins/newton-project	0.00044842
4098	Eximchain	https://www.coingecko.com/en/coins/eximchain	0.00650353
4099	NPCcoin	https://www.coingecko.com/en/coins/npccoin	0.00802719
4100	GreenPower	https://www.coingecko.com/en/coins/greenpower	0.00356056
4101	IOTW	https://www.coingecko.com/en/coins/iotw	0.00097184
4102	W Green Pay	https://www.coingecko.com/en/coins/w-green-pay	0.00743363
4103	ECOMI	https://www.coingecko.com/en/coins/ecomi	0.00004663
4104	Fantasy Gold	https://www.coingecko.com/en/coins/fantasy-gold	0.00246753
4105	Bitcoiin	https://www.coingecko.com/en/coins/bitcoiin	0.00032135
4106	Akroma	https://www.coingecko.com/en/coins/akroma	0.00042875
4107	Elya	https://www.coingecko.com/en/coins/elya	0.00025119
4108	AGROLOT	https://www.coingecko.com/en/coins/agrolot	0.00010765
4109	RiseCoin Token	https://www.coingecko.com/en/coins/risecointoken	0.00012045
4110	Drep	https://www.coingecko.com/en/coins/drep	0.00374286
4111	HoryouToken	https://www.coingecko.com/en/coins/horyoutoken	0.00104401
4112	GAMB	https://www.coingecko.com/en/coins/gamb	0.00011914
4113	Azbit	https://www.coingecko.com/en/coins/azbit	0.00000750
4114	Over Powered Coin	https://www.coingecko.com/en/coins/over-powered-coin	0.00010458
4115	APIS	https://www.coingecko.com/en/coins/apis	0.00033590
4116	Engine	https://www.coingecko.com/en/coins/engine	0.00007435
4117	Northern	https://www.coingecko.com/en/coins/northern	0.01008516
4118	Propx	https://www.coingecko.com/en/coins/propx	0.01727390
4119	Monarch Token	https://www.coingecko.com/en/coins/monarch-token	0.00119943
4120	PlayChip	https://www.coingecko.com/en/coins/playchip	0.00051923
4121	ioeX	https://www.coingecko.com/en/coins/ioex	0.02077415
4122	Zero Carbon Project	https://www.coingecko.com/en/coins/zero-carbon-project	0.192290
4123	TronClassic	https://www.coingecko.com/en/coins/tronclassic	0.00000354
4124	Orbs	https://www.coingecko.com/en/coins/orbs	0.01238027
4125	Rabbit	https://www.coingecko.com/en/coins/rabbit	0.00086079
4126	Lines	https://www.coingecko.com/en/coins/lines	0.00010303
4127	Nilu	https://www.coingecko.com/en/coins/nilu	0.00322179
4128	Thorecoin	https://www.coingecko.com/en/coins/thorecoin	2096.31
4129	Vault Guardian Token	https://www.coingecko.com/en/coins/vault-guardian-token	0.00570830
4130	Coupit	https://www.coingecko.com/en/coins/coupit	0.00019880
4131	CoinAnalyst	https://www.coingecko.com/en/coins/coinanalyst	0.00621060
4132	SID Token	https://www.coingecko.com/en/coins/sid-token	0.00011672
4133	Perlin	https://www.coingecko.com/en/coins/perlin	0.02328149
4134	Plus Coin	https://www.coingecko.com/en/coins/plus-coin	0.00003969
4135	4ART Coin	https://www.coingecko.com/en/coins/4art-coin	0.02302451
4136	Buddy	https://www.coingecko.com/en/coins/buddy	0.00000362
4137	GenesisX	https://www.coingecko.com/en/coins/genesisx	0.00156442
4138	LightPayCoin	https://www.coingecko.com/en/coins/lightpaycoin	0.00150532
4139	BitCanna	https://www.coingecko.com/en/coins/bitcanna	0.04516406
4140	Creatanium	https://www.coingecko.com/en/coins/creatanium	0.01059227
4141	Epluscoin	https://www.coingecko.com/en/coins/epluscoin	0.00046139
4142	Thorecash (ERC-20)	https://www.coingecko.com/en/coins/thorecash	0.00030605
4303	GETModer	https://www.coingecko.com/en/coins/getmoder	0.243015
4143	Community Generation Core	https://www.coingecko.com/en/coins/community-generation-core	0.00000701
4144	Beauty Chain	https://www.coingecko.com/en/coins/beauty-chain	0.00895282
4145	Bitcoin File	https://www.coingecko.com/en/coins/bitcoin-file	0.00067963
4146	Bittwatt	https://www.coingecko.com/en/coins/bittwatt	0.00085990
4147	LIPCHAIN	https://www.coingecko.com/en/coins/lipchain	0.00012702
4148	InziderX	https://www.coingecko.com/en/coins/inziderx	0.00107370
4149	DigiFinexToken	https://www.coingecko.com/en/coins/digifinextoken	0.169250
4150	MoneroV	https://www.coingecko.com/en/coins/monerov	0.00300034
4151	Seer	https://www.coingecko.com/en/coins/seer	0.00021791
4152	Project Pai	https://www.coingecko.com/en/coins/project-pai	0.00991972
4153	Save Environment Token	https://www.coingecko.com/en/coins/save-environment-token	0.01631966
4154	Dacsee	https://www.coingecko.com/en/coins/dacsee	0.00053405
4155	Foin	https://www.coingecko.com/en/coins/foin	0.601148
4156	Master Contract Token	https://www.coingecko.com/en/coins/master-contract-token	0.00069628
4157	EOS Network	https://www.coingecko.com/en/coins/eon	0.00060834
4158	Proud Money	https://www.coingecko.com/en/coins/proud-money	0.00117825
4159	BAW Network	https://www.coingecko.com/en/coins/baw-network	0.00000107
4160	Insureum	https://www.coingecko.com/en/coins/insureum	0.00406288
4161	Digital Ticks	https://www.coingecko.com/en/coins/digital-ticks	0.126391
4162	Daikicoin	https://www.coingecko.com/en/coins/daikicoin	0.03654773
4163	Atlas Protocol	https://www.coingecko.com/en/coins/atlas-protocol	0.00124124
4164	Data Saver Coin	https://www.coingecko.com/en/coins/data-saver-coin	0.00010689
4165	Safe	https://www.coingecko.com/en/coins/safe	0.248272
4166	Color Platform	https://www.coingecko.com/en/coins/color-platform	0.00807368
4167	CariNet	https://www.coingecko.com/en/coins/carinet	0.00048834
4168	One	https://www.coingecko.com/en/coins/one	0.00240070
4169	Karatgold Coin	https://www.coingecko.com/en/coins/karatgold-coin	0.00504849
4170	QuickX Protocol	https://www.coingecko.com/en/coins/quickx-protocol	0.02035112
4171	Tokenize Xchange	https://www.coingecko.com/en/coins/tokenize-xchange	1.51
4172	WM PROFESSIONAL	https://www.coingecko.com/en/coins/wm-professional	0.00107491
4173	Everipedia	https://www.coingecko.com/en/coins/everipedia	0.00202524
4174	Mediex	https://www.coingecko.com/en/coins/mediex	0.00019931
4175	Atlas Network	https://www.coingecko.com/en/coins/atlas-network	0.00066286
4176	Enumivo	https://www.coingecko.com/en/coins/enumivo	0.00075375
4177	MyFiChain	https://www.coingecko.com/en/coins/myfichain	0.00000318
4178	Afro	https://www.coingecko.com/en/coins/afro	0.00002465
4179	FortKnoxster	https://www.coingecko.com/en/coins/fortknoxster	0.00220557
4180	Rootstock RSK	https://www.coingecko.com/en/coins/rsk	11352.81
4181	Help The Homeless Coin	https://www.coingecko.com/en/coins/help-the-homeless-coin	0.00001138
4182	Action Coin	https://www.coingecko.com/en/coins/action-coin	0.00013917
4183	VIDY	https://www.coingecko.com/en/coins/vidy	0.00122684
4184	Acreage Coin	https://www.coingecko.com/en/coins/acreage-coin	0.00064341
4185	Beldex	https://www.coingecko.com/en/coins/beldex	0.08282205
4186	Pledgecamp	https://www.coingecko.com/en/coins/pledgecamp	0.00012600
4187	Staker Token	https://www.coingecko.com/en/coins/staker	0.00183059
4188	Hara Token	https://www.coingecko.com/en/coins/hara-token	0.00120231
4189	SaveToken	https://www.coingecko.com/en/coins/savetoken	0.00470104
4190	Tavittcoin	https://www.coingecko.com/en/coins/tavittcoin	0.126606
4191	ADAB Solutions	https://www.coingecko.com/en/coins/adab-solutions	0.00003874
4192	Woonkly	https://www.coingecko.com/en/coins/woonkly	0.00594052
4193	Fox Trading Token	https://www.coingecko.com/en/coins/fox-trading-token	0.00822759
4194	WOKEcash	https://www.coingecko.com/en/coins/wokecash	0.104621
4195	Foresting	https://www.coingecko.com/en/coins/foresting	0.00001392
4196	Hut34 Entropy	https://www.coingecko.com/en/coins/hut34-entropy	0.107955
4197	Buzcoin	https://www.coingecko.com/en/coins/buzcoin	0.00876894
4198	No BS Crypto	https://www.coingecko.com/en/coins/no-bs-crypto	0.00002641
4199	PlayX	https://www.coingecko.com/en/coins/playx	0.00002411
4200	ZINC	https://www.coingecko.com/en/coins/zinc	0.03360949
4201	GemVault Coin	https://www.coingecko.com/en/coins/gemvault-coin	0.00096987
4202	Metadium	https://www.coingecko.com/en/coins/metadium	0.00799652
4203	CNY Tether	https://www.coingecko.com/en/coins/cny-tether	0.149351
4204	Cosmo Coin	https://www.coingecko.com/en/coins/cosmo-coin	0.00053671
4205	SPOKKZ	https://www.coingecko.com/en/coins/spokkz	0.01432198
4206	LVX	https://www.coingecko.com/en/coins/lvx	0.122971
4207	ValueCyberToken	https://www.coingecko.com/en/coins/valuecybertoken	0.00061327
4208	INFLIV	https://www.coingecko.com/en/coins/infliv	0.00492383
4209	Globalvillage Ecosystem	https://www.coingecko.com/en/coins/globalvillage-ecosystem	0.00012457
4210	ZPER	https://www.coingecko.com/en/coins/zper	0.00030044
4211	Block-chain.com	https://www.coingecko.com/en/coins/block-chain-com	0.02930549
4212	GNY	https://www.coingecko.com/en/coins/gny	0.00358827
4213	Soldo	https://www.coingecko.com/en/coins/soldo	0.02963052
4214	Endorsit	https://www.coingecko.com/en/coins/endorsit	0.00000400
4215	ExChain Token	https://www.coingecko.com/en/coins/exchain-token	0.00000174
4216	SiaCashCoin	https://www.coingecko.com/en/coins/siacashcoin	0.00000362
4217	Kuai Token	https://www.coingecko.com/en/coins/kuaitoken	0.154999
4218	Volt	https://www.coingecko.com/en/coins/volt	0.00004677
4219	Methuselah	https://www.coingecko.com/en/coins/methuselah	0.00011499
4220	Semux	https://www.coingecko.com/en/coins/semux	0.02727819
4221	Bitforex Token	https://www.coingecko.com/en/coins/bitforex	0.00205219
4222	WeShow Token	https://www.coingecko.com/en/coins/weshow-token	0.01238084
4223	Hyundai DAC	https://www.coingecko.com/en/coins/hyundai-dac	0.01763649
4224	New Power Coin	https://www.coingecko.com/en/coins/new-power-coin	0.01183000
4225	Lynx	https://www.coingecko.com/en/coins/lynx	0.00002405
4226	Citadel	https://www.coingecko.com/en/coins/citadel	0.00149502
4227	The Movement	https://www.coingecko.com/en/coins/the-movement	0.02853406
4228	Linfinity	https://www.coingecko.com/en/coins/linfinity	0.00003254
4229	AML Bitcoin	https://www.coingecko.com/en/coins/aml-bitcoin	0.09820300
4230	HYDROCARBON 8	https://www.coingecko.com/en/coins/hydrocarbon-8	5.07
4231	XOVBank	https://www.coingecko.com/en/coins/xov	0.00003482
4232	Commercium	https://www.coingecko.com/en/coins/commercium	0.00107362
4233	LINA	https://www.coingecko.com/en/coins/lina	0.01323399
4234	Insight Chain	https://www.coingecko.com/en/coins/insight-chain	1.05
4235	InterCrone	https://www.coingecko.com/en/coins/intercrone	0.00031370
4236	NewsToken	https://www.coingecko.com/en/coins/newstoken	0.00056754
4237	Latino Token	https://www.coingecko.com/en/coins/latino-token	0.00042970
4238	Cybex	https://www.coingecko.com/en/coins/cybex	0.01229871
4239	SuperEdge	https://www.coingecko.com/en/coins/superedge	0.00001630
4240	Elicoin	https://www.coingecko.com/en/coins/elicoin	0.00053604
4241	Uncloak	https://www.coingecko.com/en/coins/uncloak	0.00123691
4242	Nasdacoin	https://www.coingecko.com/en/coins/nasdacoin	0.03081569
4243	FingerPrint	https://www.coingecko.com/en/coins/fingerprint	0.03158175
4244	Nyerium	https://www.coingecko.com/en/coins/nyerium	0.00021476
4245	MEET.ONE	https://www.coingecko.com/en/coins/meetone	0.00030348
4246	Blockpass	https://www.coingecko.com/en/coins/blockpass	0.00123196
4247	BeatzCoin	https://www.coingecko.com/en/coins/beatzcoin	0.00028442
4248	CyberFM	https://www.coingecko.com/en/coins/cyberfm	0.00000088
4249	Obitan Chain	https://www.coingecko.com/en/coins/obitan-chain	0.00000350
4250	Davinci Coin	https://www.coingecko.com/en/coins/davinci-coin	0.00422285
4251	All.me	https://www.coingecko.com/en/coins/all-me	0.01084141
4252	Smart Application Coin	https://www.coingecko.com/en/coins/smart-application-chain	0.00524292
4253	Schilling-Coin	https://www.coingecko.com/en/coins/schilling-coin	0.00139400
4254	Venox	https://www.coingecko.com/en/coins/venox	0.00123601
4255	QYNO	https://www.coingecko.com/en/coins/qyno	0.00032329
4256	B2Bcoin	https://www.coingecko.com/en/coins/b2bcoin	0.00071362
4257	Gold Poker	https://www.coingecko.com/en/coins/gold-poker	0.00182373
4258	PerksCoin	https://www.coingecko.com/en/coins/perkscoin	0.00032146
4259	nDEX	https://www.coingecko.com/en/coins/ndex	0.00000090
4260	LevelApp	https://www.coingecko.com/en/coins/levelapp	0.00000471
4261	INDINODE	https://www.coingecko.com/en/coins/indinode	0.00001072
4262	Sovereign Coin	https://www.coingecko.com/en/coins/sovereign-coin	0.00043107
4263	Manna	https://www.coingecko.com/en/coins/manna	0.00164781
4264	VeriDocGlobal	https://www.coingecko.com/en/coins/veridocglobal	0.00017589
4265	Quotient	https://www.coingecko.com/en/coins/quotient	0.00009368
4266	OC Protocol	https://www.coingecko.com/en/coins/oc-protocol	0.00451931
4267	Ad Flex Token	https://www.coingecko.com/en/coins/ad-flex-token	0.462225
4268	LunarX	https://www.coingecko.com/en/coins/lunarx	0.00049968
4269	Lives Token	https://www.coingecko.com/en/coins/lives-token	0.00008089
4270	Vankia Chain	https://www.coingecko.com/en/coins/vankia-chain	0.00212389
4271	EveryCoin	https://www.coingecko.com/en/coins/everycoin	0.00092352
4272	GameXCoin	https://www.coingecko.com/en/coins/gamexcoin	0.00246125
4273	Moneynet	https://www.coingecko.com/en/coins/moneynet	0.00011821
4274	Xriba	https://www.coingecko.com/en/coins/xriba	0.00920542
4275	Charity	https://www.coingecko.com/en/coins/charity	0.00965553
4276	Elamachain	https://www.coingecko.com/en/coins/elamachain	0.02005064
4277	TWIST	https://www.coingecko.com/en/coins/twist	0.02146242
4278	Lunes	https://www.coingecko.com/en/coins/lunes	0.00649632
4279	TurtleNetwork	https://www.coingecko.com/en/coins/turtlenetwork	0.00998049
4280	Davies	https://www.coingecko.com/en/coins/davies	0.229837
4281	Accel	https://www.coingecko.com/en/coins/accel	0.00057194
4282	Elrond ERD	https://www.coingecko.com/en/coins/elrond-erd	0.02592859
4283	Bitcoin Final	https://www.coingecko.com/en/coins/bitcoin-final	0.00014988
4284	Bitcoin Adult	https://www.coingecko.com/en/coins/bitcoin-adult	0.00085823
4285	KingXChain	https://www.coingecko.com/en/coins/kingxchain	0.00000204
4286	TRBO	https://www.coingecko.com/en/coins/trbo	0.00003991
4287	Earneo	https://www.coingecko.com/en/coins/earneo	0.01119799
4288	Race	https://www.coingecko.com/en/coins/race	0.00091639
4289	Ontology Gas	https://www.coingecko.com/en/coins/ontology-gas	0.118938
4290	Mirai	https://www.coingecko.com/en/coins/mirai	0.00182529
4291	HKD Tether	https://www.coingecko.com/en/coins/hkd-tether	0.00685334
4292	LuckyBit	https://www.coingecko.com/en/coins/luckybit	0.00010907
4293	Worx	https://www.coingecko.com/en/coins/worx	0.00031554
4294	Henga	https://www.coingecko.com/en/coins/henga	0.00001128
4295	Bizkey	https://www.coingecko.com/en/coins/bizkey	0.00002083
4296	Vantaur	https://www.coingecko.com/en/coins/vantaur	0.00001062
4297	TUNE	https://www.coingecko.com/en/coins/tune	0.00000084
4298	Qubitica	https://www.coingecko.com/en/coins/qubitica	2.01
4299	BitNewChain	https://www.coingecko.com/en/coins/bitnewchain	0.00693543
4300	UDAP	https://www.coingecko.com/en/coins/udap	0.00080244
4301	Blockchain Quotations Index Token	https://www.coingecko.com/en/coins/blockchain-quotations-index-token	0.00286360
4302	Ragnarok	https://www.coingecko.com/en/coins/ragnarok	0.00042892
4304	EarnzCoin	https://www.coingecko.com/en/coins/earnzcoin	0.00018262
4305	Cryptoflow	https://www.coingecko.com/en/coins/cryptoflow	0.00010549
4306	SanDeGo	https://www.coingecko.com/en/coins/sandego	0.00000054
4307	Forte Coin	https://www.coingecko.com/en/coins/forte-coin	0.00010620
4308	BitcoinXGames	https://www.coingecko.com/en/coins/bitcoinxgames	0.00000011
4309	MouseMN	https://www.coingecko.com/en/coins/mousemn	0.00064655
4310	ARTAX	https://www.coingecko.com/en/coins/artax	0.00033503
4311	Binarium	https://www.coingecko.com/en/coins/binarium	0.00021514
4312	Nerves	https://www.coingecko.com/en/coins/nerves	0.00000790
4313	PHOBOS	https://www.coingecko.com/en/coins/phobos	0.00006696
4314	TIMEcoin	https://www.coingecko.com/en/coins/timecoin	0.00030419
4315	Diplexcoin	https://www.coingecko.com/en/coins/diplexcoin	0.00971968
4316	Magnachain	https://www.coingecko.com/en/coins/magnachain	0.00006681
4317	RealTract	https://www.coingecko.com/en/coins/realtract	0.00004573
4318	weBloc	https://www.coingecko.com/en/coins/webloc	0.00013139
4319	SWTCoin	https://www.coingecko.com/en/coins/swtcoin	0.00003034
4320	VestxCoin	https://www.coingecko.com/en/coins/vestxcoin	0.00000046
4321	BUMO	https://www.coingecko.com/en/coins/bumo	0.00342506
4322	Quasarcoin	https://www.coingecko.com/en/coins/quasarcoin	0.00128788
4323	Shrooms	https://www.coingecko.com/en/coins/shrooms	0.106968
4324	ZeusNetwork	https://www.coingecko.com/en/coins/zeusnetwork	0.00000032
4325	Nexxo	https://www.coingecko.com/en/coins/nexxo	0.02307755
4326	FinanceX token	https://www.coingecko.com/en/coins/financex-token	0.00181354
4327	Boon Tech	https://www.coingecko.com/en/coins/boon-tech	0.00001370
4328	Era Swap Token	https://www.coingecko.com/en/coins/era-swap-token	0.05600008
4329	ParkinGo	https://www.coingecko.com/en/coins/parkingo	0.06003198
4330	ShineChain	https://www.coingecko.com/en/coins/shinechain	0.00049389
4331	eosBLACK	https://www.coingecko.com/en/coins/eosblack	0.00083206
4332	BitUP Token	https://www.coingecko.com/en/coins/bitup-token	0.00107438
4333	YouLive Coin	https://www.coingecko.com/en/coins/youlive-coin	0.00013943
4334	vSportCoin	https://www.coingecko.com/en/coins/vsportcoin	0.00095624
4335	Ti-Value	https://www.coingecko.com/en/coins/ti-value	0.00590400
4336	smARTOFGIVING	https://www.coingecko.com/en/coins/smartofgiving	0.107105
4337	Swiftlance Token	https://www.coingecko.com/en/coins/swiftlance-token	0.00000137
4338	Coindom	https://www.coingecko.com/en/coins/coindom	0.00028459
4339	MEX	https://www.coingecko.com/en/coins/mex	0.00020833
4340	IDHUB	https://www.coingecko.com/en/coins/idhub	0.00070647
4341	Aidos Kuneen	https://www.coingecko.com/en/coins/aidos-kuneen	0.445456
4342	CelCoin	https://www.coingecko.com/en/coins/celcoin	0.00008366
4343	FUNDChains	https://www.coingecko.com/en/coins/fundchains	0.00010385
4344	Auscoin	https://www.coingecko.com/en/coins/auscoin	0.00496152
4345	GastroAdvisor	https://www.coingecko.com/en/coins/gastroadvisor	0.00282631
4346	Lunarium	https://www.coingecko.com/en/coins/lunarium	0.00032245
4347	Japan Brand Coin	https://www.coingecko.com/en/coins/japan-brand-coin	0.00007537
4348	Cryptoindex.com 100	https://www.coingecko.com/en/coins/cryptoindex-com-100	0.502780
4349	Luxurium	https://www.coingecko.com/en/coins/luxurium	0.00000353
4350	NulleX	https://www.coingecko.com/en/coins/nullex	0.00016033
4351	WayaWolfCoin	https://www.coingecko.com/en/coins/wayawolfcoin	0.00004583
4352	SlothCoin	https://www.coingecko.com/en/coins/slothcoin	0.00000054
4353	Trinity	https://www.coingecko.com/en/coins/trinity	0.00000106
4354	Leafcoin	https://www.coingecko.com/en/coins/leafcoin	0.00000378
4355	GrowthCoin	https://www.coingecko.com/en/coins/growthcoin	0.00006297
4356	Five Balance Coin	https://www.coingecko.com/en/coins/five-balance	0.00003071
4357	SpartanCoin	https://www.coingecko.com/en/coins/spartancoin	0.00000010
4358	Encryptotel [ETH]	https://www.coingecko.com/en/coins/encryptotel-eth	0.00257039
4359	MarxCoin	https://www.coingecko.com/en/coins/marxcoin	0.00027114
4360	InCoin	https://www.coingecko.com/en/coins/incoin	0.00003203
4361	SJWCoin	https://www.coingecko.com/en/coins/sjwcoin	0.00000689
4362	WooshCoin	https://www.coingecko.com/en/coins/wooshcoin	0.00000348
4363	Bitcoin Pay	https://www.coingecko.com/en/coins/bitcoin-pay	0.01460547
4364	Ethereum Fog	https://www.coingecko.com/en/coins/ethereum-fog	0.101481
4365	ABO	https://www.coingecko.com/en/coins/abo	0.01982478
4366	LBT Chain	https://www.coingecko.com/en/coins/lbt-chain	1.16
4367	GrEarn	https://www.coingecko.com/en/coins/grearn	0.00097900
4368	Decenturion	https://www.coingecko.com/en/coins/decenturion	0.00048065
4369	MeshBox	https://www.coingecko.com/en/coins/meshbox	0.00128698
4370	Populous XBRL Token	https://www.coingecko.com/en/coins/populous-xbrl-token	0.01315248
4371	Atheios	https://www.coingecko.com/en/coins/atheios	0.00021497
4372	TEMCO	https://www.coingecko.com/en/coins/temco	0.00101100
4373	Goat Cash	https://www.coingecko.com/en/coins/goat-cash	0.00053406
4374	Strayacoin	https://www.coingecko.com/en/coins/strayacoin	0.00064308
4375	Airdrop United	https://www.coingecko.com/en/coins/airdrop-united	0.00010280
4376	ILCOIN	https://www.coingecko.com/en/coins/ilcoin	0.01206862
4377	Bitcoin Hot	https://www.coingecko.com/en/coins/bitcoin-hot	0.00054588
4378	Caspian	https://www.coingecko.com/en/coins/caspian	0.00477194
4379	BitEthereum	https://www.coingecko.com/en/coins/bitethereum	0.06197784
4380	Yibitcoin	https://www.coingecko.com/en/coins/yibitcoin	0.00004596
4381	Tenup	https://www.coingecko.com/en/coins/tenup	0.00179483
4382	The Midas Touch Gold	https://www.coingecko.com/en/coins/the-midas-touch-gold	0.02074459
4383	OpenGram	https://www.coingecko.com/en/coins/opengram	0.00001699
4384	DDMCoin	https://www.coingecko.com/en/coins/ddmcoin	0.00741828
4385	Culture Ticket Chain	https://www.coingecko.com/en/coins/culture-ticket-chain	0.00138415
4386	Xtock	https://www.coingecko.com/en/coins/xtock	0.00013769
4387	Helpico	https://www.coingecko.com/en/coins/helpico	0.121016
4388	AnimalityCoin	https://www.coingecko.com/en/coins/animalitycoin	0.00010778
4389	GoldenPyrex	https://www.coingecko.com/en/coins/goldenpyrex	0.00943800
4390	cctcoin	https://www.coingecko.com/en/coins/cctcoin	0.00010498
4391	MicroBitcoin	https://www.coingecko.com/en/coins/microbitcoin	0.00002990
4392	RoBet Coin	https://www.coingecko.com/en/coins/robet-coin	0.05686058
4393	Electronero Pulse	https://www.coingecko.com/en/coins/electronero-pulse	0.00021104
4394	Benz	https://www.coingecko.com/en/coins/benz	0.00009243
4395	Sunchain	https://www.coingecko.com/en/coins/sunchain	0.00000852
4396	Dreamscape	https://www.coingecko.com/en/coins/dreamscape	4.82
4397	WXCOINS	https://www.coingecko.com/en/coins/wxcoins	0.00001073
4398	XsCoin	https://www.coingecko.com/en/coins/xscoin	0.394138
4399	Thorncoin	https://www.coingecko.com/en/coins/thorncoin	0.00987082
4400	ABLE Dollar X Token	https://www.coingecko.com/en/coins/able-dollar-x-token	0.00017686
4401	EchoSoraCoin	https://www.coingecko.com/en/coins/echosoracoin	0.194296
4402	Wixlar	https://www.coingecko.com/en/coins/wixlar	0.00258214
4403	EagleX	https://www.coingecko.com/en/coins/eaglex	0.00053858
4404	CryTrEx Token	https://www.coingecko.com/en/coins/crytrex-token	0.00000153
4405	MoX	https://www.coingecko.com/en/coins/mox	0.00021479
4406	BLAST	https://www.coingecko.com/en/coins/blast	0.00203738
4407	REDi	https://www.coingecko.com/en/coins/redi	0.00035364
4408	4A Coin	https://www.coingecko.com/en/coins/4a-coin	0.00010713
4409	Vites	https://www.coingecko.com/en/coins/vites	0.00001054
4410	Always Evolving	https://www.coingecko.com/en/coins/always-evolving	0.00001085
4411	EVOS	https://www.coingecko.com/en/coins/evos	0.00032234
4412	Lumeneo	https://www.coingecko.com/en/coins/lumeneo	0.00000046
4413	Hawaii Coin	https://www.coingecko.com/en/coins/hawaii-coin	0.09400063
4414	PGPay	https://www.coingecko.com/en/coins/pgpay	0.01779787
4415	Menapay	https://www.coingecko.com/en/coins/menapay	0.00932505
4416	MicroCoin	https://www.coingecko.com/en/coins/microcoin	0.00870113
4417	AirWire	https://www.coingecko.com/en/coins/airwire	0.00214385
4418	MINDOL	https://www.coingecko.com/en/coins/mindol	0.853296
4419	Civil	https://www.coingecko.com/en/coins/civil	0.00655194
4420	Koto	https://www.coingecko.com/en/coins/koto	0.00032213
4421	ClassicBitcoin	https://www.coingecko.com/en/coins/classicbitcoin	0.00117598
4422	QMCoin	https://www.coingecko.com/en/coins/qmcoin	0.00289666
4423	OCTCOIN	https://www.coingecko.com/en/coins/octcoin	0.00011835
4424	Waletoken	https://www.coingecko.com/en/coins/waletoken	0.00000109
4425	IZIChain	https://www.coingecko.com/en/coins/izichain	0.01576251
4426	Muzika Network	https://www.coingecko.com/en/coins/muzika-network	0.00159622
4427	Racing Pigeon Chain	https://www.coingecko.com/en/coins/racing-pigeon-chain	0.00588510
4428	WITChain	https://www.coingecko.com/en/coins/witchain	0.00000691
4429	Spectrum Cash	https://www.coingecko.com/en/coins/spectrum-cash	0.00000648
4430	CMITCOIN	https://www.coingecko.com/en/coins/cmitcoin	0.00000215
4431	Sylo	https://www.coingecko.com/en/coins/sylo	0.00229241
4432	Ecoreal Estate	https://www.coingecko.com/en/coins/ecoreal-estate	0.07152863
4433	Vestoria	https://www.coingecko.com/en/coins/vestoria	0.00000431
4434	CARAT	https://www.coingecko.com/en/coins/carat	0.748742
4435	CLBcoin	https://www.coingecko.com/en/coins/clbcoin	0.00279452
4436	APOT	https://www.coingecko.com/en/coins/apot	0.01761029
4437	LINK	https://www.coingecko.com/en/coins/link	10.21
4438	Zenswap Network Token	https://www.coingecko.com/en/coins/zenswap-network-token	0.00000246
4439	MAX Token	https://www.coingecko.com/en/coins/max-token	0.123183
4440	Ninsa B Token	https://www.coingecko.com/en/coins/ninsa-b-token	0.00011801
4441	BioCrypt	https://www.coingecko.com/en/coins/biocrypt	0.00058124
4442	Byron	https://www.coingecko.com/en/coins/byron	0.00463328
4443	Helper Search Token	https://www.coingecko.com/en/coins/helper-search-token	0.00000145
4444	Qredit	https://www.coingecko.com/en/coins/qredit	0.00032381
4445	DudgX	https://www.coingecko.com/en/coins/dudgx	0.00010592
4446	AERUM	https://www.coingecko.com/en/coins/aerum	0.00020354
4447	Eristica token	https://www.coingecko.com/en/coins/eristica	0.00042919
4448	WIZBL	https://www.coingecko.com/en/coins/wizbl	0.00180992
4449	Knekted	https://www.coingecko.com/en/coins/knekted	0.00004127
4450	Ifoods Chain	https://www.coingecko.com/en/coins/ifoods-chain	0.00002200
4451	Simmitri	https://www.coingecko.com/en/coins/simmitri	0.00004183
4452	Buggyra Coin Zero	https://www.coingecko.com/en/coins/buggyra-coin-zero	0.00149255
4453	Cyber Movie Chain	https://www.coingecko.com/en/coins/cyber-movie-chain	0.00000068
4454	Recovery Right Token	https://www.coingecko.com/en/coins/recovery-right-token	0.03100000
4455	Zaif Token	https://www.coingecko.com/en/coins/zaif-token	0.00141953
4456	Polcoin	https://www.coingecko.com/en/coins/polcoin	0.00003867
4457	Fisco	https://www.coingecko.com/en/coins/fisco	0.487510
4458	CAICA Coin	https://www.coingecko.com/en/coins/caica-coin	0.06301200
4459	CrowdSale Network	https://www.coingecko.com/en/coins/crowdsale-network	0.105129
4460	Playgroundz	https://www.coingecko.com/en/coins/playgroundz	1.11
4461	EUNOMIA	https://www.coingecko.com/en/coins/eunomia	0.00000241
4462	Thanatos	https://www.coingecko.com/en/coins/thanatos	0.00000434
4463	SIMDAQ	https://www.coingecko.com/en/coins/simdaq	0.00610629
4464	Cryptic Coin	https://www.coingecko.com/en/coins/cryptic-coin	0.00010901
4465	NOVA	https://www.coingecko.com/en/coins/nova	0.00000410
4466	EcoBall	https://www.coingecko.com/en/coins/ecoball	0.00289841
4467	EUB Chain	https://www.coingecko.com/en/coins/eub-chain	0.00522990
4468	Expo Token	https://www.coingecko.com/en/coins/expo-token	0.00000428
4469	IAB	https://www.coingecko.com/en/coins/iab	0.02943214
4470	Volentix	https://www.coingecko.com/en/coins/volentix	0.03025241
4471	CryptoWorld.VIP	https://www.coingecko.com/en/coins/cryptoworld-vip	0.00217989
4472	SEADEX	https://www.coingecko.com/en/coins/seadex	0.00094627
4473	GoldKash	https://www.coingecko.com/en/coins/goldkash	0.00010730
4474	MyMN	https://www.coingecko.com/en/coins/mymn	0.00292143
4475	Sprouts Classic	https://www.coingecko.com/en/coins/sprouts-classic	0.00000000
4476	Matrexcoin	https://www.coingecko.com/en/coins/matrexcoin	0.00614692
4477	Miracle Token	https://www.coingecko.com/en/coins/miracle-token	0.00000714
4478	Lyfe	https://www.coingecko.com/en/coins/lyfe	0.01321293
4479	Connect Coin	https://www.coingecko.com/en/coins/connect-coin	0.00087973
4480	Dragon Token	https://www.coingecko.com/en/coins/dragon-token	1.17
4481	Gravity	https://www.coingecko.com/en/coins/gravity	0.00017837
4482	MODEL-X-coin	https://www.coingecko.com/en/coins/model-x-coin	0.00477500
4483	Lotoblock	https://www.coingecko.com/en/coins/lotoblock	0.00005156
4484	WEBN token	https://www.coingecko.com/en/coins/webn-token	0.00000264
4485	Musk	https://www.coingecko.com/en/coins/musk	0.00053965
4486	GoldFund	https://www.coingecko.com/en/coins/goldfund	0.00088477
4487	Pokerain	https://www.coingecko.com/en/coins/pokerain	0.00020186
4488	RCCC	https://www.coingecko.com/en/coins/rccc	0.00595992
4489	Huobi Pool Token	https://www.coingecko.com/en/coins/huobi-pool-token	0.00451211
4490	BetDice	https://www.coingecko.com/en/coins/betdice	0.00028593
4491	Parsl	https://www.coingecko.com/en/coins/parsl	0.00019603
4492	BigGame	https://www.coingecko.com/en/coins/biggame	0.01014343
4493	Boid	https://www.coingecko.com/en/coins/boid	0.00009350
4494	BGT	https://www.coingecko.com/en/coins/bgt	0.01725885
4495	TowerBee	https://www.coingecko.com/en/coins/towerbee	0.00264161
4496	I Net Token	https://www.coingecko.com/en/coins/i-net-token	0.00011834
4497	Baer Chain	https://www.coingecko.com/en/coins/baer-chain	0.191203
4498	CoinClaim	https://www.coingecko.com/en/coins/coinclaim	0.00011650
4499	Currency Network	https://www.coingecko.com/en/coins/currency-network	0.00282091
4500	Dalichain	https://www.coingecko.com/en/coins/dalichain	0.03000469
4501	WDNA	https://www.coingecko.com/en/coins/wdna	0.00001985
4502	Gimmer	https://www.coingecko.com/en/coins/gimmer	0.00760740
4503	EpaCoin	https://www.coingecko.com/en/coins/epacoin	0.00053785
4504	Braziliex Token	https://www.coingecko.com/en/coins/braziliex-token	0.111212
4505	VestChain	https://www.coingecko.com/en/coins/vestchain	0.00622888
4506	FuturesCoin	https://www.coingecko.com/en/coins/futurescoin	0.00037926
4507	Aunit	https://www.coingecko.com/en/coins/aunit	0.03880000
4508	ThreeFold Token	https://www.coingecko.com/en/coins/threefold-token	0.05178016
4509	TL Coin	https://www.coingecko.com/en/coins/tl-coin	0.04969416
4510	Bitcoin Candy	https://www.coingecko.com/en/coins/bitcoin-candy	0.00000400
4511	LHCoin	https://www.coingecko.com/en/coins/lhcoin	0.00290704
4512	Coineal Token	https://www.coingecko.com/en/coins/neal	0.00575666
4513	Capdax	https://www.coingecko.com/en/coins/capdax	0.00601556
4514	Breezecoin	https://www.coingecko.com/en/coins/breezecoin	0.355949
4515	Props Token	https://www.coingecko.com/en/coins/props-token	0.03827708
4516	SoPay	https://www.coingecko.com/en/coins/sopay	0.00004000
4517	NeoWorld Cash	https://www.coingecko.com/en/coins/neoworld-cash	0.00001899
4518	BenePit	https://www.coingecko.com/en/coins/benepit	0.00009404
4519	BitHostCoin	https://www.coingecko.com/en/coins/bithostcoin	0.00010728
4520	GoDigit	https://www.coingecko.com/en/coins/godigit	0.00028902
4521	Xt3ch	https://www.coingecko.com/en/coins/xt3ch	0.00064552
4522	FoundGame	https://www.coingecko.com/en/coins/foundgame	0.00074033
4523	Probit Token	https://www.coingecko.com/en/coins/probit-token	0.257501
4524	DCON	https://www.coingecko.com/en/coins/dcon	0.00042940
4525	Berith Token	https://www.coingecko.com/en/coins/berith-token	0.01137864
4526	Tratok	https://www.coingecko.com/en/coins/tratok	0.00703840
4527	LiteGold	https://www.coingecko.com/en/coins/litegold	0.00000352
4528	KIZUNACOIN	https://www.coingecko.com/en/coins/kizunacoin	0.00002150
4529	WeGen Platform	https://www.coingecko.com/en/coins/wegen-platform	0.00035358
4530	SONO	https://www.coingecko.com/en/coins/sono	0.00096499
4531	ZenSports	https://www.coingecko.com/en/coins/zensports	0.00038345
4532	UraniumX	https://www.coingecko.com/en/coins/uraniumx	0.04322447
4533	Sekopay	https://www.coingecko.com/en/coins/sekopay	0.00043013
4534	delightToken	https://www.coingecko.com/en/coins/delighttoken	0.00011837
4535	GalaxyCash	https://www.coingecko.com/en/coins/galaxycash	0.00000107
4536	Uselink chain	https://www.coingecko.com/en/coins/uselink-chain	0.236638
4537	BOTXCOIN	https://www.coingecko.com/en/coins/botxcoin	0.08789920
4538	WemergeToken	https://www.coingecko.com/en/coins/wemergetoken	0.00042953
4539	BitCoin Positive	https://www.coingecko.com/en/coins/bitcoin-positive	0.00010541
4540	Zest Token	https://www.coingecko.com/en/coins/zest-token	0.00650885
4541	Thorenext	https://www.coingecko.com/en/coins/thorenext	0.00051259
4542	T.OS	https://www.coingecko.com/en/coins/t-os	0.00707283
4543	FIDEX Exchange	https://www.coingecko.com/en/coins/fidex-exchange	0.00000059
4544	DEX	https://www.coingecko.com/en/coins/dex	0.00898231
4545	FOREXCOIN	https://www.coingecko.com/en/coins/forexcoin	0.00002291
4546	DIYChain	https://www.coingecko.com/en/coins/diychain	0.00062690
4547	SEDO POW TOKEN	https://www.coingecko.com/en/coins/sedo-pow-token	0.06766265
4548	Zatgo	https://www.coingecko.com/en/coins/zatgo	0.00051161
4549	Liquidity Bot Token	https://www.coingecko.com/en/coins/liquidity-bot-token	0.332424
4550	FormulA	https://www.coingecko.com/en/coins/formula	0.00176866
4551	Market Arbitrage Coin	https://www.coingecko.com/en/coins/market-arbitrage-coin	0.00042911
4552	Jllone	https://www.coingecko.com/en/coins/jllone	0.00001171
4553	VNT Chain	https://www.coingecko.com/en/coins/vnt-chain	0.00112275
4554	Smartup	https://www.coingecko.com/en/coins/smartup	0.00002601
4555	Bitcoin HD	https://www.coingecko.com/en/coins/bitcoin-hd	3.41
4556	Locus Chain	https://www.coingecko.com/en/coins/locus-chain	0.00115920
4557	TOURISTOKEN	https://www.coingecko.com/en/coins/touristoken	0.00898204
4558	Remittance Token	https://www.coingecko.com/en/coins/remittance-token	0.00009218
4559	Thore Exchange Token	https://www.coingecko.com/en/coins/thore-exchange-token	0.00214833
4560	Moving Cloud Chain	https://www.coingecko.com/en/coins/moving-cloud-chain	0.00005192
4561	Purple Butterfly Trading	https://www.coingecko.com/en/coins/purple-butterfly-trading	0.01611026
4562	Tradcoin	https://www.coingecko.com/en/coins/tradcoin	0.00101936
4563	Scolcoin	https://www.coingecko.com/en/coins/scolcoin	0.00346460
4564	UniGame	https://www.coingecko.com/en/coins/unigame	0.00032898
4565	Community Chain	https://www.coingecko.com/en/coins/community-chain	0.00056976
4566	EthereumAI	https://www.coingecko.com/en/coins/ethereumai	0.00408093
4567	Open Source Chain	https://www.coingecko.com/en/coins/open-source-chain	0.00000678
4568	Visa Application Chain	https://www.coingecko.com/en/coins/visa-application-chain	0.00021516
4569	DRC Token	https://www.coingecko.com/en/coins/drc-token	0.00034188
4570	Data Delivery Network	https://www.coingecko.com/en/coins/data-delivery-network	0.00347861
4571	Poker.io	https://www.coingecko.com/en/coins/poker-io	0.00322980
4572	DelChain	https://www.coingecko.com/en/coins/delchain	0.00085847
4573	New Media Technology	https://www.coingecko.com/en/coins/new-media-technology	0.00014231
4574	Hours Chain	https://www.coingecko.com/en/coins/hours-chain	0.00030000
4575	Blockchain Source Token	https://www.coingecko.com/en/coins/blockchain-source-token	0.00000214
4576	Jewel	https://www.coingecko.com/en/coins/jewel	0.228717
4577	Koumei	https://www.coingecko.com/en/coins/koumei	0.00020188
4578	Micromines	https://www.coingecko.com/en/coins/micromines	0.00000092
4579	Business Credit Alliance Chain	https://www.coingecko.com/en/coins/business-credit-alliance-chain	0.00011206
4580	Super Gold	https://www.coingecko.com/en/coins/super-gold	0.00495715
4581	Matocol Protocol	https://www.coingecko.com/en/coins/matocol-protocol	0.00000360
4582	Global AEX Token	https://www.coingecko.com/en/coins/global-aex-token	0.00401781
4583	Unicorn	https://www.coingecko.com/en/coins/unicorn	0.00590307
4584	GooCoin	https://www.coingecko.com/en/coins/goocoin	0.00034793
4585	Openbit	https://www.coingecko.com/en/coins/openbit	0.00193111
4586	EthereumX	https://www.coingecko.com/en/coins/ethereumx	0.00010719
4587	FRED Energy	https://www.coingecko.com/en/coins/fred-energy	0.00019421
4588	Xeonbit	https://www.coingecko.com/en/coins/xeonbit	0.00040998
4589	MyTVchain	https://www.coingecko.com/en/coins/mytvchain	0.00935809
4590	Ascension	https://www.coingecko.com/en/coins/ascension	0.00044357
4591	Fixed Trade Coin	https://www.coingecko.com/en/coins/fixed-trade-coin	0.03825433
4592	Miracle Tele	https://www.coingecko.com/en/coins/miracle-tele	0.00030181
4593	Mycro	https://www.coingecko.com/en/coins/mycro	0.07572408
4594	TICOEX Token (Formerly TopInvestmentCoin)	https://www.coingecko.com/en/coins/ticoex-token	0.00299459
4595	Oasis City	https://www.coingecko.com/en/coins/oasis-city	0.00246509
4596	Decentralized Crypto Token	https://www.coingecko.com/en/coins/decentralized-crypto-token	0.00000346
4597	NebliDex	https://www.coingecko.com/en/coins/neblidex	0.00064192
4598	TravelNote	https://www.coingecko.com/en/coins/travelnote	0.01373094
4599	INBOX TOKEN	https://www.coingecko.com/en/coins/inbox-token	0.00000352
4600	AgaveCoin	https://www.coingecko.com/en/coins/agavecoin	0.05577633
4601	Consumption Avatar Matrix	https://www.coingecko.com/en/coins/consumption-avatar-matrix	0.01023402
4602	Aladdin Galaxy	https://www.coingecko.com/en/coins/aladdin-galaxy	0.00000088
4603	Hospital Coin	https://www.coingecko.com/en/coins/hospital-coin	0.00225296
4604	Bankcoin Cash	https://www.coingecko.com/en/coins/bankcoin-cash	0.00001186
4605	SiamBitcoin	https://www.coingecko.com/en/coins/siambitcoin	0.322179
4606	HashBX	https://www.coingecko.com/en/coins/hashbx	0.00204558
4607	IntelliShare	https://www.coingecko.com/en/coins/intellishare	0.00200259
4608	Placeholders	https://www.coingecko.com/en/coins/placeholders	0.03581199
4609	HireVibes	https://www.coingecko.com/en/coins/hirevibes	0.00089141
4610	Football Coin	https://www.coingecko.com/en/coins/football-coin	0.00300753
4611	Fatcoin	https://www.coingecko.com/en/coins/fatcoin	0.01837816
4612	Liquid Regenerative Medicine Coin	https://www.coingecko.com/en/coins/liquid-regenerative-medicine-coin	0.00021457
4613	CryptoBossCoin	https://www.coingecko.com/en/coins/cryptobosscoin	0.102199
4614	InnovaMinex	https://www.coingecko.com/en/coins/innovaminex	0.277188
4615	GOLD	https://www.coingecko.com/en/coins/gold	0.00001075
4616	BLUECHIPS Token	https://www.coingecko.com/en/coins/bluechips-token	0.00000162
4617	Genesis Token	https://www.coingecko.com/en/coins/genesis-token	0.00000088
4618	Game City	https://www.coingecko.com/en/coins/game-city	0.00000170
4619	Zantepay	https://www.coingecko.com/en/coins/zantepay	0.00055065
4620	DataKYC	https://www.coingecko.com/en/coins/datakyc	0.00680451
4621	Plug	https://www.coingecko.com/en/coins/plug	0.00000021
4622	Genexi	https://www.coingecko.com/en/coins/genexi	0.00018681
4623	JoorsChain	https://www.coingecko.com/en/coins/joorschain	0.00003168
4624	FinChain	https://www.coingecko.com/en/coins/finchain	0.00027878
4625	EAutocoin	https://www.coingecko.com/en/coins/eautocoin	0.00005600
4626	MIAMI	https://www.coingecko.com/en/coins/miami	0.00000105
4627	BITIFEX	https://www.coingecko.com/en/coins/bitifex	0.00010680
4628	Gric Coin	https://www.coingecko.com/en/coins/gric-coin	0.01960839
4629	IDC Token	https://www.coingecko.com/en/coins/idc-token	0.00016359
4630	Clap Clap Token	https://www.coingecko.com/en/coins/clap-clap-token	0.00000353
4631	Tranium	https://www.coingecko.com/en/coins/tranium	0.00000012
4632	SpritzCoin	https://www.coingecko.com/en/coins/spritzcoin	0.00000215
4633	BillionBond	https://www.coingecko.com/en/coins/billionbond	20171
4634	MiniBitcoin	https://www.coingecko.com/en/coins/minibitcoin	0.00000035
4635	TerraGreen	https://www.coingecko.com/en/coins/terragreen	0.00132309
4636	Zettelkasten	https://www.coingecko.com/en/coins/zettelkasten	0.00232319
4637	HedgeTrade	https://www.coingecko.com/en/coins/hedgetrade	0.976913
4638	Ngin	https://www.coingecko.com/en/coins/ngin	0.00375493
4639	CENTERCOIN	https://www.coingecko.com/en/coins/centercoin	0.00107292
4640	Token Planets	https://www.coingecko.com/en/coins/token-planets	0.00007797
4641	Trybe	https://www.coingecko.com/en/coins/trybe	0.00003285
4642	EOS BTC	https://www.coingecko.com/en/coins/eos-btc	11494.58
4643	EOS ETH	https://www.coingecko.com/en/coins/eos-eth	0.00000695
4644	Treasure Financial Coin	https://www.coingecko.com/en/coins/treasure-financial-coin	0.00053800
4645	SonoCoin	https://www.coingecko.com/en/coins/sonocoin	0.01400849
4646	Smart Valor	https://www.coingecko.com/en/coins/smart-valor	0.348149
4647	Kaiser	https://www.coingecko.com/en/coins/kaiser	0.00031190
4648	PlayGame	https://www.coingecko.com/en/coins/playgame	0.00005102
4649	Bitcoin Bull	https://www.coingecko.com/en/coins/bitcoin-bull	0.00000352
4650	TRONGOLD	https://www.coingecko.com/en/coins/trongold	0.00000122
4651	XRP Classic	https://www.coingecko.com/en/coins/xrp-classic	0.00000002
4652	EthermonToken	https://www.coingecko.com/en/coins/ethermontoken	0.02938260
4653	Bitball Treasure	https://www.coingecko.com/en/coins/bitball-treasure	166.47
4654	VEY	https://www.coingecko.com/en/coins/vey	0.00032139
4655	TRONdice	https://www.coingecko.com/en/coins/trondice	0.00018417
4656	TronWeeklyJournal	https://www.coingecko.com/en/coins/tronweeklyjournal	0.00003853
4657	UZURAS	https://www.coingecko.com/en/coins/uzuras	0.00001936
4658	Kitty Coin	https://www.coingecko.com/en/coins/kitty-coin	0.00000009
4659	TENA	https://www.coingecko.com/en/coins/tena	0.02359368
4660	Tercet Network	https://www.coingecko.com/en/coins/tercet-network	0.00001386
4661	BaconCoin	https://www.coingecko.com/en/coins/baconcoin	0.412484
4662	BitcoinRegular	https://www.coingecko.com/en/coins/bitcoinregular	2.15
4663	Super Keep Token	https://www.coingecko.com/en/coins/super-keep-token	0.00000384
4664	Line quality chain	https://www.coingecko.com/en/coins/line-quality-chain	0.00860305
4665	Tchain	https://www.coingecko.com/en/coins/tchain	0.00487420
4666	Serenity	https://www.coingecko.com/en/coins/serenity	0.00126479
4667	Bitsten Token	https://www.coingecko.com/en/coins/bitsten-token	0.00573629
4668	SiaClassic	https://www.coingecko.com/en/coins/siaclassic	0.00002238
4669	CryptoProfile	https://www.coingecko.com/en/coins/cryptoprofile	0.00147024
4670	Bitcoin Stash	https://www.coingecko.com/en/coins/bitcoin-stash	1.08
4671	Cajutel	https://www.coingecko.com/en/coins/cajutel	1.51
4672	Real-estate Sales Platform	https://www.coingecko.com/en/coins/real-estate-sales-platform	0.00002107
4673	Kronn	https://www.coingecko.com/en/coins/kronn	0.00026497
4674	Invoice Coin	https://www.coingecko.com/en/coins/invoice-coin	0.00033138
4675	Levolution	https://www.coingecko.com/en/coins/levolution	0.183445
4676	Zulu Republic Token	https://www.coingecko.com/en/coins/zulu-republic-token	0.00041895
4677	Amoveo	https://www.coingecko.com/en/coins/amoveo	30.12
4678	ONO	https://www.coingecko.com/en/coins/ono	0.00004070
4679	AXiaL	https://www.coingecko.com/en/coins/axial	0.00793156
4680	CoinAll Token	https://www.coingecko.com/en/coins/coinall-token	0.00021323
4681	Hazza	https://www.coingecko.com/en/coins/hazza	0.01992846
4682	Parallel network	https://www.coingecko.com/en/coins/parellel-network	0.01280215
4683	JMTIME	https://www.coingecko.com/en/coins/jmtime	0.00016270
4684	RYAcoin	https://www.coingecko.com/en/coins/ryacoin	0.01577595
4685	Woyager	https://www.coingecko.com/en/coins/woyager	0.00000107
4686	S4FE	https://www.coingecko.com/en/coins/s4fe	0.04801088
4687	Chain Finance	https://www.coingecko.com/en/coins/chain-finance	0.00142134
4688	Centauri Coin	https://www.coingecko.com/en/coins/centauri-coin	0.00171518
4689	BonusCloud	https://www.coingecko.com/en/coins/bonuscloud	0.00022755
4690	Bitcoin Faith	https://www.coingecko.com/en/coins/bitcoin-faith	2.20
4691	BMCHAIN token	https://www.coingecko.com/en/coins/bmchain-token	0.00056438
4692	SUN	https://www.coingecko.com/en/coins/sun	0.00010562
4693	The Currency Analytics	https://www.coingecko.com/en/coins/the-currency-analytics	0.00910916
4694	Fountain	https://www.coingecko.com/en/coins/fountain	0.01947530
4695	Stronghold Token	https://www.coingecko.com/en/coins/stronghold-token	0.00000473
4696	Atomic Wallet Coin	https://www.coingecko.com/en/coins/atomic-wallet-coin	0.669675
4697	MediConnect	https://www.coingecko.com/en/coins/mediconnect	0.00203745
4698	AIDUS Token	https://www.coingecko.com/en/coins/aidus-token	0.00709915
4699	Athero	https://www.coingecko.com/en/coins/athero	0.00006251
4700	PawCoin	https://www.coingecko.com/en/coins/pawcoin	0.00603259
4701	Slimcoin	https://www.coingecko.com/en/coins/slimcoin	0.00021783
4702	Stellar Classic	https://www.coingecko.com/en/coins/stellar-classic	0.00037949
4703	Bit World Token	https://www.coingecko.com/en/coins/bit-world-token	0.00533588
4704	Flowchain	https://www.coingecko.com/en/coins/flowchain	0.311766
4705	OTOCASH	https://www.coingecko.com/en/coins/otocash	0.263962
4706	AFRICUNIA BANK	https://www.coingecko.com/en/coins/africunia-bank	1.88
4707	Kuende	https://www.coingecko.com/en/coins/kuende	0.00018681
4708	RcoinChain	https://www.coingecko.com/en/coins/rcoinchain	0.480223
4709	Stem Cell Coin	https://www.coingecko.com/en/coins/stem-cell-coin	0.152361
4710	STB Chain	https://www.coingecko.com/en/coins/stb-chain	0.00063741
4711	LIVEEN	https://www.coingecko.com/en/coins/liveen	0.00278695
4712	AZ Fundchain	https://www.coingecko.com/en/coins/az-fundchain	0.01294953
4713	Kuky Star	https://www.coingecko.com/en/coins/kuky-star	0.00089873
4714	VTChain	https://www.coingecko.com/en/coins/vtchain	0.00035907
4715	Vena Network	https://www.coingecko.com/en/coins/vena-network	0.00141158
4716	Sophon Capital Token	https://www.coingecko.com/en/coins/sophon-capital-token	0.01514120
4717	XChain Token	https://www.coingecko.com/en/coins/xchain-token	0.00011981
4718	OBSERVER Coin	https://www.coingecko.com/en/coins/observer-coin	0.00351693
4719	PHANTOM	https://www.coingecko.com/en/coins/phantom	0.00009662
4720	Vote Coin	https://www.coingecko.com/en/coins/vote-coin	0.00167101
4721	CONUN	https://www.coingecko.com/en/coins/conun	0.01730908
4722	ABC Chain	https://www.coingecko.com/en/coins/abc-chain	0.00590208
4723	POS Coin	https://www.coingecko.com/en/coins/pos-coin	0.00000001
4724	HEdpAY	https://www.coingecko.com/en/coins/hedpay	0.02342296
4725	MOUSECOIN	https://www.coingecko.com/en/coins/mousecoin	0.00000001
4726	City Coin	https://www.coingecko.com/en/coins/city-coin	0.04156164
4727	Life Style Chain	https://www.coingecko.com/en/coins/life-style-chain	0.00211203
4728	ST Project	https://www.coingecko.com/en/coins/st-project	0.00386584
4729	NASGO	https://www.coingecko.com/en/coins/nasgo	0.00375168
4730	LYZE	https://www.coingecko.com/en/coins/lyze	0.00029151
4731	TenXCoin	https://www.coingecko.com/en/coins/tenxcoin	0.01554771
4732	Asian Fintech	https://www.coingecko.com/en/coins/asian-fintech	0.00447443
4733	GigEcoin	https://www.coingecko.com/en/coins/gigecoin	0.162416
4734	Halo Platform	https://www.coingecko.com/en/coins/halo-platform	0.00028268
4735	MessengerBank	https://www.coingecko.com/en/coins/messengerbank	0.00459109
4736	Coinzo Token	https://www.coingecko.com/en/coins/coinzo-token	0.02344520
4737	M Chain	https://www.coingecko.com/en/coins/m-chain	0.00099888
4738	EXX Token	https://www.coingecko.com/en/coins/exx-token	0.00000416
4739	RRSpace	https://www.coingecko.com/en/coins/rrspace	0.00000455
4740	SpectreSecurityCoin	https://www.coingecko.com/en/coins/spectresecuritycoin	0.00021457
4741	Blockchain of Hash Power	https://www.coingecko.com/en/coins/blockchain-of-hash-power	0.613357
4742	Olestars	https://www.coingecko.com/en/coins/olestars	0.00010597
4743	Dogz	https://www.coingecko.com/en/coins/dogz	0.00002253
4744	Aliencoin	https://www.coingecko.com/en/coins/aliencoin	0.00000005
4745	Ciredo	https://www.coingecko.com/en/coins/ciredo	0.00010545
4746	Filenet	https://www.coingecko.com/en/coins/filenet	0.01182390
4747	Communication Development Resources Token	https://www.coingecko.com/en/coins/communication-development-resources-token	0.00247608
4748	Albos	https://www.coingecko.com/en/coins/albos	0.00000453
4749	DET Token	https://www.coingecko.com/en/coins/diamond-exchange-token	0.07098439
4750	Bitcoin Air	https://www.coingecko.com/en/coins/bitcoin-air	0.00006828
4751	GroovyHooman	https://www.coingecko.com/en/coins/groovyhooman	0.00000344
4752	Tianya Token	https://www.coingecko.com/en/coins/tianya-token	0.00021526
4753	Litecoin Token	https://www.coingecko.com/en/coins/litecoin-token	0.00000001
4754	INRDC	https://www.coingecko.com/en/coins/inrdc	0.00010528
4755	Frasindo Rent	https://www.coingecko.com/en/coins/frasindo-rent	0.00499735
4756	Zynecoin	https://www.coingecko.com/en/coins/zynecoin	1.12
4757	XGOLDCOIN	https://www.coingecko.com/en/coins/xgoldcoin	0.00349155
4758	Investcoin	https://www.coingecko.com/en/coins/investcoin	0.00171396
4759	Token Pocket	https://www.coingecko.com/en/coins/token-pocket	0.00171775
4760	Block 18	https://www.coingecko.com/en/coins/block-18	0.00246911
4761	LiquidWave	https://www.coingecko.com/en/coins/liquidwave	0.06001691
4762	LuxAlpa	https://www.coingecko.com/en/coins/luxalpa	0.490055
4763	NoFakeCoin	https://www.coingecko.com/en/coins/nofakecoin	0.00238742
4764	Fast	https://www.coingecko.com/en/coins/fast	0.00003622
4765	Newdex Token	https://www.coingecko.com/en/coins/newdex-token	0.00061950
4766	Paytomat	https://www.coingecko.com/en/coins/paytomat	0.00290221
4767	BOSCore	https://www.coingecko.com/en/coins/boscore	0.00240213
4768	Royal Online Vegas	https://www.coingecko.com/en/coins/royal-online-vegas	0.00023887
4769	TakeOff Centre	https://www.coingecko.com/en/coins/takeoff-centre	0.182507
4770	Trent	https://www.coingecko.com/en/coins/trent	0.00607806
4771	xCrypt Token	https://www.coingecko.com/en/coins/xcrypt-token	0.00010690
4772	Datbit	https://www.coingecko.com/en/coins/datbit	0.00008801
4773	WeSing Coin	https://www.coingecko.com/en/coins/wesing-coin	0.00155823
4774	BORA	https://www.coingecko.com/en/coins/bora	0.02518088
4775	World Credit Diamond Coin	https://www.coingecko.com/en/coins/world-credit-diamond-coin	0.00023122
4776	EBSP Token	https://www.coingecko.com/en/coins/ebsp-token	0.00002657
4777	HyperExchange	https://www.coingecko.com/en/coins/hyperexchange	0.01291189
4778	Voyage	https://www.coingecko.com/en/coins/voyage	0.00000100
4779	Android chain	https://www.coingecko.com/en/coins/android-chain	0.00017299
4780	Tycoon Global	https://www.coingecko.com/en/coins/tycoon-global	2.18
4781	Rapidz	https://www.coingecko.com/en/coins/rapidz	0.00076073
4782	Mobile Crypto Pay Coin	https://www.coingecko.com/en/coins/mobile-crypto-pay-coin	0.00414587
4783	Decentralized Currency Assets	https://www.coingecko.com/en/coins/decentralized-currency-assets	0.00175871
4784	BitStash Marketplace	https://www.coingecko.com/en/coins/bitstash-marketplace	0.00005411
4785	BitcoinGenX	https://www.coingecko.com/en/coins/bitcoingenx	0.00021228
4786	Zeon	https://www.coingecko.com/en/coins/zeon	0.00053642
4787	Londinium	https://www.coingecko.com/en/coins/londinium	0.00007440
4788	Trust Union	https://www.coingecko.com/en/coins/trust-union	0.00739776
4789	SPECTRUM	https://www.coingecko.com/en/coins/spectrum	0.00000912
4790	Newsolution	https://www.coingecko.com/en/coins/newsolution	0.00590465
4791	BankCoin BCash	https://www.coingecko.com/en/coins/bankcoin-bcash	0.00104973
4792	Alliance Cargo Direct	https://www.coingecko.com/en/coins/alliance-cargo-direct	0.01103867
4793	IG Gold	https://www.coingecko.com/en/coins/ig-gold	0.00035906
4794	Shaka	https://www.coingecko.com/en/coins/shaka	0.01862353
4795	P2P Coin	https://www.coingecko.com/en/coins/p2p-coin	0.00257504
4796	KKCOIN	https://www.coingecko.com/en/coins/kkcoin	0.00030977
4797	QUSD	https://www.coingecko.com/en/coins/qusd	0.01201937
4798	One DEX	https://www.coingecko.com/en/coins/one-dex	0.00000006
4799	Time Space Chain	https://www.coingecko.com/en/coins/time-space-chain	0.00026324
4800	LendChain	https://www.coingecko.com/en/coins/lendchain	0.00070032
4801	POC Chain	https://www.coingecko.com/en/coins/poc-chain	0.00134502
4802	BigBang Game	https://www.coingecko.com/en/coins/bigbang-game	0.00006304
4803	RDCToken	https://www.coingecko.com/en/coins/rdctoken	0.01716040
4804	EOSHASH	https://www.coingecko.com/en/coins/eoshash	0.08934648
4805	BoxAxis	https://www.coingecko.com/en/coins/boxaxis	0.02361031
4806	TurkeyChain	https://www.coingecko.com/en/coins/turkeychain	1.56
4807	BKEX Token	https://www.coingecko.com/en/coins/bkex-token	0.07479101
4808	ZeTo	https://www.coingecko.com/en/coins/zeto	0.03017318
4809	OdinBrowser	https://www.coingecko.com/en/coins/odinbrowser	0.136442
4810	Vip Coin	https://www.coingecko.com/en/coins/vip-coin	0.00566314
4811	Scrypta	https://www.coingecko.com/en/coins/scrypta	0.03444196
4812	ONEX Network	https://www.coingecko.com/en/coins/onex-network	0.01955504
4813	Global Trust Coin	https://www.coingecko.com/en/coins/global-trust-coin	0.01465485
4814	WrkzCoin	https://www.coingecko.com/en/coins/wrkzcoin	0.00000007
4815	Bytus	https://www.coingecko.com/en/coins/bytus	0.162793
4816	ZillionCoin	https://www.coingecko.com/en/coins/zillioncoin	0.00042910
4817	BCB Blockchain	https://www.coingecko.com/en/coins/bcb-blockchain	1.43
4818	Bamboo	https://www.coingecko.com/en/coins/bamboo	0.06746316
4819	Transfer Coin	https://www.coingecko.com/en/coins/transfer-coin	0.00565917
4820	BITO Coin	https://www.coingecko.com/en/coins/bito-coin	0.02608367
4821	Beyond The Scene Coin	https://www.coingecko.com/en/coins/beyond-the-scene-coin	0.00010661
4822	Luckstar	https://www.coingecko.com/en/coins/luckstar	0.00000107
4823	Max Property Group	https://www.coingecko.com/en/coins/max-property-group	0.00000424
4824	AEUR	https://www.coingecko.com/en/coins/aeur	0.557860
4825	JOOS Protocol	https://www.coingecko.com/en/coins/joos-protocol	0.00075244
4826	Swisscoin-Classic	https://www.coingecko.com/en/coins/swisscoin-classic	0.00000092
4827	BuckHath Coin	https://www.coingecko.com/en/coins/buckhath-coin	0.03121818
4828	Xpet Coin	https://www.coingecko.com/en/coins/xpet-coin	0.00264449
4829	Iconic Token	https://www.coingecko.com/en/coins/icnq-token	0.173210
4830	CurrentCoin	https://www.coingecko.com/en/coins/currentcoin	0.02409953
4831	Flexacoin	https://www.coingecko.com/en/coins/flexacoin	0.00570218
4832	DreamTeam3	https://www.coingecko.com/en/coins/dreamteam3	0.00003358
4833	Blockchain Exchange Alliance	https://www.coingecko.com/en/coins/blockchain-exchange-alliance	0.00214518
4834	Meconcash	https://www.coingecko.com/en/coins/meconcash	0.102685
4835	Tutor's Diary	https://www.coingecko.com/en/coins/tutors-diary	0.00308548
4836	OOOBTC Token	https://www.coingecko.com/en/coins/ooobtc-token	0.00035612
4837	Revelation coin	https://www.coingecko.com/en/coins/revelation-coin	0.00000919
4838	Fline	https://www.coingecko.com/en/coins/fline	0.00401664
4839	FLETA	https://www.coingecko.com/en/coins/fleta	0.00732627
4840	ZJLT Distributed Factoring Network	https://www.coingecko.com/en/coins/zjlt-distributed-factoring-network	0.00055371
4841	Eco Value Coin	https://www.coingecko.com/en/coins/eco-value-coin	0.00334500
4842	GUNTHY	https://www.coingecko.com/en/coins/gunthy	0.08074838
4843	Piction Network	https://www.coingecko.com/en/coins/piction-network	0.01100024
4844	Elitium	https://www.coingecko.com/en/coins/elitium	0.894687
4845	YourVoteMatters	https://www.coingecko.com/en/coins/yourvotematters	0.00031702
4846	Liker World	https://www.coingecko.com/en/coins/liker-world	0.02341594
4847	Altmarkets Coin	https://www.coingecko.com/en/coins/altmarkets-coin	0.00117757
4848	BIXCPRO	https://www.coingecko.com/en/coins/bixcpro	0.00969110
4849	MomoCash	https://www.coingecko.com/en/coins/momocash	0.00107284
4850	BitCash	https://www.coingecko.com/en/coins/bitcash	0.01331580
4851	etor	https://www.coingecko.com/en/coins/etor	0.00892242
4852	iBitHub	https://www.coingecko.com/en/coins/ibithub	0.00176951
4853	Netkoin Liquid	https://www.coingecko.com/en/coins/netkoin-liquid	0.00195354
4854	InnovativeBioresearchClassic	https://www.coingecko.com/en/coins/innovativebioresearchclassic	0.00000301
4855	Runebase	https://www.coingecko.com/en/coins/runebase	0.00001678
4856	ScopeCoin	https://www.coingecko.com/en/coins/scopecoin	0.00016697
4857	Bitcoin Classic Token	https://www.coingecko.com/en/coins/bitcoin-classic-token	0.00096491
4858	FEX Token	https://www.coingecko.com/en/coins/fex-token	0.07121304
4859	ZG Token	https://www.coingecko.com/en/coins/zg	0.00633209
4860	GDAC Token	https://www.coingecko.com/en/coins/gdac-token	0.00015333
4861	BEAR Coin	https://www.coingecko.com/en/coins/bear-coin	0.00204190
4862	PSY TOKEN	https://www.coingecko.com/en/coins/psy-token	0.00450340
4863	RoboCalls	https://www.coingecko.com/en/coins/robocalls	0.00004925
4864	Reload	https://www.coingecko.com/en/coins/reload	0.00000454
4865	EvaCash	https://www.coingecko.com/en/coins/evacash	0.01199128
4866	Sparkle Loyalty	https://www.coingecko.com/en/coins/sparkle-loyalty	0.291269
4867	Next	https://www.coingecko.com/en/coins/next	0.177523
4868	Scribe	https://www.coingecko.com/en/coins/scribe	0.00057843
4869	Cryptlo	https://www.coingecko.com/en/coins/cryptlo	0.00001645
4870	SnowBlossom	https://www.coingecko.com/en/coins/snowblossom	0.255542
4871	Tao Network	https://www.coingecko.com/en/coins/tao-network	0.03935744
4872	Platinum	https://www.coingecko.com/en/coins/platinum	0.00322179
4873	Zayka Token	https://www.coingecko.com/en/coins/zayka-token	0.00022182
4874	Lytix	https://www.coingecko.com/en/coins/lytix	0.00032341
4875	Oculor	https://www.coingecko.com/en/coins/oculor	0.00000784
4876	Qcash	https://www.coingecko.com/en/coins/qcash	0.147593
4877	Moneta Verde	https://www.coingecko.com/en/coins/moneta-verde	0.00021484
4878	BitGrin	https://www.coingecko.com/en/coins/bitgrin	0.00031964
4879	Axai	https://www.coingecko.com/en/coins/axai	0.00000156
4880	V-Dimension	https://www.coingecko.com/en/coins/v-dimension	0.451237
4881	Skraps	https://www.coingecko.com/en/coins/skraps	0.00067636
4882	DAY	https://www.coingecko.com/en/coins/day	0.00324980
4883	One World Coin	https://www.coingecko.com/en/coins/one-world-coin	0.00010740
4884	Lightforge	https://www.coingecko.com/en/coins/lightforge	0.00004137
4885	VNS Coin	https://www.coingecko.com/en/coins/vns-coin	0.00293222
4886	Africa Trading Chain	https://www.coingecko.com/en/coins/africa-trading-chain	0.00000181
4887	Betxoin	https://www.coingecko.com/en/coins/betxoin	0.00053696
4888	Voltz	https://www.coingecko.com/en/coins/voltz	0.00800162
4889	Zumy	https://www.coingecko.com/en/coins/zumy	0.00163018
4890	VirtaCoin	https://www.coingecko.com/en/coins/virtacoin	0.00000008
4891	ChronoCoin	https://www.coingecko.com/en/coins/chronocoin	0.00203675
4892	Theta Fuel	https://www.coingecko.com/en/coins/theta-fuel	0.00950801
4893	Fusion Energy X	https://www.coingecko.com/en/coins/fusion-energy-x	0.00032086
4894	EcoG9coin	https://www.coingecko.com/en/coins/ecog9coin	0.00085197
4895	LightningCash Gold	https://www.coingecko.com/en/coins/lightningcash-gold	0.00059090
4896	888tron	https://www.coingecko.com/en/coins/888tron	0.234544
4897	GrafenoCash	https://www.coingecko.com/en/coins/grafenocash	0.00002938
4898	MillenniumClub Coin	https://www.coingecko.com/en/coins/millenniumclub-coin	0.00302275
4899	BITCOINSVGOLD	https://www.coingecko.com/en/coins/bitcoinsvgold	0.00082152
4900	Elphyrecoin	https://www.coingecko.com/en/coins/elphyrecoin	0.00010728
4901	Elphyrecoin	https://www.coingecko.com/en/coins/elphyrecoin	0.00010728
4902	SESSIA	https://www.coingecko.com/en/coins/sessia	0.07854521
4903	Rizubot	https://www.coingecko.com/en/coins/rizubot	0.00000378
4904	Xaviera Tech	https://www.coingecko.com/en/coins/xaviera-tech	0.00051912
4905	Blastx	https://www.coingecko.com/en/coins/blastx	0.00063587
4906	Maya Preferred 223	https://www.coingecko.com/en/coins/maya-preferred-223	227.65
4907	VENJOCOIN	https://www.coingecko.com/en/coins/venjocoin	3.60
4908	SimplyBrand	https://www.coingecko.com/en/coins/simplybrand	0.00044567
4909	HotNow	https://www.coingecko.com/en/coins/hotnow	0.00107578
4910	Kuverit	https://www.coingecko.com/en/coins/kuverit	0.00003801
4911	WPP Token	https://www.coingecko.com/en/coins/wpp-token	0.00135052
4912	DeroGold	https://www.coingecko.com/en/coins/derogold	0.00000000
4913	Perkle	https://www.coingecko.com/en/coins/perkle	0.00342971
4914	Bilaxy Token	https://www.coingecko.com/en/coins/bilaxy-token	0.00349502
4915	Banque Universal	https://www.coingecko.com/en/coins/banque-universal	0.576270
4916	LiquidApps	https://www.coingecko.com/en/coins/liquidapps	0.01824814
4917	BIKI	https://www.coingecko.com/en/coins/biki	0.03388239
4918	HashNet BitEco	https://www.coingecko.com/en/coins/hashnet-biteco	0.00227037
4919	Dequant	https://www.coingecko.com/en/coins/dequant	0.00021457
4920	Naka Bodhi Token	https://www.coingecko.com/en/coins/naka-bodhi-token	0.02232750
4921	Vanta Network	https://www.coingecko.com/en/coins/vanta-network	0.00113500
4922	Litecoin Finance	https://www.coingecko.com/en/coins/litecoin-finance	0.00032237
4923	Fibercoin	https://www.coingecko.com/en/coins/fibercoin	0.02968043
4924	Tronipay	https://www.coingecko.com/en/coins/tronipay	0.00105926
4925	PAISACOIN	https://www.coingecko.com/en/coins/paisacoin	0.00000048
4926	FNB Protocol	https://www.coingecko.com/en/coins/fnb-protocol	0.00640501
4927	Wavesbet	https://www.coingecko.com/en/coins/wavesbet	0.00000021
4928	Self Storage Coin	https://www.coingecko.com/en/coins/self-storage-coin	1.87
4929	EnterCoin	https://www.coingecko.com/en/coins/entercoin	0.00419141
4930	XtendCash	https://www.coingecko.com/en/coins/xtendcash	0.00021548
4931	Sesameseed	https://www.coingecko.com/en/coins/sesameseed	0.03063242
4932	Refine Medium	https://www.coingecko.com/en/coins/refine-medium	0.00201068
4933	P2P Global Network	https://www.coingecko.com/en/coins/p2p-global-network	0.00002814
4934	f(x) Coin	https://www.coingecko.com/en/coins/fx-coin	0.06935794
4935	Raven Dark	https://www.coingecko.com/en/coins/raven-dark	0.00031242
4936	BittrackSystems	https://www.coingecko.com/en/coins/bittracksystems	0.374880
4937	PatentTX	https://www.coingecko.com/en/coins/patenttx	0.00686616
4938	Icolcoin	https://www.coingecko.com/en/coins/icolcoin	0.00125161
4939	CBEX Token	https://www.coingecko.com/en/coins/cbex-token	0.00069081
4940	Acryl	https://www.coingecko.com/en/coins/acryl	0.00214658
4941	bitCEO	https://www.coingecko.com/en/coins/bitceo	0.141275
4942	Quiztok	https://www.coingecko.com/en/coins/quiztok	0.00946795
4943	Treasure SL	https://www.coingecko.com/en/coins/treasure-sl	0.00150338
4944	99Masternodes	https://www.coingecko.com/en/coins/99masternodes	0.00150110
4945	MixMarvel	https://www.coingecko.com/en/coins/mixmarvel	0.00336012
4946	Now Token	https://www.coingecko.com/en/coins/now-token	0.03613691
4947	Grabity	https://www.coingecko.com/en/coins/grabity	0.00005184
4948	Global-Pay Coin	https://www.coingecko.com/en/coins/global-pay-coin	0.00460605
4949	Counos Coin	https://www.coingecko.com/en/coins/counos-coin	5.92
4950	ForFun	https://www.coingecko.com/en/coins/forfun	0.00292331
4951	Blacknet	https://www.coingecko.com/en/coins/blacknet	0.00215082
4952	Eulo	https://www.coingecko.com/en/coins/eulo	0.00106339
4953	ADIOMAN	https://www.coingecko.com/en/coins/adioman	0.00000353
4954	Silvercashs	https://www.coingecko.com/en/coins/silvercashs	0.00032041
4955	TARUSH	https://www.coingecko.com/en/coins/tarush	0.00007093
4956	Oath Protocol	https://www.coingecko.com/en/coins/oath-protocol	0.00000100
4957	MEDIKEY	https://www.coingecko.com/en/coins/medikey	0.05336838
4958	X-Block	https://www.coingecko.com/en/coins/x-block	0.00006216
4959	Korbot	https://www.coingecko.com/en/coins/korbot	0.02893228
4960	Twinkle	https://www.coingecko.com/en/coins/twinkle	0.00085908
4961	IOTEdge Network	https://www.coingecko.com/en/coins/iotedge-network	0.00175979
4962	AI Prediction Ecosystem	https://www.coingecko.com/en/coins/ai-predicting-ecosystem	0.00181079
4963	DragonVein	https://www.coingecko.com/en/coins/dragonvein	0.249862
4964	BTS Coin	https://www.coingecko.com/en/coins/bts-coin	0.00019614
4965	SWE Token	https://www.coingecko.com/en/coins/swe-token	0.00032402
4966	Happy Token	https://www.coingecko.com/en/coins/happy-token	0.01105030
4967	METANOIA	https://www.coingecko.com/en/coins/metanoia	0.111189
4968	Safex Token	https://www.coingecko.com/en/coins/safex-token	0.00333490
4969	Electronic Energy Coin	https://www.coingecko.com/en/coins/electronic-energy-coin	0.00198775
4970	iOWN Token	https://www.coingecko.com/en/coins/iown-token	0.00903659
4971	Decimated	https://www.coingecko.com/en/coins/decimated	0.00390645
4972	TT Token	https://www.coingecko.com/en/coins/tt-token	0.00253599
4973	Papercoin	https://www.coingecko.com/en/coins/papercoin	0.00040233
4974	Renvale Coin	https://www.coingecko.com/en/coins/renvale-coin	0.00021098
4975	Hai Chain	https://www.coingecko.com/en/coins/hai-chain	0.00138075
4976	Bellcoin	https://www.coingecko.com/en/coins/bellcoin	0.00202255
4977	Voucher Coin	https://www.coingecko.com/en/coins/voucher-coin	0.00021388
4978	EVA Coin	https://www.coingecko.com/en/coins/eva-coin	0.00145800
4979	BHTX Token	https://www.coingecko.com/en/coins/bhtx-token	0.05153165
4980	PANTHEON X	https://www.coingecko.com/en/coins/pantheon-x	0.04394850
4981	UniversalEnergyChain	https://www.coingecko.com/en/coins/universalenergychain	1.43
4982	Diamond Platform Token	https://www.coingecko.com/en/coins/diamond-platform-token	3.03
4983	Stellar Gold	https://www.coingecko.com/en/coins/stellar-gold	0.00008803
4984	MtBlock	https://www.coingecko.com/en/coins/mtblock	0.00004852
4985	Qovar Coin	https://www.coingecko.com/en/coins/qovar-coin	0.08600990
4986	Cherry Token	https://www.coingecko.com/en/coins/cherry-token	0.827586
4987	The Global Index Chain	https://www.coingecko.com/en/coins/the-global-index-chain	0.00023602
4988	7ELEVEN	https://www.coingecko.com/en/coins/7eleven	0.00000018
4989	Blockchain Cuties Universe	https://www.coingecko.com/en/coins/blockchain-cuties-universe	0.106921
4990	Native Utility Token	https://www.coingecko.com/en/coins/native-utility-token	22.87
4991	Wisdom Chain	https://www.coingecko.com/en/coins/wisdom-chain	0.04361150
4992	HiGameCoin	https://www.coingecko.com/en/coins/higamecoin	0.05542612
4993	Philosafe Token	https://www.coingecko.com/en/coins/philosafe-token	0.00007299
4994	BiTing	https://www.coingecko.com/en/coins/biting	0.00022503
4995	DKK Token	https://www.coingecko.com/en/coins/dkk-token	0.147211
4996	Artfinity Token	https://www.coingecko.com/en/coins/artfinity-token	0.02911271
4997	DANGX	https://www.coingecko.com/en/coins/dangx	0.00000500
4998	Tobigca	https://www.coingecko.com/en/coins/tobigca	0.00000600
4999	CSE Token	https://www.coingecko.com/en/coins/cse-token	0.255328
5000	Lichang	https://www.coingecko.com/en/coins/lichang	0.00006553
5001	StakePool	https://www.coingecko.com/en/coins/stakepool	0.00021984
5002	pEOS	https://www.coingecko.com/en/coins/peos	0.00177982
5003	Ubricoin	https://www.coingecko.com/en/coins/ubricoin	0.00020011
5004	IxiCash	https://www.coingecko.com/en/coins/ixicash	0.00000900
5005	SparkPoint	https://www.coingecko.com/en/coins/sparkpoint	0.00091758
5006	BQT	https://www.coingecko.com/en/coins/bqt	0.00120017
5007	CTAGtoken	https://www.coingecko.com/en/coins/ctagtoken	0.314634
5008	Coindy	https://www.coingecko.com/en/coins/coindy	0.00040818
5009	NNB Token	https://www.coingecko.com/en/coins/nnb-token	0.00033080
5010	Bitsou	https://www.coingecko.com/en/coins/bitsou	0.00031990
5011	SovranoCoin	https://www.coingecko.com/en/coins/sovranocoin	0.880403
5012	BitpakcoinToken	https://www.coingecko.com/en/coins/bitpakcointoken	0.00002475
5013	Vulcoin	https://www.coingecko.com/en/coins/vulcoin	0.00010513
5014	TVT	https://www.coingecko.com/en/coins/tvt	0.00000005
5015	SCT Token	https://www.coingecko.com/en/coins/sct-token	0.00698054
5016	Beenode	https://www.coingecko.com/en/coins/beenode	0.484671
5017	XT.com Token	https://www.coingecko.com/en/coins/xtcom-token	5.86
5018	HealthyLife	https://www.coingecko.com/en/coins/healthylife	0.00003759
5019	SXC Token	https://www.coingecko.com/en/coins/sxc	0.147730
5020	Bitcoin Platinums	https://www.coingecko.com/en/coins/bitcoin-platinums	0.00000343
5021	ALL BEST ICO	https://www.coingecko.com/en/coins/all-best-ico	0.00002122
5022	CarbCoin	https://www.coingecko.com/en/coins/carbcoin	0.00171831
5023	Pelo Coin	https://www.coingecko.com/en/coins/pelo-coin	0.00504747
5024	CLP token	https://www.coingecko.com/en/coins/clp-token	0.00010523
5025	Pinecoin	https://www.coingecko.com/en/coins/pinecoin	0.00537194
5026	TechShares	https://www.coingecko.com/en/coins/techshares	0.00483268
5027	Bit Public Talent Network	https://www.coingecko.com/en/coins/bit-public-talent-network	0.00022373
5028	BitCloud Pro	https://www.coingecko.com/en/coins/bitcloud-pro	0.00038105
5029	FinexboxToken	https://www.coingecko.com/en/coins/finexbox-token	0.824901
5030	ANYONE	https://www.coingecko.com/en/coins/anyone	0.00009995
5031	Koinon	https://www.coingecko.com/en/coins/koinon	0.287796
5032	Trust Ether ReOrigin	https://www.coingecko.com/en/coins/trust-ether-reorigin	0.00021510
5033	Fair Dollars	https://www.coingecko.com/en/coins/fair-dollars	0.00018443
5034	YSDT	https://www.coingecko.com/en/coins/ysdt	0.06985849
5035	Poseidon Network	https://www.coingecko.com/en/coins/poseidon-network	0.00000000
5036	Zarhexcash	https://www.coingecko.com/en/coins/zarhexcash	0.00000064
5037	AMIS	https://www.coingecko.com/en/coins/amis	0.01072735
5038	SEAcoin	https://www.coingecko.com/en/coins/seacoin	0.00050621
5039	Aryacoin	https://www.coingecko.com/en/coins/aryacoin	0.01228605
5040	CryptoFranc	https://www.coingecko.com/en/coins/cryptofranc	1.09
5041	SPIN Protocol	https://www.coingecko.com/en/coins/spin-protocol	0.00021076
5042	VBT	https://www.coingecko.com/en/coins/vbt	0.00373645
5043	MGC Token	https://www.coingecko.com/en/coins/mgc-token	0.00187143
5044	Caixa Pay	https://www.coingecko.com/en/coins/caixa-pay	0.00139321
5045	Brazilian Digital Token	https://www.coingecko.com/en/coins/brazilian-digital-token	0.176747
5046	Sapphire	https://www.coingecko.com/en/coins/sapphire	0.01159844
5047	Bitcoin 5000	https://www.coingecko.com/en/coins/bitcoin-5000	0.00063346
5048	TFT Network	https://www.coingecko.com/en/coins/tft-network	0.00022996
5049	Hatch	https://www.coingecko.com/en/coins/hatch	0.00118308
5050	DDMX	https://www.coingecko.com/en/coins/ddmx	0.00719829
5051	COINBIG	https://www.coingecko.com/en/coins/coinbig	0.00011494
5052	BulpCoin	https://www.coingecko.com/en/coins/bulpcoin	0.00010300
5053	VinDax Coin	https://www.coingecko.com/en/coins/vindax-coin	0.01446899
5054	SatoExchange Token	https://www.coingecko.com/en/coins/satoexchange-token	0.00087279
5055	Qobit	https://www.coingecko.com/en/coins/qobit	0.00087156
5056	HotDollars Token	https://www.coingecko.com/en/coins/hotdollars-token	0.00001888
5057	ECP+ Technology	https://www.coingecko.com/en/coins/ecp-technology	0.00075954
5058	XCELTOKEN PLUS	https://www.coingecko.com/en/coins/xceltoken-plus	0.00002359
5059	GUSS.ONE	https://www.coingecko.com/en/coins/guss-one	0.00011812
5060	BlockStamp	https://www.coingecko.com/en/coins/blockstamp	0.07736696
5061	Poverty Eradication Coin	https://www.coingecko.com/en/coins/proverty-eradication-coin	0.00032185
5062	SealBlock Token	https://www.coingecko.com/en/coins/sealblock-token	0.00004246
5063	YOOSourcing	https://www.coingecko.com/en/coins/yoosourcing	0.00237016
5064	BlockMason Link	https://www.coingecko.com/en/coins/blockmason-link	0.00008875
5065	DEXTER	https://www.coingecko.com/en/coins/dexter	0.320843
5066	Connectome	https://www.coingecko.com/en/coins/connectome	1.07
5067	Haichain	https://www.coingecko.com/en/coins/haichain	0.00202690
5068	VODA TOKEN	https://www.coingecko.com/en/coins/voda-token	0.324461
5069	Galaxy Wallet	https://www.coingecko.com/en/coins/galaxy-wallet	0.00290392
5070	FileStorm	https://www.coingecko.com/en/coins/filestorm	0.00851474
5071	MONEY CASH MINER	https://www.coingecko.com/en/coins/money-cash-miner	0.00085089
5072	TomaInfo	https://www.coingecko.com/en/coins/tomainfo	0.00636431
5073	LOLTOKEN	https://www.coingecko.com/en/coins/loltoken	0.00377457
5074	All For One Business	https://www.coingecko.com/en/coins/all-for-one-business	0.00120752
5075	Address	https://www.coingecko.com/en/coins/address	0.176006
5076	TOKA	https://www.coingecko.com/en/coins/toka	0.00000842
5077	MDsquare	https://www.coingecko.com/en/coins/mdsquare	0.00029179
5078	WebFlix	https://www.coingecko.com/en/coins/webflix	0.00007803
5079	Coupon Chain	https://www.coingecko.com/en/coins/coupon-chain	0.249358
5080	Q8E Coin	https://www.coingecko.com/en/coins/q8e-coin	0.00012288
5081	Energoncoin	https://www.coingecko.com/en/coins/energoncoin	0.307582
5082	VeggieCoin	https://www.coingecko.com/en/coins/veggiecoin	0.00046770
5083	Decentralway	https://www.coingecko.com/en/coins/decentralway	0.00118012
5084	ECreditCoin	https://www.coingecko.com/en/coins/ecreditcoin	0.00000112
5085	Predator Coin	https://www.coingecko.com/en/coins/predator-coin	0.00010728
5086	FUNDIN	https://www.coingecko.com/en/coins/fundin	0.00010728
5087	Diligence	https://www.coingecko.com/en/coins/diligence	0.00071608
5088	GiletJauneCoin	https://www.coingecko.com/en/coins/giletjaunecoin	0.00375972
5089	MinerGate Token	https://www.coingecko.com/en/coins/minergate-token	0.09001008
5090	ODDO coin	https://www.coingecko.com/en/coins/oddo-coin	0.00147257
5091	Q DAO Governance token v1.0	https://www.coingecko.com/en/coins/q-dao-governance-token-v1-0	5.30
5092	Metacoin	https://www.coingecko.com/en/coins/metacoin	0.136593
5093	Rabbit Coin	https://www.coingecko.com/en/coins/rabbit-coin	0.00383696
5094	FIBOS	https://www.coingecko.com/en/coins/fibos	0.00782025
5095	AndesCoin	https://www.coingecko.com/en/coins/andescoin	0.00021486
5096	Bicond	https://www.coingecko.com/en/coins/bicond	0.159672
5097	Zer-Dex	https://www.coingecko.com/en/coins/zer-dex	0.00021442
5098	EURO TOKEN	https://www.coingecko.com/en/coins/euro-token	0.00041779
5099	TicTalk	https://www.coingecko.com/en/coins/tictalk	0.00000302
5100	BTC-Alpha Token	https://www.coingecko.com/en/coins/btc-alpha-token	1.01
5101	BTC-Alpha Token	https://www.coingecko.com/en/coins/btc-alpha-token	1.01
5102	Arcee Coin	https://www.coingecko.com/en/coins/arcee-coin	0.00126910
5103	SODA Coin	https://www.coingecko.com/en/coins/soda-coin	0.01299647
5104	Torchain	https://www.coingecko.com/en/coins/torchain	0.00000376
5105	Zerozed	https://www.coingecko.com/en/coins/zerozed	0.00042739
5106	Crex Token	https://www.coingecko.com/en/coins/crex-token	3.04
5107	GreenPay Coin	https://www.coingecko.com/en/coins/greenpay-coin	0.00718891
5108	TRANSFAST	https://www.coingecko.com/en/coins/transfast	0.00019882
5109	CryptoYen	https://www.coingecko.com/en/coins/cryptoyen	0.00274349
5110	BitUnits Titan	https://www.coingecko.com/en/coins/bitunits-titan	0.450298
5111	BitUnits Millium	https://www.coingecko.com/en/coins/bitunits-millium	0.00497439
5112	EVERY ORIGINAL	https://www.coingecko.com/en/coins/every-original	0.00000021
5113	Frozencoin Network	https://www.coingecko.com/en/coins/frozencoin-network	0.00597058
5114	Advertisingcoin	https://www.coingecko.com/en/coins/advertisingcoin	0.00010767
5115	Digi Dinar	https://www.coingecko.com/en/coins/digi-dinar	3.19
5116	StarBlock	https://www.coingecko.com/en/coins/starblock	0.00034866
5117	Ladder Network Token	https://www.coingecko.com/en/coins/ladder-network-token	0.00298642
5118	B91	https://www.coingecko.com/en/coins/b91	0.00796179
5119	QT	https://www.coingecko.com/en/coins/qt	0.05789976
5120	Cifculation	https://www.coingecko.com/en/coins/cifculation	0.03479747
5121	Bityuan	https://www.coingecko.com/en/coins/bityuan	0.202488
5122	DapperCoin	https://www.coingecko.com/en/coins/dappercoin	0.00368627
5123	Ethereum Cloud	https://www.coingecko.com/en/coins/ethereum-cloud	0.00009947
5124	NemoCoin	https://www.coingecko.com/en/coins/nemocoin	0.00990592
5125	COIC Token	https://www.coingecko.com/en/coins/coic-token	0.00055530
5126	Pureland Project	https://www.coingecko.com/en/coins/pureland-project	0.00298767
5127	HL Chain	https://www.coingecko.com/en/coins/hl-chain	0.00098534
5128	Sea Cucumber Chain	https://www.coingecko.com/en/coins/sea-cucumber-chain	0.00017507
5129	Amino Network	https://www.coingecko.com/en/coins/amino-network	0.00161561
5130	Our Earth Coin	https://www.coingecko.com/en/coins/our-earth-coin	0.00002584
5131	Latex Chain	https://www.coingecko.com/en/coins/latex-chain	0.00157992
5132	NMS Token	https://www.coingecko.com/en/coins/nms-token	0.00047006
5133	Monkey Coin	https://www.coingecko.com/en/coins/monkey-coin	0.00000300
5134	Super Trip Chain	https://www.coingecko.com/en/coins/super-trip-chain	0.00753964
5135	Film Industry Investment Chain	https://www.coingecko.com/en/coins/film-industry-investment-chain	0.00483439
5136	Hanacoin	https://www.coingecko.com/en/coins/hanacoin	0.00043040
5137	AgriNovusCoin	https://www.coingecko.com/en/coins/agrinovuscoin	0.00001533
5138	Kino Token ETH	https://www.coingecko.com/en/coins/kino-token-eth	0.06194920
5139	Web Token Pay	https://www.coingecko.com/en/coins/web-token-pay	0.124334
5140	SmartCryptoTech	https://www.coingecko.com/en/coins/smartcryptotech	0.00033019
5141	SAPPCHAIN	https://www.coingecko.com/en/coins/sappchain	0.00003163
5142	Aladdin	https://www.coingecko.com/en/coins/aladdin	0.00018259
5143	Pocket Arena	https://www.coingecko.com/en/coins/pocket-arena	0.01127749
5144	DDKoin	https://www.coingecko.com/en/coins/ddkoin	2.23
5145	Half Life	https://www.coingecko.com/en/coins/half-life	0.00484390
5146	HFRCOIN	https://www.coingecko.com/en/coins/hfrcoin	0.00461458
5147	Bitpanda Ecosystem Token	https://www.coingecko.com/en/coins/bitpanda-ecosystem-token	0.09385897
5148	Mytracknet Token	https://www.coingecko.com/en/coins/mytracknet-token	0.00492181
5149	Xeonbit Token	https://www.coingecko.com/en/coins/xeonbit-token	0.00331351
5150	CryptoVerificationCoin	https://www.coingecko.com/en/coins/cryptoverificationcoin	1.10
5151	BDEX COIN	https://www.coingecko.com/en/coins/bdex-coin	0.01372714
5152	OKUBIT	https://www.coingecko.com/en/coins/okubit	0.00330486
5153	Bitcoin BEP2	https://www.coingecko.com/en/coins/bitcoin-bep2	10750.86
5154	KINGS Token	https://www.coingecko.com/en/coins/kings-token	0.00035307
5155	TrueLoveChain	https://www.coingecko.com/en/coins/truelovechain	0.00012593
5156	Intelligent Manufacturing Chain	https://www.coingecko.com/en/coins/intelligent-manufacturing-chain	0.00131947
5157	MicroBloodScience	https://www.coingecko.com/en/coins/micro-blood-science	0.01032925
5158	SeamonX	https://www.coingecko.com/en/coins/seamonx	0.00010687
5159	Stable Coin	https://www.coingecko.com/en/coins/stable-coin	11.77
5160	Yap Stone	https://www.coingecko.com/en/coins/yap-stone	0.00572793
5161	GivingToServices	https://www.coingecko.com/en/coins/givingtoservices	0.00004932
5162	Spiking	https://www.coingecko.com/en/coins/spiking	0.00330054
5163	Crypto Global Bank	https://www.coingecko.com/en/coins/crypto-global-bank	0.00000131
5164	Merge	https://www.coingecko.com/en/coins/merge	0.01344317
5165	NewYork Exchange	https://www.coingecko.com/en/coins/newyork-exchange	9.19
5166	Bitbook Gambling	https://www.coingecko.com/en/coins/bitbook-gambling	0.118124
5167	Jarvis+	https://www.coingecko.com/en/coins/jarvis	0.00180975
5168	LNX Protocol	https://www.coingecko.com/en/coins/lnx-protocol	0.00116676
5169	UP Token	https://www.coingecko.com/en/coins/up-token	0.00004670
5170	ChunghopToken	https://www.coingecko.com/en/coins/chunghoptoken	0.151921
5171	BTCNEXT Coin	https://www.coingecko.com/en/coins/btcnext-coin	0.100943
5172	TrustVerse	https://www.coingecko.com/en/coins/trustverse	0.02580966
5173	Propel	https://www.coingecko.com/en/coins/propel	0.00000000
5174	Wrapped CryptoKitties	https://www.coingecko.com/en/coins/wrapped-cryptokitties	2.04
5175	Fashion Coin	https://www.coingecko.com/en/coins/fashion-coin	0.00000280
5176	Sunny Coin	https://www.coingecko.com/en/coins/sunny-coin	0.00020394
5177	Initial Point Unit X	https://www.coingecko.com/en/coins/initial-point-unit-x	0.00141340
5178	Gold LATOKEN	https://www.coingecko.com/en/coins/gold-latoken	1875.79
5179	BuyCoinPos	https://www.coingecko.com/en/coins/buycoinpos	1.07
5180	Tokoin	https://www.coingecko.com/en/coins/tokoin	0.00969758
5181	TXT	https://www.coingecko.com/en/coins/txt	0.00020147
5182	MoCo	https://www.coingecko.com/en/coins/moco	0.00004374
5183	ArgentinaPesoLATOKEN	https://www.coingecko.com/en/coins/argentinapesolatoken	0.01300633
5184	Hotelium	https://www.coingecko.com/en/coins/hotelium	0.00010258
5185	CITEX Token	https://www.coingecko.com/en/coins/citextoken	0.00863603
5186	Hygenercoin	https://www.coingecko.com/en/coins/hygenercoin	0.00034454
5187	Gravel Coin	https://www.coingecko.com/en/coins/gravel-coin	0.02182592
5188	VAULT	https://www.coingecko.com/en/coins/vault	2.57
5189	Magic Cube Coin	https://www.coingecko.com/en/coins/magic-cube-coin	0.00005817
5190	Silverway	https://www.coingecko.com/en/coins/silverway	0.00001327
5191	AIVIA	https://www.coingecko.com/en/coins/aivia	0.00464049
5192	EOS TRUST	https://www.coingecko.com/en/coins/eos-trust	0.00000347
5193	Dcoin Token	https://www.coingecko.com/en/coins/dcoin-token	0.01422830
5194	PIASA	https://www.coingecko.com/en/coins/piasa	0.01019195
5195	Super CoinView Token	https://www.coingecko.com/en/coins/super-coinview-token	0.00008622
5196	Truefeedback Token	https://www.coingecko.com/en/coins/truefeedback-token	0.00035795
5197	RAKON	https://www.coingecko.com/en/coins/rakon	0.06493992
5198	iBNB	https://www.coingecko.com/en/coins/ibnb	17.13
5199	Fedora Gold	https://www.coingecko.com/en/coins/fedora-gold	0.00000215
5200	GENES Chain	https://www.coingecko.com/en/coins/genes-chain	0.00935712
5201	EXOR	https://www.coingecko.com/en/coins/exor	0.00332318
5202	Zuck Bucks	https://www.coingecko.com/en/coins/zuck-bucks	0.00488774
5203	TheHolyRogerCoin	https://www.coingecko.com/en/coins/theholyrogercoin	0.00085760
5204	BARE	https://www.coingecko.com/en/coins/bare	0.05039277
5205	Bitrue Coin	https://www.coingecko.com/en/coins/bitrue-coin	0.03355666
5206	Title Network	https://www.coingecko.com/en/coins/title-network	0.06326099
5207	bitzec	https://www.coingecko.com/en/coins/bitzec	0.00000237
5208	MDtoken	https://www.coingecko.com/en/coins/mdtoken	0.00173869
5209	Virtual Goods Token	https://www.coingecko.com/en/coins/virtual-goods-token	0.00329750
5210	Sealchain	https://www.coingecko.com/en/coins/sealchain	0.00414725
5211	LinkArt	https://www.coingecko.com/en/coins/linkart	0.00748353
5212	Littlesesame	https://www.coingecko.com/en/coins/littlesesame	0.00038995
5213	QPay	https://www.coingecko.com/en/coins/qpay	0.00000706
5214	BitCardTour	https://www.coingecko.com/en/coins/bitcardtour	0.00022009
5215	Sombe	https://www.coingecko.com/en/coins/sombe	0.00064541
5216	CoinLim Token	https://www.coingecko.com/en/coins/coinlim-token	0.04791010
5217	Kitcoin	https://www.coingecko.com/en/coins/kitcoin	1.24
5218	Ubit Cash	https://www.coingecko.com/en/coins/ubit-cash	0.00130515
5219	Pahoo	https://www.coingecko.com/en/coins/pahoo	0.00000007
5220	Resistance	https://www.coingecko.com/en/coins/resistance	0.00139803
5221	Ormeus Ecosystem	https://www.coingecko.com/en/coins/ormeus-ecosystem	0.00278506
5222	NUCLEAR BOMB	https://www.coingecko.com/en/coins/nuclear-bomb	0.00367956
5223	The Forbidden Forest	https://www.coingecko.com/en/coins/the-forbidden-forest	0.00238002
5224	BlackPearl Token	https://www.coingecko.com/en/coins/blackpearl-token	0.00016349
5225	Nuco.Cloud	https://www.coingecko.com/en/coins/nuco-cloud	1.22
5226	UNIGRID	https://www.coingecko.com/en/coins/unigrid	0.01185833
5227	Golden Token	https://www.coingecko.com/en/coins/golden-token	0.00783288
5228	FUZE Token	https://www.coingecko.com/en/coins/fuze-token	33.80
5229	Storeum	https://www.coingecko.com/en/coins/storeum	0.00000716
5230	Ethereum Legend Eight	https://www.coingecko.com/en/coins/ethereum-legend-eight	0.00000052
5231	SuperSkyNet	https://www.coingecko.com/en/coins/superskynet	0.00000800
5232	Dogethereum Token	https://www.coingecko.com/en/coins/dogethereum-token	0.00000006
5233	BIZpaye	https://www.coingecko.com/en/coins/bizpaye	0.00080503
5234	PXP Token	https://www.coingecko.com/en/coins/pxp-token	0.01449825
5235	DYNAMITE Token	https://www.coingecko.com/en/coins/dynamite-token	0.208999
5236	AmonD	https://www.coingecko.com/en/coins/amond	0.00139417
5237	SageCity	https://www.coingecko.com/en/coins/sagecity	0.00003109
5238	United Community Coin	https://www.coingecko.com/en/coins/united-community-coin	0.00000024
5239	Kinguin Krowns	https://www.coingecko.com/en/coins/kinguin-krowns	1.23
5240	Cruzbit	https://www.coingecko.com/en/coins/cruzbit	0.02154702
5241	SOGA Project	https://www.coingecko.com/en/coins/soga-project	0.00020099
5242	BZH TOKEN	https://www.coingecko.com/en/coins/bzh-token	0.00001920
5243	BlockPanther	https://www.coingecko.com/en/coins/blockpanther	0.00001054
5244	Donu	https://www.coingecko.com/en/coins/donu	0.01656200
5245	Eureka Coin	https://www.coingecko.com/en/coins/eureka-coin	0.04227363
5246	UNI COIN	https://www.coingecko.com/en/coins/uni-coin	0.497966
5247	LightningCoin	https://www.coingecko.com/en/coins/lightningcoin	0.00000003
5248	PGF500	https://www.coingecko.com/en/coins/pgf500	0.00009717
5249	Trader Cash	https://www.coingecko.com/en/coins/trader-cash	0.00138773
5250	Ziktalk	https://www.coingecko.com/en/coins/ziktalk	0.00037910
5251	Custody Token	https://www.coingecko.com/en/coins/custody-token	0.00065010
5252	Xiropht	https://www.coingecko.com/en/coins/xiropht	0.00053422
5253	GIV Token	https://www.coingecko.com/en/coins/giv-token	0.00650743
5254	LIBER COIN	https://www.coingecko.com/en/coins/liber-coin	0.00002558
5255	Heart Number	https://www.coingecko.com/en/coins/heart-number	0.00049021
5256	DAppLinks	https://www.coingecko.com/en/coins/dapplinks	0.00004804
5257	Game Chain	https://www.coingecko.com/en/coins/game-chain	0.00001605
5258	SEED OF LOVE	https://www.coingecko.com/en/coins/seed-of-love	0.00003534
5259	EBOMB	https://www.coingecko.com/en/coins/ebomb	0.01279337
5260	IGF Token	https://www.coingecko.com/en/coins/igf-token	0.323558
5261	Harcomia	https://www.coingecko.com/en/coins/harcomia	0.08945707
5262	Joy Coin	https://www.coingecko.com/en/coins/joy-coin	0.100015
5263	Ethereum Money	https://www.coingecko.com/en/coins/ethereum-money	0.00000813
5264	Resource Token	https://www.coingecko.com/en/coins/resource-token	0.149993
5265	UCoins	https://www.coingecko.com/en/coins/ucoins	0.00004592
5266	Migranet	https://www.coingecko.com/en/coins/migranet	0.00019403
5267	ZeuxCoin	https://www.coingecko.com/en/coins/zeuxcoin	0.00840144
5268	502 Bad Gateway Token	https://www.coingecko.com/en/coins/502-bad-gateway-token	0.00002073
5269	Dengba Planet	https://www.coingecko.com/en/coins/dengba-planet	0.00538052
5270	MYKEY	https://www.coingecko.com/en/coins/mykey	0.00078154
5271	BitGain Project	https://www.coingecko.com/en/coins/bitgain-project	0.00400056
5272	Digipharm	https://www.coingecko.com/en/coins/digipharm	0.00524369
5273	AfterShock	https://www.coingecko.com/en/coins/aftershock	0.01664919
5274	AAA COIN	https://www.coingecko.com/en/coins/aaa-coin	0.00002134
5275	Spare Part Token	https://www.coingecko.com/en/coins/spare-part-token	0.00000001
5276	Adrenaline Chain	https://www.coingecko.com/en/coins/adrenaline-chain	0.00011261
5277	Tyercoin	https://www.coingecko.com/en/coins/tyercoin	0.00000056
5278	PIGX	https://www.coingecko.com/en/coins/pigx	0.00001693
5279	Huni	https://www.coingecko.com/en/coins/huni	0.00001052
5280	Fuel Injection Network	https://www.coingecko.com/en/coins/fuel-injection-network	0.00000843
5281	SwapCoinz	https://www.coingecko.com/en/coins/swapcoinz	0.04492585
5282	HonestCoin	https://www.coingecko.com/en/coins/honestcoin	0.987451
5283	XEuro	https://www.coingecko.com/en/coins/xeuro	1.16
5284	Temtum	https://www.coingecko.com/en/coins/temtum	0.158500
5285	Super Black Hole	https://www.coingecko.com/en/coins/super-black-hole	0.02388609
5286	Bixzcoin	https://www.coingecko.com/en/coins/bixzcoin	0.00007293
5287	Antra	https://www.coingecko.com/en/coins/antra	0.00021459
5288	Distributed Energy Coin	https://www.coingecko.com/en/coins/distributed-energy-coin	0.01709918
5289	Pandroyty Token	https://www.coingecko.com/en/coins/pandroyty-token	0.00512799
5290	Global China Cash	https://www.coingecko.com/en/coins/global-china-cash	0.148764
5291	Sapchain	https://www.coingecko.com/en/coins/sapchain	0.00520435
5292	Efficient Transaction Token	https://www.coingecko.com/en/coins/efficient-transaction-token	0.00019398
5293	Etrade	https://www.coingecko.com/en/coins/etrade	0.00250267
5294	FABRK Token	https://www.coingecko.com/en/coins/fabrk-token	0.00575592
5295	PixEOS	https://www.coingecko.com/en/coins/pixeos	0.00004283
5296	Metal Packaging Token	https://www.coingecko.com/en/coins/metal-packaging-token	0.00011042
5297	UPBTC Token	https://www.coingecko.com/en/coins/upbtc-token	0.00027017
5298	BTSunicorn	https://www.coingecko.com/en/coins/btsunicorn	0.00044103
5299	808TA Token	https://www.coingecko.com/en/coins/808ta-token	0.00000007
5300	SPONB	https://www.coingecko.com/en/coins/sponb	0.00040028
5301	808TA Token	https://www.coingecko.com/en/coins/808ta-token	0.00000007
5302	SPONB	https://www.coingecko.com/en/coins/sponb	0.00040028
5303	GrandPa Fan	https://www.coingecko.com/en/coins/grandpa-fan	0.00000084
5304	Crespo	https://www.coingecko.com/en/coins/crespo	0.00002153
5305	Blue Baikal	https://www.coingecko.com/en/coins/blue-baikal	0.00001636
5306	Rock N Rain Coin	https://www.coingecko.com/en/coins/rock-n-rain-coin	0.00000003
5307	Thx!	https://www.coingecko.com/en/coins/thx	0.03868167
5308	Renewable Energy Saving	https://www.coingecko.com/en/coins/renewable-energy-saving	0.00059084
5309	Coweye	https://www.coingecko.com/en/coins/coweye	0.00008574
5310	NEWLAND	https://www.coingecko.com/en/coins/newland	0.00071970
5311	Dragon Option	https://www.coingecko.com/en/coins/dragon-option	0.00004631
5312	Predict	https://www.coingecko.com/en/coins/predict	0.00417950
5313	CSC JACKPOT	https://www.coingecko.com/en/coins/csc-jackpot	0.05369721
5314	Tsingzou-Tokyo Medical Cooperation	https://www.coingecko.com/en/coins/tsingzou-tokyo-medical-cooperation	0.00002401
5315	Atlantic Coin	https://www.coingecko.com/en/coins/atlantic-coin	0.00000057
5316	EXMO Coin	https://www.coingecko.com/en/coins/exmo-coin	0.00429230
5317	Eminer	https://www.coingecko.com/en/coins/eminer	0.00345295
5318	MEXC Token	https://www.coingecko.com/en/coins/mexc-token	0.00020079
5319	Hardware Chain	https://www.coingecko.com/en/coins/hardware-chain	0.00002600
5320	Bitcoin Cloud	https://www.coingecko.com/en/coins/bitcoin-cloud	0.00072481
5321	Simone	https://www.coingecko.com/en/coins/simone	148.32
5322	LinkToken	https://www.coingecko.com/en/coins/linktoken	0.02034511
5323	CSPC	https://www.coingecko.com/en/coins/cspc	0.00215094
5324	PIZZA-USDE	https://www.coingecko.com/en/coins/pizza-usde	0.01745083
5325	G-BOX Coin	https://www.coingecko.com/en/coins/g-box-coin	0.00009996
5326	Blockchain Knowledge Coin	https://www.coingecko.com/en/coins/blockchain-knowledge-coin	0.00009998
5327	EXVA Token	https://www.coingecko.com/en/coins/exva-token	0.00010667
5328	Fetish Coin	https://www.coingecko.com/en/coins/fetish-coin	0.00000374
5329	Hubi Token	https://www.coingecko.com/en/coins/hubi-token	0.00968584
5330	Project WITH	https://www.coingecko.com/en/coins/project-with	0.00166030
5331	REV Project	https://www.coingecko.com/en/coins/rev-project	0.00032307
5332	XWC Dice Token	https://www.coingecko.com/en/coins/xwc-dice-token	0.00907538
5333	Circuit	https://www.coingecko.com/en/coins/circuit	0.00010322
5334	Stream	https://www.coingecko.com/en/coins/stream	0.00085350
5335	BHEX Token	https://www.coingecko.com/en/coins/bhex-token	0.107169
5336	YottaChain	https://www.coingecko.com/en/coins/yottachain	0.03370653
5337	LNKO Token	https://www.coingecko.com/en/coins/lnko-token	0.00067695
5338	BitKing	https://www.coingecko.com/en/coins/bitking	0.00084473
5339	Aircoins	https://www.coingecko.com/en/coins/aircoins	0.00004855
5340	General Attention Currency	https://www.coingecko.com/en/coins/general-attention-currency	0.186517
5341	Work Force Coin	https://www.coingecko.com/en/coins/work-force-coin	0.00390336
5342	BeeStore	https://www.coingecko.com/en/coins/beestore	0.00010501
5343	Encocoin	https://www.coingecko.com/en/coins/encocoin	0.00473377
5344	ArbiTool Token	https://www.coingecko.com/en/coins/arbitool-token	0.00257491
5345	Clear Coin	https://www.coingecko.com/en/coins/clear-coin	0.00157620
5346	Xensor	https://www.coingecko.com/en/coins/xensor	0.00646569
5347	Facite	https://www.coingecko.com/en/coins/facite	0.00033151
5348	Ciupek Capital Coin	https://www.coingecko.com/en/coins/ciupek-capital-coin	0.420391
5349	Netm	https://www.coingecko.com/en/coins/netm	0.00000045
5350	PayMasterCoin	https://www.coingecko.com/en/coins/paymastercoin	0.00003191
5351	Yobit Token	https://www.coingecko.com/en/coins/yobit-token	1366.63
5352	STK Coin	https://www.coingecko.com/en/coins/stk-coin	0.03678149
5353	Glosfer Token	https://www.coingecko.com/en/coins/glosfer-token	0.00020202
5354	Bitsonic Token	https://www.coingecko.com/en/coins/bitsonic-token	0.02065822
5355	Cryptassist	https://www.coingecko.com/en/coins/cryptassist	0.00174371
5356	VERSESS COIN	https://www.coingecko.com/en/coins/versess-coin	11.34
5357	Token Economy Doin	https://www.coingecko.com/en/coins/token-economy-doin	0.00217059
5358	ATM Cash Gold	https://www.coingecko.com/en/coins/atm-cash-gold	0.00008632
5359	IENETChain	https://www.coingecko.com/en/coins/ienetchain	0.00005102
5360	TronEuropeRewardCoin	https://www.coingecko.com/en/coins/troneuroperewardcoin	0.01993966
5361	DeltaExCoin	https://www.coingecko.com/en/coins/deltaexcoin	0.00010177
5362	Cryptospot Token	https://www.coingecko.com/en/coins/cryptospot-token	0.01481819
5363	XCoinPay	https://www.coingecko.com/en/coins/xcoinpay	0.00024065
5364	SPENDER-X	https://www.coingecko.com/en/coins/spender-x	0.00000513
5365	Six Farm	https://www.coingecko.com/en/coins/six-farm	0.00001788
5366	360 Tribe	https://www.coingecko.com/en/coins/360-tribe	0.00000049
5367	WAL	https://www.coingecko.com/en/coins/wal	0.00912232
5368	Soro	https://www.coingecko.com/en/coins/soro	0.00000636
5369	Dimension	https://www.coingecko.com/en/coins/dimension	0.03859720
5370	PLANET	https://www.coingecko.com/en/coins/planet	0.03318445
5371	Overseas Direct Certification	https://www.coingecko.com/en/coins/overseas-direct-certification	0.00006999
5372	COINXCLUB	https://www.coingecko.com/en/coins/coinxclub	0.00001703
5373	Elevato	https://www.coingecko.com/en/coins/elevato	0.480381
5374	AK12	https://www.coingecko.com/en/coins/ak12	0.126052
5375	Meterqubes	https://www.coingecko.com/en/coins/meterqubes	0.00012122
5376	IDK	https://www.coingecko.com/en/coins/idk	0.06759583
5377	CryptoBonusMiles	https://www.coingecko.com/en/coins/cryptobonusmiles	0.00001666
5378	SharkTrade	https://www.coingecko.com/en/coins/sharktrade	0.00011355
5379	BIGBANG Coin	https://www.coingecko.com/en/coins/bigbang-coin	0.00330016
5380	EMOGI Network	https://www.coingecko.com/en/coins/emogi-network	0.00022818
5381	IOTU	https://www.coingecko.com/en/coins/iotu	0.00407477
5382	P2T	https://www.coingecko.com/en/coins/p2t	0.00011711
5383	ECPN Token	https://www.coingecko.com/en/coins/ecpn-token	0.00005956
5384	NairaX	https://www.coingecko.com/en/coins/nairax	0.00520313
5385	Extreme Private Masternode Coin	https://www.coingecko.com/en/coins/extreme-private-masternode-coin	0.00021517
5386	NashCash	https://www.coingecko.com/en/coins/nashcash	0.00043253
5387	Wave Edu Coin	https://www.coingecko.com/en/coins/wave-edu-coin	0.00048325
5388	Watchdog	https://www.coingecko.com/en/coins/watchdog	0.00290428
5389	BitcoinMoney	https://www.coingecko.com/en/coins/bitcoinmoney	0.00017343
5390	Spice	https://www.coingecko.com/en/coins/spice	0.00034358
5391	Maya Coin	https://www.coingecko.com/en/coins/maya-coin	0.168308
5392	Supertron	https://www.coingecko.com/en/coins/supertron	0.00000645
5393	Hintchain	https://www.coingecko.com/en/coins/hintchain	0.00261574
5394	PayProtocol Paycoin	https://www.coingecko.com/en/coins/payprotocol-paycoin	0.252309
5395	Capitalsharetoken	https://www.coingecko.com/en/coins/capitalsharetoken	0.00032294
5396	THE STONE COIN	https://www.coingecko.com/en/coins/the-stone-coin	0.04584697
5397	Swapzilla	https://www.coingecko.com/en/coins/swapzilla	0.364255
5398	uTip	https://www.coingecko.com/en/coins/utip	0.00246529
5399	Electronic Move Pay	https://www.coingecko.com/en/coins/electronic-move-pay	0.01998983
5400	Data Transaction	https://www.coingecko.com/en/coins/data-transaction	0.00561928
5401	Nacho Coin	https://www.coingecko.com/en/coins/nacho-coin	0.00014620
5402	Leviathan	https://www.coingecko.com/en/coins/leviathan	0.00042871
5403	HORA Token	https://www.coingecko.com/en/coins/hora-token	0.00004945
5404	12Ships	https://www.coingecko.com/en/coins/12ships	0.00315387
5405	Jobchain	https://www.coingecko.com/en/coins/jobchain	0.00007921
5406	Echoin	https://www.coingecko.com/en/coins/echoin	0.00322223
5407	InfChain	https://www.coingecko.com/en/coins/infchain	0.00037279
5408	ZionCoin	https://www.coingecko.com/en/coins/zioncoin	0.00008004
5409	B360	https://www.coingecko.com/en/coins/b360	0.00067799
5410	Opennity	https://www.coingecko.com/en/coins/opennity	0.00003352
5411	JobCoin	https://www.coingecko.com/en/coins/jobcoin	0.00020775
5412	LoveHearts	https://www.coingecko.com/en/coins/lovehearts	0.00003256
5413	Nestree	https://www.coingecko.com/en/coins/nestree	0.00877141
5414	Arthur Chain	https://www.coingecko.com/en/coins/arthur-chain	0.00289165
5415	HealthCUBE	https://www.coingecko.com/en/coins/healthcube	0.00002745
5416	CMDX	https://www.coingecko.com/en/coins/cmdx	0.00010734
5417	Muay Thai Chain	https://www.coingecko.com/en/coins/muay-thai-chain	0.00000100
5418	USDx Stablecoin	https://www.coingecko.com/en/coins/usdx-stablecoin	0.996230
5419	Warranty Chain	https://www.coingecko.com/en/coins/warranty-chain	0.00343290
5420	INLOCK	https://www.coingecko.com/en/coins/inlock	0.00223866
5421	FunKeyPay	https://www.coingecko.com/en/coins/funkeypay	0.00004619
5422	Tools Chain	https://www.coingecko.com/en/coins/tools-chain	0.00100041
5423	UNICORN Token	https://www.coingecko.com/en/coins/unicorn-token	0.00042388
5424	SPIN Token	https://www.coingecko.com/en/coins/spin-token	0.01245007
5425	ManateeCoin	https://www.coingecko.com/en/coins/manateecoin	0.00008723
5426	OAS Chain	https://www.coingecko.com/en/coins/oas-chain	0.00028038
5427	Kahsh	https://www.coingecko.com/en/coins/kahsh	0.01715406
5428	GP Token	https://www.coingecko.com/en/coins/gp-token	0.00360899
5429	Helios Protocol	https://www.coingecko.com/en/coins/helios-protocol	0.00053795
5430	Tourcom	https://www.coingecko.com/en/coins/tourcom	0.00440000
5431	PROT	https://www.coingecko.com/en/coins/prot	0.00101989
5432	Bitcoin Short	https://www.coingecko.com/en/coins/bitcoin-short	8.90
5433	TOPIA	https://www.coingecko.com/en/coins/topia	0.04525379
5434	Jetmint	https://www.coingecko.com/en/coins/jetmint	0.00068867
5435	HUPAYX	https://www.coingecko.com/en/coins/hupayx	0.01749203
5436	TUNE TOKEN	https://www.coingecko.com/en/coins/tune-token	0.00207883
5437	Decentralized Vulnerability Platform	https://www.coingecko.com/en/coins/decentralized-vulnerability-platform	0.02452448
5438	Receive Access Ecosystem	https://www.coingecko.com/en/coins/receive-access-ecosystem	0.629662
5439	BravoCoin	https://www.coingecko.com/en/coins/bravo-coin	0.00345423
5440	ArdCoin	https://www.coingecko.com/en/coins/ardcoin	0.00042209
5441	Master MIX Token	https://www.coingecko.com/en/coins/master-mix-token	0.00007402
5442	Litecoin HD	https://www.coingecko.com/en/coins/litecoin-hd	0.00469003
5443	Alldex Alliance	https://www.coingecko.com/en/coins/alldex-alliance	0.00057626
5444	Xrpalike Gene	https://www.coingecko.com/en/coins/xrpalike-gene	0.07993905
5445	Fund of Fund Blockbank	https://www.coingecko.com/en/coins/fund-of-fund-blockbank	3.22
5446	Anti-Fraud Chain	https://www.coingecko.com/en/coins/anti-fraud-chain	0.00141127
5447	SymVerse	https://www.coingecko.com/en/coins/symverse	0.05250343
5448	CYBR Token	https://www.coingecko.com/en/coins/cybr-token	0.00073532
5449	Jackpot	https://www.coingecko.com/en/coins/jackpot	0.02801870
5450	SideShift AI	https://www.coingecko.com/en/coins/sideshift-ai	0.04003305
5451	MineBee	https://www.coingecko.com/en/coins/minebee	0.00012039
5452	Electric Vehicle Zone	https://www.coingecko.com/en/coins/electric-vehicle-zone	0.02452902
5453	BestPick Coin	https://www.coingecko.com/en/coins/bestpick-coin	0.00058512
5454	Life Is Camping Community	https://www.coingecko.com/en/coins/life-is-camping-community	0.00023226
5455	Gaps Chain	https://www.coingecko.com/en/coins/gaps-chain	0.337842
5456	8X8 Protocol	https://www.coingecko.com/en/coins/8x8-protocol	0.09191158
5457	RobboCoach	https://www.coingecko.com/en/coins/robbocoach	0.00786943
5458	Acash Coin	https://www.coingecko.com/en/coins/acash-coin	0.00000032
5459	ShitCoin	https://www.coingecko.com/en/coins/shitcoin	0.00000000
5460	WishChain	https://www.coingecko.com/en/coins/wishchain	0.00085971
5461	Genesis Coin	https://www.coingecko.com/en/coins/genesis-coin	0.00000367
5462	Arena Match Gold	https://www.coingecko.com/en/coins/arena-match-gold	0.00005065
5463	LightBit	https://www.coingecko.com/en/coins/lightbit	0.00182333
5464	SouthXchange Coin	https://www.coingecko.com/en/coins/southxchange-coin	0.00692384
5465	LUX BIO EXCHANGE COIN	https://www.coingecko.com/en/coins/lux-bio-exchange-coin	0.00311319
5466	D Community	https://www.coingecko.com/en/coins/d-community	0.00023609
5467	Ghost Talk	https://www.coingecko.com/en/coins/ghost-talk	0.00005636
5468	Precium	https://www.coingecko.com/en/coins/precium	0.01919593
5469	LBK	https://www.coingecko.com/en/coins/lbk	0.00730319
5470	LitecoinZ	https://www.coingecko.com/en/coins/litecoinz	0.00032268
5471	KAKI	https://www.coingecko.com/en/coins/kaki	0.00004896
5472	NSS Coin	https://www.coingecko.com/en/coins/nss-coin	0.00544350
5473	Saturn Classic DAO Token	https://www.coingecko.com/en/coins/saturn-classic-dao-token	0.00016215
5474	GloveCoin	https://www.coingecko.com/en/coins/glovecoin	0.00025706
5475	AIOT Trusted	https://www.coingecko.com/en/coins/aiot-trusted	0.00019962
5476	Gomics	https://www.coingecko.com/en/coins/gomics	0.144144
5477	Emirex Token	https://www.coingecko.com/en/coins/emirex-token	0.456891
5478	BitcoinMono	https://www.coingecko.com/en/coins/bitcoinmono	0.00000001
5479	Paycon Token	https://www.coingecko.com/en/coins/paycon-token	0.00008102
5480	United SciFi Coin	https://www.coingecko.com/en/coins/united-scifi-coin	0.00042937
5481	TopCoin	https://www.coingecko.com/en/coins/topcoin	0.00011012
5482	Basid Coin	https://www.coingecko.com/en/coins/basid-coin	0.574555
5483	Istardust	https://www.coingecko.com/en/coins/istardust	0.01339284
5484	Chicken	https://www.coingecko.com/en/coins/chicken	10.08
5485	Tcbcoin	https://www.coingecko.com/en/coins/tcbcoin	7.40
5486	DeFi Firefly	https://www.coingecko.com/en/coins/defi-firefly	1.46
5487	Toshify.finance	https://www.coingecko.com/en/coins/toshify-finance	27.52
5488	Rare Pepe	https://www.coingecko.com/en/coins/rare-pepe	0.06382357
5489	Contribute	https://www.coingecko.com/en/coins/contribute	1.88
5490	MANY	https://www.coingecko.com/en/coins/many	0.272825
5491	YFF.Finance	https://www.coingecko.com/en/coins/yff-finance	14.80
5492	CY Finance	https://www.coingecko.com/en/coins/cy-finance	0.308295
5493	Hotpot Base Token	https://www.coingecko.com/en/coins/hotpot-base-token	0.00060912
5494	Bullers Coin	https://www.coingecko.com/en/coins/bullers-coin	0.01094946
5495	Grafsound	https://www.coingecko.com/en/coins/grafsound	0.426825
5496	uUSDwETH Synthetic Token Expiring 31 December 2020	https://www.coingecko.com/en/coins/uusd-synthetic-token-expiring-31-december-2020	1.06
5497	uUSDrBTC Synthetic Token Expiring 31 December 2020	https://www.coingecko.com/en/coins/uusdrbtc-synthetic-token-expiring-31-december-2020	1.02
5498	YFII Gold	https://www.coingecko.com/en/coins/yfii-gold	11.44
5499	BakeryToken	https://www.coingecko.com/en/coins/bakerytoken	0.03389454
5500	Wrapped BNB	https://www.coingecko.com/en/coins/wbnb	28.85
5501	Bidao	https://www.coingecko.com/en/coins/bidao	0.03046165
5502	NO Trump Augur Prediction Token	https://www.coingecko.com/en/coins/no-trump-augur-prediction-token	0.614871
5503	YES Trump Augur Prediction Token	https://www.coingecko.com/en/coins/yes-trump-augur-prediction-token	0.409358
5504	Safari	https://www.coingecko.com/en/coins/safari	0.00104796
5505	Puriever	https://www.coingecko.com/en/coins/puriever	1.62
5506	BMJ Master Nodes	https://www.coingecko.com/en/coins/bmj-master-nodes	103.57
5507	Defi Shopping Stake	https://www.coingecko.com/en/coins/defi-shopping-stake	1.33
5508	IYF.finance	https://www.coingecko.com/en/coins/iyf-finance	36.19
5509	UNII Finance	https://www.coingecko.com/en/coins/unii-finance	0.00103155
5510	S.Finance	https://www.coingecko.com/en/coins/s-finance	1.59
5511	TitanSwap	https://www.coingecko.com/en/coins/titanswap	0.204563
5512	Ultra Clear	https://www.coingecko.com/en/coins/ultra-clear	0.00964393
5513	SpokLottery	https://www.coingecko.com/en/coins/spoklottery	0.00065773
5514	Karaganda Token	https://www.coingecko.com/en/coins/karaganda-token	0.00190002
5515	Fanta.Finance	https://www.coingecko.com/en/coins/fanta-finance	0.234155
5516	xBTC	https://www.coingecko.com/en/coins/xbtc	0.583585
5517	Odinycoin	https://www.coingecko.com/en/coins/odinycoin	0.03223014
5518	Convertible ACXT	https://www.coingecko.com/en/coins/convertible-acxt	3.07
5519	Flamingo Finance	https://www.coingecko.com/en/coins/flamingo-finance	0.384176
5520	Morpher	https://www.coingecko.com/en/coins/morpher	0.01716931
5521	yAxis	https://www.coingecko.com/en/coins/yaxis	7.40
5522	CryptoWater	https://www.coingecko.com/en/coins/cryptowater	1.18
5523	CXN Network	https://www.coingecko.com/en/coins/cxn-network	0.00971024
5524	Rio DeFi	https://www.coingecko.com/en/coins/rio-defi	0.09993914
5525	Consensus Cell Network	https://www.coingecko.com/en/coins/consensus-cell-network	0.03103544
5526	Vectorium	https://www.coingecko.com/en/coins/vectorium	0.107604
5527	Wrapped LEO	https://www.coingecko.com/en/coins/wrapped-leo	0.251229
5528	Vampire Protocol	https://www.coingecko.com/en/coins/vampire-protocol	0.03625984
5529	PancakeSwap	https://www.coingecko.com/en/coins/pancakeswap	0.516577
5530	YieldWars	https://www.coingecko.com/en/coins/yieldwars	0.548346
5531	DEXTF	https://www.coingecko.com/en/coins/dextf	0.05920207
5532	cVault.finance	https://www.coingecko.com/en/coins/cvault-finance	6527.46
5533	Near IOU (NEAR)	https://www.coingecko.com/en/coins/near-iou	2.13
5534	Stobox Token	https://www.coingecko.com/en/coins/stobox-token	0.342364
5535	Spartan Protocol Token	https://www.coingecko.com/en/coins/spartan-protocol-token	0.09770971
5536	Yoink	https://www.coingecko.com/en/coins/yoink	0.01262595
5537	Yearn Finance Passive Income	https://www.coingecko.com/en/coins/yearn-finance-passive-income	24.08
5538	Tamy Token	https://www.coingecko.com/en/coins/tamy-token	0.06475884
5539	QChi Chain	https://www.coingecko.com/en/coins/qchi-chain	0.00350821
5540	TMC	https://www.coingecko.com/en/coins/tmc	0.359609
5541	YFE Money	https://www.coingecko.com/en/coins/yfe-money	28.52
5542	TomoChain ERC-20	https://www.coingecko.com/en/coins/tomoe	0.781892
5543	AmericanHorror.Finance	https://www.coingecko.com/en/coins/americanhorror-finance	809.51
5544	Timers	https://www.coingecko.com/en/coins/timers	0.239285
5545	Yearn Finance Ecosystem	https://www.coingecko.com/en/coins/yearn-finance-ecosystem	48.68
5546	YFarmLand Token	https://www.coingecko.com/en/coins/yfarmland-token	5.48
5547	P2PGO	https://www.coingecko.com/en/coins/p2pgo	0.242806
5548	NTerprise	https://www.coingecko.com/en/coins/nterprise	0.01442378
5549	Kompass	https://www.coingecko.com/en/coins/kompass	79.34
5550	DeltaHub Community	https://www.coingecko.com/en/coins/deltahub-community	0.130171
5551	SAFE DEAL	https://www.coingecko.com/en/coins/safe-deal	19.04
5552	MoonRabbit	https://www.coingecko.com/en/coins/moonrabbit	87.34
5553	Fiscus FYI	https://www.coingecko.com/en/coins/fiscus-fyi	11.53
5554	APEcoin	https://www.coingecko.com/en/coins/apecoin	1.39
5555	Unlimited FiscusFYI	https://www.coingecko.com/en/coins/unlimited-fiscusfyi	5.54
5556	extraDNA	https://www.coingecko.com/en/coins/extradna	0.00056983
5557	HLP Token	https://www.coingecko.com/en/coins/hlp-token	1.01
5558	Pajama.Finance	https://www.coingecko.com/en/coins/pajama-finance	2.97
5559	Epic	https://www.coingecko.com/en/coins/epic	2.79
5560	Steaks Finance	https://www.coingecko.com/en/coins/steaks-finance	0.00380304
5561	Yearn Land	https://www.coingecko.com/en/coins/yearn-land	232.28
5562	BullionsChain	https://www.coingecko.com/en/coins/bullionschain	0.349881
5563	Satopay Yield Token	https://www.coingecko.com/en/coins/satopay-yield-token	0.281957
5564	Venus	https://www.coingecko.com/en/coins/venus	4.11
5565	Phantasma Energy	https://www.coingecko.com/en/coins/phantasma-energy	0.01710482
5566	Street Cred	https://www.coingecko.com/en/coins/street-cred	0.373972
5567	TerraUSD	https://www.coingecko.com/en/coins/terra-usd	1.01
5568	YFMoonBeam	https://www.coingecko.com/en/coins/yfmoonbeam	3.65
5569	Yearn4 Finance	https://www.coingecko.com/en/coins/yearn4-finance	28.69
5570	AurusCOIN	https://www.coingecko.com/en/coins/auruscoin	2.56
5571	Orb V2	https://www.coingecko.com/en/coins/orb-v2	3.72
5572	ErcauX	https://www.coingecko.com/en/coins/ercaux	0.09233149
5573	Kirobo	https://www.coingecko.com/en/coins/kirobo	0.00835768
5574	YFET	https://www.coingecko.com/en/coins/yfet	64.26
5575	Wrapped ANATHA	https://www.coingecko.com/en/coins/wrapped-anatha	0.03529039
5576	ZAC Finance	https://www.coingecko.com/en/coins/zac-finance	34.07
5577	Moonbase	https://www.coingecko.com/en/coins/moonbase	0.799495
5578	Bellevue Network	https://www.coingecko.com/en/coins/bellevue-network	0.01012449
5579	Cyclops Treasure	https://www.coingecko.com/en/coins/cyclops-treasure	122.77
5580	Onigiri	https://www.coingecko.com/en/coins/onigiri	0.375203
5581	xSNXa	https://www.coingecko.com/en/coins/xsnxa	0.405709
5582	PieDAO DEFI Small Cap	https://www.coingecko.com/en/coins/piedao-defi-small-cap	1.65
5583	TronX coin	https://www.coingecko.com/en/coins/tronx-coin	0.00521406
5584	YeaFinance	https://www.coingecko.com/en/coins/yeafinance	47.44
5585	YFOS.finance	https://www.coingecko.com/en/coins/yfos-finance	12.32
5586	YI12 STFinance	https://www.coingecko.com/en/coins/yi12-stfinance	11.05
5587	Polyient Games Governance Token	https://www.coingecko.com/en/coins/polyient-games-governance-token	228.16
5588	Novo	https://www.coingecko.com/en/coins/novo	3.70
5589	Vipo VPS	https://www.coingecko.com/en/coins/vipo-vps	0.549343
5590	YFPRO Finance	https://www.coingecko.com/en/coins/yfpro-finance	8.21
5591	DeXe	https://www.coingecko.com/en/coins/dexe	1.78
5592	BitZyon	https://www.coingecko.com/en/coins/bitzyon	0.00214505
5593	Dark.Build	https://www.coingecko.com/en/coins/darkbuild	34.26
5594	YFIVE FINANCE	https://www.coingecko.com/en/coins/yfive-finance	8.22
5595	Semitoken	https://www.coingecko.com/en/coins/semitoken	0.01000156
5596	TronSV	https://www.coingecko.com/en/coins/tronsv	0.00006057
5597	Epanus	https://www.coingecko.com/en/coins/epanus	0.900026
5598	Social Finance	https://www.coingecko.com/en/coins/social-finance	1.46
5599	YUNo Finance	https://www.coingecko.com/en/coins/yuno-finance	0.00014647
5600	Mini	https://www.coingecko.com/en/coins/mini	0.05375108
5601	Walnut.finance	https://www.coingecko.com/en/coins/walnut-finance	0.185414
5602	KIMCHI.finance	https://www.coingecko.com/en/coins/kimchi-finance	0.00150395
5603	Pearl Finance	https://www.coingecko.com/en/coins/pearl-finance	212.21
5604	Seigniorage Shares	https://www.coingecko.com/en/coins/seigniorage-shares	0.01949349
5605	Rug	https://www.coingecko.com/en/coins/rug	0.374976
5606	AlphaLink	https://www.coingecko.com/en/coins/alphalink	0.08171671
5607	tBridge Token	https://www.coingecko.com/en/coins/tbridge-token	0.751210
5608	Aladiex	https://www.coingecko.com/en/coins/aladiex	0.399309
5609	STABLE ASSET	https://www.coingecko.com/en/coins/stable-asset	0.830535
5610	ITEN	https://www.coingecko.com/en/coins/iten	0.00995686
5611	BLOCKMAX	https://www.coingecko.com/en/coins/blockmax	0.560691
5612	San Diego Coin	https://www.coingecko.com/en/coins/san-diego-coin	0.00004041
5613	Wing Shop	https://www.coingecko.com/en/coins/wing-shop	0.00794691
5614	COVIR	https://www.coingecko.com/en/coins/covir	0.184660
5615	Soft Yearn	https://www.coingecko.com/en/coins/soft-yearn	6.40
5616	CryptoBRL	https://www.coingecko.com/en/coins/cryptobrl	0.179162
5617	TRONbetLive	https://www.coingecko.com/en/coins/tronbetlive	0.02771967
5618	ASIAN MODEL FESTIVAL	https://www.coingecko.com/en/coins/asian-model-festival	0.01469738
5619	New Year Bull	https://www.coingecko.com/en/coins/new-year-bull	0.03217464
5620	Uniris	https://www.coingecko.com/en/coins/uniris	0.06190489
5621	Upper Dollar	https://www.coingecko.com/en/coins/upper-dollar	1.00
5622	DefiDollar	https://www.coingecko.com/en/coins/defidollar	1.01
5623	TONToken	https://www.coingecko.com/en/coins/tontoken	0.01717212
5624	Omega Protocol Money	https://www.coingecko.com/en/coins/omega-protocol-money	0.00012005
5625	Prime DAI	https://www.coingecko.com/en/coins/prime-dai	0.00267757
5626	KittenFinance	https://www.coingecko.com/en/coins/kittenfinance	162.33
5627	Unipump	https://www.coingecko.com/en/coins/unipump	0.00113150
5628	SSS Finance	https://www.coingecko.com/en/coins/sss-finance	0.819738
5629	DeFi Bids	https://www.coingecko.com/en/coins/defi-bids	0.03221902
5630	YFI Business	https://www.coingecko.com/en/coins/yfi-business	8.25
5631	BlackHoleSwap-Compound DAI/USDC	https://www.coingecko.com/en/coins/blackholeswap-compound-dai-usdc	0.997706
5632	FoundryDAO Logistics	https://www.coingecko.com/en/coins/foundrydao-logistics	0.00797455
5633	Salmon	https://www.coingecko.com/en/coins/salmon	1.73
5634	YUGE	https://www.coingecko.com/en/coins/yuge	0.00308105
5635	Good Boy Points	https://www.coingecko.com/en/coins/good-boy-points	0.109109
5636	Unimonitor	https://www.coingecko.com/en/coins/unimonitor	0.09679476
5637	Upper Euro	https://www.coingecko.com/en/coins/upper-euro	1.19
5638	YFA Finance	https://www.coingecko.com/en/coins/yfa-finance	126.05
5639	Touch Social	https://www.coingecko.com/en/coins/touch-social	0.02541990
5640	TradePower Dex	https://www.coingecko.com/en/coins/tradepower-dex	0.00133150
5641	Upper Pound	https://www.coingecko.com/en/coins/upper-pound	1.31
5642	JackPool.finance	https://www.coingecko.com/en/coins/jackpool-finance	127.80
5643	Yefam.Finance	https://www.coingecko.com/en/coins/yefam-finance	0.07427510
5644	CORN	https://www.coingecko.com/en/coins/corn	11.77
5645	FlashSwap	https://www.coingecko.com/en/coins/flashswap	0.02750405
5646	Yearn Finance Protocol	https://www.coingecko.com/en/coins/yearn-finance-protocol	1.60
5647	MAKCOIN	https://www.coingecko.com/en/coins/makcoin	0.00001758
5648	Fidelity Token	https://www.coingecko.com/en/coins/fidelity-token	0.600140
5649	Money Plant Token	https://www.coingecko.com/en/coins/money-plant-token	0.03408725
5650	$AAPL	https://www.coingecko.com/en/coins/aapl	6.28
5651	Definitex	https://www.coingecko.com/en/coins/definitex	0.08914756
5652	Universal Liquidity Union	https://www.coingecko.com/en/coins/universal-liquidity-union	2.69
5653	Dollars	https://www.coingecko.com/en/coins/dollars	0.100632
5654	Enceladus Network	https://www.coingecko.com/en/coins/enceladus-network	0.00019286
5655	uUSDrBTC Synthetic Token Expiring 1 October 2020	https://www.coingecko.com/en/coins/uusdrbtc-synthetic-token-expiring-1-october-2020	0.957731
5656	LINKUSD	https://www.coingecko.com/en/coins/linkusd	0.988767
5657	HBTC Captain Token	https://www.coingecko.com/en/coins/hbtc-token	2.58
5658	Predix Network	https://www.coingecko.com/en/coins/predix-network	1.28
5659	Yeld Finance	https://www.coingecko.com/en/coins/yeld-finance	264.31
5660	Yield-farming.io	https://www.coingecko.com/en/coins/yield-farming-io	0.00058073
5661	VALOBIT	https://www.coingecko.com/en/coins/valobit	0.01130131
5662	YFIKing Finance	https://www.coingecko.com/en/coins/yfiking-finance	0.404669
5663	Shroud Protocol	https://www.coingecko.com/en/coins/shroud-protocol	0.00036487
5664	Maki Finance	https://www.coingecko.com/en/coins/maki-finance	0.192255
5665	YFFII Finance	https://www.coingecko.com/en/coins/yffii-finance	19.37
5666	i9 Coin	https://www.coingecko.com/en/coins/i9-coin	0.00632940
5667	OBIC	https://www.coingecko.com/en/coins/obic	1.33
5668	DefiBox	https://www.coingecko.com/en/coins/defibox	7.45
5669	DMD	https://www.coingecko.com/en/coins/dmd	119.20
5670	DefiKing	https://www.coingecko.com/en/coins/defiking	3.56
5671	QOOBER	https://www.coingecko.com/en/coins/qoober	0.560000
5672	Popcorn Token	https://www.coingecko.com/en/coins/popcorn-token	0.04101410
5673	Amp	https://www.coingecko.com/en/coins/amp	0.00600030
5674	Carrot Finance	https://www.coingecko.com/en/coins/carrot-finance	0.163736
5675	YFIBALANCER.FINANCE	https://www.coingecko.com/en/coins/yfibalancer-finance	1.04
5676	Zeedex	https://www.coingecko.com/en/coins/zeedex	0.05592107
5677	Yakuza DFO	https://www.coingecko.com/en/coins/yakuza-dfo	126.21
5678	YFILEND.FINANCE	https://www.coingecko.com/en/coins/yfilend-finance	6.43
5679	Dragon Ball	https://www.coingecko.com/en/coins/dragon-ball	1.71
5680	Etherpay	https://www.coingecko.com/en/coins/etherpay	0.583094
5681	DOOS TOKEN	https://www.coingecko.com/en/coins/doos-token	9.67
5682	Cannabis Seed Token	https://www.coingecko.com/en/coins/cannabis-seed-token	0.614222
5683	Rebase	https://www.coingecko.com/en/coins/rebase	0.163780
5684	dRAY	https://www.coingecko.com/en/coins/dray	0.699715
5685	WINSSHI	https://www.coingecko.com/en/coins/winsshi	0.01697978
5686	Sun Token	https://www.coingecko.com/en/coins/sun-token	15.87
5687	YOKcoin	https://www.coingecko.com/en/coins/yokcoin	0.04682492
5688	LOCK Token	https://www.coingecko.com/en/coins/lock-token	0.339527
5689	Solarite	https://www.coingecko.com/en/coins/solarite	1.36
5690	Nyan Finance	https://www.coingecko.com/en/coins/nyan-finance	215.03
5691	pTokens LTC	https://www.coingecko.com/en/coins/ptokens-ltc	49.51
5692	Creed Finance	https://www.coingecko.com/en/coins/creed-finance	1.09
5693	Vybe	https://www.coingecko.com/en/coins/vybe	0.698871
5694	QANplatform	https://www.coingecko.com/en/coins/qanplatform	0.266555
5695	ASLA	https://www.coingecko.com/en/coins/asla	0.03469433
5696	Golff	https://www.coingecko.com/en/coins/golff	0.885268
5697	Luna Nusa Coin	https://www.coingecko.com/en/coins/luna-nusa-coin	0.00047683
5698	Betherchip	https://www.coingecko.com/en/coins/betherchip	11.40
5699	Lottonation	https://www.coingecko.com/en/coins/lottonation	0.04868221
5700	Crypto Revolution	https://www.coingecko.com/en/coins/crypto-revolution	0.194040
5701	Ymen.Finance	https://www.coingecko.com/en/coins/ymen-finance	3.01
5702	Hedget	https://www.coingecko.com/en/coins/hedget	3.07
5703	YEP Coin	https://www.coingecko.com/en/coins/yep-coin	2.67
5704	Yield Farming Known as Ash	https://www.coingecko.com/en/coins/yield-farming-known-as-ash	128.52
5705	Zyro	https://www.coingecko.com/en/coins/zyro	0.184101
5706	Momentum	https://www.coingecko.com/en/coins/momentum	0.00610930
5707	Pofid Dao	https://www.coingecko.com/en/coins/pofid-dao	9.14
5708	Tribute	https://www.coingecko.com/en/coins/tribute	1.61
5709	bXIOT	https://www.coingecko.com/en/coins/bxiot	3.31
5710	Zoom Protocol	https://www.coingecko.com/en/coins/zoom-protocol	51.48
5711	HaloOracle	https://www.coingecko.com/en/coins/halo-oracle	0.00190184
5712	Thisoption	https://www.coingecko.com/en/coins/thisoption	1.18
5713	Melecoin	https://www.coingecko.com/en/coins/melecoin	0.368956
5714	Mobilian Coin	https://www.coingecko.com/en/coins/mobilian-coin	0.514902
5715	Katana Finance	https://www.coingecko.com/en/coins/katana-finance	0.00439786
5716	GemSwap	https://www.coingecko.com/en/coins/gemswap	0.00315663
5717	YFARM Token	https://www.coingecko.com/en/coins/yfarm-token	0.00373888
5718	UpBots	https://www.coingecko.com/en/coins/upbots	0.01254790
5719	Team Finance	https://www.coingecko.com/en/coins/team-finance	1.09
5720	Aave YFI	https://www.coingecko.com/en/coins/ayfi	19375.70
5721	Aave REN	https://www.coingecko.com/en/coins/aave-ren	0.237371
5722	Aave ENJ	https://www.coingecko.com/en/coins/aave-enj	0.150343
5723	Va Na Su	https://www.coingecko.com/en/coins/va-na-su	0.969122
5724	P2P	https://www.coingecko.com/en/coins/p2p	0.03122617
5725	Durain Finance	https://www.coingecko.com/en/coins/durain-finance	0.462784
5726	Oracolxor	https://www.coingecko.com/en/coins/oracolxor	0.00029092
5727	Hybrid Bank Cash	https://www.coingecko.com/en/coins/hybrid-bank-cash	0.06176291
5728	Daily Funds	https://www.coingecko.com/en/coins/daily-funds	0.625786
5729	Fame	https://www.coingecko.com/en/coins/fame	0.01249868
5730	UniFi Protocol	https://www.coingecko.com/en/coins/unifi-protocol	0.411526
5731	Gala	https://www.coingecko.com/en/coins/gala	0.00110980
5732	3X Long Sushi Token	https://www.coingecko.com/en/coins/3x-long-sushi-token	0.05607676
5733	3X Short Sushi Token	https://www.coingecko.com/en/coins/3x-short-sushi-token	1389.98
5734	YFMoonshot	https://www.coingecko.com/en/coins/yfmoonshot	43.52
5735	Printer.Finance	https://www.coingecko.com/en/coins/printer-finance	53.71
5736	WinPlay	https://www.coingecko.com/en/coins/winplay	0.00499397
5737	451PCBcom	https://www.coingecko.com/en/coins/451pcbcom	2.43
5738	StarCurve	https://www.coingecko.com/en/coins/starcurve	0.103513
5739	Dego Finance	https://www.coingecko.com/en/coins/dego-finance	1.13
5740	Moon YFI	https://www.coingecko.com/en/coins/moon-yfi	6.15
5741	Atlas	https://www.coingecko.com/en/coins/kassia-hotel	0.180174
5742	Bridge Oracle	https://www.coingecko.com/en/coins/bridge-oracle	0.00936669
5743	PayAccept	https://www.coingecko.com/en/coins/payaccept	0.129442
5744	Yfi Credits	https://www.coingecko.com/en/coins/yfi-credits	1.04
5745	Helgro	https://www.coingecko.com/en/coins/helgro	0.00015004
5746	Exchange Payment Coin	https://www.coingecko.com/en/coins/exchange-payment-coin	0.00194047
5747	Oracle System	https://www.coingecko.com/en/coins/oracle-system	0.01210704
5748	Diagon	https://www.coingecko.com/en/coins/diagon	0.00280047
5749	ETF Dao	https://www.coingecko.com/en/coins/etf-dao	0.00744669
5750	Resoper	https://www.coingecko.com/en/coins/resoper	0.03016074
5751	Permission Coin	https://www.coingecko.com/en/coins/permission-coin	0.00061775
5752	Markaccy	https://www.coingecko.com/en/coins/markaccy	0.09112767
5753	MCI Coin	https://www.coingecko.com/en/coins/mci-coin	0.01538776
5754	Value Liquidity	https://www.coingecko.com/en/coins/value-liquidity	4.97
5755	Hatch DAO	https://www.coingecko.com/en/coins/hatch-dao	0.00999504
5756	Pilnette	https://www.coingecko.com/en/coins/pilnette	0.00780736
5757	French ICO Coin	https://www.coingecko.com/en/coins/french-ico-coin	0.164397
5758	Samurai	https://www.coingecko.com/en/coins/samurai	38.24
5759	Crypto Accept	https://www.coingecko.com/en/coins/crypto-accept	0.00037886
5760	New BitShares	https://www.coingecko.com/en/coins/new-bitshares	0.00714839
5761	UNIFI DeFi	https://www.coingecko.com/en/coins/unifi-defi	0.04237585
5762	Livenodes Token	https://www.coingecko.com/en/coins/livenodes-token	27.75
5763	YMAX	https://www.coingecko.com/en/coins/ymax	103.28
5764	RI Token	https://www.coingecko.com/en/coins/ri-token	4.37
5765	Bitcratic Revenue	https://www.coingecko.com/en/coins/bitcratic-revenue	2.66
5766	Velo	https://www.coingecko.com/en/coins/velo	0.616459
5767	Giftedhands	https://www.coingecko.com/en/coins/giftedhands	0.01067934
5768	XSwap	https://www.coingecko.com/en/coins/xswap	0.00737349
5769	Finswap	https://www.coingecko.com/en/coins/finswap	0.104235
5770	VN.Finance	https://www.coingecko.com/en/coins/vn-finance	31.41
5771	Kush Finance	https://www.coingecko.com/en/coins/kush-finance	0.467019
5772	Soda Token	https://www.coingecko.com/en/coins/soda-token	1.85
5773	yTSLA Finance	https://www.coingecko.com/en/coins/ytsla-finance	17.73
5774	Shill	https://www.coingecko.com/en/coins/shill	0.00003079
5775	Crust Network	https://www.coingecko.com/en/coins/crust-network	5.90
5776	Ducato Protocol Token	https://www.coingecko.com/en/coins/ducato-protocol-token	4.15
5777	Yearn Finance Bit	https://www.coingecko.com/en/coins/yearn-finance-bit	471.06
5778	UnityDAO	https://www.coingecko.com/en/coins/unitydao	142.93
5779	YFIX.finance	https://www.coingecko.com/en/coins/yfix-finance	16.30
5780	Digital Currency Daily	https://www.coingecko.com/en/coins/digital-currency-daily	0.00207849
5781	Giré Token	https://www.coingecko.com/en/coins/gire-token	0.860659
5782	WenBurn	https://www.coingecko.com/en/coins/wenburn	0.02087405
5783	Kassia Home	https://www.coingecko.com/en/coins/kassia-home	0.165175
5784	GokuMarket Credit	https://www.coingecko.com/en/coins/gokumarket-credit	0.07728828
5785	Axioms	https://www.coingecko.com/en/coins/axioms	0.00531169
5786	Burger Swap	https://www.coingecko.com/en/coins/burger-swap	0.459096
5787	iCherry Finance	https://www.coingecko.com/en/coins/icherry-finance	1.99
5788	Teleport Token	https://www.coingecko.com/en/coins/teleport-token	N/A
5789	DEONEX Token	https://www.coingecko.com/en/coins/deonex-token	N/A
5790	pxUSD Synthetic USD Expiring 1 November 2020	https://www.coingecko.com/en/coins/pxusd	N/A
5791	SpaceGold	https://www.coingecko.com/en/coins/spacegold	N/A
5792	Huobi BTC	https://www.coingecko.com/en/coins/huobi-btc	N/A
5793	Lider Token	https://www.coingecko.com/en/coins/lider-token	N/A
5794	TrueHKD	https://www.coingecko.com/en/coins/true-hkd	N/A
5795	Venom Shards	https://www.coingecko.com/en/coins/venom-shards	N/A
5796	Yelp	https://www.coingecko.com/en/coins/yelp	N/A
5797	Qubicles	https://www.coingecko.com/en/coins/qubicles	N/A
5798	ZORIX	https://www.coingecko.com/en/coins/zorix	N/A
5799	The Other Deadness	https://www.coingecko.com/en/coins/the-other-deadness	N/A
5800	YY Inc.	https://www.coingecko.com/en/coins/yyinc	N/A
5801	PiedPiperNetwork	https://www.coingecko.com/en/coins/piedpipernetwork	N/A
5802	Commercial Data Storage	https://www.coingecko.com/en/coins/commercial-data-storage	N/A
5803	CryptoPunk #3831 Shards	https://www.coingecko.com/en/coins/cryptopunk-3831-shards	N/A
5804	AnarchETH	https://www.coingecko.com/en/coins/anarcheth	N/A
5805	RbCoin	https://www.coingecko.com/en/coins/rbcoin	N/A
5806	Yandex N.V.	https://www.coingecko.com/en/coins/yandex	N/A
5807	SwissViteBond	https://www.coingecko.com/en/coins/swissvitebond	N/A
5808	Gluwacoin	https://www.coingecko.com/en/coins/gluwacoin	N/A
5809	Telokanda	https://www.coingecko.com/en/coins/telokanda	N/A
5810	Antique Zombie Shards	https://www.coingecko.com/en/coins/antique-zombie-shards	N/A
5811	Sprint	https://www.coingecko.com/en/coins/sprint	N/A
5812	LaserCoin	https://www.coingecko.com/en/coins/lasercoin	N/A
5813	cUNI	https://www.coingecko.com/en/coins/compound-uniswap	N/A
5814	Darwinia Crab Network	https://www.coingecko.com/en/coins/darwinia-crab-network	N/A
5815	Abosom	https://www.coingecko.com/en/coins/abosom	N/A
5816	r/FortNiteBR Bricks	https://www.coingecko.com/en/coins/brick	N/A
5817	r/CryptoCurrency Moons	https://www.coingecko.com/en/coins/moon	N/A
5818	Cultural Heritage Token	https://www.coingecko.com/en/coins/cultural-heritage-token	N/A
5819	Central Market	https://www.coingecko.com/en/coins/central-market	N/A
5820	1X Short Compound USDT Token	https://www.coingecko.com/en/coins/1x-short-compound-usdt-token	N/A
5821	Textron	https://www.coingecko.com/en/coins/texttron	N/A
5822	Under Armour Cl A	https://www.coingecko.com/en/coins/under-armour-ci-a	N/A
5823	0.5X Long BiLira Token	https://www.coingecko.com/en/coins/0-5x-long-bilibra-token	N/A
5824	0.5X Long Compound USDT Token	https://www.coingecko.com/en/coins/0-5x-long-compound-usdt-token	N/A
5825	MoneyMinerzShares	https://www.coingecko.com/en/coins/moneyminerzshares	N/A
5826	0.5X Long Balancer Token	https://www.coingecko.com/en/coins/0-5x-long-balancer-token	N/A
5827	0.5X Long Privacy Index Token	https://www.coingecko.com/en/coins/0-5x-long-privacy-index-token	N/A
5828	Ynef Coin	https://www.coingecko.com/en/coins/ynef-coin	N/A
5829	BTSwap	https://www.coingecko.com/en/coins/btswap	N/A
5830	Friendcoin007	https://www.coingecko.com/en/coins/friendcoin007	N/A
5831	Amundi	https://www.coingecko.com/en/coins/amundi	N/A
5832	Steel Dynamics Inc	https://www.coingecko.com/en/coins/steel-dynamics-inc	N/A
5833	0.5X Long Cardano Token	https://www.coingecko.com/en/coins/0-5x-long-cardano-token	N/A
5834	0.5X Long Altcoin Index Token	https://www.coingecko.com/en/coins/0-5x-long-altcoin-index-token	N/A
5835	21Vianet Group, Inc.	https://www.coingecko.com/en/coins/21vianet-group-inc	N/A
5836	Wayfair Cl A	https://www.coingecko.com/en/coins/wayfair-ci-a	N/A
5837	0.5X Long BitMax Token Token	https://www.coingecko.com/en/coins/0-5x-long-bitmax-token-token	N/A
5838	Qbean	https://www.coingecko.com/en/coins/qbean	N/A
5839	0.5X Long Dogecoin Token	https://www.coingecko.com/en/coins/0-5x-long-dogecoin-token	N/A
5840	Resmed	https://www.coingecko.com/en/coins/resmed	N/A
5841	Qorvo Inc	https://www.coingecko.com/en/coins/qorvo-inc	N/A
5842	PNC Financial Services Group	https://www.coingecko.com/en/coins/pnc-financial-servicecs-group	N/A
5843	0.5X Long Dragon Index Token	https://www.coingecko.com/en/coins/0-5x-long-dragon-index-token	N/A
5844	SmartChain Protocol	https://www.coingecko.com/en/coins/smartchain-protocol	N/A
5845	WavesGames	https://www.coingecko.com/en/coins/wavesgames	N/A
5846	Energous Corporation	https://www.coingecko.com/en/coins/energous-corporation	N/A
5847	Weibo Corporation	https://www.coingecko.com/en/coins/weibo-corporation	N/A
5848	Whiting Petroleum	https://www.coingecko.com/en/coins/whiting-petroleum	N/A
5849	Cimarex Energy	https://www.coingecko.com/en/coins/climarex-energy	N/A
5850	AMUSE	https://www.coingecko.com/en/coins/amuse	N/A
5851	Lvmh Moet Hennessy Louis Vuitton Se	https://www.coingecko.com/en/coins/lvmh-moet-hennessy-louis-vuitton-se	N/A
5852	Infinity Token	https://www.coingecko.com/en/coins/infinity-token	N/A
5853	Kellogg	https://www.coingecko.com/en/coins/kellogg	N/A
5854	Transfereuim	https://www.coingecko.com/en/coins/transfereuim	N/A
5855	ArgenPeso	https://www.coingecko.com/en/coins/argenpeso	N/A
5856	Garmin Ltd	https://www.coingecko.com/en/coins/garmin-ltd	N/A
5857	Eastman Chemical	https://www.coingecko.com/en/coins/eastman-chemical	N/A
5858	DowDuPont Inc	https://www.coingecko.com/en/coins/dowdupoint-inc	N/A
5859	0.5X Long OKB Token	https://www.coingecko.com/en/coins/0-5x-long-okb-token	N/A
5860	Alnylam Pharmaceuticals Inc	https://www.coingecko.com/en/coins/alnylam-pharmaceuticals-inc	N/A
5861	Deere	https://www.coingecko.com/en/coins/deere	N/A
5862	Allergan	https://www.coingecko.com/en/coins/allergan	N/A
5863	High Roi	https://www.coingecko.com/en/coins/high-roi	N/A
5864	Virus Token	https://www.coingecko.com/en/coins/virus-token	N/A
5865	Beefy.Finance	https://www.coingecko.com/en/coins/beefy-finance	N/A
5866	MegaSerum	https://www.coingecko.com/en/coins/megaserum	N/A
5867	Useless Eth Token Lite	https://www.coingecko.com/en/coins/useless-eth-token-lite	N/A
5868	AdvisorShares Pure Cannabis ETF	https://www.coingecko.com/en/coins/advisorshares-pure-cannabis-etf	N/A
5869	Busy Protocol	https://www.coingecko.com/en/coins/busy-protocol	N/A
5870	Bestswap Community Token	https://www.coingecko.com/en/coins/bestswap-community-token	N/A
5871	CoinClix	https://www.coingecko.com/en/coins/coinclix	N/A
5872	dForce GOLDx	https://www.coingecko.com/en/coins/dforce-goldx	N/A
5873	dForce DAI	https://www.coingecko.com/en/coins/dforce-dai	N/A
5874	Catalent Inc	https://www.coingecko.com/en/coins/catalent-inc	N/A
5875	LORDLESS HOPS	https://www.coingecko.com/en/coins/lordless-hops	N/A
5876	dForce USDC	https://www.coingecko.com/en/coins/dforce-usdc	N/A
5877	Solereum	https://www.coingecko.com/en/coins/solereum	N/A
5878	dForce USDT	https://www.coingecko.com/en/coins/dforce-usdt	N/A
5879	RealToken 18900 Mansfield St Detroit MI	https://www.coingecko.com/en/coins/realtoken-18900-mansfield-st-detroit-mi	N/A
5880	Xilinx, Inc.	https://www.coingecko.com/en/coins/xilinx-inc	N/A
5881	RealToken 15634 Liberal St Detroit MI	https://www.coingecko.com/en/coins/realtoken-15634-liberal-st-detroit-mi	N/A
5882	BMToken	https://www.coingecko.com/en/coins/bmtoken	N/A
5883	iETC	https://www.coingecko.com/en/coins/ietc	N/A
5884	BlockPlus	https://www.coingecko.com/en/coins/blockplus	N/A
5885	Teradyne	https://www.coingecko.com/en/coins/teradyne	N/A
5886	DENCHCOIN	https://www.coingecko.com/en/coins/denchcoin	N/A
5887	Taurus Chain	https://www.coingecko.com/en/coins/taurus-chain	N/A
5888	iCEX	https://www.coingecko.com/en/coins/icex	N/A
5889	iDASH	https://www.coingecko.com/en/coins/idash	N/A
5890	Thinkium	https://www.coingecko.com/en/coins/thinkium	N/A
5891	YFI Product Token	https://www.coingecko.com/en/coins/yfi-product-token	N/A
5892	Symantec Corp	https://www.coingecko.com/en/coins/symantec-corp	N/A
5893	XPO Logistics	https://www.coingecko.com/en/coins/xpo-logistics	N/A
5894	Acuity Token	https://www.coingecko.com/en/coins/acuity-token	N/A
5895	Thomson Reuters	https://www.coingecko.com/en/coins/thomson-reuters	N/A
5896	TripAdvisor, Inc.	https://www.coingecko.com/en/coins/tripadvisor-inc	N/A
5897	Take-Two Interactive Software, Inc.	https://www.coingecko.com/en/coins/take-two-interactive-software-inc	N/A
5898	Gzclub Token	https://www.coingecko.com/en/coins/gzclub-token	N/A
5899	LYNC Network	https://www.coingecko.com/en/coins/lync-network	N/A
5900	Twilio Cl A	https://www.coingecko.com/en/coins/twilio-ci-a	N/A
5901	Twilio Cl A	https://www.coingecko.com/en/coins/twilio-ci-a	N/A
5902	Coinwaycoin	https://www.coingecko.com/en/coins/coinwaycoin	N/A
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 5902, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

