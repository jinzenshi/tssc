*! version 1.0  15jun2001* Stata version June 15, 2001 by John Hendrickx <John_Hendrickx@yahoo.com>/*Transforms ISCO-68 (International Classification of Occupation)4-digit occupational codes intoISCO-88 (International Classification of Occupation)4-digit occupational codesSource:Ganzeboom, Harry B.G.;Treiman, Donald J.,International Stratification and Mobility File: Conversion Tools.Utrecht: Department of Sociologie,http://www.fss.uu.nl/soc/hg/ismf.ISCO-68 Reference:ILO (International Labour Office). (1968).International Standard Classification of Occupations, revised edition.International Labour Office, Geneva.ISCO-88 Reference:ILO (International Labour Office). (1990).International standard classification of occupations : ISCO-88.Geneva: International Labour Office.*/program define isco6888	version 7	syntax newvarname, isco(varname numeric)	/* SPSS comments:	** this module recodes isco68 into isko88 ***	** last update: 92-08-25	** Please cite use of our conversion tools as:	** "Ganzeboom, Harry B.G.;Treiman, Donald J.,	** International Stratification and Mobility	** File: Conversion Tools. Utrecht: Department of Sociologie,	** http://www.fss.uu.nl/soc/hg/ismf." Date of last revision.	*/	quietly {		gen `varlist'=.		replace `varlist'=2110 if (`isco' == 0100)		replace `varlist'=2113 if (`isco' == 0110)		replace `varlist'=2111 if (`isco' == 0120)		replace `varlist'=2114 if (`isco' == 0131)		replace `varlist'=2111 if (`isco' == 0132)		replace `varlist'=2112 if (`isco' == 0133)		replace `varlist'=3111 if (`isco' == 0140)		replace `varlist'=2140 if (`isco' == 0200)		replace `varlist'=2141 if (`isco' == 0210)		replace `varlist'=2142 if (`isco' == 0220)		replace `varlist'=2143 if (`isco' == 0230)		replace `varlist'=2145 if (`isco' == 0240)		replace `varlist'=2146 if (`isco' == 0250)		replace `varlist'=2147 if (`isco' == 0260)		replace `varlist'=2147 if (`isco' == 0270)		replace `varlist'=2149 if (`isco' == 0280)		replace `varlist'=2149 if (`isco' == 0290)		replace `varlist'=3110 if (`isco' == 0300)		replace `varlist'=2148 if (`isco' == 0310)		replace `varlist'=3118 if (`isco' == 0320)		replace `varlist'=3118 if (`isco' == 0321)		replace `varlist'=3118 if (`isco' == 0329)		replace `varlist'=3112 if (`isco' == 0330)		replace `varlist'=3113 if (`isco' == 0340)		replace `varlist'=3114 if (`isco' == 0340)		replace `varlist'=3115 if (`isco' == 0350)		replace `varlist'=3116 if (`isco' == 0360)		replace `varlist'=3117 if (`isco' == 0370)		replace `varlist'=3117 if (`isco' == 0380)		replace `varlist'=3119 if (`isco' == 0390)		replace `varlist'=3140 if (`isco' == 0400)		replace `varlist'=3143 if (`isco' == 0410)		replace `varlist'=3143 if (`isco' == 0411)		replace `varlist'=3143 if (`isco' == 0419)		replace `varlist'=3142 if (`isco' == 0420)		replace `varlist'=3142 if (`isco' == 0421)		replace `varlist'=3142 if (`isco' == 0429)		replace `varlist'=3141 if (`isco' == 0430)		replace `varlist'=2210 if (`isco' == 0500)		replace `varlist'=2211 if (`isco' == 0510)		replace `varlist'=2212 if (`isco' == 0520)		replace `varlist'=2212 if (`isco' == 0521)		replace `varlist'=2212 if (`isco' == 0529)		replace `varlist'=2213 if (`isco' == 0530)		replace `varlist'=3213 if (`isco' == 0531)		replace `varlist'=2213 if (`isco' == 0539)		replace `varlist'=3211 if (`isco' == 0540)		replace `varlist'=3212 if (`isco' == 0541)		replace `varlist'=3211 if (`isco' == 0549)		replace `varlist'=2221 if (`isco' == 0600)		replace `varlist'=2221 if (`isco' == 0610)		replace `varlist'=2221 if (`isco' == 0611)		replace `varlist'=2221 if (`isco' == 0619)		replace `varlist'=3221 if (`isco' == 0620)		replace `varlist'=2222 if (`isco' == 0630)		replace `varlist'=3225 if (`isco' == 0640)		replace `varlist'=2223 if (`isco' == 0650)		replace `varlist'=3227 if (`isco' == 0660)		replace `varlist'=2224 if (`isco' == 0670)		replace `varlist'=3228 if (`isco' == 0680)		replace `varlist'=3223 if (`isco' == 0690)		replace `varlist'=2230 if (`isco' == 0700)		replace `varlist'=2230 if (`isco' == 0710)		replace `varlist'=2230 if (`isco' == 0711)		replace `varlist'=2230 if (`isco' == 0719)		replace `varlist'=3231 if (`isco' == 0720)		replace `varlist'=2230 if (`isco' == 0730)		replace `varlist'=3232 if (`isco' == 0740)		replace `varlist'=3224 if (`isco' == 0750)		replace `varlist'=3224 if (`isco' == 0751)		replace `varlist'=3224 if (`isco' == 0759)		replace `varlist'=3226 if (`isco' == 0760)		replace `varlist'=3226 if (`isco' == 0761)		replace `varlist'=3226 if (`isco' == 0762)		replace `varlist'=3226 if (`isco' == 0769)		replace `varlist'=3133 if (`isco' == 0770)		replace `varlist'=3220 if (`isco' == 0780)		replace `varlist'=3229 if (`isco' == 0790)		replace `varlist'=3226 if (`isco' == 0791)		replace `varlist'=3241 if (`isco' == 0792)		replace `varlist'=3222 if (`isco' == 0793)		replace `varlist'=2226 if (`isco' == 0799)		replace `varlist'=2120 if (`isco' == 0800)		replace `varlist'=2122 if (`isco' == 0810)		replace `varlist'=2121 if (`isco' == 0820)		replace `varlist'=2131 if (`isco' == 0830)		replace `varlist'=3434 if (`isco' == 0840)		replace `varlist'=2132 if (`isco' == 0849)		replace `varlist'=2441 if (`isco' == 0900)		replace `varlist'=2411 if (`isco' == 1100)		replace `varlist'=2411 if (`isco' == 1101)		replace `varlist'=2411 if (`isco' == 1109)		replace `varlist'=2420 if (`isco' == 1200)		replace `varlist'=2421 if (`isco' == 1210)		replace `varlist'=2421 if (`isco' == 1211)		replace `varlist'=2421 if (`isco' == 1219)		replace `varlist'=2422 if (`isco' == 1220)		replace `varlist'=2422 if (`isco' == 1221)		replace `varlist'=2422 if (`isco' == 1222)		replace `varlist'=2422 if (`isco' == 1229)		replace `varlist'=2429 if (`isco' == 1290)		replace `varlist'=2429 if (`isco' == 1291)		replace `varlist'=2429 if (`isco' == 1299)		replace `varlist'=2110 if (`isco' == 0130)		replace `varlist'=2300 if (`isco' == 1300)		replace `varlist'=2310 if (`isco' == 1310)		replace `varlist'=1229 if (`isco' == 1311)		replace `varlist'=2310 if (`isco' == 1319)		replace `varlist'=2321 if (`isco' == 1320)		replace `varlist'=2323 if (`isco' == 1321)		replace `varlist'=2321 if (`isco' == 1329)		replace `varlist'=2331 if (`isco' == 1330)		replace `varlist'=2332 if (`isco' == 1340)		replace `varlist'=2340 if (`isco' == 1350)		replace `varlist'=2359 if (`isco' == 1390)		replace `varlist'=1229 if (`isco' == 1391)		replace `varlist'=2352 if (`isco' == 1392)		replace `varlist'=3300 if (`isco' == 1393)		replace `varlist'=1229 if (`isco' == 1394)		replace `varlist'=2322 if (`isco' == 1399)		replace `varlist'=2460 if (`isco' == 1400)		replace `varlist'=2460 if (`isco' == 1410)		replace `varlist'=2460 if (`isco' == 1411)		replace `varlist'=3480 if (`isco' == 1412)		replace `varlist'=2460 if (`isco' == 1413)		replace `varlist'=2460 if (`isco' == 1414)		replace `varlist'=2460 if (`isco' == 1415)		replace `varlist'=3480 if (`isco' == 1416)		replace `varlist'=2460 if (`isco' == 1419)		replace `varlist'=3480 if (`isco' == 1490)		replace `varlist'=3242 if (`isco' == 1491)		replace `varlist'=3480 if (`isco' == 1499)		replace `varlist'=2451 if (`isco' == 1500)		replace `varlist'=2451 if (`isco' == 1510)		replace `varlist'=2451 if (`isco' == 1511)		replace `varlist'=2451 if (`isco' == 1519)		replace `varlist'=2451 if (`isco' == 1590)		replace `varlist'=2451 if (`isco' == 1591)		replace `varlist'=2451 if (`isco' == 1592)		replace `varlist'=2419 if (`isco' == 1593)		replace `varlist'=2451 if (`isco' == 1599)		replace `varlist'=2450 if (`isco' == 1600)		replace `varlist'=2452 if (`isco' == 1610)		replace `varlist'=3471 if (`isco' == 1620)		replace `varlist'=3471 if (`isco' == 1621)		replace `varlist'=3471 if (`isco' == 1622)		replace `varlist'=3471 if (`isco' == 1629)		replace `varlist'=3131 if (`isco' == 1630)		replace `varlist'=3131 if (`isco' == 1631)		replace `varlist'=3131 if (`isco' == 1639)		replace `varlist'=3470 if (`isco' == 1700)		replace `varlist'=3473 if (`isco' == 1710)		replace `varlist'=2453 if (`isco' == 1711)		replace `varlist'=3473 if (`isco' == 1712)		replace `varlist'=3473 if (`isco' == 1713)		replace `varlist'=2453 if (`isco' == 1719)		replace `varlist'=3473 if (`isco' == 1720)		replace `varlist'=2454 if (`isco' == 1721)		replace `varlist'=3473 if (`isco' == 1729)		replace `varlist'=2455 if (`isco' == 1730)		replace `varlist'=2455 if (`isco' == 1731)		replace `varlist'=2455 if (`isco' == 1732)		replace `varlist'=2455 if (`isco' == 1739)		replace `varlist'=1229 if (`isco' == 1740)		replace `varlist'=1229 if (`isco' == 1749)		replace `varlist'=3474 if (`isco' == 1750)		replace `varlist'=3470 if (`isco' == 1790)		replace `varlist'=3473 if (`isco' == 1791)		replace `varlist'=3472 if (`isco' == 1799)		replace `varlist'=3475 if (`isco' == 1800)		replace `varlist'=3475 if (`isco' == 1801)		replace `varlist'=3475 if (`isco' == 1809)		replace `varlist'=2400 if (`isco' == 1900)		replace `varlist'=2432 if (`isco' == 1910)		replace `varlist'=2442 if (`isco' == 1920)		replace `varlist'=2445 if (`isco' == 1921)		replace `varlist'=2443 if (`isco' == 1922)		replace `varlist'=2443 if (`isco' == 1923)		replace `varlist'=2442 if (`isco' == 1924)		replace `varlist'=2442 if (`isco' == 1929)		replace `varlist'=2446 if (`isco' == 1930)		replace `varlist'=3460 if (`isco' == 1931)		replace `varlist'=2446 if (`isco' == 1939)		replace `varlist'=2412 if (`isco' == 1940)		replace `varlist'=2412 if (`isco' == 1941)		replace `varlist'=1232 if (`isco' == 1949)		replace `varlist'=2444 if (`isco' == 1950)		replace `varlist'=2444 if (`isco' == 1951)		replace `varlist'=2444 if (`isco' == 1959)		replace `varlist'=2000 if (`isco' == 1960)		replace `varlist'=3400 if (`isco' == 1990)		replace `varlist'=5150 if (`isco' == 1991)		replace `varlist'=3450 if (`isco' == 1992)		replace `varlist'=5113 if (`isco' == 1993)		replace `varlist'=3340 if (`isco' == 1994)		replace `varlist'=3429 if (`isco' == 1995)		replace `varlist'=3100 if (`isco' == 1999)		replace `varlist'=1110 if (`isco' == 2000)		replace `varlist'=1100 if (`isco' == 2010)		replace `varlist'=1120 if (`isco' == 2011)		replace `varlist'=1120 if (`isco' == 2012)		replace `varlist'=1120 if (`isco' == 2013)		replace `varlist'=1120 if (`isco' == 2014)		replace `varlist'=1130 if (`isco' == 2015)		replace `varlist'=1110 if (`isco' == 2020)		replace `varlist'=1110 if (`isco' == 2021)		replace `varlist'=1110 if (`isco' == 2022)		replace `varlist'=1110 if (`isco' == 2023)		replace `varlist'=1110 if (`isco' == 2024)		replace `varlist'=1110 if (`isco' == 2029)		replace `varlist'=1120 if (`isco' == 2030)		replace `varlist'=1120 if (`isco' == 2031)		replace `varlist'=1120 if (`isco' == 2032)		replace `varlist'=1120 if (`isco' == 2033)		replace `varlist'=1120 if (`isco' == 2034)		replace `varlist'=1120 if (`isco' == 2035)		replace `varlist'=1130 if (`isco' == 2036)		replace `varlist'=1120 if (`isco' == 2039)		replace `varlist'=1300 if (`isco' == 2100)		replace `varlist'=1200 if (`isco' == 2110)		replace `varlist'=1200 if (`isco' == 2110)		replace `varlist'=1210 if (`isco' == 2111)		replace `varlist'=1210 if (`isco' == 2112)		replace `varlist'=1319 if (`isco' == 2113)		replace `varlist'=1227 if (`isco' == 2114)		replace `varlist'=1227 if (`isco' == 2115)		replace `varlist'=1313 if (`isco' == 2116)		replace `varlist'=1210 if (`isco' == 2119)		replace `varlist'=1210 if (`isco' == 2119)		replace `varlist'=1220 if (`isco' == 2120)		replace `varlist'=1220 if (`isco' == 2190)		replace `varlist'=1230 if (`isco' == 2191)		replace `varlist'=1230 if (`isco' == 2192)		replace `varlist'=1230 if (`isco' == 2193)		replace `varlist'=1230 if (`isco' == 2194)		replace `varlist'=1141 if (`isco' == 2195)		replace `varlist'=1142 if (`isco' == 2196)		replace `varlist'=1142 if (`isco' == 2197)		replace `varlist'=1227 if (`isco' == 2199)		replace `varlist'=1231 if (`isco' == 3000)		replace `varlist'=1240 if (`isco' == 3009)		replace `varlist'=3440 if (`isco' == 3100)		replace `varlist'=3440 if (`isco' == 3101)		replace `varlist'=3444 if (`isco' == 3102)		replace `varlist'=3441 if (`isco' == 3103)		replace `varlist'=3442 if (`isco' == 3104)		replace `varlist'=3440 if (`isco' == 3109)		replace `varlist'=4110 if (`isco' == 3200)		replace `varlist'=4111 if (`isco' == 3210)		replace `varlist'=4115 if (`isco' == 3211)		replace `varlist'=4111 if (`isco' == 3219)		replace `varlist'=4113 if (`isco' == 3220)		replace `varlist'=3430 if (`isco' == 3300)		replace `varlist'=3433 if (`isco' == 3310)		replace `varlist'=4211 if (`isco' == 3311)		replace `varlist'=4211 if (`isco' == 3312)		replace `varlist'=4212 if (`isco' == 3313)		replace `varlist'=4212 if (`isco' == 3314)		replace `varlist'=4211 if (`isco' == 3315)		replace `varlist'=3433 if (`isco' == 3319)		replace `varlist'=4120 if (`isco' == 3390)		replace `varlist'=4215 if (`isco' == 3391)		replace `varlist'=4121 if (`isco' == 3399)		replace `varlist'=3120 if (`isco' == 3400)		replace `varlist'=4114 if (`isco' == 3410)		replace `varlist'=3122 if (`isco' == 3420)		replace `varlist'=4133 if (`isco' == 3500)		replace `varlist'=1226 if (`isco' == 3510)		replace `varlist'=1226 if (`isco' == 3520)		replace `varlist'=4133 if (`isco' == 3590)		replace `varlist'=5112 if (`isco' == 3600)		replace `varlist'=5112 if (`isco' == 3601)		replace `varlist'=5112 if (`isco' == 3602)		replace `varlist'=5112 if (`isco' == 3609)		replace `varlist'=4142 if (`isco' == 3700)		replace `varlist'=9151 if (`isco' == 3701)		replace `varlist'=4142 if (`isco' == 3709)		replace `varlist'=4223 if (`isco' == 3800)		replace `varlist'=3132 if (`isco' == 3801)		replace `varlist'=3132 if (`isco' == 3802)		replace `varlist'=4223 if (`isco' == 3809)		replace `varlist'=4100 if (`isco' == 3900)		replace `varlist'=4131 if (`isco' == 3910)		replace `varlist'=4131 if (`isco' == 3911)		replace `varlist'=4131 if (`isco' == 3919)		replace `varlist'=4132 if (`isco' == 3920)		replace `varlist'=4100 if (`isco' == 3930)		replace `varlist'=4100 if (`isco' == 3931)		replace `varlist'=3432 if (`isco' == 3932)		replace `varlist'=4100 if (`isco' == 3939)		replace `varlist'=4222 if (`isco' == 3940)		replace `varlist'=4133 if (`isco' == 3941)		replace `varlist'=4131 if (`isco' == 3942)		replace `varlist'=3414 if (`isco' == 3943)		replace `varlist'=4221 if (`isco' == 3944)		replace `varlist'=4222 if (`isco' == 3949)		replace `varlist'=4141 if (`isco' == 3950)		replace `varlist'=4141 if (`isco' == 3951)		replace `varlist'=4141 if (`isco' == 3959)		replace `varlist'=4190 if (`isco' == 3990)		replace `varlist'=4143 if (`isco' == 3991)		replace `varlist'=1141 if (`isco' == 3992)		replace `varlist'=9153 if (`isco' == 3993)		replace `varlist'=4143 if (`isco' == 3999)		replace `varlist'=1314 if (`isco' == 4000)		replace `varlist'=1317 if (`isco' == 4001)		replace `varlist'=1231 if (`isco' == 4002)		replace `varlist'=1314 if (`isco' == 4009)		replace `varlist'=1314 if (`isco' == 4100)		replace `varlist'=1224 if (`isco' == 4101)		replace `varlist'=5230 if (`isco' == 4102)		replace `varlist'=1224 if (`isco' == 4103)		replace `varlist'=3421 if (`isco' == 4104)		replace `varlist'=3421 if (`isco' == 4105)		replace `varlist'=1314 if (`isco' == 4106)		replace `varlist'=9333 if (`isco' == 4107)		replace `varlist'=3423 if (`isco' == 4108)		replace `varlist'=1314 if (`isco' == 4109)		replace `varlist'=1233 if (`isco' == 4200)		replace `varlist'=1233 if (`isco' == 4210)		replace `varlist'=3416 if (`isco' == 4220)		replace `varlist'=3416 if (`isco' == 4221)		replace `varlist'=3416 if (`isco' == 4222)		replace `varlist'=3416 if (`isco' == 4229)		replace `varlist'=3415 if (`isco' == 4300)		replace `varlist'=3415 if (`isco' == 4310)		replace `varlist'=3415 if (`isco' == 4311)		replace `varlist'=3415 if (`isco' == 4319)		replace `varlist'=3415 if (`isco' == 4320)		replace `varlist'=3410 if (`isco' == 4400)		replace `varlist'=3412 if (`isco' == 4410)		replace `varlist'=3413 if (`isco' == 4411)		replace `varlist'=3411 if (`isco' == 4412)		replace `varlist'=3412 if (`isco' == 4419)		replace `varlist'=3429 if (`isco' == 4420)		replace `varlist'=3417 if (`isco' == 4430)		replace `varlist'=3417 if (`isco' == 4431)		replace `varlist'=3417 if (`isco' == 4432)		replace `varlist'=5200 if (`isco' == 4500)		replace `varlist'=5220 if (`isco' == 4510)		replace `varlist'=5220 if (`isco' == 4511)		replace `varlist'=5220 if (`isco' == 4512)		replace `varlist'=5210 if (`isco' == 4513)		replace `varlist'=5220 if (`isco' == 4514)		replace `varlist'=5220 if (`isco' == 4519)		replace `varlist'=9110 if (`isco' == 4520)		replace `varlist'=9110 if (`isco' == 4521)		replace `varlist'=9113 if (`isco' == 4522)		replace `varlist'=9112 if (`isco' == 4523)		replace `varlist'=9113 if (`isco' == 4524)		replace `varlist'=9110 if (`isco' == 4525)		replace `varlist'=5230 if (`isco' == 4529)		replace `varlist'=5200 if (`isco' == 4900)		replace `varlist'=1315 if (`isco' == 5000)		replace `varlist'=1315 if (`isco' == 5001)		replace `varlist'=1225 if (`isco' == 5002)		replace `varlist'=1225 if (`isco' == 5009)		replace `varlist'=1315 if (`isco' == 5100)		replace `varlist'=5000 if (`isco' == 5100)		replace `varlist'=1315 if (`isco' == 5101)		replace `varlist'=1315 if (`isco' == 5102)		replace `varlist'=1315 if (`isco' == 5103)		replace `varlist'=1315 if (`isco' == 5104)		replace `varlist'=1315 if (`isco' == 5109)		replace `varlist'=5121 if (`isco' == 5200)		replace `varlist'=5121 if (`isco' == 5201)		replace `varlist'=5121 if (`isco' == 5209)		replace `varlist'=5120 if (`isco' == 5300)		replace `varlist'=5122 if (`isco' == 5310)		replace `varlist'=5122 if (`isco' == 5311)		replace `varlist'=9132 if (`isco' == 5312)		replace `varlist'=5122 if (`isco' == 5319)		replace `varlist'=5123 if (`isco' == 5320)		replace `varlist'=5123 if (`isco' == 5321)		replace `varlist'=5123 if (`isco' == 5322)		replace `varlist'=5123 if (`isco' == 5329)		replace `varlist'=9130 if (`isco' == 5400)		replace `varlist'=5131 if (`isco' == 5401)		replace `varlist'=9132 if (`isco' == 5402)		replace `varlist'=9152 if (`isco' == 5403)		replace `varlist'=5142 if (`isco' == 5409)		replace `varlist'=9140 if (`isco' == 5500)		replace `varlist'=9141 if (`isco' == 5510)		replace `varlist'=9141 if (`isco' == 5511)		replace `varlist'=9141 if (`isco' == 5512)		replace `varlist'=9141 if (`isco' == 5519)		replace `varlist'=9132 if (`isco' == 5520)		replace `varlist'=9142 if (`isco' == 5521)		replace `varlist'=7143 if (`isco' == 5522)		replace `varlist'=9132 if (`isco' == 5529)		replace `varlist'=8264 if (`isco' == 5600)		replace `varlist'=5141 if (`isco' == 5700)		replace `varlist'=5141 if (`isco' == 5701)		replace `varlist'=5141 if (`isco' == 5702)		replace `varlist'=5141 if (`isco' == 5703)		replace `varlist'=5141 if (`isco' == 5709)		replace `varlist'=5160 if (`isco' == 5800)		replace `varlist'=5161 if (`isco' == 5810)		replace `varlist'=5162 if (`isco' == 5820)		replace `varlist'=3451 if (`isco' == 5821)		replace `varlist'=1229 if (`isco' == 5822)		replace `varlist'=1229 if (`isco' == 5823)		replace `varlist'=5162 if (`isco' == 5829)		replace `varlist'=5164 if (`isco' == 5830)		replace `varlist'=1229 if (`isco' == 5831)		replace `varlist'=3452 if (`isco' == 5832)		replace `varlist'=5164 if (`isco' == 5833)		replace `varlist'=5169 if (`isco' == 5890)		replace `varlist'=5163 if (`isco' == 5891)		replace `varlist'=3432 if (`isco' == 5892)		replace `varlist'=9152 if (`isco' == 5899)		replace `varlist'=5100 if (`isco' == 5900)		replace `varlist'=5113 if (`isco' == 5910)		replace `varlist'=5143 if (`isco' == 5920)		replace `varlist'=5100 if (`isco' == 5990)		replace `varlist'=9152 if (`isco' == 5991)		replace `varlist'=9151 if (`isco' == 5992)		replace `varlist'=9151 if (`isco' == 5993)		replace `varlist'=9152 if (`isco' == 5994)		replace `varlist'=9120 if (`isco' == 5995)		replace `varlist'=5111 if (`isco' == 5996)		replace `varlist'=4213 if (`isco' == 5997)		replace `varlist'=9151 if (`isco' == 5998)		replace `varlist'=5132 if (`isco' == 5999)		replace `varlist'=1311 if (`isco' == 6000)		replace `varlist'=6132 if (`isco' == 6001)		replace `varlist'=1311 if (`isco' == 6009)		replace `varlist'=6133 if (`isco' == 6100)		replace `varlist'=6133 if (`isco' == 6110)		replace `varlist'=1311 if (`isco' == 6111)		replace `varlist'=6210 if (`isco' == 6112)		replace `varlist'=6133 if (`isco' == 6113)		replace `varlist'=6133 if (`isco' == 6114)		replace `varlist'=6130 if (`isco' == 6115)		replace `varlist'=6130 if (`isco' == 6116)		replace `varlist'=9211 if (`isco' == 6117)		replace `varlist'=6133 if (`isco' == 6119)		replace `varlist'=6130 if (`isco' == 6120)		replace `varlist'=9211 if (`isco' == 6200)		replace `varlist'=9211 if (`isco' == 6210)		replace `varlist'=9211 if (`isco' == 6211)		replace `varlist'=9211 if (`isco' == 6219)		replace `varlist'=9211 if (`isco' == 6220)		replace `varlist'=9211 if (`isco' == 6230)		replace `varlist'=9211 if (`isco' == 6239)		replace `varlist'=9211 if (`isco' == 6240)		replace `varlist'=9211 if (`isco' == 6240)		replace `varlist'=9211 if (`isco' == 6250)		replace `varlist'=9211 if (`isco' == 6260)		replace `varlist'=9211 if (`isco' == 6270)		replace `varlist'=8331 if (`isco' == 6280)		replace `varlist'=9211 if (`isco' == 6290)		replace `varlist'=9200 if (`isco' == 6290)		replace `varlist'=9211 if (`isco' == 6291)		replace `varlist'=6100 if (`isco' == 6299)		replace `varlist'=9212 if (`isco' == 6300)		replace `varlist'=6141 if (`isco' == 6310)		replace `varlist'=6141 if (`isco' == 6311)		replace `varlist'=6141 if (`isco' == 6319)		replace `varlist'=9142 if (`isco' == 6320)		replace `varlist'=6141 if (`isco' == 6329)		replace `varlist'=6150 if (`isco' == 6400)		replace `varlist'=6150 if (`isco' == 6410)		replace `varlist'=6150 if (`isco' == 6411)		replace `varlist'=6150 if (`isco' == 6419)		replace `varlist'=6150 if (`isco' == 6490)		replace `varlist'=6154 if (`isco' == 6491)		replace `varlist'=9213 if (`isco' == 6499)		replace `varlist'=7510 if (`isco' == 7000)		replace `varlist'=7510 if (`isco' == 7001)		replace `varlist'=7510 if (`isco' == 7009)		replace `varlist'=7110 if (`isco' == 7100)		replace `varlist'=7111 if (`isco' == 7110)		replace `varlist'=7111 if (`isco' == 7111)		replace `varlist'=7111 if (`isco' == 7112)		replace `varlist'=7111 if (`isco' == 7113)		replace `varlist'=7111 if (`isco' == 7119)		replace `varlist'=8112 if (`isco' == 7120)		replace `varlist'=8113 if (`isco' == 7130)		replace `varlist'=8113 if (`isco' == 7139)		replace `varlist'=7220 if (`isco' == 7200)		replace `varlist'=8121 if (`isco' == 7210)		replace `varlist'=8122 if (`isco' == 7220)		replace `varlist'=8123 if (`isco' == 7230)		replace `varlist'=8122 if (`isco' == 7240)		replace `varlist'=7211 if (`isco' == 7250)		replace `varlist'=8123 if (`isco' == 7260)		replace `varlist'=8124 if (`isco' == 7270)		replace `varlist'=8223 if (`isco' == 7280)		replace `varlist'=8120 if (`isco' == 7290)		replace `varlist'=8140 if (`isco' == 7300)		replace `varlist'=8141 if (`isco' == 7310)		replace `varlist'=8141 if (`isco' == 7320)		replace `varlist'=7421 if (`isco' == 7321)		replace `varlist'=8141 if (`isco' == 7329)		replace `varlist'=8142 if (`isco' == 7330)		replace `varlist'=8143 if (`isco' == 7340)		replace `varlist'=8150 if (`isco' == 7400)		replace `varlist'=8151 if (`isco' == 7410)		replace `varlist'=8152 if (`isco' == 7420)		replace `varlist'=8153 if (`isco' == 7430)		replace `varlist'=8154 if (`isco' == 7440)		replace `varlist'=8155 if (`isco' == 7450)		replace `varlist'=8159 if (`isco' == 7490)		replace `varlist'=6142 if (`isco' == 7491)		replace `varlist'=8159 if (`isco' == 7499)		replace `varlist'=8260 if (`isco' == 7500)		replace `varlist'=8261 if (`isco' == 7510)		replace `varlist'=8261 if (`isco' == 7520)		replace `varlist'=7432 if (`isco' == 7530)		replace `varlist'=8262 if (`isco' == 7540)		replace `varlist'=7432 if (`isco' == 7541)		replace `varlist'=8262 if (`isco' == 7549)		replace `varlist'=8262 if (`isco' == 7550)		replace `varlist'=8264 if (`isco' == 7560)		replace `varlist'=8260 if (`isco' == 7590)		replace `varlist'=7441 if (`isco' == 7600)		replace `varlist'=7441 if (`isco' == 7610)		replace `varlist'=7441 if (`isco' == 7620)		replace `varlist'=8270 if (`isco' == 7700)		replace `varlist'=8273 if (`isco' == 7710)		replace `varlist'=8273 if (`isco' == 7711)		replace `varlist'=8273 if (`isco' == 7719)		replace `varlist'=8276 if (`isco' == 7720)		replace `varlist'=7411 if (`isco' == 7730)		replace `varlist'=8271 if (`isco' == 7731)		replace `varlist'=7411 if (`isco' == 7739)		replace `varlist'=8270 if (`isco' == 7740)		replace `varlist'=8272 if (`isco' == 7750)		replace `varlist'=7412 if (`isco' == 7760)		replace `varlist'=7412 if (`isco' == 7761)		replace `varlist'=7412 if (`isco' == 7769)		replace `varlist'=8277 if (`isco' == 7770)		replace `varlist'=8278 if (`isco' == 7780)		replace `varlist'=8270 if (`isco' == 7790)		replace `varlist'=7411 if (`isco' == 7799)		replace `varlist'=8279 if (`isco' == 7800)		replace `varlist'=8279 if (`isco' == 7810)		replace `varlist'=8279 if (`isco' == 7820)		replace `varlist'=8279 if (`isco' == 7830)		replace `varlist'=8279 if (`isco' == 7890)		replace `varlist'=7433 if (`isco' == 7900)		replace `varlist'=7433 if (`isco' == 7910)		replace `varlist'=7433 if (`isco' == 7911)		replace `varlist'=7433 if (`isco' == 7919)		replace `varlist'=7434 if (`isco' == 7920)		replace `varlist'=7433 if (`isco' == 7930)		replace `varlist'=7435 if (`isco' == 7940)		replace `varlist'=7436 if (`isco' == 7950)		replace `varlist'=7437 if (`isco' == 7960)		replace `varlist'=2221 if (`isco' == 0799)		replace `varlist'=8269 if (`isco' == 7990)		replace `varlist'=7442 if (`isco' == 8000)		replace `varlist'=7442 if (`isco' == 8010)		replace `varlist'=7442 if (`isco' == 8020)		replace `varlist'=7442 if (`isco' == 8030)		replace `varlist'=7420 if (`isco' == 8100)		replace `varlist'=7422 if (`isco' == 8110)		replace `varlist'=8240 if (`isco' == 8120)		replace `varlist'=7420 if (`isco' == 8190)		replace `varlist'=7422 if (`isco' == 8191)		replace `varlist'=7422 if (`isco' == 8199)		replace `varlist'=7113 if (`isco' == 8200)		replace `varlist'=7220 if (`isco' == 8300)		replace `varlist'=7221 if (`isco' == 8310)		replace `varlist'=7221 if (`isco' == 8311)		replace `varlist'=7221 if (`isco' == 8319)		replace `varlist'=7222 if (`isco' == 8320)		replace `varlist'=7222 if (`isco' == 8321)		replace `varlist'=7222 if (`isco' == 8329)		replace `varlist'=7223 if (`isco' == 8330)		replace `varlist'=7223 if (`isco' == 8331)		replace `varlist'=7223 if (`isco' == 8339)		replace `varlist'=8211 if (`isco' == 8340)		replace `varlist'=7224 if (`isco' == 8350)		replace `varlist'=8211 if (`isco' == 8350)		replace `varlist'=8223 if (`isco' == 8351)		replace `varlist'=7224 if (`isco' == 8359)		replace `varlist'=7220 if (`isco' == 8390)		replace `varlist'=7230 if (`isco' == 8400)		replace `varlist'=7230 if (`isco' == 8410)		replace `varlist'=8281 if (`isco' == 8411)		replace `varlist'=7233 if (`isco' == 8412)		replace `varlist'=7230 if (`isco' == 8419)		replace `varlist'=7311 if (`isco' == 8420)		replace `varlist'=7311 if (`isco' == 8421)		replace `varlist'=7311 if (`isco' == 8422)		replace `varlist'=7311 if (`isco' == 8429)		replace `varlist'=7231 if (`isco' == 8430)		replace `varlist'=1314 if (`isco' == 8431)		replace `varlist'=7231 if (`isco' == 8439)		replace `varlist'=7232 if (`isco' == 8440)		replace `varlist'=7230 if (`isco' == 8490)		replace `varlist'=7231 if (`isco' == 8491)		replace `varlist'=7233 if (`isco' == 8492)		replace `varlist'=8280 if (`isco' == 8493)		replace `varlist'=7234 if (`isco' == 8494)		replace `varlist'=7230 if (`isco' == 8499)		replace `varlist'=7240 if (`isco' == 8500)		replace `varlist'=7241 if (`isco' == 8510)		replace `varlist'=7242 if (`isco' == 8520)		replace `varlist'=8282 if (`isco' == 8530)		replace `varlist'=7243 if (`isco' == 8540)		replace `varlist'=7137 if (`isco' == 8550)		replace `varlist'=7137 if (`isco' == 8551)		replace `varlist'=7137 if (`isco' == 8559)		replace `varlist'=7244 if (`isco' == 8560)		replace `varlist'=7245 if (`isco' == 8570)		replace `varlist'=7240 if (`isco' == 8590)		replace `varlist'=3130 if (`isco' == 8600)		replace `varlist'=3132 if (`isco' == 8610)		replace `varlist'=3139 if (`isco' == 8620)		replace `varlist'=7210 if (`isco' == 8700)		replace `varlist'=7136 if (`isco' == 8710)		replace `varlist'=7136 if (`isco' == 8711)		replace `varlist'=7136 if (`isco' == 8719)		replace `varlist'=7212 if (`isco' == 8720)		replace `varlist'=7213 if (`isco' == 8730)		replace `varlist'=7213 if (`isco' == 8731)		replace `varlist'=7213 if (`isco' == 8732)		replace `varlist'=7213 if (`isco' == 8733)		replace `varlist'=7213 if (`isco' == 8739)		replace `varlist'=7214 if (`isco' == 8740)		replace `varlist'=7313 if (`isco' == 8800)		replace `varlist'=7313 if (`isco' == 8801)		replace `varlist'=7313 if (`isco' == 8809)		replace `varlist'=7320 if (`isco' == 8900)		replace `varlist'=7322 if (`isco' == 8910)		replace `varlist'=7322 if (`isco' == 8911)		replace `varlist'=7322 if (`isco' == 8919)		replace `varlist'=7321 if (`isco' == 8920)		replace `varlist'=8131 if (`isco' == 8930)		replace `varlist'=7323 if (`isco' == 8940)		replace `varlist'=7324 if (`isco' == 8950)		replace `varlist'=8130 if (`isco' == 8990)		replace `varlist'=8230 if (`isco' == 9000)		replace `varlist'=8230 if (`isco' == 9010)		replace `varlist'=8231 if (`isco' == 9020)		replace `varlist'=8253 if (`isco' == 9100)		replace `varlist'=7340 if (`isco' == 9200)		replace `varlist'=7341 if (`isco' == 9210)		replace `varlist'=7341 if (`isco' == 9211)		replace `varlist'=7341 if (`isco' == 9219)		replace `varlist'=8251 if (`isco' == 9220)		replace `varlist'=7342 if (`isco' == 9230)		replace `varlist'=7343 if (`isco' == 9240)		replace `varlist'=7343 if (`isco' == 9250)		replace `varlist'=7345 if (`isco' == 9260)		replace `varlist'=8224 if (`isco' == 9270)		replace `varlist'=7340 if (`isco' == 9290)		replace `varlist'=7241 if (`isco' == 9300)		replace `varlist'=7141 if (`isco' == 9310)		replace `varlist'=7141 if (`isco' == 9311)		replace `varlist'=7141 if (`isco' == 9319)		replace `varlist'=7142 if (`isco' == 9390)		replace `varlist'=7520 if (`isco' == 9400)		replace `varlist'=7312 if (`isco' == 9410)		replace `varlist'=7424 if (`isco' == 9420)		replace `varlist'=8212 if (`isco' == 9430)		replace `varlist'=7331 if (`isco' == 9490)		replace `varlist'=7331 if (`isco' == 9491)		replace `varlist'=7331 if (`isco' == 9492)		replace `varlist'=7331 if (`isco' == 9493)		replace `varlist'=8400 if (`isco' == 9499)		replace `varlist'=7120 if (`isco' == 9500)		replace `varlist'=7122 if (`isco' == 9510)		replace `varlist'=7123 if (`isco' == 9520)		replace `varlist'=7131 if (`isco' == 9530)		replace `varlist'=7124 if (`isco' == 9540)		replace `varlist'=7124 if (`isco' == 9541)		replace `varlist'=7124 if (`isco' == 9542)		replace `varlist'=7124 if (`isco' == 9549)		replace `varlist'=7133 if (`isco' == 9550)		replace `varlist'=7133 if (`isco' == 9551)		replace `varlist'=7133 if (`isco' == 9559)		replace `varlist'=7134 if (`isco' == 9560)		replace `varlist'=7135 if (`isco' == 9570)		replace `varlist'=7129 if (`isco' == 9590)		replace `varlist'=7129 if (`isco' == 9591)		replace `varlist'=7129 if (`isco' == 9592)		replace `varlist'=7129 if (`isco' == 9593)		replace `varlist'=7129 if (`isco' == 9594)		replace `varlist'=9313 if (`isco' == 9595)		replace `varlist'=7129 if (`isco' == 9596)		replace `varlist'=7141 if (`isco' == 9599)		replace `varlist'=8160 if (`isco' == 9600)		replace `varlist'=8161 if (`isco' == 9610)		replace `varlist'=8160 if (`isco' == 9690)		replace `varlist'=9330 if (`isco' == 9700)		replace `varlist'=9333 if (`isco' == 9710)		replace `varlist'=9333 if (`isco' == 9711)		replace `varlist'=9151 if (`isco' == 9712)		replace `varlist'=9151 if (`isco' == 9713)		replace `varlist'=9322 if (`isco' == 9714)		replace `varlist'=9333 if (`isco' == 9719)		replace `varlist'=7215 if (`isco' == 9720)		replace `varlist'=8333 if (`isco' == 9730)		replace `varlist'=8333 if (`isco' == 9731)		replace `varlist'=8333 if (`isco' == 9739)		replace `varlist'=8332 if (`isco' == 9740)		replace `varlist'=8334 if (`isco' == 9790)		replace `varlist'=8320 if (`isco' == 9800)		replace `varlist'=8340 if (`isco' == 9810)		replace `varlist'=8340 if (`isco' == 9811)		replace `varlist'=8340 if (`isco' == 9819)		replace `varlist'=8162 if (`isco' == 9820)		replace `varlist'=8311 if (`isco' == 9830)		replace `varlist'=8311 if (`isco' == 9831)		replace `varlist'=8311 if (`isco' == 9832)		replace `varlist'=8311 if (`isco' == 9839)		replace `varlist'=8311 if (`isco' == 9839)		replace `varlist'=8312 if (`isco' == 9840)		replace `varlist'=8320 if (`isco' == 9850)		replace `varlist'=8323 if (`isco' == 9851)		replace `varlist'=8324 if (`isco' == 9852)		replace `varlist'=8324 if (`isco' == 9853)		replace `varlist'=9333 if (`isco' == 9854)		replace `varlist'=3340 if (`isco' == 9855)		replace `varlist'=8322 if (`isco' == 9859)		replace `varlist'=9332 if (`isco' == 9860)		replace `varlist'=9332 if (`isco' == 9861)		replace `varlist'=9332 if (`isco' == 9869)		replace `varlist'=8320 if (`isco' == 9890)		replace `varlist'=8312 if (`isco' == 9891)		replace `varlist'=9331 if (`isco' == 9899)		replace `varlist'=9300 if (`isco' == 9900)		replace `varlist'=7520 if (`isco' == 9950)		replace `varlist'=7520 if (`isco' == 9951)		replace `varlist'=7520 if (`isco' == 9959)		replace `varlist'=8290 if (`isco' == 9970)		replace `varlist'=7530 if (`isco' == 9971)		replace `varlist'=8280 if (`isco' == 9979)		replace `varlist'=9300 if (`isco' == 9990)		replace `varlist'=9320 if (`isco' == 9991)		replace `varlist'=9320 if (`isco' == 9992)		replace `varlist'=9320 if (`isco' == 9993)		replace `varlist'=9312 if (`isco' == 9994)		replace `varlist'=9162 if (`isco' == 9995)		replace `varlist'=9161 if (`isco' == 9996)		replace `varlist'=9312 if (`isco' == 9997)		replace `varlist'=9300 if (`isco' == 9999)	}end