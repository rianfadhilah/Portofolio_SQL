Select StudentID, FirstName, LastName, Semester1, Semester2, ABS(MarkGrowth) as MarkGrowth
from students;
+-----------+-----------+----------+-----------+-----------+------------+
| StudentID | FirstName | LastName | Semester1 | Semester2 | MarkGrowth |
+-----------+-----------+----------+-----------+-----------+------------+
|         1 | Jose      | Mohit    |     64.55 |      72.6 |       8.05 |
|         2 | Lala      | Karlina  |     72.85 |     65.35 |        7.5 |
|         3 | Sultan    | Hadi     |     45.32 |     50.25 |       4.93 |
|         4 | Jaya      | Usman    |     86.73 |      77.4 |       9.33 |
|         5 | Anjali    | Wijaya   |     92.25 |     90.75 |        1.5 |
+-----------+-----------+----------+-----------+-----------+------------+

Select StudentID, FirstName, LastName, Semester1, Ceiling(semester1) as Semester1Ceil
from students;
+-----------+-----------+----------+-----------+---------------+
| StudentID | FirstName | LastName | Semester1 | Semester1Ceil |
+-----------+-----------+----------+-----------+---------------+
|         1 | Jose      | Mohit    |     64.55 |            65 |
|         2 | Lala      | Karlina  |     72.85 |            73 |
|         3 | Sultan    | Hadi     |     45.32 |            46 |
|         4 | Jaya      | Usman    |     86.73 |            87 |
|         5 | Anjali    | Wijaya   |     92.25 |            93 |
+-----------+-----------+----------+-----------+---------------+

Select StudentID, FirstName, LastName, Semester1, FLOOR(Semester1) as semester1, markGrowth
from students;
+-----------+-----------+----------+-----------+-----------+------------+
| StudentID | FirstName | LastName | Semester1 | semester1 | markGrowth |
+-----------+-----------+----------+-----------+-----------+------------+
|         1 | Jose      | Mohit    |     64.55 |        64 |      -8.05 |
|         2 | Lala      | Karlina  |     72.85 |        72 |        7.5 |
|         3 | Sultan    | Hadi     |     45.32 |        45 |      -4.93 |
|         4 | Jaya      | Usman    |     86.73 |        86 |       9.33 |
|         5 | Anjali    | Wijaya   |     92.25 |        92 |        1.5 |
+-----------+-----------+----------+-----------+-----------+------------+

Select StudentID, FirstName, LastName, Round(Semester1) as Semester1
from Students;
+-----------+-----------+----------+-----------+
| StudentID | FirstName | LastName | Semester1 |
+-----------+-----------+----------+-----------+
|         1 | Jose      | Mohit    |        65 |
|         2 | Lala      | Karlina  |        73 |
|         3 | Sultan    | Hadi     |        45 |
|         4 | Jaya      | Usman    |        87 |
|         5 | Anjali    | Wijaya   |        92 |
+-----------+-----------+----------+-----------+

Select StudentId, FirstName, LastName, SQRT(Semester1) as Semester1
from students;
+-----------+-----------+----------+-------------------+
| StudentId | FirstName | LastName | Semester1         |
+-----------+-----------+----------+-------------------+
|         1 | Jose      | Mohit    | 8.034301463101817 |
|         2 | Lala      | Karlina  | 8.535221145348256 |
|         3 | Sultan    | Hadi     | 6.732013071882734 |
|         4 | Jaya      | Usman    |  9.31289428695505 |
|         5 | Anjali    | Wijaya   | 9.604686356149273 |
+-----------+-----------+----------+-------------------+

Select StudentID, FirstName, LastName, MOD(Semester1,2) as Semester1, Semester2,EXP(MarkGrowth)
from students;
+-----------+-----------+----------+--------------------+-----------+------------------------+
| StudentID | FirstName | LastName | Semester1          | Semester2 | EXP(MarkGrowth)        |
+-----------+-----------+----------+--------------------+-----------+------------------------+
|         1 | Jose      | Mohit    | 0.5499999999999972 |      72.6 | 0.00031910192248120326 |
|         2 | Lala      | Karlina  | 0.8499999999999943 |     65.35 |     1808.0424144560632 |
|         3 | Sultan    | Hadi     | 1.3200000000000003 |     50.25 |  0.0072265032813764625 |
|         4 | Jaya      | Usman    |  0.730000000000004 |      77.4 |     11271.131485524471 |
|         5 | Anjali    | Wijaya   |               0.25 |     90.75 |     4.4816890703380645 |
+-----------+-----------+----------+--------------------+-----------+------------------------+

Select StudentID, CONCAT(FirstName, LastName) as Name, Semester1,Semester2, MarkGrowth
from students;
+-----------+--------------+-----------+-----------+------------+
| StudentID | Name         | Semester1 | Semester2 | MarkGrowth |
+-----------+--------------+-----------+-----------+------------+
|         1 | JoseMohit    |     64.55 |      72.6 |      -8.05 |
|         2 | LalaKarlina  |     72.85 |     65.35 |        7.5 |
|         3 | SultanHadi   |     45.32 |     50.25 |      -4.93 |
|         4 | JayaUsman    |     86.73 |      77.4 |       9.33 |
|         5 | AnjaliWijaya |     92.25 |     90.75 |        1.5 |
+-----------+--------------+-----------+-----------+------------+

Select StudentID, SUBSTRING_INDEX(Email,'@',1) as Name
from students;
+-----------+---------------+
| StudentID | Name          |
+-----------+---------------+
|         1 | Jose_Mohit    |
|         2 | lala_karlina  |
|         3 | Sultan_Hadi   |
|         4 | jaya_usman    |
|         5 | anjali_wijaya |
+-----------+---------------+

Select StudentID, FirstName, SUBSTR(FirstName, 1,3) as initial
from students;
+-----------+-----------+---------+
| StudentID | FirstName | initial |
+-----------+-----------+---------+
|         1 | Jose      | Jos     |
|         2 | Lala      | Lal     |
|         3 | Sultan    | Sul     |
|         4 | Jaya      | Jay     |
|         5 | Anjali    | Anj     |
+-----------+-----------+---------+

Select StudentID, FirstName, LENGTH(FirstName) as Total_Char
from students;
un
Select StudentID, FirstName, LENGTH(FirstName) as Total_Char
from students;
1
Select StudentID, FirstName, LENGTH(FirstName) as Total_Char
2
from students;
ConsoleGraphic
> 
+-----------+-----------+------------+
| StudentID | FirstName | Total_Char |
+-----------+-----------+------------+
|         1 | Jose      |          4 |
|         2 | Lala      |          4 |
|         3 | Sultan    |          6 |
|         4 | Jaya      |          4 |
|         5 | Anjali    |          6 |
+-----------+-----------+------------+

Select StudentID, Email, Replace(email, 'yahoo','gmail') as New_email
from Students;
+-----------+-------------------------+-------------------------+
| StudentID | Email                   | New_email               |
+-----------+-------------------------+-------------------------+
|         1 | Jose_Mohit@gmail.com    | Jose_Mohit@gmail.com    |
|         2 | lala_karlina@yahoo.com  | lala_karlina@gmail.com  |
|         3 | Sultan_Hadi@gmail.com   | Sultan_Hadi@gmail.com   |
|         4 | jaya_usman@yahoo.com    | jaya_usman@gmail.com    |
|         5 | anjali_wijaya@yahoo.com | anjali_wijaya@gmail.com |
+-----------+-------------------------+-------------------------+

SELECT StudentID, LOWER(FirstName), UPPER(LastName)
from students;
+-----------+------------------+-----------------+
| StudentID | LOWER(FirstName) | UPPER(LastName) |
+-----------+------------------+-----------------+
|         1 | jose             | MOHIT           |
|         2 | lala             | KARLINA         |
|         3 | sultan           | HADI            |
|         4 | jaya             | USMAN           |
|         5 | anjali           | WIJAYA          |
+-----------+------------------+-----------------+

SELECT SUM(Semester1) as Total_1, SUM(Semester2) as Total_2
from students;
+---------+---------+
| Total_1 | Total_2 |
+---------+---------+
|   361.7 |  356.35 |
+---------+---------+

SELECT COUNT(FirstName) as Total_student
from students;
+---------------+
| Total_student |
+---------------+
|             5 |
+---------------+

Select AVG(Semester1) as AVG_1, AVG(Semester2) as AVG_2
from students
+-------+-------+
| AVG_1 | AVG_2 |
+-------+-------+
| 72.34 | 72.34 |
+-------+-------+

SELECT MIN(Semester1) as Min1, MAX(Semester1) as Max1, MIN(Semester2) as Min2, MAX(Semester2) as Max2
from students;
+-------+-------+-------+-------+
| Min1  | Max1  | Min2  | Max2  |
+-------+-------+-------+-------+
| 45.32 | 92.25 | 50.25 | 90.75 |
+-------+-------+-------+-------+

SELECT province, COUNT(DISTINCT order_id) as total_order, SUM(item_price) as total_price
from sales_retail_2019
group by province;
+--------------------+-------------+--------------+
| province           | total_order | total_price  |
+--------------------+-------------+--------------+
| Aceh               |          16 |    575100000 |
| Bali               |         454 |  12555567000 |
| Bangka Belitung    |           8 |    378494000 |
| Banten             |         596 |  14925141000 |
| DKI Jakarta        |        8332 | 183872878000 |
| Jambi              |          55 |   3030991000 |
| Jawa Barat         |        2831 |  62982148000 |
| Jawa Tengah        |        1475 |  40508136000 |
| Jawa Timur         |        1406 |  28809529000 |
| Kalimantan Barat   |          18 |    423139000 |
| Kalimantan Selatan |          26 |   1195590000 |
| Kalimantan Tengah  |         275 |  13057098000 |
| Lampung            |          37 |   1226267000 |
| NTB                |           5 |    146872000 |
| Riau               |          91 |   2138244000 |
| Sulawesi Selatan   |         384 |  12822560000 |
| Sulawesi Tengah    |          53 |   2326860000 |
| Sulawesi Utara     |          41 |   1278392000 |
| Sumatra Barat      |          92 |   1852032000 |
| Sumatra Selatan    |         121 |   5224917000 |
| Sumatra Utara      |         145 |   3710699000 |
| unknown            |          57 |   8256525000 |
| Yogyakarta         |        1318 |  27181441000 |
+--------------------+-------------+--------------+ 

SELECT province, brand, COUNT(DISTINCT order_id) as total_order, SUM(item_price) as total_price 
from sales_retail_2019
group by province, brand;
+--------------------+---------+-------------+-------------+
| province           | brand   | total_order | total_price |
+--------------------+---------+-------------+-------------+
| Aceh               | BRAND_A |           9 |    13172000 |
| Aceh               | BRAND_B |          10 |    56795000 |
| Aceh               | BRAND_C |           9 |    42598000 |
| Aceh               | BRAND_D |           7 |    34080000 |
| Aceh               | BRAND_E |           1 |     8380000 |
| Aceh               | BRAND_F |           6 |    11596000 |
| Aceh               | BRAND_G |           9 |    17435000 |
| Aceh               | BRAND_H |           2 |     2965000 |
| Aceh               | BRAND_I |           2 |     6311000 |
| Aceh               | BRAND_J |           7 |    10225000 |
| Aceh               | BRAND_K |           4 |     3318000 |
| Aceh               | BRAND_L |           4 |     5492000 |
| Aceh               | BRAND_M |           9 |    15870000 |
| Aceh               | BRAND_O |           2 |     3835000 |
| Aceh               | BRAND_P |          16 |   204486000 |
| Aceh               | BRAND_R |          11 |    63277000 |
| Aceh               | BRAND_S |          12 |    49185000 |
| Aceh               | BRAND_T |           6 |     5864000 |
| Aceh               | BRAND_V |           3 |    10797000 |
| Aceh               | BRAND_W |           7 |     9109000 |
| Aceh               | BRAND_Z |           1 |      310000 |
| Bali               | BRAND_A |         221 |   501458000 |
| Bali               | BRAND_B |         233 |   648125000 |
| Bali               | BRAND_C |         249 |   878506000 |
| Bali               | BRAND_D |         126 |   433980000 |
| Bali               | BRAND_E |          90 |   206025000 |
| Bali               | BRAND_F |         156 |   324725000 |
| Bali               | BRAND_G |         117 |   181962000 |
| Bali               | BRAND_H |          91 |   111338000 |
| Bali               | BRAND_I |          62 |   135768000 |
| Bali               | BRAND_J |         155 |   280845000 |
| Bali               | BRAND_K |          24 |    13258000 |
| Bali               | BRAND_L |         148 |   276017000 |
| Bali               | BRAND_M |         201 |  1211330000 |
| Bali               | BRAND_N |          13 |    28547000 |
| Bali               | BRAND_O |          31 |    46251000 |
| Bali               | BRAND_P |         418 |  3168486000 |
| Bali               | BRAND_Q |           2 |     1808000 |
| Bali               | BRAND_R |         332 |  1782019000 |
| Bali               | BRAND_S |         347 |  1412015000 |
| Bali               | BRAND_T |         136 |   225500000 |
| Bali               | BRAND_U |           8 |     3600000 |
| Bali               | BRAND_V |          72 |   289159000 |
| Bali               | BRAND_W |         216 |   377079000 |
| Bali               | BRAND_Y |           4 |     4334000 |
| Bali               | BRAND_Z |          11 |    13432000 |
| Bangka Belitung    | BRAND_A |           3 |    22060000 |
| Bangka Belitung    | BRAND_B |           6 |    40648000 |
| Bangka Belitung    | BRAND_C |           4 |    57201000 |
| Bangka Belitung    | BRAND_D |           4 |     6383000 |
| Bangka Belitung    | BRAND_E |           5 |     1770000 |
| Bangka Belitung    | BRAND_F |           5 |    10429000 |
| Bangka Belitung    | BRAND_G |           3 |     7497000 |
| Bangka Belitung    | BRAND_H |           4 |     6834000 |
| Bangka Belitung    | BRAND_I |           2 |     3437000 |
| Bangka Belitung    | BRAND_J |           3 |    10074000 |
| Bangka Belitung    | BRAND_L |           2 |     3275000 |
| Bangka Belitung    | BRAND_M |           4 |    12395000 |
| Bangka Belitung    | BRAND_N |           1 |     1207000 |
| Bangka Belitung    | BRAND_P |           5 |    27095000 |
| Bangka Belitung    | BRAND_R |           8 |    78326000 |
| Bangka Belitung    | BRAND_S |           6 |    67342000 |
| Bangka Belitung    | BRAND_T |           3 |     1391000 |
| Bangka Belitung    | BRAND_V |           2 |     3158000 |
| Bangka Belitung    | BRAND_W |           5 |    16227000 |
| Bangka Belitung    | BRAND_Y |           1 |     1745000 |
| Banten             | BRAND_A |         333 |   798540000 |
| Banten             | BRAND_B |         330 |   991164000 |
| Banten             | BRAND_C |         381 |  1207449000 |
| Banten             | BRAND_D |         241 |   922456000 |
| Banten             | BRAND_E |         163 |   303445000 |
| Banten             | BRAND_F |         254 |   579190000 |
| Banten             | BRAND_G |         281 |   520909000 |
| Banten             | BRAND_H |         298 |   588662000 |
| Banten             | BRAND_I |         135 |   268455000 |
| Banten             | BRAND_J |         177 |   338990000 |
| Banten             | BRAND_K |          82 |    87829000 |
| Banten             | BRAND_L |         281 |   700058000 |
| Banten             | BRAND_M |         196 |   390616000 |
| Banten             | BRAND_N |          94 |   157406000 |
| Banten             | BRAND_O |          41 |    69719000 |
| Banten             | BRAND_P |         412 |  1295977000 |
| Banten             | BRAND_Q |          12 |    10984000 |
| Banten             | BRAND_R |         398 |  1627833000 |
| Banten             | BRAND_S |         464 |  1910218000 |
| Banten             | BRAND_T |         223 |   333476000 |
| Banten             | BRAND_U |           9 |    13013000 |
| Banten             | BRAND_V |         218 |   685086000 |
| Banten             | BRAND_W |         335 |  1006563000 |
| Banten             | BRAND_Y |          28 |    36526000 |
| Banten             | BRAND_Z |          77 |    80577000 |
| DKI Jakarta        | BRAND_A |        4460 |  9856196000 |
| DKI Jakarta        | BRAND_B |        4142 | 10844896000 |
| DKI Jakarta        | BRAND_C |        4881 | 14027718000 |
| DKI Jakarta        | BRAND_D |        2937 | 11528754000 |
| DKI Jakarta        | BRAND_E |        1936 |  4285224000 |
| DKI Jakarta        | BRAND_F |        3100 |  6749878000 |
| DKI Jakarta        | BRAND_G |        3329 |  5627074000 |
| DKI Jakarta        | BRAND_H |        3598 |  7242145000 |
| DKI Jakarta        | BRAND_I |        1517 |  2820371000 |
| DKI Jakarta        | BRAND_J |        2947 |  6856021000 |
| DKI Jakarta        | BRAND_K |         846 |   877375000 |
| DKI Jakarta        | BRAND_L |        3578 |  9584587000 |
| DKI Jakarta        | BRAND_M |        2709 |  9366136000 |
| DKI Jakarta        | BRAND_N |        1158 |  1916792000 |
| DKI Jakarta        | BRAND_O |         562 |   920711000 |
| DKI Jakarta        | BRAND_P |        5477 | 14354689000 |
| DKI Jakarta        | BRAND_Q |         126 |   111744000 |
| DKI Jakarta        | BRAND_R |        5253 | 19845045000 |
| DKI Jakarta        | BRAND_S |        5984 | 23088457000 |
| DKI Jakarta        | BRAND_T |        2766 |  4185911000 |
| DKI Jakarta        | BRAND_U |         247 |   356429000 |
| DKI Jakarta        | BRAND_V |        2661 |  6991315000 |
| DKI Jakarta        | BRAND_W |        4201 | 11284621000 |
| DKI Jakarta        | BRAND_Y |         317 |   309348000 |
| DKI Jakarta        | BRAND_Z |         772 |   841441000 |
| Jambi              | BRAND_A |          29 |    36928000 |
| Jambi              | BRAND_B |          29 |    90825000 |
| Jambi              | BRAND_C |          37 |   124256000 |
| Jambi              | BRAND_D |          17 |    63753000 |
| Jambi              | BRAND_E |           9 |    15759000 |
| Jambi              | BRAND_F |          24 |    47924000 |
| Jambi              | BRAND_G |          19 |    45504000 |
| Jambi              | BRAND_H |          21 |    33493000 |
| Jambi              | BRAND_I |           8 |     7101000 |
| Jambi              | BRAND_J |          20 |    70998000 |
| Jambi              | BRAND_K |           1 |     1500000 |
| Jambi              | BRAND_L |          30 |    67511000 |
| Jambi              | BRAND_M |          17 |  1496237000 |
| Jambi              | BRAND_N |          10 |    13160000 |
| Jambi              | BRAND_O |           8 |    19525000 |
| Jambi              | BRAND_P |          44 |   340597000 |
| Jambi              | BRAND_R |          39 |   233616000 |
| Jambi              | BRAND_S |          40 |   198491000 |
| Jambi              | BRAND_T |          26 |    54549000 |
| Jambi              | BRAND_V |          14 |    20980000 |
| Jambi              | BRAND_W |          26 |    43424000 |
| Jambi              | BRAND_Y |           1 |      604000 |
| Jambi              | BRAND_Z |           2 |     4256000 |
| Jawa Barat         | BRAND_A |        1476 |  3424649000 |
| Jawa Barat         | BRAND_B |        1480 |  4072205000 |
| Jawa Barat         | BRAND_C |        1664 |  4902797000 |
| Jawa Barat         | BRAND_D |        1022 |  4048183000 |
| Jawa Barat         | BRAND_E |         720 |  1590128000 |
| Jawa Barat         | BRAND_F |         989 |  2221712000 |
| Jawa Barat         | BRAND_G |        1150 |  2120043000 |
| Jawa Barat         | BRAND_H |        1249 |  2543061000 |
| Jawa Barat         | BRAND_I |         531 |  1087915000 |
| Jawa Barat         | BRAND_J |         913 |  1681934000 |
| Jawa Barat         | BRAND_K |         252 |   269082000 |
| Jawa Barat         | BRAND_L |        1191 |  3038922000 |
| Jawa Barat         | BRAND_M |         931 |  1761936000 |
| Jawa Barat         | BRAND_N |         405 |   672756000 |
| Jawa Barat         | BRAND_O |         198 |   313399000 |
| Jawa Barat         | BRAND_P |        1862 |  4970718000 |
| Jawa Barat         | BRAND_Q |          57 |    48287000 |
| Jawa Barat         | BRAND_R |        1844 |  7378636000 |
| Jawa Barat         | BRAND_S |        2033 |  8139820000 |
| Jawa Barat         | BRAND_T |         959 |  1484003000 |
| Jawa Barat         | BRAND_U |          74 |   135287000 |
| Jawa Barat         | BRAND_V |         965 |  2891851000 |
| Jawa Barat         | BRAND_W |        1336 |  3754785000 |
| Jawa Barat         | BRAND_Y |         135 |   157475000 |
| Jawa Barat         | BRAND_Z |         279 |   272564000 |
| Jawa Tengah        | BRAND_A |         672 |  1994833000 |
| Jawa Tengah        | BRAND_B |         636 |  2141322000 |
| Jawa Tengah        | BRAND_C |         753 |  2676148000 |
| Jawa Tengah        | BRAND_D |         401 |  6079651000 |
| Jawa Tengah        | BRAND_E |         286 |   724635000 |
| Jawa Tengah        | BRAND_F |         489 |  1456243000 |
| Jawa Tengah        | BRAND_G |         514 |  1160356000 |
| Jawa Tengah        | BRAND_H |         538 |  1124942000 |
| Jawa Tengah        | BRAND_I |         251 |   555861000 |
| Jawa Tengah        | BRAND_J |         437 |  1146698000 |
| Jawa Tengah        | BRAND_K |         119 |   169657000 |
| Jawa Tengah        | BRAND_L |         521 |  1614456000 |
| Jawa Tengah        | BRAND_M |         390 |   800856000 |
| Jawa Tengah        | BRAND_N |         169 |   328743000 |
| Jawa Tengah        | BRAND_O |          95 |   184724000 |
| Jawa Tengah        | BRAND_P |         873 |  5612618000 |
| Jawa Tengah        | BRAND_Q |          23 |    21610000 |
| Jawa Tengah        | BRAND_R |         854 |  4018720000 |
| Jawa Tengah        | BRAND_S |         927 |  4298215000 |
| Jawa Tengah        | BRAND_T |         416 |   853077000 |
| Jawa Tengah        | BRAND_U |          36 |    60300000 |
| Jawa Tengah        | BRAND_V |         393 |  1363923000 |
| Jawa Tengah        | BRAND_W |         619 |  1897826000 |
| Jawa Tengah        | BRAND_Y |          49 |    67519000 |
| Jawa Tengah        | BRAND_Z |         128 |   155203000 |
| Jawa Timur         | BRAND_A |         726 |  1780805000 |
| Jawa Timur         | BRAND_B |         650 |  1754806000 |
| Jawa Timur         | BRAND_C |         758 |  2228789000 |
| Jawa Timur         | BRAND_D |         457 |  2129305000 |
| Jawa Timur         | BRAND_E |         298 |   624606000 |
| Jawa Timur         | BRAND_F |         487 |  1238772000 |
| Jawa Timur         | BRAND_G |         534 |   982889000 |
| Jawa Timur         | BRAND_H |         586 |  1212666000 |
| Jawa Timur         | BRAND_I |         227 |   429443000 |
| Jawa Timur         | BRAND_J |         431 |  1001731000 |
| Jawa Timur         | BRAND_K |         138 |   146328000 |
| Jawa Timur         | BRAND_L |         525 |  1519139000 |
| Jawa Timur         | BRAND_M |         426 |   904773000 |
| Jawa Timur         | BRAND_N |         190 |   277395000 |
| Jawa Timur         | BRAND_O |          97 |   161398000 |
| Jawa Timur         | BRAND_P |         864 |  2123279000 |
| Jawa Timur         | BRAND_Q |          18 |    15954000 |
| Jawa Timur         | BRAND_R |         841 |  3049845000 |
| Jawa Timur         | BRAND_S |         972 |  3609348000 |
| Jawa Timur         | BRAND_T |         431 |   737860000 |
| Jawa Timur         | BRAND_U |          27 |    35882000 |
| Jawa Timur         | BRAND_V |         469 |  1003619000 |
| Jawa Timur         | BRAND_W |         658 |  1662654000 |
| Jawa Timur         | BRAND_Y |          59 |    59424000 |
| Jawa Timur         | BRAND_Z |         113 |   118819000 |
| Kalimantan Barat   | BRAND_A |          10 |    42739000 |
| Kalimantan Barat   | BRAND_B |           9 |    45005000 |
| Kalimantan Barat   | BRAND_C |          13 |    41766000 |
| Kalimantan Barat   | BRAND_D |          12 |    23674000 |
| Kalimantan Barat   | BRAND_E |           2 |     4434000 |
| Kalimantan Barat   | BRAND_F |           8 |     8181000 |
| Kalimantan Barat   | BRAND_G |           7 |     4748000 |
| Kalimantan Barat   | BRAND_H |           4 |     7103000 |
| Kalimantan Barat   | BRAND_I |           2 |     5380000 |
| Kalimantan Barat   | BRAND_J |           7 |     8023000 |
| Kalimantan Barat   | BRAND_L |           7 |     9145000 |
| Kalimantan Barat   | BRAND_M |           5 |     8507000 |
| Kalimantan Barat   | BRAND_O |           4 |     9760000 |
| Kalimantan Barat   | BRAND_P |          16 |   101000000 |
| Kalimantan Barat   | BRAND_R |          14 |    32233000 |
| Kalimantan Barat   | BRAND_S |          14 |    45046000 |
| Kalimantan Barat   | BRAND_T |           7 |     4061000 |
| Kalimantan Barat   | BRAND_V |           3 |     2354000 |
| Kalimantan Barat   | BRAND_W |          12 |    19980000 |
| Kalimantan Selatan | BRAND_A |          16 |    41716000 |
| Kalimantan Selatan | BRAND_B |          11 |    55319000 |
| Kalimantan Selatan | BRAND_C |          17 |    96574000 |
| Kalimantan Selatan | BRAND_D |          13 |   182319000 |
| Kalimantan Selatan | BRAND_E |           5 |    13650000 |
| Kalimantan Selatan | BRAND_F |          11 |    44447000 |
| Kalimantan Selatan | BRAND_G |          13 |    22936000 |
| Kalimantan Selatan | BRAND_H |          14 |    36922000 |
| Kalimantan Selatan | BRAND_I |           8 |    26926000 |
| Kalimantan Selatan | BRAND_J |          11 |    36231000 |
| Kalimantan Selatan | BRAND_K |           4 |     9424000 |
| Kalimantan Selatan | BRAND_L |          13 |    53760000 |
| Kalimantan Selatan | BRAND_M |           9 |   123359000 |
| Kalimantan Selatan | BRAND_N |           2 |     1792000 |
| Kalimantan Selatan | BRAND_O |           2 |     2265000 |
| Kalimantan Selatan | BRAND_P |          18 |   108283000 |
| Kalimantan Selatan | BRAND_R |          18 |   127337000 |
| Kalimantan Selatan | BRAND_S |          17 |   114848000 |
| Kalimantan Selatan | BRAND_T |           7 |    29106000 |
| Kalimantan Selatan | BRAND_V |           9 |    18385000 |
| Kalimantan Selatan | BRAND_W |          11 |    42206000 |
| Kalimantan Selatan | BRAND_Y |           1 |      604000 |
| Kalimantan Selatan | BRAND_Z |           9 |     7181000 |
| Kalimantan Tengah  | BRAND_A |         175 |   567703000 |
| Kalimantan Tengah  | BRAND_B |         173 |   765910000 |
| Kalimantan Tengah  | BRAND_C |         217 |  2396564000 |
| Kalimantan Tengah  | BRAND_D |         122 |   533089000 |
| Kalimantan Tengah  | BRAND_E |          85 |   316469000 |
| Kalimantan Tengah  | BRAND_F |         138 |   340745000 |
| Kalimantan Tengah  | BRAND_G |         148 |   255213000 |
| Kalimantan Tengah  | BRAND_H |         143 |   207609000 |
| Kalimantan Tengah  | BRAND_I |          72 |   185607000 |
| Kalimantan Tengah  | BRAND_J |          99 |   163312000 |
| Kalimantan Tengah  | BRAND_K |          19 |    20069000 |
| Kalimantan Tengah  | BRAND_L |         103 |   220597000 |
| Kalimantan Tengah  | BRAND_M |         116 |  2711878000 |
| Kalimantan Tengah  | BRAND_N |          39 |    56334000 |
| Kalimantan Tengah  | BRAND_O |          36 |    57366000 |
| Kalimantan Tengah  | BRAND_P |         208 |   698640000 |
| Kalimantan Tengah  | BRAND_Q |           1 |      450000 |
| Kalimantan Tengah  | BRAND_R |         211 |  1342489000 |
| Kalimantan Tengah  | BRAND_S |         222 |  1170607000 |
| Kalimantan Tengah  | BRAND_T |         105 |   205900000 |
| Kalimantan Tengah  | BRAND_U |           4 |    11180000 |
| Kalimantan Tengah  | BRAND_V |         135 |   290378000 |
| Kalimantan Tengah  | BRAND_W |         165 |   486240000 |
| Kalimantan Tengah  | BRAND_Y |          20 |    20737000 |
| Kalimantan Tengah  | BRAND_Z |          32 |    32012000 |
| Lampung            | BRAND_A |          14 |    39496000 |
| Lampung            | BRAND_B |          19 |   108655000 |
| Lampung            | BRAND_C |          21 |    95632000 |
| Lampung            | BRAND_D |          16 |   111669000 |
| Lampung            | BRAND_E |           7 |    10830000 |
| Lampung            | BRAND_F |          15 |    35378000 |
| Lampung            | BRAND_G |          13 |    16539000 |
| Lampung            | BRAND_H |          11 |    15610000 |
| Lampung            | BRAND_I |           9 |    20524000 |
| Lampung            | BRAND_J |          15 |    26560000 |
| Lampung            | BRAND_K |           3 |     2253000 |
| Lampung            | BRAND_L |          15 |    28486000 |
| Lampung            | BRAND_M |          14 |    30026000 |
| Lampung            | BRAND_N |           1 |     3494000 |
| Lampung            | BRAND_O |           1 |     4180000 |
| Lampung            | BRAND_P |          25 |   325959000 |
| Lampung            | BRAND_Q |           1 |      904000 |
| Lampung            | BRAND_R |          30 |   112522000 |
| Lampung            | BRAND_S |          25 |   138559000 |
| Lampung            | BRAND_T |          14 |    21969000 |
| Lampung            | BRAND_V |          12 |    36710000 |
| Lampung            | BRAND_W |          14 |    35006000 |
| Lampung            | BRAND_Y |           2 |     1208000 |
| Lampung            | BRAND_Z |           2 |     4098000 |
| NTB                | BRAND_A |           3 |     2812000 |
| NTB                | BRAND_B |           2 |    11208000 |
| NTB                | BRAND_C |           4 |    15949000 |
| NTB                | BRAND_D |           1 |     7150000 |
| NTB                | BRAND_E |           3 |     6208000 |
| NTB                | BRAND_F |           2 |     4402000 |
| NTB                | BRAND_G |           2 |     3494000 |
| NTB                | BRAND_I |           1 |      450000 |
| NTB                | BRAND_J |           2 |     3070000 |
| NTB                | BRAND_L |           3 |     2084000 |
| NTB                | BRAND_M |           1 |     2465000 |
| NTB                | BRAND_P |           4 |    12958000 |
| NTB                | BRAND_R |           5 |    27227000 |
| NTB                | BRAND_S |           5 |    37380000 |
| NTB                | BRAND_T |           3 |     6541000 |
| NTB                | BRAND_V |           3 |     2838000 |
| NTB                | BRAND_W |           1 |      636000 |
| Riau               | BRAND_A |          39 |    65245000 |
| Riau               | BRAND_B |          36 |   174047000 |
| Riau               | BRAND_C |          56 |   215633000 |
| Riau               | BRAND_D |          43 |   108094000 |
| Riau               | BRAND_E |          19 |    29247000 |
| Riau               | BRAND_F |          36 |    69845000 |
| Riau               | BRAND_G |          33 |    56686000 |
| Riau               | BRAND_H |          27 |    23640000 |
| Riau               | BRAND_I |          19 |    49628000 |
| Riau               | BRAND_J |          39 |    87283000 |
| Riau               | BRAND_K |           4 |     1454000 |
| Riau               | BRAND_L |          40 |   130097000 |
| Riau               | BRAND_M |          36 |    64169000 |
| Riau               | BRAND_N |           2 |     3136000 |
| Riau               | BRAND_O |           4 |     4145000 |
| Riau               | BRAND_P |          71 |   327675000 |
| Riau               | BRAND_R |          62 |   291260000 |
| Riau               | BRAND_S |          69 |   318393000 |
| Riau               | BRAND_T |          19 |    24232000 |
| Riau               | BRAND_V |          13 |    14203000 |
| Riau               | BRAND_W |          46 |    73904000 |
| Riau               | BRAND_Y |           2 |      900000 |
| Riau               | BRAND_Z |           9 |     5328000 |
| Sulawesi Selatan   | BRAND_A |         189 |   454875000 |
| Sulawesi Selatan   | BRAND_B |         180 |   441790000 |
| Sulawesi Selatan   | BRAND_C |         243 |   875501000 |
| Sulawesi Selatan   | BRAND_D |         126 |   370338000 |
| Sulawesi Selatan   | BRAND_E |          65 |   133413000 |
| Sulawesi Selatan   | BRAND_F |          98 |   191992000 |
| Sulawesi Selatan   | BRAND_G |         101 |   133527000 |
| Sulawesi Selatan   | BRAND_H |          55 |    60712000 |
| Sulawesi Selatan   | BRAND_I |          83 |   125283000 |
| Sulawesi Selatan   | BRAND_J |         108 |   235058000 |
| Sulawesi Selatan   | BRAND_K |          24 |    22086000 |
| Sulawesi Selatan   | BRAND_L |         176 |   380240000 |
| Sulawesi Selatan   | BRAND_M |         146 |  3495520000 |
| Sulawesi Selatan   | BRAND_N |          22 |    44852000 |
| Sulawesi Selatan   | BRAND_O |          29 |    38253000 |
| Sulawesi Selatan   | BRAND_P |         345 |  2631916000 |
| Sulawesi Selatan   | BRAND_Q |          11 |     9787000 |
| Sulawesi Selatan   | BRAND_R |         306 |  1438209000 |
| Sulawesi Selatan   | BRAND_S |         309 |  1066603000 |
| Sulawesi Selatan   | BRAND_T |         125 |   211338000 |
| Sulawesi Selatan   | BRAND_U |           8 |    11229000 |
| Sulawesi Selatan   | BRAND_V |          72 |   135233000 |
| Sulawesi Selatan   | BRAND_W |         171 |   296796000 |
| Sulawesi Selatan   | BRAND_Y |           4 |     8380000 |
| Sulawesi Selatan   | BRAND_Z |          15 |     9629000 |
| Sulawesi Tengah    | BRAND_A |          31 |   106156000 |
| Sulawesi Tengah    | BRAND_B |          36 |   181847000 |
| Sulawesi Tengah    | BRAND_C |          34 |   191984000 |
| Sulawesi Tengah    | BRAND_D |          25 |   181863000 |
| Sulawesi Tengah    | BRAND_E |          23 |    47099000 |
| Sulawesi Tengah    | BRAND_F |          21 |    48357000 |
| Sulawesi Tengah    | BRAND_G |          20 |    45817000 |
| Sulawesi Tengah    | BRAND_H |          16 |    29505000 |
| Sulawesi Tengah    | BRAND_I |          10 |    15668000 |
| Sulawesi Tengah    | BRAND_J |          23 |    33444000 |
| Sulawesi Tengah    | BRAND_K |           6 |     7984000 |
| Sulawesi Tengah    | BRAND_L |          26 |    61015000 |
| Sulawesi Tengah    | BRAND_M |          25 |    57471000 |
| Sulawesi Tengah    | BRAND_N |           3 |     3593000 |
| Sulawesi Tengah    | BRAND_O |          10 |    21355000 |
| Sulawesi Tengah    | BRAND_P |          48 |   569035000 |
| Sulawesi Tengah    | BRAND_Q |           1 |      904000 |
| Sulawesi Tengah    | BRAND_R |          40 |   322457000 |
| Sulawesi Tengah    | BRAND_S |          41 |   249176000 |
| Sulawesi Tengah    | BRAND_T |          18 |    34467000 |
| Sulawesi Tengah    | BRAND_U |           3 |     1350000 |
| Sulawesi Tengah    | BRAND_V |          18 |    37722000 |
| Sulawesi Tengah    | BRAND_W |          30 |    76017000 |
| Sulawesi Tengah    | BRAND_Y |           2 |     1054000 |
| Sulawesi Tengah    | BRAND_Z |           3 |     1520000 |
| Sulawesi Utara     | BRAND_A |          10 |    13995000 |
| Sulawesi Utara     | BRAND_B |          18 |    59538000 |
| Sulawesi Utara     | BRAND_C |          24 |   104447000 |
| Sulawesi Utara     | BRAND_D |          10 |    41348000 |
| Sulawesi Utara     | BRAND_E |          12 |    24800000 |
| Sulawesi Utara     | BRAND_F |           5 |    11215000 |
| Sulawesi Utara     | BRAND_G |           9 |     8820000 |
| Sulawesi Utara     | BRAND_H |           8 |    15159000 |
| Sulawesi Utara     | BRAND_I |           6 |    13298000 |
| Sulawesi Utara     | BRAND_J |          12 |    33013000 |
| Sulawesi Utara     | BRAND_K |           2 |     2300000 |
| Sulawesi Utara     | BRAND_L |           6 |     4128000 |
| Sulawesi Utara     | BRAND_M |          14 |   124690000 |
| Sulawesi Utara     | BRAND_N |           4 |    15612000 |
| Sulawesi Utara     | BRAND_O |           1 |     2987000 |
| Sulawesi Utara     | BRAND_P |          39 |   565222000 |
| Sulawesi Utara     | BRAND_R |          22 |   100554000 |
| Sulawesi Utara     | BRAND_S |          18 |    87785000 |
| Sulawesi Utara     | BRAND_T |           8 |    11100000 |
| Sulawesi Utara     | BRAND_V |           4 |    11706000 |
| Sulawesi Utara     | BRAND_W |          10 |    26027000 |
| Sulawesi Utara     | BRAND_Z |           2 |      648000 |
| Sumatra Barat      | BRAND_A |          41 |    96511000 |
| Sumatra Barat      | BRAND_B |          42 |   131484000 |
| Sumatra Barat      | BRAND_C |          33 |    77574000 |
| Sumatra Barat      | BRAND_D |          26 |   100224000 |
| Sumatra Barat      | BRAND_E |           9 |    14882000 |
| Sumatra Barat      | BRAND_F |          24 |    41863000 |
| Sumatra Barat      | BRAND_G |          21 |    32300000 |
| Sumatra Barat      | BRAND_H |          25 |    27976000 |
| Sumatra Barat      | BRAND_I |          14 |    19163000 |
| Sumatra Barat      | BRAND_J |          26 |    41207000 |
| Sumatra Barat      | BRAND_K |           5 |     3887000 |
| Sumatra Barat      | BRAND_L |          26 |    48950000 |
| Sumatra Barat      | BRAND_M |          34 |    56631000 |
| Sumatra Barat      | BRAND_N |           4 |     1871000 |
| Sumatra Barat      | BRAND_O |           5 |     6358000 |
| Sumatra Barat      | BRAND_P |          67 |   544386000 |
| Sumatra Barat      | BRAND_R |          52 |   230116000 |
| Sumatra Barat      | BRAND_S |          63 |   264909000 |
| Sumatra Barat      | BRAND_T |          26 |    29032000 |
| Sumatra Barat      | BRAND_U |           1 |     2795000 |
| Sumatra Barat      | BRAND_V |          18 |    32253000 |
| Sumatra Barat      | BRAND_W |          32 |    45605000 |
| Sumatra Barat      | BRAND_Y |           1 |     1745000 |
| Sumatra Barat      | BRAND_Z |           1 |      310000 |
| Sumatra Selatan    | BRAND_A |          76 |   177359000 |
| Sumatra Selatan    | BRAND_B |          83 |   400555000 |
| Sumatra Selatan    | BRAND_C |          82 |   464577000 |
| Sumatra Selatan    | BRAND_D |          49 |   220748000 |
| Sumatra Selatan    | BRAND_E |          27 |    53320000 |
| Sumatra Selatan    | BRAND_F |          53 |   120714000 |
| Sumatra Selatan    | BRAND_G |          49 |   104982000 |
| Sumatra Selatan    | BRAND_H |          37 |    69408000 |
| Sumatra Selatan    | BRAND_I |          27 |    54267000 |
| Sumatra Selatan    | BRAND_J |          37 |    79122000 |
| Sumatra Selatan    | BRAND_K |          10 |    18321000 |
| Sumatra Selatan    | BRAND_L |          52 |   104733000 |
| Sumatra Selatan    | BRAND_M |          45 |   387847000 |
| Sumatra Selatan    | BRAND_N |          13 |    28451000 |
| Sumatra Selatan    | BRAND_O |          20 |    39568000 |
| Sumatra Selatan    | BRAND_P |         108 |  1376893000 |
| Sumatra Selatan    | BRAND_R |          89 |   575322000 |
| Sumatra Selatan    | BRAND_S |          97 |   547247000 |
| Sumatra Selatan    | BRAND_T |          46 |   103816000 |
| Sumatra Selatan    | BRAND_U |           5 |     7687000 |
| Sumatra Selatan    | BRAND_V |          41 |   126566000 |
| Sumatra Selatan    | BRAND_W |          61 |   150775000 |
| Sumatra Selatan    | BRAND_Y |           4 |     5361000 |
| Sumatra Selatan    | BRAND_Z |          10 |     7278000 |
| Sumatra Utara      | BRAND_A |          73 |   190182000 |
| Sumatra Utara      | BRAND_B |          79 |   229993000 |
| Sumatra Utara      | BRAND_C |          90 |   302278000 |
| Sumatra Utara      | BRAND_D |          70 |   197281000 |
| Sumatra Utara      | BRAND_E |          27 |    48903000 |
| Sumatra Utara      | BRAND_F |          43 |    82692000 |
| Sumatra Utara      | BRAND_G |          39 |    54698000 |
| Sumatra Utara      | BRAND_H |          27 |    25213000 |
| Sumatra Utara      | BRAND_I |          33 |    87223000 |
| Sumatra Utara      | BRAND_J |          39 |    72041000 |
| Sumatra Utara      | BRAND_K |           3 |     1729000 |
| Sumatra Utara      | BRAND_L |          63 |   108745000 |
| Sumatra Utara      | BRAND_M |          64 |   110388000 |
| Sumatra Utara      | BRAND_N |           6 |     9117000 |
| Sumatra Utara      | BRAND_O |          12 |    20042000 |
| Sumatra Utara      | BRAND_P |         131 |   815446000 |
| Sumatra Utara      | BRAND_Q |           1 |      904000 |
| Sumatra Utara      | BRAND_R |         114 |   552682000 |
| Sumatra Utara      | BRAND_S |         116 |   555321000 |
| Sumatra Utara      | BRAND_T |          50 |    93685000 |
| Sumatra Utara      | BRAND_U |           1 |      450000 |
| Sumatra Utara      | BRAND_V |          38 |    68198000 |
| Sumatra Utara      | BRAND_W |          57 |    81166000 |
| Sumatra Utara      | BRAND_Z |           4 |     2322000 |
| unknown            | BRAND_A |          34 |   126872000 |
| unknown            | BRAND_B |          30 |   130963000 |
| unknown            | BRAND_C |          32 |   207826000 |
| unknown            | BRAND_D |          19 |    96450000 |
| unknown            | BRAND_E |           9 |    22640000 |
| unknown            | BRAND_F |          21 |    36357000 |
| unknown            | BRAND_G |          28 |    44660000 |
| unknown            | BRAND_H |          16 |    17423000 |
| unknown            | BRAND_I |          11 |    32746000 |
| unknown            | BRAND_J |          13 |    23914000 |
| unknown            | BRAND_K |           7 |     6697000 |
| unknown            | BRAND_L |          21 |    36901000 |
| unknown            | BRAND_M |          36 |  6259127000 |
| unknown            | BRAND_N |           9 |    13795000 |
| unknown            | BRAND_O |           7 |    12916000 |
| unknown            | BRAND_P |          42 |   513497000 |
| unknown            | BRAND_R |          37 |   288737000 |
| unknown            | BRAND_S |          41 |   204045000 |
| unknown            | BRAND_T |          22 |    44482000 |
| unknown            | BRAND_V |          16 |    77312000 |
| unknown            | BRAND_W |          23 |    54341000 |
| unknown            | BRAND_Y |           2 |     3840000 |
| unknown            | BRAND_Z |           2 |      984000 |
| Yogyakarta         | BRAND_A |         720 |  1571458000 |
| Yogyakarta         | BRAND_B |         661 |  1727410000 |
| Yogyakarta         | BRAND_C |         746 |  2251694000 |
| Yogyakarta         | BRAND_D |         488 |  1885936000 |
| Yogyakarta         | BRAND_E |         294 |   649975000 |
| Yogyakarta         | BRAND_F |         472 |   941855000 |
| Yogyakarta         | BRAND_G |         533 |   970775000 |
| Yogyakarta         | BRAND_H |         571 |  1263849000 |
| Yogyakarta         | BRAND_I |         282 |   534627000 |
| Yogyakarta         | BRAND_J |         340 |   789269000 |
| Yogyakarta         | BRAND_K |         138 |   155432000 |
| Yogyakarta         | BRAND_L |         557 |  1284079000 |
| Yogyakarta         | BRAND_M |         430 |   836187000 |
| Yogyakarta         | BRAND_N |         220 |   338557000 |
| Yogyakarta         | BRAND_O |         103 |   154925000 |
| Yogyakarta         | BRAND_P |         811 |  1931286000 |
| Yogyakarta         | BRAND_Q |          29 |    26225000 |
| Yogyakarta         | BRAND_R |         740 |  2742676000 |
| Yogyakarta         | BRAND_S |         877 |  3269570000 |
| Yogyakarta         | BRAND_T |         439 |   641651000 |
| Yogyakarta         | BRAND_U |          25 |    44394000 |
| Yogyakarta         | BRAND_V |         401 |   963698000 |
| Yogyakarta         | BRAND_W |         681 |  1974771000 |
| Yogyakarta         | BRAND_Y |          73 |    78639000 |
| Yogyakarta         | BRAND_Z |         128 |   152503000 |
+--------------------+---------+-------------+-------------+ 

SELECT province, COUNT(DISTINCT order_id) as total_unique_order, SUM(item_price) as revenue
from sales_retail_2019
group by province;
+--------------------+--------------------+--------------+
| province           | total_unique_order | revenue      |
+--------------------+--------------------+--------------+
| Aceh               |                 16 |    575100000 |
| Bali               |                454 |  12555567000 |
| Bangka Belitung    |                  8 |    378494000 |
| Banten             |                596 |  14925141000 |
| DKI Jakarta        |               8332 | 183872878000 |
| Jambi              |                 55 |   3030991000 |
| Jawa Barat         |               2831 |  62982148000 |
| Jawa Tengah        |               1475 |  40508136000 |
| Jawa Timur         |               1406 |  28809529000 |
| Kalimantan Barat   |                 18 |    423139000 |
| Kalimantan Selatan |                 26 |   1195590000 |
| Kalimantan Tengah  |                275 |  13057098000 |
| Lampung            |                 37 |   1226267000 |
| NTB                |                  5 |    146872000 |
| Riau               |                 91 |   2138244000 |
| Sulawesi Selatan   |                384 |  12822560000 |
| Sulawesi Tengah    |                 53 |   2326860000 |
| Sulawesi Utara     |                 41 |   1278392000 |
| Sumatra Barat      |                 92 |   1852032000 |
| Sumatra Selatan    |                121 |   5224917000 |
| Sumatra Utara      |                145 |   3710699000 |
| unknown            |                 57 |   8256525000 |
| Yogyakarta         |               1318 |  27181441000 |
+--------------------+--------------------+--------------+ 

SELECT month(order_date) AS order_month, SUM(item_price) AS total_price, 
CASE  
    WHEN sum(item_price) >= 30000000000 THEN 'Target Achieved'
    WHEN sum(item_price) <= 25000000000 THEN 'Less performed'
    ELSE 'Follow up'
END as remark
FROM sales_retail_2019
GROUP BY order_month;
+-------------+-------------+-----------------+
| order_month | total_price | remark          |
+-------------+-------------+-----------------+
|           1 | 21872088000 | Less performed  |
|           2 | 23872553000 | Less performed  |
|           3 | 24729248000 | Less performed  |
|           4 | 33436592000 | Target Achieved |
|           5 | 29464257000 | Follow up       |
|           6 | 32428828000 | Target Achieved |
|           7 | 31704144000 | Target Achieved |
|           8 | 28859392000 | Follow up       |
|           9 | 27425513000 | Follow up       |
|          10 | 49548111000 | Target Achieved |
|          11 | 54841176000 | Target Achieved |
|          12 | 70296718000 | Target Achieved |
+-------------+-------------+-----------------+

## 1. Total jumlah seluruh penjualan (total/revenue).
SELECT SUM(total) as total 
FROM tr_penjualan;
## 2. Total quantity seluruh produk yang terjual.
SELECT SUM(qty) as qty 
FROM tr_penjualan;
## 3. Total quantity dan total revenue untuk setiap kode produk.
SELECT kode_produk, sum(qty) as qty, sum(total) as total 
FROM tr_penjualan
GROUP BY kode_produk;
+---------+
| total   |
+---------+
| 3271600 |
+---------+
+------+
| qty  |
+------+
|   42 |
+------+
+-------------+------+---------+
| kode_produk | qty  | total   |
+-------------+------+---------+
| prod-01     |    6 |  375000 |
| prod-02     |    2 |  110000 |
| prod-03     |    3 |  300000 |
| prod-04     |    9 |  360000 |
| prod-05     |    4 | 1000000 |
| prod-07     |    1 |   48000 |
| prod-08     |    2 |   31600 |
| prod-09     |    6 |  552000 |
| prod-10     |    9 |  495000 |
+-------------+------+---------+

## 4. Rata - Rata total belanja per kode pelanggan.
SELECT kode_pelanggan, avg(total) as avg_total 
FROM tr_penjualan
GROUP BY kode_pelanggan;
## 5. Selain itu,  jangan lupa untuk menambahkan kolom baru dengan nama ‘kategori’ yang mengkategorikan total/revenue ke dalam 3 kategori: High: > 300K; Medium: 100K - 300K; Low: <100K.
SELECT kode_transaksi,kode_pelanggan,no_urut,kode_produk, nama_produk, qty, total,
CASE  
    WHEN total > 300000 THEN 'High'
    WHEN total < 100000 THEN 'Low'  
    ELSE 'Medium'  
END as Kategori
FROM tr_penjualan;
+----------------+-------------+
| kode_pelanggan | avg_total   |
+----------------+-------------+
| dqlabcust01    | 156000.0000 |
| dqlabcust02    | 515800.0000 |
| dqlabcust03    | 181666.6667 |
| dqlabcust05    | 139500.0000 |
| dqlabcust07    | 202125.0000 |
+----------------+-------------+
+----------------+----------------+---------+-------------+-------------------------------+------+---------+----------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk                   | qty  | total   | Kategori |
+----------------+----------------+---------+-------------+-------------------------------+------+---------+----------+
| tr-001         | dqlabcust07    |       1 | prod-01     | Kotak Pensil DQLab            |    5 |  312500 | High     |
| tr-001         | dqlabcust07    |       2 | prod-03     | Flash disk DQLab 32 GB        |    1 |  100000 | Medium   |
| tr-001         | dqlabcust07    |       3 | prod-09     | Buku Planner Agenda DQLab     |    3 |  276000 | Medium   |
| tr-001         | dqlabcust07    |       4 | prod-04     | Flashdisk DQLab 32 GB         |    3 |  120000 | Medium   |
| tr-002         | dqlabcust01    |       1 | prod-03     | Gift Voucher DQLab 100rb      |    2 |  200000 | Medium   |
| tr-002         | dqlabcust01    |       2 | prod-10     | Sticky Notes DQLab 500 sheets |    4 |  220000 | Medium   |
| tr-002         | dqlabcust01    |       3 | prod-07     | Tas Travel Organizer DQLab    |    1 |   48000 | Low      |
| tr-003         | dqlabcust03    |       1 | prod-02     | Flashdisk DQLab 64 GB         |    2 |  110000 | Medium   |
| tr-004         | dqlabcust03    |       1 | prod-10     | Sticky Notes DQLab 500 sheets |    5 |  275000 | Medium   |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB         |    4 |  160000 | Medium   |
| tr-005         | dqlabcust05    |       1 | prod-09     | Buku Planner Agenda DQLab     |    3 |  276000 | Medium   |
| tr-005         | dqlabcust05    |       2 | prod-01     | Kotak Pensil DQLab            |    1 |   62500 | Low      |
| tr-005         | dqlabcust05    |       3 | prod-04     | Flashdisk DQLab 32 GB         |    2 |   80000 | Low      |
| tr-006         | dqlabcust02    |       1 | prod-05     | Gift Voucher DQLab 250rb      |    4 | 1000000 | High     |
| tr-006         | dqlabcust02    |       2 | prod-08     | Gantungan Kunci DQLab         |    2 |   31600 | Low      |
+----------------+----------------+---------+-------------+-------------------------------+------+---------+----------+ 

Select * from ms_item_kategori, ms_item_warna
where nama_barang=nama_item;
+-----------+----------+-------------+--------------+
| nama_item | kategori | nama_barang | warna        |
+-----------+----------+-------------+--------------+
| bayam     | sayuran  | bayam       | hijau        |
| duku      | buah     | duku        | kuning pekat |
| durian    | buah     | durian      | kuning       |
| gandum    | buah     | gandum      | coklat       |
| jambu air | buah     | jambu air   | merah        |
| jeruk     | buah     | jeruk       | oranye       |
+-----------+----------+-------------+--------------+

Select ms_item_kategori.*, ms_item_warna.*
from ms_item_warna, ms_item_kategori
where nama_barang=nama_item;
+-----------+----------+-------------+--------------+
| nama_item | kategori | nama_barang | warna        |
+-----------+----------+-------------+--------------+
| bayam     | sayuran  | bayam       | hijau        |
| duku      | buah     | duku        | kuning pekat |
| durian    | buah     | durian      | kuning       |
| gandum    | buah     | gandum      | coklat       |
| jambu air | buah     | jambu air   | merah        |
| jeruk     | buah     | jeruk       | oranye       |
+-----------+----------+-------------+--------------+

SELECT * from ms_item_kategori, ms_item_warna;
+-----------+----------+-------------+--------------+
| nama_item | kategori | nama_barang | warna        |
+-----------+----------+-------------+--------------+
| bayam     | sayuran  | apel        | merah        |
| belimbing | buah     | apel        | merah        |
| duku      | buah     | apel        | merah        |
| durian    | buah     | apel        | merah        |
| gandum    | buah     | apel        | merah        |
| jamur     | sayuran  | apel        | merah        |
| jambu air | buah     | apel        | merah        |
| jeruk     | buah     | apel        | merah        |
| bayam     | sayuran  | bayam       | hijau        |
| belimbing | buah     | bayam       | hijau        |
| duku      | buah     | bayam       | hijau        |
| durian    | buah     | bayam       | hijau        |
| gandum    | buah     | bayam       | hijau        |
| jamur     | sayuran  | bayam       | hijau        |
| jambu air | buah     | bayam       | hijau        |
| jeruk     | buah     | bayam       | hijau        |
| bayam     | sayuran  | daun bawang | hijau        |
| belimbing | buah     | daun bawang | hijau        |
| duku      | buah     | daun bawang | hijau        |
| durian    | buah     | daun bawang | hijau        |
| gandum    | buah     | daun bawang | hijau        |
| jamur     | sayuran  | daun bawang | hijau        |
| jambu air | buah     | daun bawang | hijau        |
| jeruk     | buah     | daun bawang | hijau        |
| bayam     | sayuran  | duku        | kuning pekat |
| belimbing | buah     | duku        | kuning pekat |
| duku      | buah     | duku        | kuning pekat |
| durian    | buah     | duku        | kuning pekat |
| gandum    | buah     | duku        | kuning pekat |
| jamur     | sayuran  | duku        | kuning pekat |
| jambu air | buah     | duku        | kuning pekat |
| jeruk     | buah     | duku        | kuning pekat |
| bayam     | sayuran  | durian      | kuning       |
| belimbing | buah     | durian      | kuning       |
| duku      | buah     | durian      | kuning       |
| durian    | buah     | durian      | kuning       |
| gandum    | buah     | durian      | kuning       |
| jamur     | sayuran  | durian      | kuning       |
| jambu air | buah     | durian      | kuning       |
| jeruk     | buah     | durian      | kuning       |
| bayam     | sayuran  | gandum      | coklat       |
| belimbing | buah     | gandum      | coklat       |
| duku      | buah     | gandum      | coklat       |
| durian    | buah     | gandum      | coklat       |
| gandum    | buah     | gandum      | coklat       |
| jamur     | sayuran  | gandum      | coklat       |
| jambu air | buah     | gandum      | coklat       |
| jeruk     | buah     | gandum      | coklat       |
| bayam     | sayuran  | jambu air   | merah        |
| belimbing | buah     | jambu air   | merah        |
| duku      | buah     | jambu air   | merah        |
| durian    | buah     | jambu air   | merah        |
| gandum    | buah     | jambu air   | merah        |
| jamur     | sayuran  | jambu air   | merah        |
| jambu air | buah     | jambu air   | merah        |
| jeruk     | buah     | jambu air   | merah        |
| bayam     | sayuran  | jeruk       | oranye       |
| belimbing | buah     | jeruk       | oranye       |
| duku      | buah     | jeruk       | oranye       |
| durian    | buah     | jeruk       | oranye       |
| gandum    | buah     | jeruk       | oranye       |
| jamur     | sayuran  | jeruk       | oranye       |
| jambu air | buah     | jeruk       | oranye       |
| jeruk     | buah     | jeruk       | oranye       |
+-----------+----------+-------------+--------------+ 

Select * from ms_item_warna
inner join ms_item_kategori
on ms_item_warna.nama_barang= ms_item_kategori.nama_item;
+-------------+--------------+-----------+----------+
| nama_barang | warna        | nama_item | kategori |
+-------------+--------------+-----------+----------+
| bayam       | hijau        | bayam     | sayuran  |
| duku        | kuning pekat | duku      | buah     |
| durian      | kuning       | durian    | buah     |
| gandum      | coklat       | gandum    | buah     |
| jambu air   | merah        | jambu air | buah     |
| jeruk       | oranye       | jeruk     | buah     |
+-------------+--------------+-----------+----------+

select * from tr_penjualan;
select * from ms_produk;
+----------------+----------------+---------+-------------+-------------------------------+------+--------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk                   | qty  | harga  |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+
| tr-001         | dqlabcust07    |       1 | prod-01     | Kotak Pensil DQLab            |    5 |  62500 |
| tr-001         | dqlabcust07    |       2 | prod-03     | Flash disk DQLab 32 GB        |    1 | 100000 |
| tr-001         | dqlabcust07    |       3 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |
| tr-001         | dqlabcust07    |       4 | prod-04     | Flashdisk DQLab 32 GB         |    3 |  40000 |
| tr-002         | dqlabcust01    |       1 | prod-03     | Gift Voucher DQLab 100rb      |    2 | 100000 |
| tr-002         | dqlabcust01    |       2 | prod-10     | Sticky Notes DQLab 500 sheets |    4 |  55000 |
| tr-002         | dqlabcust01    |       3 | prod-07     | Tas Travel Organizer DQLab    |    1 |  48000 |
| tr-003         | dqlabcust03    |       1 | prod-02     | Flashdisk DQLab 64 GB         |    2 |  55000 |
| tr-004         | dqlabcust03    |       1 | prod-10     | Sticky Notes DQLab 500 sheets |    5 |  55000 |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB         |    4 |  40000 |
| tr-005         | dqlabcust05    |       1 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |
| tr-005         | dqlabcust05    |       2 | prod-01     | Kotak Pensil DQLab            |    1 |  62500 |
| tr-005         | dqlabcust05    |       3 | prod-04     | Flashdisk DQLab 32 GB         |    2 |  40000 |
| tr-006         | dqlabcust02    |       1 | prod-05     | Gift Voucher DQLab 250rb      |    4 | 250000 |
| tr-006         | dqlabcust02    |       2 | prod-08     | Gantungan Kunci DQLab         |    2 |  15800 |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+
+---------+-------------+------------------------------------+--------+
| no_urut | kode_produk | nama_produk                        | harga  |
+---------+-------------+------------------------------------+--------+
|       1 | prod-01     | Kotak Pensil DQLab                 |  62500 |
|       2 | prod-02     | Flashdisk DQLab 64 GB              |  55000 |
|       3 | prod-03     | Gift Voucher DQLab 100rb           | 100000 |
|       4 | prod-04     | Flashdisk DQLab 32 GB              |  40000 |
|       5 | prod-05     | Gift Voucher DQLab 250rb           | 250000 |
|       6 | prod-06     | Pulpen Multifunction + Laser DQLab |  92500 |
|       7 | prod-07     | Tas Travel Organizer DQLab         |  48000 |
|       8 | prod-08     | Gantungan Kunci DQLab              |  15800 |
|       9 | prod-09     | Buku Planner Agenda DQLab          |  92000 |
|      10 | prod-10     | Sticky Notes DQLab 500 sheets      |  55000 |
+---------+-------------+------------------------------------+--------+

select *
from tr_penjualan inner join ms_produk
on tr_penjualan.kode_produk = ms_produk.kode_produk;
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+-------------+-------------------------------+--------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk                   | qty  | harga  | no_urut | kode_produk | nama_produk                   | harga  |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+-------------+-------------------------------+--------+
| tr-001         | dqlabcust07    |       1 | prod-01     | Kotak Pensil DQLab            |    5 |  62500 |       1 | prod-01     | Kotak Pensil DQLab            |  62500 |
| tr-001         | dqlabcust07    |       2 | prod-03     | Flash disk DQLab 32 GB        |    1 | 100000 |       3 | prod-03     | Gift Voucher DQLab 100rb      | 100000 |
| tr-001         | dqlabcust07    |       3 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |       9 | prod-09     | Buku Planner Agenda DQLab     |  92000 |
| tr-001         | dqlabcust07    |       4 | prod-04     | Flashdisk DQLab 32 GB         |    3 |  40000 |       4 | prod-04     | Flashdisk DQLab 32 GB         |  40000 |
| tr-002         | dqlabcust01    |       1 | prod-03     | Gift Voucher DQLab 100rb      |    2 | 100000 |       3 | prod-03     | Gift Voucher DQLab 100rb      | 100000 |
| tr-002         | dqlabcust01    |       2 | prod-10     | Sticky Notes DQLab 500 sheets |    4 |  55000 |      10 | prod-10     | Sticky Notes DQLab 500 sheets |  55000 |
| tr-002         | dqlabcust01    |       3 | prod-07     | Tas Travel Organizer DQLab    |    1 |  48000 |       7 | prod-07     | Tas Travel Organizer DQLab    |  48000 |
| tr-003         | dqlabcust03    |       1 | prod-02     | Flashdisk DQLab 64 GB         |    2 |  55000 |       2 | prod-02     | Flashdisk DQLab 64 GB         |  55000 |
| tr-004         | dqlabcust03    |       1 | prod-10     | Sticky Notes DQLab 500 sheets |    5 |  55000 |      10 | prod-10     | Sticky Notes DQLab 500 sheets |  55000 |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB         |    4 |  40000 |       4 | prod-04     | Flashdisk DQLab 32 GB         |  40000 |
| tr-005         | dqlabcust05    |       1 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |       9 | prod-09     | Buku Planner Agenda DQLab     |  92000 |
| tr-005         | dqlabcust05    |       2 | prod-01     | Kotak Pensil DQLab            |    1 |  62500 |       1 | prod-01     | Kotak Pensil DQLab            |  62500 |
| tr-005         | dqlabcust05    |       3 | prod-04     | Flashdisk DQLab 32 GB         |    2 |  40000 |       4 | prod-04     | Flashdisk DQLab 32 GB         |  40000 |
| tr-006         | dqlabcust02    |       1 | prod-05     | Gift Voucher DQLab 250rb      |    4 | 250000 |       5 | prod-05     | Gift Voucher DQLab 250rb      | 250000 |
| tr-006         | dqlabcust02    |       2 | prod-08     | Gantungan Kunci DQLab         |    2 |  15800 |       8 | prod-08     | Gantungan Kunci DQLab         |  15800 |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+-------------+-------------------------------+--------+

SELECT tr_penjualan.kode_transaksi, tr_penjualan.kode_pelanggan, tr_penjualan.kode_produk, ms_produk.nama_produk,ms_produk.harga, tr_penjualan.qty,(ms_produk.harga * tr_penjualan.qty) as total
FROM tr_penjualan
INNER JOIN ms_produk
ON tr_penjualan.kode_produk = ms_produk.kode_produk;
+----------------+----------------+-------------+-------------------------------+--------+------+---------+
| kode_transaksi | kode_pelanggan | kode_produk | nama_produk                   | harga  | qty  | total   |
+----------------+----------------+-------------+-------------------------------+--------+------+---------+
| tr-001         | dqlabcust07    | prod-01     | Kotak Pensil DQLab            |  62500 |    5 |  312500 |
| tr-001         | dqlabcust07    | prod-03     | Gift Voucher DQLab 100rb      | 100000 |    1 |  100000 |
| tr-001         | dqlabcust07    | prod-09     | Buku Planner Agenda DQLab     |  92000 |    3 |  276000 |
| tr-001         | dqlabcust07    | prod-04     | Flashdisk DQLab 32 GB         |  40000 |    3 |  120000 |
| tr-002         | dqlabcust01    | prod-03     | Gift Voucher DQLab 100rb      | 100000 |    2 |  200000 |
| tr-002         | dqlabcust01    | prod-10     | Sticky Notes DQLab 500 sheets |  55000 |    4 |  220000 |
| tr-002         | dqlabcust01    | prod-07     | Tas Travel Organizer DQLab    |  48000 |    1 |   48000 |
| tr-003         | dqlabcust03    | prod-02     | Flashdisk DQLab 64 GB         |  55000 |    2 |  110000 |
| tr-004         | dqlabcust03    | prod-10     | Sticky Notes DQLab 500 sheets |  55000 |    5 |  275000 |
| tr-004         | dqlabcust03    | prod-04     | Flashdisk DQLab 32 GB         |  40000 |    4 |  160000 |
| tr-005         | dqlabcust05    | prod-09     | Buku Planner Agenda DQLab     |  92000 |    3 |  276000 |
| tr-005         | dqlabcust05    | prod-01     | Kotak Pensil DQLab            |  62500 |    1 |   62500 |
| tr-005         | dqlabcust05    | prod-04     | Flashdisk DQLab 32 GB         |  40000 |    2 |   80000 |
| tr-006         | dqlabcust02    | prod-05     | Gift Voucher DQLab 250rb      | 250000 |    4 | 1000000 |
| tr-006         | dqlabcust02    | prod-08     | Gantungan Kunci DQLab         |  15800 |    2 |   31600 |
+----------------+----------------+-------------+-------------------------------+--------+------+---------+ 

SELECT tr_penjualan.kode_transaksi, tr_penjualan.kode_pelanggan, tr_penjualan.kode_produk, ms_produk.nama_produk,
ms_produk.harga, tr_penjualan.qty,
ms_produk.harga*tr_penjualan.qty as total
FROM tr_penjualan
INNER JOIN ms_produk
ON tr_penjualan.kode_produk = ms_produk.kode_produk;
+----------------+----------------+-------------+-------------------------------+--------+------+---------+
| kode_transaksi | kode_pelanggan | kode_produk | nama_produk                   | harga  | qty  | total   |
+----------------+----------------+-------------+-------------------------------+--------+------+---------+
| tr-001         | dqlabcust07    | prod-01     | Kotak Pensil DQLab            |  62500 |    5 |  312500 |
| tr-001         | dqlabcust07    | prod-03     | Gift Voucher DQLab 100rb      | 100000 |    1 |  100000 |
| tr-001         | dqlabcust07    | prod-09     | Buku Planner Agenda DQLab     |  92000 |    3 |  276000 |
| tr-001         | dqlabcust07    | prod-04     | Flashdisk DQLab 32 GB         |  40000 |    3 |  120000 |
| tr-002         | dqlabcust01    | prod-03     | Gift Voucher DQLab 100rb      | 100000 |    2 |  200000 |
| tr-002         | dqlabcust01    | prod-10     | Sticky Notes DQLab 500 sheets |  55000 |    4 |  220000 |
| tr-002         | dqlabcust01    | prod-07     | Tas Travel Organizer DQLab    |  48000 |    1 |   48000 |
| tr-003         | dqlabcust03    | prod-02     | Flashdisk DQLab 64 GB         |  55000 |    2 |  110000 |
| tr-004         | dqlabcust03    | prod-10     | Sticky Notes DQLab 500 sheets |  55000 |    5 |  275000 |
| tr-004         | dqlabcust03    | prod-04     | Flashdisk DQLab 32 GB         |  40000 |    4 |  160000 |
| tr-005         | dqlabcust05    | prod-09     | Buku Planner Agenda DQLab     |  92000 |    3 |  276000 |
| tr-005         | dqlabcust05    | prod-01     | Kotak Pensil DQLab            |  62500 |    1 |   62500 |
| tr-005         | dqlabcust05    | prod-04     | Flashdisk DQLab 32 GB         |  40000 |    2 |   80000 |
| tr-006         | dqlabcust02    | prod-05     | Gift Voucher DQLab 250rb      | 250000 |    4 | 1000000 |
| tr-006         | dqlabcust02    | prod-08     | Gantungan Kunci DQLab         |  15800 |    2 |   31600 |
+----------------+----------------+-------------+-------------------------------+--------+------+---------+

select * from tabel_A;
+----------------+----------------+---------+-------------+-------------------------------+------+--------+--------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk                   | qty  | harga  | total  |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+--------+
| tr-001         | dqlabcust07    |       1 | prod-01     | Kotak Pensil DQLab            |    5 |  62500 | 312500 |
| tr-001         | dqlabcust07    |       2 | prod-03     | Flash disk DQLab 32 GB        |    1 | 100000 | 100000 |
| tr-001         | dqlabcust07    |       3 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 | 276000 |
| tr-001         | dqlabcust07    |       4 | prod-04     | Flashdisk DQLab 32 GB         |    3 |  40000 | 120000 |
| tr-002         | dqlabcust01    |       1 | prod-03     | Gift Voucher DQLab 100rb      |    2 | 100000 | 200000 |
| tr-002         | dqlabcust01    |       2 | prod-10     | Sticky Notes DQLab 500 sheets |    4 |  55000 | 220000 |
| tr-002         | dqlabcust01    |       3 | prod-07     | Tas Travel Organizer DQLab    |    1 |  48000 |  48000 |
| tr-003         | dqlabcust03    |       1 | prod-02     | Flashdisk DQLab 64 GB         |    2 |  55000 | 110000 |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+--------+

select * from tabel_B;
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk                   | qty  | harga  | total   |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+
| tr-004         | dqlabcust03    |       1 | prod-10     | Sticky Notes DQLab 500 sheets |    5 |  55000 |  275000 |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB         |    4 |  40000 |  160000 |
| tr-005         | dqlabcust05    |       1 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |  276000 |
| tr-005         | dqlabcust05    |       2 | prod-01     | Kotak Pensil DQLab            |    1 |  62500 |   62500 |
| tr-005         | dqlabcust05    |       3 | prod-04     | Flashdisk DQLab 32 GB         |    2 |  40000 |   80000 |
| tr-006         | dqlabcust02    |       1 | prod-05     | Gift Voucher DQLab 250rb      |    4 | 250000 | 1000000 |
| tr-006         | dqlabcust02    |       2 | prod-08     | Gantungan Kunci DQLab         |    2 |  15800 |   31600 |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+

Select * from tabel_A
UNION
Select * from tabel_B;
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk                   | qty  | harga  | total   |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+
| tr-001         | dqlabcust07    |       1 | prod-01     | Kotak Pensil DQLab            |    5 |  62500 |  312500 |
| tr-001         | dqlabcust07    |       2 | prod-03     | Flash disk DQLab 32 GB        |    1 | 100000 |  100000 |
| tr-001         | dqlabcust07    |       3 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |  276000 |
| tr-001         | dqlabcust07    |       4 | prod-04     | Flashdisk DQLab 32 GB         |    3 |  40000 |  120000 |
| tr-002         | dqlabcust01    |       1 | prod-03     | Gift Voucher DQLab 100rb      |    2 | 100000 |  200000 |
| tr-002         | dqlabcust01    |       2 | prod-10     | Sticky Notes DQLab 500 sheets |    4 |  55000 |  220000 |
| tr-002         | dqlabcust01    |       3 | prod-07     | Tas Travel Organizer DQLab    |    1 |  48000 |   48000 |
| tr-003         | dqlabcust03    |       1 | prod-02     | Flashdisk DQLab 64 GB         |    2 |  55000 |  110000 |
| tr-004         | dqlabcust03    |       1 | prod-10     | Sticky Notes DQLab 500 sheets |    5 |  55000 |  275000 |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB         |    4 |  40000 |  160000 |
| tr-005         | dqlabcust05    |       1 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |  276000 |
| tr-005         | dqlabcust05    |       2 | prod-01     | Kotak Pensil DQLab            |    1 |  62500 |   62500 |
| tr-005         | dqlabcust05    |       3 | prod-04     | Flashdisk DQLab 32 GB         |    2 |  40000 |   80000 |
| tr-006         | dqlabcust02    |       1 | prod-05     | Gift Voucher DQLab 250rb      |    4 | 250000 | 1000000 |
| tr-006         | dqlabcust02    |       2 | prod-08     | Gantungan Kunci DQLab         |    2 |  15800 |   31600 |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+ 

SELECT * from tabel_A
Where kode_produk = 'prod-04'
UNION
SELECT * FROM tabel_B
WHERE kode_produk = 'prod-04';
+----------------+----------------+---------+-------------+-----------------------+------+-------+--------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk           | qty  | harga | total  |
+----------------+----------------+---------+-------------+-----------------------+------+-------+--------+
| tr-001         | dqlabcust07    |       4 | prod-04     | Flashdisk DQLab 32 GB |    3 | 40000 | 120000 |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB |    4 | 40000 | 160000 |
| tr-005         | dqlabcust05    |       3 | prod-04     | Flashdisk DQLab 32 GB |    2 | 40000 |  80000 |
+----------------+----------------+---------+-------------+-----------------------+------+-------+--------+

SELECT CustomerName, ContactName, City, PostalCode
from Customers
UNION
SELECT SupplierName, ContactName, City, PostalCode
from Suppliers;
+-----------------+-------------+----------+------------+
| CustomerName    | ContactName | City     | PostalCode |
+-----------------+-------------+----------+------------+
| Fransiska Maria | Maria       | Jakarta  |      14450 |
| Ana Helena      | Ana Helena  | Surabaya |       5021 |
| Lily Subari     | Lili        | Makassar |       5023 |
| Yulius Syrup    | Yulius      | Jakarta  |      14450 |
| Bandung Bakery  | Sherly Ani  | Bandung  |      70117 |
| Tara Pastry     | Regina Tara | Semarang |      48104 |
+-----------------+-------------+----------+------------+

Select DISTINCT tr_penjualan.kode_pelanggan, ms_pelanggan.nama_customer, ms_pelanggan.alamat
from ms_pelanggan
inner join tr_penjualan
on ms_pelanggan.kode_pelanggan = tr_penjualan.kode_pelanggan
where tr_penjualan.nama_produk = 'Kotak Pensil DQLab' or tr_penjualan.nama_produk ='Flashdisk DQLab 32 GB' or tr_penjualan.nama_produk = 'Sticky Notes DQLab 500 sheets';

+----------------+--------------------+----------------------------------------+
| kode_pelanggan | nama_customer      | alamat                                 |
+----------------+--------------------+----------------------------------------+
| dqlabcust01    | Eva Novianti, S.H. | Vila Sempilan, No. 67 - Kota B         |
| dqlabcust03    | Unang Handoko      | Vila Sempilan, No. 1 - Kota B          |
| dqlabcust05    | Tommy Sinaga       | Vila Permata Intan Berkilau, Blok A1/2 |
| dqlabcust07    | Agus Cahyono       | Vila Gunung Seribu, Blok F4 - No. 8    |
+----------------+--------------------+----------------------------------------+

SELECT nama_produk, kode_produk, harga
from ms_produk_1
where harga < 100000
UNION
Select nama_produk, kode_produk, harga
from ms_produk_2
where harga <50000;
+----------------------------+-------------+-------+
| nama_produk                | kode_produk | harga |
+----------------------------+-------------+-------+
| Kotak Pensil DQLab         | prod-01     | 62500 |
| Flashdisk DQLab 64 GB      | prod-02     | 55000 |
| Flashdisk DQLab 32 GB      | prod-04     | 40000 |
| Tas Travel Organizer DQLab | prod-07     | 48000 |
| Gantungan Kunci DQLab      | prod-08     | 15800 |
+----------------------------+-------------+-------+

