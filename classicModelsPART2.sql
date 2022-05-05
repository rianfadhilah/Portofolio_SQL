SHOW TABLES;
+-------------------------+
| Tables_in_classicmodels |
+-------------------------+
| customers               |
| employees               |
| offices                 |
| orderdetails            |
| orders                  |
| payments                |
| productlines            |
| products                |
+-------------------------+

/* Menampilkan produk yang terjual berdasarkan order date */
SELECT orderDate, productName
    -> from products
    -> join orderdetails using (productCode)
    -> join orders using (orderNumber)
    -> order by orderDate;
+------------+---------------------------------------------+
| orderDate  | productName                                 |
+------------+---------------------------------------------+
| 2003-01-06 | 1917 Grand Touring Sedan                    |
| 2003-01-06 | 1911 Ford Town Car                          |
| 2003-01-06 | 1932 Alfa Romeo 8C2300 Spider Sport         |
| 2003-01-06 | 1936 Mercedes Benz 500k Roadster            |
| 2003-01-09 | 1932 Model A Ford J-Coupe                   |
| 2003-01-09 | 1928 Mercedes-Benz SSK                      |
| 2003-01-09 | 1939 Chevrolet Deluxe Coupe                 |
| 2003-01-09 | 1938 Cadillac V-16 Presidential Limousine   |
| 2003-01-10 | 1937 Lincoln Berline                        |
| 2003-01-10 | 1936 Mercedes-Benz 500K Special Roadster    |
| 2003-01-29 | 1952 Alpine Renault 1300                    |
| 2003-01-29 | 1962 LanciaA Delta 16V                      |
| 2003-01-29 | 1958 Setra Bus                              |
| 2003-01-29 | 1940 Ford Pickup Truck                      |
| 2003-01-29 | 1926 Ford Fire Engine                       |
| 2003-01-29 | 1913 Ford Model T Speedster                 |
| 2003-01-29 | 1934 Ford V8 Coupe                          |
| 2003-01-29 | 18th Century Vintage Horse Carriage         |
| 2003-01-29 | 1917 Maxwell Touring Car                    |
| 2003-01-29 | 1940s Ford truck                            |
| 2003-01-29 | 1939 Cadillac Limousine                     |
| 2003-01-29 | 1962 Volkswagen Microbus                    |
| 2003-01-29 | 1936 Chrysler Airflow                       |
| 2003-01-29 | 1980?s GM Manhattan Express                 |
| 2003-01-29 | 1996 Peterbilt 379 Stake Bed with Outrigger |
| 2003-01-29 | 1982 Camaro Z28                             |
| 2003-01-31 | 1969 Corvair Monza                          |
| 2003-01-31 | 1957 Chevy Pickup                           |
| 2003-01-31 | 1998 Chrysler Plymouth Prowler              |
| 2003-01-31 | 1964 Mercedes Tour Bus                      |
| 2003-01-31 | 1992 Ferrari 360 Spider red                 |
| 2003-01-31 | 1970 Triumph Spitfire                       |
| 2003-01-31 | 1970 Dodge Coronet                          |
| 2003-01-31 | 1958 Chevy Corvette Limited Edition         |
| 2003-01-31 | 1992 Porsche Cayenne Turbo Silver           |
| 2003-01-31 | 1954 Greyhound Scenicruiser                 |
| 2003-01-31 | 1950's Chicago Surface Lines Streetcar      |
| 2003-01-31 | Diamond T620 Semi-Skirted Tanker            |
| 2003-01-31 | 1962 City of Detroit Streetcar              |
| 2003-02-11 | 1972 Alfa Romeo GTA                         |
| 2003-02-11 | 2001 Ferrari Enzo                           |
| 2003-02-11 | 1969 Ford Falcon                            |
| 2003-02-11 | 1903 Ford Model A                           |
| 2003-02-11 | Collectable Wooden Train                    |
| 2003-02-11 | 1904 Buick Runabout                         |
| 2003-02-11 | 18th century schooner                       |
| 2003-02-11 | 1912 Ford Model T Delivery Wagon            |
| 2003-02-11 | 1940 Ford Delivery Sedan                    |
| 2003-02-11 | The Schooner Bluenose                       |
| 2003-02-11 | The Mayflower                               |
| 2003-02-11 | The USS Constitution Ship                   |
| 2003-02-11 | The Titanic                                 |
| 2003-02-11 | The Queen Mary                              |
| 2003-02-11 | Pont Yacht                                  |
| 2003-02-17 | 1980s Black Hawk Helicopter                 |
| 2003-02-17 | P-51-D Mustang                              |
| 2003-02-17 | 1999 Yamaha Speed Boat                      |
| 2003-02-17 | 1941 Chevrolet Special Deluxe Cabriolet     |
| 2003-02-17 | 1928 British Royal Navy Airplane            |
| 2003-02-17 | 1900s Vintage Bi-Plane                      |
| 2003-02-17 | 1937 Horch 930V Limousine                   |
| 2003-02-17 | Corsair F4U ( Bird Cage)                    |
| 2003-02-17 | 1900s Vintage Tri-Plane                     |
| 2003-02-17 | 1928 Ford Phaeton Deluxe                    |
| 2003-02-17 | 1930 Buick Marquette Phaeton                |
| 2003-02-17 | American Airlines: B767-300                 |
| 2003-02-17 | HMS Bounty                                  |
| 2003-02-17 | America West Airlines B757-200              |
.
.
.
| 2005-05-31 | 1970 Dodge Coronet                          |
| 2005-05-31 | 1962 Volkswagen Microbus                    |
| 2005-05-31 | 1958 Chevy Corvette Limited Edition         |
| 2005-05-31 | 1980?s GM Manhattan Express                 |
| 2005-05-31 | 1954 Greyhound Scenicruiser                 |
| 2005-05-31 | Diamond T620 Semi-Skirted Tanker            |
+------------+---------------------------------------------+
2996 rows in set (0.008 sec)

/* Menampilkan semua order atas produk 1940 Ford Pickup Truck */
 SELECT orderNumber,productName, orderDate
    -> FROM products
    -> JOIN orderdetails USING(productCode)
    -> JOIN orders USING(orderNumber)
    -> WHERE productName = '1940 Ford Pickup Truck';
+-------------+------------------------+------------+
| orderNumber | productName            | orderDate  |
+-------------+------------------------+------------+
|       10103 | 1940 Ford Pickup Truck | 2003-01-29 |
|       10113 | 1940 Ford Pickup Truck | 2003-03-26 |
|       10126 | 1940 Ford Pickup Truck | 2003-05-28 |
|       10140 | 1940 Ford Pickup Truck | 2003-07-24 |
|       10150 | 1940 Ford Pickup Truck | 2003-09-19 |
|       10164 | 1940 Ford Pickup Truck | 2003-10-21 |
|       10174 | 1940 Ford Pickup Truck | 2003-11-06 |
|       10183 | 1940 Ford Pickup Truck | 2003-11-13 |
|       10194 | 1940 Ford Pickup Truck | 2003-11-25 |
|       10206 | 1940 Ford Pickup Truck | 2003-12-05 |
|       10215 | 1940 Ford Pickup Truck | 2004-01-29 |
|       10228 | 1940 Ford Pickup Truck | 2004-03-10 |
|       10245 | 1940 Ford Pickup Truck | 2004-05-04 |
|       10258 | 1940 Ford Pickup Truck | 2004-06-15 |
|       10270 | 1940 Ford Pickup Truck | 2004-07-19 |
|       10280 | 1940 Ford Pickup Truck | 2004-08-17 |
|       10291 | 1940 Ford Pickup Truck | 2004-09-08 |
|       10304 | 1940 Ford Pickup Truck | 2004-10-11 |
|       10312 | 1940 Ford Pickup Truck | 2004-10-21 |
|       10322 | 1940 Ford Pickup Truck | 2004-11-04 |
|       10333 | 1940 Ford Pickup Truck | 2004-11-18 |
|       10347 | 1940 Ford Pickup Truck | 2004-11-29 |
|       10357 | 1940 Ford Pickup Truck | 2004-12-10 |
|       10370 | 1940 Ford Pickup Truck | 2005-01-20 |
|       10381 | 1940 Ford Pickup Truck | 2005-02-17 |
|       10391 | 1940 Ford Pickup Truck | 2005-03-09 |
|       10411 | 1940 Ford Pickup Truck | 2005-05-01 |
|       10424 | 1940 Ford Pickup Truck | 2005-05-31 |
+-------------+------------------------+------------+
28 rows in set (0.011 sec)

/*Menampilkan nama customer dan order number dimana ordernya memiliki nilai lebih dari 25.000 */
SELECT customerName, orderNumber,
    -> SUM(quantityOrdered*priceEach) as nilaiOrder
    -> FROM customers JOIN orders USING (customerNumber)
    -> JOIN orderdetails USING(orderNumber)
    -> GROUP BY orderNumber
    -> HAVING nilaiOrder > 25000;
+------------------------------------+-------------+------------+
| customerName                       | orderNumber | nilaiOrder |
+------------------------------------+-------------+------------+
| Baane Mini Imports                 |       10103 |   50218.95 |
| Euro+ Shopping Channel             |       10104 |   40206.20 |
| Danish Wholesale Imports           |       10105 |   53959.21 |
| Rovelli Gifts                      |       10106 |   52151.81 |
| Cruz & Sons Co.                    |       10108 |   51001.22 |
| Motor Mint Distributors Inc.       |       10109 |   25833.14 |
| AV Stores, Co.                     |       10110 |   48425.69 |
| La Corne D'abondance, Co.          |       10114 |   33383.14 |
| Dragon Souveniers, Ltd.            |       10117 |   44380.15 |
| Salzburg Collectables              |       10119 |   35826.33 |
| Australian Collectors, Co.         |       10120 |   45864.03 |
| Marseille Mini Autos               |       10122 |   50824.66 |
| Signal Gift Stores                 |       10124 |   32641.98 |
| Corrida Auto Replicas, Ltd         |       10126 |   57131.92 |
| Muscle Machine Inc                 |       10127 |   58841.35 |
| Stylish Desk Decors, Co.           |       10129 |   29429.14 |
| Mini Gifts Distributors Ltd.       |       10135 |   55601.84 |
| Kelly's Gift Shop                  |       10138 |   32077.44 |
| Technics Stores Inc.               |       10140 |   38675.13 |
| Suominen Souveniers                |       10141 |   29716.86 |
| Mini Gifts Distributors Ltd.       |       10142 |   56052.56 |
| Mini Creations Ltd.                |       10143 |   41016.75 |
| Toys4GrownUps.com                  |       10145 |   50342.74 |
| Collectables For Less Inc.         |       10147 |   32680.31 |
| Anna's Decorations, Ltd            |       10148 |   41554.73 |
| Signal Collectibles Ltd.           |       10149 |   29997.09 |
| Dragon Souveniers, Ltd.            |       10150 |   38350.15 |
| Oulu Toy Supplies, Inc.            |       10151 |   32723.04 |
| Euro+ Shopping Channel             |       10153 |   44939.85 |
| Toys of Finland, Co.               |       10155 |   37602.48 |
| Corporate Gift Ideas Co.           |       10159 |   54682.68 |
| Heintze Collectables               |       10161 |   36164.46 |
| Corporate Gift Ideas Co.           |       10162 |   30876.44 |
| Mini Auto Werke                    |       10164 |   27121.90 |
| Dragon Souveniers, Ltd.            |       10165 |   67392.85 |
| Scandinavian Gift Ideas            |       10167 |   44167.09 |
| Technics Stores Inc.               |       10168 |   50743.65 |
| Anna's Decorations, Ltd            |       10169 |   38547.19 |
| Rovelli Gifts                      |       10173 |   37723.79 |
| Stylish Desk Decors, Co.           |       10175 |   37455.77 |
| L'ordine Souveniers                |       10176 |   38524.29 |
| CAF Imports                        |       10177 |   31428.21 |
| Alpha Cognac                       |       10178 |   33818.34 |
| Daedalus Designs Imports           |       10180 |   42783.81 |
| Herkku Gifts                       |       10181 |   55069.55 |
| Mini Gifts Distributors Ltd.       |       10182 |   45084.38 |
| Classic Gift Ideas, Inc            |       10183 |   34606.28 |
| Iberia Gift Imports, Corp.         |       10184 |   47513.19 |
| Mini Creations Ltd.                |       10185 |   52548.49 |
| King Kong Collectables, Co.        |       10187 |   28287.73 |
| Herkku Gifts                       |       10188 |   29954.91 |
| Toms Spezialitäten, Ltd            |       10191 |   27988.47 |
| Online Diecast Creations Co.       |       10192 |   55425.77 |
| Australian Collectables, Ltd       |       10193 |   35505.63 |
| Saveley & Henriot, Co.             |       10194 |   39712.10 |
| Mini Classics                      |       10195 |   36092.40 |
| Super Scale Inc.                   |       10196 |   38139.18 |
| Enaco Distributors                 |       10197 |   40473.86 |
| Euro+ Shopping Channel             |       10203 |   40062.53 |
| Muscle Machine Inc                 |       10204 |   58793.53 |
| Canadian Gift Exchange Network     |       10206 |   36527.61 |
| Diecast Collectables               |       10207 |   59265.14 |
| Saveley & Henriot, Co.             |       10208 |   49614.72 |
| Osaka Souveniers Co.               |       10210 |   47177.59 |
| Auto Canal+ Petit                  |       10211 |   49165.16 |
| Euro+ Shopping Channel             |       10212 |   59830.55 |
| West Coast Collectables Co.        |       10215 |   36070.47 |
| Clover Collections, Co.            |       10220 |   32538.74 |
| Collectable Mini Designs Co.       |       10222 |   56822.65 |
| Australian Collectors, Co.         |       10223 |   44894.74 |
| Vida Sport, Ltd                    |       10225 |   47375.92 |
| Saveley & Henriot, Co.             |       10227 |   40978.53 |
| Mini Gifts Distributors Ltd.       |       10229 |   43369.30 |
| Blauer See Auto, Co.               |       10230 |   33820.62 |
| Extreme Desk Decorations, Ltd      |       10234 |   31670.37 |
| Royal Canadian Collectables, Ltd.  |       10235 |   29284.42 |
| Danish Wholesale Imports           |       10238 |   28211.70 |
| Mini Caravy                        |       10241 |   36069.26 |
| Euro+ Shopping Channel             |       10244 |   26155.91 |
| Super Scale Inc.                   |       10245 |   32239.47 |
| Euro+ Shopping Channel             |       10246 |   35420.74 |
| Suominen Souveniers                |       10247 |   28394.54 |
| Land of Toys Inc.                  |       10248 |   41445.21 |
| The Sharp Gifts Warehouse          |       10250 |   42798.08 |
| Tekni Collectables Inc.            |       10251 |   31102.85 |
| Auto Canal+ Petit                  |       10252 |   25080.96 |
| UK Collectables, Ltd.              |       10253 |   45443.54 |
| Down Under Souveniers, Inc         |       10254 |   37281.36 |
| Handji Gifts& Co                   |       10259 |   44160.92 |
| GiftsForHim.com                    |       10260 |   37769.38 |
| Euro+ Shopping Channel             |       10262 |   47065.36 |
| Gift Depot Inc.                    |       10263 |   42044.77 |
| L'ordine Souveniers                |       10266 |   51619.02 |
| Extreme Desk Decorations, Ltd      |       10268 |   35034.57 |
| Souveniers And Things Co.          |       10270 |   35806.73 |
| Mini Gifts Distributors Ltd.       |       10271 |   37430.89 |
| Petit Auto                         |       10273 |   45352.47 |
| La Rochelle Gifts                  |       10275 |   47924.19 |
| Online Mini Collectables           |       10276 |   51152.86 |
| Signal Gift Stores                 |       10278 |   33347.88 |
| Amica Models & Co.                 |       10280 |   48298.99 |
| Diecast Classics Inc.              |       10281 |   39641.43 |
| Mini Gifts Distributors Ltd.       |       10282 |   47979.98 |
| Royal Canadian Collectables, Ltd.  |       10283 |   37527.58 |
| Norway Gifts By Mail, Co.          |       10284 |   32260.16 |
| Marta's Replicas Co.               |       10285 |   43134.04 |
| Vida Sport, Ltd                    |       10287 |   61402.00 |
| Handji Gifts& Co                   |       10288 |   38785.48 |
| Scandinavian Gift Ideas            |       10291 |   48809.90 |
| Land of Toys Inc.                  |       10292 |   35321.97 |
| Amica Models & Co.                 |       10293 |   33924.24 |
| Bavarian Collectables Imports, Co. |       10296 |   31310.09 |
| Toys of Finland, Co.               |       10299 |   34341.08 |
| Norway Gifts By Mail, Co.          |       10301 |   36798.88 |
| Auto Associés & Cie.               |       10304 |   53116.99 |
| Marta's Replicas Co.               |       10305 |   47411.33 |
| AV Stores, Co.                     |       10306 |   52825.29 |
| Mini Classics                      |       10308 |   42339.76 |
| Toms Spezialitäten, Ltd            |       10310 |   61234.67 |
| Euro+ Shopping Channel             |       10311 |   36140.38 |
| Mini Gifts Distributors Ltd.       |       10312 |   55639.66 |
| Canadian Gift Exchange Network     |       10313 |   33594.58 |
| Heintze Collectables               |       10314 |   53745.34 |
| giftsbymail.co.uk                  |       10316 |   46788.14 |
| Diecast Classics Inc.              |       10318 |   35152.12 |
| Microscale Inc.                    |       10319 |   27550.51 |
| FunGiftIdeas.com                   |       10321 |   48355.87 |
| Online Diecast Creations Co.       |       10322 |   50799.69 |
| Vitachrome Inc.                    |       10324 |   44400.50 |
| Baane Mini Imports                 |       10325 |   34638.14 |
| Rovelli Gifts                      |       10328 |   37654.09 |
| Land of Toys Inc.                  |       10329 |   50025.35 |
| Motor Mint Distributors Inc.       |       10331 |   45994.07 |
| AV Stores, Co.                     |       10332 |   47159.11 |
| Mini Wheels Co.                    |       10333 |   26248.78 |
| La Corne D'abondance, Co.          |       10336 |   51209.58 |
| Classic Legends Inc.               |       10337 |   25505.98 |
| Tokyo Collectables, Ltd            |       10339 |   48927.64 |
| Salzburg Collectables              |       10341 |   42813.83 |
| Australian Collectors, Co.         |       10342 |   40265.60 |
| Australian Collectors, Co.         |       10347 |   41995.62 |
| Corrida Auto Replicas, Ltd         |       10348 |   33145.56 |
| Muscle Machine Inc                 |       10349 |   39964.63 |
| Euro+ Shopping Channel             |       10350 |   46493.16 |
| Gift Ideas Corp.                   |       10353 |   26304.13 |
| Down Under Souveniers, Inc         |       10354 |   39440.59 |
| Euro+ Shopping Channel             |       10355 |   25529.78 |
| Lyon Souveniers                    |       10356 |   26311.63 |
| Mini Gifts Distributors Ltd.       |       10357 |   40676.26 |
| Euro+ Shopping Channel             |       10358 |   44185.46 |
| Reims Collectables                 |       10359 |   32600.61 |
| Kelly's Gift Shop                  |       10360 |   52166.00 |
| Souveniers And Things Co.          |       10361 |   31835.36 |
| Suominen Souveniers                |       10363 |   45785.34 |
| Toys4GrownUps.com                  |       10367 |   39580.60 |
| Collectables For Less Inc.         |       10369 |   28322.83 |
| Anna's Decorations, Ltd            |       10370 |   27083.78 |
| Mini Gifts Distributors Ltd.       |       10371 |   35137.54 |
| Tokyo Collectables, Ltd            |       10372 |   33967.73 |
| Oulu Toy Supplies, Inc.            |       10373 |   46770.52 |
| La Rochelle Gifts                  |       10375 |   49523.67 |
| Euro+ Shopping Channel             |       10378 |   32289.12 |
| Euro+ Shopping Channel             |       10380 |   34404.21 |
| Corporate Gift Ideas Co.           |       10381 |   32626.09 |
| Mini Gifts Distributors Ltd.       |       10382 |   47765.59 |
| Euro+ Shopping Channel             |       10383 |   36851.98 |
| Euro+ Shopping Channel             |       10386 |   46968.52 |
| FunGiftIdeas.com                   |       10388 |   30293.77 |
| Scandinavian Gift Ideas            |       10389 |   27966.54 |
| Mini Gifts Distributors Ltd.       |       10390 |   55902.50 |
| Anna's Decorations, Ltd            |       10391 |   29848.52 |
| Down Under Souveniers, Inc         |       10393 |   33593.32 |
| Mini Gifts Distributors Ltd.       |       10396 |   27695.54 |
| Reims Collectables                 |       10398 |   46656.94 |
| Kelly's Gift Shop                  |       10399 |   30253.75 |
| The Sharp Gifts Warehouse          |       10400 |   31755.34 |
| Tekni Collectables Inc.            |       10401 |   43525.04 |
| UK Collectables, Ltd.              |       10403 |   37258.94 |
| Down Under Souveniers, Inc         |       10404 |   41426.81 |
| Mini Caravy                        |       10405 |   35157.75 |
| The Sharp Gifts Warehouse          |       10407 |   52229.55 |
| GiftsForHim.com                    |       10410 |   36442.34 |
| Québec Home Shopping Network       |       10411 |   29070.38 |
| Euro+ Shopping Channel             |       10412 |   46895.48 |
| Gift Depot Inc.                    |       10413 |   28500.78 |
| Gifts4AllAges.com                  |       10414 |   50806.85 |
| L'ordine Souveniers                |       10416 |   35362.26 |
| Euro+ Shopping Channel             |       10417 |   28574.90 |
| Salzburg Collectables              |       10419 |   52420.07 |
| Souveniers And Things Co.          |       10420 |   42251.51 |
| Euro+ Shopping Channel             |       10424 |   29310.30 |
| La Rochelle Gifts                  |       10425 |   41623.44 |
+------------------------------------+-------------+------------+
192 rows in set (0.005 sec)

/*Menampilkan produk yang terdapat disetiap ordernya */
SELECT productCode, COUNT(*) AS banyak
    -> FROM orderdetails
    -> GROUP BY productCode
    -> HAVING banyak = (
    -> SELECT COUNT(*) FROM orders);
Empty set (0.002 sec)

/* Tampilken order yang memiliki harga jual kurang dari MSRP nya */
SELECT orderNumber, productName, priceEach, MSRP
    -> from products
    -> join orderdetails USING (productCode)
    -> join orders USING (orderNumber)
    -> where priceEach <MSRP
    -> LIMIT 1000;
+-------------+---------------------------------------------+-----------+--------+
| orderNumber | productName                                 | priceEach | MSRP   |
+-------------+---------------------------------------------+-----------+--------+
|       10123 | 1965 Aston Martin DB5                       |    120.71 | 124.44 |
|       10123 | 1999 Indy 500 Monte Carlo SS                |    114.84 | 132.00 |
|       10123 | 1948 Porsche Type 356 Roadster              |    117.26 | 141.28 |
|       10123 | 1966 Shelby Cobra 427 S/C                   |     43.27 |  50.31 |
|       10298 | 1996 Moto Guzzi 1100i                       |    105.86 | 118.94 |
|       10345 | 1938 Cadillac V-16 Presidential Limousine   |     38.98 |  44.80 |
|       10124 | 1917 Grand Touring Sedan                    |    153.00 | 170.00 |
|       10124 | 1911 Ford Town Car                          |     58.12 |  60.54 |
|       10124 | 1932 Model A Ford J-Coupe                   |    111.87 | 127.13 |
|       10124 | 1932 Alfa Romeo 8C2300 Spider Sport         |     75.46 |  92.03 |
|       10124 | 1957 Ford Thunderbird                       |     66.28 |  71.27 |
|       10124 | 1970 Chevy Chevelle SS 454                  |     62.47 |  73.49 |
|       10124 | 1939 Chevrolet Deluxe Coupe                 |     30.53 |  33.19 |
|       10124 | 1938 Cadillac V-16 Presidential Limousine   |     36.29 |  44.80 |
|       10124 | 1949 Jaguar XK 120                          |     74.51 |  90.87 |
|       10124 | 1952 Citroen-15CV                           |     93.95 | 117.44 |
|       10124 | 1969 Chevrolet Camaro Z28                   |     76.19 |  85.61 |
|       10124 | 2002 Chevy Corvette                         |    101.73 | 107.08 |
|       10124 | 1936 Mercedes Benz 500k Roadster            |     36.11 |  41.03 |
|       10278 | 1993 Mazda RX-7                             |    114.65 | 141.54 |
|       10278 | 1965 Aston Martin DB5                       |    107.02 | 124.44 |
|       10278 | 1948 Porsche 356-A Roadster                 |     73.15 |  77.00 |
|       10278 | 1995 Honda Civic                            |    118.07 | 142.25 |
|       10278 | 1999 Indy 500 Monte Carlo SS                |    117.48 | 132.00 |
|       10278 | 1992 Ferrari 360 Spider red                 |    167.65 | 169.34 |
|       10278 | 1948 Porsche Type 356 Roadster              |    114.44 | 141.28 |
|       10278 | 1966 Shelby Cobra 427 S/C                   |     48.80 |  50.31 |
|       10278 | 1982 Lamborghini Diablo                     |     37.38 |  37.76 |
|       10278 | 1956 Porsche 356A Coupe                     |    136.22 | 140.43 |
|       10346 | 1937 Lincoln Berline                        |     88.36 | 102.74 |
|       10346 | 1949 Jaguar XK 120                          |     87.24 |  90.87 |
|       10346 | 1969 Chevrolet Camaro Z28                   |     80.47 |  85.61 |
|       10346 | 2002 Chevy Corvette                         |    103.87 | 107.08 |
|       10346 | 1936 Mercedes Benz 500k Roadster            |     38.57 |  41.03 |
|       10120 | 2003 Harley-Davidson Eagle Drag Bike        |    158.80 | 193.66 |
|       10120 | P-51-D Mustang                              |     82.79 |  84.48 |
|       10120 | 1936 Harley Davidson El Knucklehead         |     57.54 |  60.57 |
|       10120 | 1997 BMW R 1100 S                           |    110.45 | 112.70 |
|       10120 | 1928 British Royal Navy Airplane            |     93.01 | 109.42 |
|       10120 | 1960 BSA Gold Star DBD34                    |     72.36 |  76.17 |
|       10120 | 1900s Vintage Tri-Plane                     |     71.73 |  72.45 |
|       10120 | 1997 BMW F650 ST                            |     94.90 |  99.89 |
|       10120 | 1930 Buick Marquette Phaeton                |     41.46 |  43.64 |
|       10120 | America West Airlines B757-200              |     81.77 |  99.72 |
|       10120 | ATA: B757-300                               |    106.79 | 118.65 |
|       10120 | F/A 18 Hornet 1/72                          |     72.00 |  80.00 |
|       10125 | 1937 Lincoln Berline                        |     89.38 | 102.74 |
|       10125 | 1928 Mercedes-Benz SSK                      |    138.38 | 168.75 |
|       10223 | 1969 Harley Davidson Ultimate Chopper       |     80.39 |  95.70 |
|       10223 | 1996 Moto Guzzi 1100i                       |    110.61 | 118.94 |
|       10223 | 2003 Harley-Davidson Eagle Drag Bike        |    189.79 | 193.66 |
|       10223 | P-51-D Mustang                              |     67.58 |  84.48 |
|       10223 | 1936 Harley Davidson El Knucklehead         |     58.75 |  60.57 |
|       10223 | 1997 BMW R 1100 S                           |    104.81 | 112.70 |
|       10223 | 1928 British Royal Navy Airplane            |     87.54 | 109.42 |
|       10223 | 1960 BSA Gold Star DBD34                    |     60.94 |  76.17 |
|       10223 | 1900s Vintage Tri-Plane                     |     68.10 |  72.45 |
|       10223 | 1997 BMW F650 ST                            |     90.90 |  99.89 |
|       10223 | 1928 Ford Phaeton Deluxe                    |     66.73 |  68.79 |
|       10223 | 1930 Buick Marquette Phaeton                |     41.02 |  43.64 |
|       10223 | American Airlines: B767-300                 |     84.03 |  91.34 |
|       10223 | ATA: B757-300                               |    113.90 | 118.65 |
|       10223 | F/A 18 Hornet 1/72                          |     79.20 |  80.00 |
|       10342 | 1993 Mazda RX-7                             |    118.89 | 141.54 |
|       10342 | 1948 Porsche 356-A Roadster                 |     63.14 |  77.00 |
|       10342 | 1995 Honda Civic                            |    115.22 | 142.25 |
|       10342 | 1992 Ferrari 360 Spider red                 |    167.65 | 169.34 |
|       10342 | 1969 Dodge Super Bee                        |     76.39 |  80.41 |
|       10342 | 1976 Ford Gran Torino                       |    136.70 | 146.99 |
|       10342 | 1957 Vespa GS150                            |     57.82 |  62.17 |
|       10342 | 1957 Corvette Convertible                   |    124.99 | 148.80 |
|       10342 | 1982 Lamborghini Diablo                     |     30.59 |  37.76 |
|       10342 | 1971 Alpine Renault 1600s                   |     60.01 |  61.23 |
|       10342 | 1956 Porsche 356A Coupe                     |    112.34 | 140.43 |
|       10347 | 1952 Alpine Renault 1300                    |    188.58 | 214.30 |
|       10347 | 1962 LanciaA Delta 16V                      |    132.97 | 147.74 |
|       10347 | 1958 Setra Bus                              |    132.57 | 136.67 |
|       10347 | 1940 Ford Pickup Truck                      |    113.17 | 116.67 |
|       10347 | 1936 Mercedes-Benz 500K Special Roadster    |     46.36 |  53.91 |
|       10347 | 1926 Ford Fire Engine                       |     51.05 |  60.77 |
|       10347 | 1928 Mercedes-Benz SSK                      |    136.69 | 168.75 |
|       10347 | 1913 Ford Model T Speedster                 |     84.09 | 101.31 |
|       10347 | 1934 Ford V8 Coupe                          |     60.59 |  62.46 |
|       10347 | 18th Century Vintage Horse Carriage         |     95.30 | 104.72 |
|       10347 | 1917 Maxwell Touring Car                    |     84.33 |  99.21 |
|       10347 | 1940s Ford truck                            |    115.03 | 121.08 |
|       10275 | 1969 Harley Davidson Ultimate Chopper       |     81.35 |  95.70 |
|       10275 | 1996 Moto Guzzi 1100i                       |    115.37 | 118.94 |
|       10275 | 2003 Harley-Davidson Eagle Drag Bike        |    154.93 | 193.66 |
|       10275 | P-51-D Mustang                              |     70.12 |  84.48 |
|       10275 | 1936 Harley Davidson El Knucklehead         |     52.09 |  60.57 |
|       10275 | 1997 BMW R 1100 S                           |    105.94 | 112.70 |
|       10275 | 1928 British Royal Navy Airplane            |     97.38 | 109.42 |
|       10275 | 1960 BSA Gold Star DBD34                    |     61.70 |  76.17 |
|       10275 | Corsair F4U ( Bird Cage)                    |     58.00 |  68.24 |
|       10275 | 1900s Vintage Tri-Plane                     |     67.38 |  72.45 |
|       10275 | 1997 BMW F650 ST                            |     89.90 |  99.89 |
|       10275 | 1928 Ford Phaeton Deluxe                    |     58.47 |  68.79 |
|       10275 | 1930 Buick Marquette Phaeton                |     40.15 |  43.64 |
|       10275 | American Airlines: B767-300                 |     85.86 |  91.34 |
|       10275 | America West Airlines B757-200              |     82.77 |  99.72 |
|       10275 | ATA: B757-300                               |    102.04 | 118.65 |
|       10275 | F/A 18 Hornet 1/72                          |     72.00 |  80.00 |
|       10275 | American Airlines: MD-11S                   |     59.96 |  74.03 |
|       10315 | 1904 Buick Runabout                         |     78.12 |  87.77 |
|       10315 | 18th century schooner                       |    111.83 | 122.89 |
|       10315 | 1912 Ford Model T Delivery Wagon            |     78.77 |  88.51 |
|       10315 | The Schooner Bluenose                       |     60.67 |  66.67 |
|       10315 | The Titanic                                 |     99.17 | 100.17 |
|       10315 | The Queen Mary                              |     88.39 |  99.31 |
|       10315 | Pont Yacht                                  |     51.32 |  54.60 |
|       10375 | 1969 Harley Davidson Ultimate Chopper       |     76.56 |  95.70 |
|       10375 | 1968 Ford Mustang                           |    184.84 | 194.57 |
|       10375 | 1960 BSA Gold Star DBD34                    |     67.03 |  76.17 |
|       10375 | 1982 Ducati 900 Monster                     |     60.26 |  69.26 |
|       10375 | 1900s Vintage Tri-Plane                     |     60.13 |  72.45 |
|       10375 | 1997 BMW F650 ST                            |     87.90 |  99.89 |
|       10375 | 1928 Ford Phaeton Deluxe                    |     59.85 |  68.79 |
|       10375 | 1974 Ducati 350 Mk3 Desmo                   |     96.95 | 102.05 |
|       10375 | 1930 Buick Marquette Phaeton                |     36.22 |  43.64 |
|       10375 | 2002 Yamaha YZR M1                          |     69.16 |  81.36 |
|       10375 | American Airlines: B767-300                 |     86.77 |  91.34 |
|       10375 | America West Airlines B757-200              |     94.73 |  99.72 |
|       10375 | ATA: B757-300                               |     98.48 | 118.65 |
|       10375 | F/A 18 Hornet 1/72                          |     69.60 |  80.00 |
|       10425 | 1962 LanciaA Delta 16V                      |    131.49 | 147.74 |
|       10425 | 1957 Chevy Pickup                           |     95.99 | 118.50 |
|       10425 | 1998 Chrysler Plymouth Prowler              |    147.36 | 163.73 |
|       10425 | 1964 Mercedes Tour Bus                      |    117.82 | 122.73 |
|       10425 | 1926 Ford Fire Engine                       |     48.62 |  60.77 |
|       10425 | 1992 Ferrari 360 Spider red                 |    140.55 | 169.34 |
|       10425 | 1940s Ford truck                            |    107.76 | 121.08 |
|       10425 | 1970 Dodge Coronet                          |     53.75 |  57.80 |
|       10425 | 1958 Chevy Corvette Limited Edition         |     31.82 |  35.36 |
|       10425 | 1980?s GM Manhattan Express                 |     83.79 |  96.31 |
|       10425 | 1954 Greyhound Scenicruiser                 |     50.32 |  54.11 |
|       10425 | Diamond T620 Semi-Skirted Tanker            |     94.92 | 115.75 |
|       10103 | 1962 LanciaA Delta 16V                      |    119.67 | 147.74 |
|       10103 | 1958 Setra Bus                              |    121.64 | 136.67 |
|       10103 | 1940 Ford Pickup Truck                      |     94.50 | 116.67 |
|       10103 | 1926 Ford Fire Engine                       |     58.34 |  60.77 |
|       10103 | 1913 Ford Model T Speedster                 |     92.19 | 101.31 |
|       10103 | 1934 Ford V8 Coupe                          |     61.84 |  62.46 |
|       10103 | 18th Century Vintage Horse Carriage         |     86.92 | 104.72 |
|       10103 | 1917 Maxwell Touring Car                    |     86.31 |  99.21 |
|       10103 | 1940s Ford truck                            |     98.07 | 121.08 |
|       10103 | 1939 Cadillac Limousine                     |     40.75 |  50.31 |
|       10103 | 1962 Volkswagen Microbus                    |    107.34 | 127.79 |
|       10103 | 1936 Chrysler Airflow                       |     88.62 |  97.39 |
|       10103 | 1980?s GM Manhattan Express                 |     92.46 |  96.31 |
|       10103 | 1996 Peterbilt 379 Stake Bed with Outrigger |     63.35 |  64.64 |
|       10103 | 1982 Camaro Z28                             |     94.07 | 101.15 |
|       10158 | 1960 BSA Gold Star DBD34                    |     67.79 |  76.17 |
|       10309 | 1969 Harley Davidson Ultimate Chopper       |     94.74 |  95.70 |
|       10309 | 2002 Suzuki XREO                            |    144.60 | 150.62 |
|       10309 | 1997 BMW R 1100 S                           |     96.92 | 112.70 |
|       10309 | 1982 Ducati 900 Monster                     |     59.56 |  69.26 |
|       10309 | 1974 Ducati 350 Mk3 Desmo                   |     93.89 | 102.05 |
|       10309 | 2002 Yamaha YZR M1                          |     74.04 |  81.36 |
|       10325 | 1972 Alfa Romeo GTA                         |    111.52 | 136.00 |
|       10325 | 2001 Ferrari Enzo                           |    193.25 | 207.80 |
|       10325 | 1969 Ford Falcon                            |    166.10 | 173.02 |
|       10325 | 1903 Ford Model A                           |    114.74 | 136.59 |
|       10325 | 1992 Porsche Cayenne Turbo Silver           |    114.73 | 118.28 |
|       10325 | 1954 Greyhound Scenicruiser                 |     44.37 |  54.11 |
|       10325 | 1950's Chicago Surface Lines Streetcar      |     55.30 |  62.14 |
|       10325 | Diamond T620 Semi-Skirted Tanker            |     99.55 | 115.75 |
|       10325 | 1962 City of Detroit Streetcar              |     56.24 |  58.58 |
|       10113 | 1958 Setra Bus                              |    121.64 | 136.67 |
|       10113 | 1940 Ford Pickup Truck                      |    101.50 | 116.67 |
|       10113 | 1939 Cadillac Limousine                     |     43.27 |  50.31 |
|       10113 | 1996 Peterbilt 379 Stake Bed with Outrigger |     58.82 |  64.64 |
|       10135 | 1968 Ford Mustang                           |    173.17 | 194.57 |
|       10135 | 1968 Dodge Charger                          |    110.39 | 117.44 |
|       10135 | 1970 Plymouth Hemi Cuda                     |     72.62 |  79.80 |
|       10135 | 1969 Dodge Charger                          |    103.64 | 115.16 |
|       10135 | 1948 Porsche 356-A Roadster                 |     66.99 |  77.00 |
|       10135 | 1969 Dodge Super Bee                        |     65.94 |  80.41 |
|       10135 | 1976 Ford Gran Torino                       |    139.64 | 146.99 |
|       10135 | 1957 Vespa GS150                            |     49.74 |  62.17 |
|       10135 | 1957 Corvette Convertible                   |    133.92 | 148.80 |
|       10135 | 1982 Ducati 900 Monster                     |     67.18 |  69.26 |
|       10135 | 1982 Lamborghini Diablo                     |     34.36 |  37.76 |
|       10135 | 1971 Alpine Renault 1600s                   |     52.05 |  61.23 |
|       10135 | 1956 Porsche 356A Coupe                     |    139.03 | 140.43 |
|       10135 | 1961 Chevrolet Impala                       |     76.80 |  80.84 |
|       10135 | 1982 Ducati 996 R                           |     38.62 |  40.23 |
|       10135 | 1974 Ducati 350 Mk3 Desmo                   |     91.85 | 102.05 |
|       10135 | 2002 Yamaha YZR M1                          |     78.92 |  81.36 |
|       10142 | 2001 Ferrari Enzo                           |    166.24 | 207.80 |
|       10142 | 1969 Corvair Monza                          |    140.50 | 151.08 |
|       10142 | 1969 Ford Falcon                            |    167.83 | 173.02 |
|       10142 | 1903 Ford Model A                           |    129.76 | 136.59 |
|       10142 | Collectable Wooden Train                    |     95.80 | 100.84 |
|       10142 | 1970 Triumph Spitfire                       |    122.08 | 143.62 |
|       10142 | 1904 Buick Runabout                         |     79.87 |  87.77 |
|       10142 | 18th century schooner                       |    114.29 | 122.89 |
|       10142 | 1912 Ford Model T Delivery Wagon            |     74.35 |  88.51 |
|       10142 | 1950's Chicago Surface Lines Streetcar      |     60.90 |  62.14 |
|       10142 | 1962 City of Detroit Streetcar              |     56.24 |  58.58 |
|       10142 | The Schooner Bluenose                       |     55.34 |  66.67 |
|       10142 | The Mayflower                               |     77.08 |  86.61 |
|       10142 | The Titanic                                 |     92.16 | 100.17 |
|       10142 | The Queen Mary                              |     91.37 |  99.31 |
|       10142 | Pont Yacht                                  |     46.96 |  54.60 |
|       10182 | 1937 Lincoln Berline                        |     83.22 | 102.74 |
|       10182 | 1936 Mercedes-Benz 500K Special Roadster    |     44.21 |  53.91 |
|       10182 | 1917 Grand Touring Sedan                    |    159.80 | 170.00 |
|       10182 | 1911 Ford Town Car                          |     54.49 |  60.54 |
|       10182 | 1932 Model A Ford J-Coupe                   |    105.52 | 127.13 |
|       10182 | 1928 Mercedes-Benz SSK                      |    135.00 | 168.75 |
|       10182 | 1917 Maxwell Touring Car                    |     86.31 |  99.21 |
|       10182 | 1932 Alfa Romeo 8C2300 Spider Sport         |     88.35 |  92.03 |
|       10182 | 1957 Ford Thunderbird                       |     61.29 |  71.27 |
|       10182 | 1970 Chevy Chevelle SS 454                  |     63.20 |  73.49 |
|       10182 | 1939 Chevrolet Deluxe Coupe                 |     31.86 |  33.19 |
|       10182 | 1938 Cadillac V-16 Presidential Limousine   |     39.87 |  44.80 |
|       10182 | 1949 Jaguar XK 120                          |     87.24 |  90.87 |
|       10182 | 1952 Citroen-15CV                           |    116.27 | 117.44 |
|       10182 | 1969 Chevrolet Camaro Z28                   |     73.62 |  85.61 |
|       10182 | 2002 Chevy Corvette                         |     95.30 | 107.08 |
|       10182 | 1936 Mercedes Benz 500k Roadster            |     34.88 |  41.03 |
|       10229 | 1962 LanciaA Delta 16V                      |    138.88 | 147.74 |
|       10229 | 1958 Setra Bus                              |    110.70 | 136.67 |
|       10229 | 1957 Chevy Pickup                           |     95.99 | 118.50 |
|       10229 | 1964 Mercedes Tour Bus                      |    104.32 | 122.73 |
|       10229 | 1926 Ford Fire Engine                       |     53.48 |  60.77 |
|       10229 | 1992 Ferrari 360 Spider red                 |    157.49 | 169.34 |
|       10229 | 1940s Ford truck                            |    119.87 | 121.08 |
|       10229 | 1939 Cadillac Limousine                     |     43.77 |  50.31 |
|       10229 | 1962 Volkswagen Microbus                    |    115.01 | 127.79 |
|       10229 | 1958 Chevy Corvette Limited Edition         |     34.65 |  35.36 |
|       10229 | 1980?s GM Manhattan Express                 |     78.97 |  96.31 |
|       10229 | 1954 Greyhound Scenicruiser                 |     49.78 |  54.11 |
|       10229 | 1996 Peterbilt 379 Stake Bed with Outrigger |     52.36 |  64.64 |
|       10229 | 1982 Camaro Z28                             |     91.04 | 101.15 |
|       10271 | 1957 Chevy Pickup                           |     99.54 | 118.50 |
|       10271 | 1998 Chrysler Plymouth Prowler              |    147.36 | 163.73 |
|       10271 | 1964 Mercedes Tour Bus                      |    121.50 | 122.73 |
|       10271 | 1926 Ford Fire Engine                       |     59.55 |  60.77 |
|       10271 | 1970 Dodge Coronet                          |     49.71 |  57.80 |
|       10271 | 1962 Volkswagen Microbus                    |    122.68 | 127.79 |
|       10271 | 1958 Chevy Corvette Limited Edition         |     28.64 |  35.36 |
|       10271 | 1992 Porsche Cayenne Turbo Silver           |    110.00 | 118.28 |
|       10271 | 1954 Greyhound Scenicruiser                 |     51.95 |  54.11 |
|       10271 | Diamond T620 Semi-Skirted Tanker            |     93.76 | 115.75 |
|       10282 | 2001 Ferrari Enzo                           |    176.63 | 207.80 |
|       10282 | 1969 Corvair Monza                          |    142.02 | 151.08 |
|       10282 | 1969 Ford Falcon                            |    169.56 | 173.02 |
.
.
.
|       10224 | 1982 Ducati 996 R                           |     37.01 |  40.23 |
|       10224 | 1974 Ducati 350 Mk3 Desmo                   |     94.91 | 102.05 |
|       10114 | 1962 LanciaA Delta 16V                      |    128.53 | 147.74 |
|       10114 | 1964 Mercedes Tour Bus                      |    106.78 | 122.73 |
|       10114 | 1926 Ford Fire Engine                       |     53.48 |  60.77 |
|       10114 | 1940s Ford truck                            |    105.34 | 121.08 |
|       10114 | 1962 Volkswagen Microbus                    |    102.23 | 127.79 |
+-------------+---------------------------------------------+-----------+--------+
1000 rows in set (0.007 sec)

/* Menampilkan produk yang terjual dengan keuntungan dua kali lipat */
SELECT productName, priceEach-buyPrice as keuntungan, buyPrice
    -> from products
    -> join orderdetails USING (productCode)
    -> where priceEach-buyPrice > buyPrice;
+-------------------------------------------+------------+----------+
| productName                               | keuntungan | buyPrice |
+-------------------------------------------+------------+----------+
| 1952 Alpine Renault 1300                  |     115.72 |    98.58 |
| 1952 Alpine Renault 1300                  |     107.15 |    98.58 |
| 1952 Alpine Renault 1300                  |     113.58 |    98.58 |
| 1952 Alpine Renault 1300                  |     109.29 |    98.58 |
| 1952 Alpine Renault 1300                  |     105.01 |    98.58 |
| 1952 Alpine Renault 1300                  |     105.01 |    98.58 |
| 1952 Alpine Renault 1300                  |     107.15 |    98.58 |
| 1952 Alpine Renault 1300                  |     115.72 |    98.58 |
| 1952 Alpine Renault 1300                  |     107.15 |    98.58 |
| 1952 Alpine Renault 1300                  |     111.43 |    98.58 |
| 1952 Alpine Renault 1300                  |     102.86 |    98.58 |
| 1952 Alpine Renault 1300                  |     115.72 |    98.58 |
| 1952 Alpine Renault 1300                  |     100.72 |    98.58 |
| 1952 Alpine Renault 1300                  |     107.15 |    98.58 |
| 1952 Alpine Renault 1300                  |     102.86 |    98.58 |
| 2003 Harley-Davidson Eagle Drag Bike      |      96.83 |    91.02 |
| 2003 Harley-Davidson Eagle Drag Bike      |     100.70 |    91.02 |
| 2003 Harley-Davidson Eagle Drag Bike      |      98.77 |    91.02 |
| 2003 Harley-Davidson Eagle Drag Bike      |      98.77 |    91.02 |
| 2003 Harley-Davidson Eagle Drag Bike      |     102.64 |    91.02 |
| 2003 Harley-Davidson Eagle Drag Bike      |      96.83 |    91.02 |
| 2003 Harley-Davidson Eagle Drag Bike      |      98.77 |    91.02 |
| 1968 Ford Mustang                         |      97.28 |    95.34 |
| 2001 Ferrari Enzo                         |     110.13 |    95.59 |
| 2001 Ferrari Enzo                         |      99.74 |    95.59 |
| 2001 Ferrari Enzo                         |      97.66 |    95.59 |
| 2001 Ferrari Enzo                         |     105.98 |    95.59 |
| 2001 Ferrari Enzo                         |      99.74 |    95.59 |
| 2001 Ferrari Enzo                         |     108.05 |    95.59 |
| 2001 Ferrari Enzo                         |      97.66 |    95.59 |
| 2001 Ferrari Enzo                         |      99.74 |    95.59 |
| 2001 Ferrari Enzo                         |      97.66 |    95.59 |
| 2001 Ferrari Enzo                         |     112.21 |    95.59 |
| 2001 Ferrari Enzo                         |     110.13 |    95.59 |
| 2001 Ferrari Enzo                         |     105.98 |    95.59 |
| 2002 Suzuki XREO                          |      79.83 |    66.27 |
| 2002 Suzuki XREO                          |      72.30 |    66.27 |
| 2002 Suzuki XREO                          |      75.31 |    66.27 |
| 2002 Suzuki XREO                          |      84.35 |    66.27 |
| 2002 Suzuki XREO                          |      78.33 |    66.27 |
| 2002 Suzuki XREO                          |      67.78 |    66.27 |
| 2002 Suzuki XREO                          |      75.31 |    66.27 |
| 2002 Suzuki XREO                          |      84.35 |    66.27 |
| 2002 Suzuki XREO                          |      78.33 |    66.27 |
| 1969 Ford Falcon                          |      89.97 |    83.05 |
| 1969 Ford Falcon                          |      86.51 |    83.05 |
| 1969 Ford Falcon                          |      84.78 |    83.05 |
| 1969 Ford Falcon                          |      84.78 |    83.05 |
| 1969 Ford Falcon                          |      86.51 |    83.05 |
| 1969 Ford Falcon                          |      86.51 |    83.05 |
| 1969 Ford Falcon                          |      88.24 |    83.05 |
| 1969 Ford Falcon                          |      86.51 |    83.05 |
| 1969 Ford Falcon                          |      89.97 |    83.05 |
| 1970 Plymouth Hemi Cuda                   |      43.89 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      33.52 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      40.70 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      42.29 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      35.11 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      39.90 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      35.11 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      38.30 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      47.88 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      32.72 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      41.50 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      35.11 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      35.91 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      35.91 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      42.29 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      44.69 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      45.49 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      42.29 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      45.49 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      44.69 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      36.71 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      33.52 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      44.69 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      35.11 |    31.92 |
| 1970 Plymouth Hemi Cuda                   |      32.72 |    31.92 |
| 1957 Chevy Pickup                         |      59.25 |    55.70 |
| 1957 Chevy Pickup                         |      59.25 |    55.70 |
| 1957 Chevy Pickup                         |      62.80 |    55.70 |
| 1957 Chevy Pickup                         |      61.62 |    55.70 |
| 1957 Chevy Pickup                         |      59.25 |    55.70 |
| 1940 Ford Pickup Truck                    |      58.34 |    58.33 |
| 1936 Mercedes-Benz 500K Special Roadster  |      26.95 |    24.26 |
| 1936 Mercedes-Benz 500K Special Roadster  |      28.57 |    24.26 |
| 1936 Mercedes-Benz 500K Special Roadster  |      27.49 |    24.26 |
| 1936 Mercedes-Benz 500K Special Roadster  |      29.65 |    24.26 |
| 1936 Mercedes-Benz 500K Special Roadster  |      25.88 |    24.26 |
| 1936 Mercedes-Benz 500K Special Roadster  |      28.57 |    24.26 |
| 1936 Mercedes-Benz 500K Special Roadster  |      26.95 |    24.26 |
| 1936 Mercedes-Benz 500K Special Roadster  |      25.34 |    24.26 |
| 1936 Mercedes-Benz 500K Special Roadster  |      26.95 |    24.26 |
| 1980s Black Hawk Helicopter               |      80.42 |    77.27 |
| 1932 Model A Ford J-Coupe                 |      67.38 |    58.48 |
| 1932 Model A Ford J-Coupe                 |      68.65 |    58.48 |
| 1932 Model A Ford J-Coupe                 |      61.02 |    58.48 |
| 1932 Model A Ford J-Coupe                 |      67.38 |    58.48 |
| 1932 Model A Ford J-Coupe                 |      59.75 |    58.48 |
| 1932 Model A Ford J-Coupe                 |      66.11 |    58.48 |
| 1932 Model A Ford J-Coupe                 |      62.29 |    58.48 |
| 1932 Model A Ford J-Coupe                 |      59.75 |    58.48 |
| 1932 Model A Ford J-Coupe                 |      66.11 |    58.48 |
| 1932 Model A Ford J-Coupe                 |      61.02 |    58.48 |
| 1926 Ford Fire Engine                     |      33.42 |    24.92 |
| 1926 Ford Fire Engine                     |      28.56 |    24.92 |
| 1926 Ford Fire Engine                     |      26.13 |    24.92 |
| 1926 Ford Fire Engine                     |      26.13 |    24.92 |
| 1926 Ford Fire Engine                     |      33.42 |    24.92 |
| 1926 Ford Fire Engine                     |      35.85 |    24.92 |
| 1926 Ford Fire Engine                     |      34.63 |    24.92 |
| 1926 Ford Fire Engine                     |      35.85 |    24.92 |
| 1926 Ford Fire Engine                     |      26.13 |    24.92 |
| 1926 Ford Fire Engine                     |      35.85 |    24.92 |
| 1926 Ford Fire Engine                     |      33.42 |    24.92 |
| 1926 Ford Fire Engine                     |      28.56 |    24.92 |
| 1926 Ford Fire Engine                     |      32.81 |    24.92 |
| 1926 Ford Fire Engine                     |      34.63 |    24.92 |
| 1926 Ford Fire Engine                     |      34.63 |    24.92 |
| 1926 Ford Fire Engine                     |      31.60 |    24.92 |
| 1926 Ford Fire Engine                     |      27.34 |    24.92 |
| 1926 Ford Fire Engine                     |      34.03 |    24.92 |
| 1926 Ford Fire Engine                     |      27.95 |    24.92 |
| 1926 Ford Fire Engine                     |      32.20 |    24.92 |
| 1926 Ford Fire Engine                     |      27.95 |    24.92 |
| 1926 Ford Fire Engine                     |      26.13 |    24.92 |
| 1926 Ford Fire Engine                     |      34.03 |    24.92 |
| 1926 Ford Fire Engine                     |      35.24 |    24.92 |
| 1926 Ford Fire Engine                     |      35.85 |    24.92 |
| 1926 Ford Fire Engine                     |      32.81 |    24.92 |
| 1936 Harley Davidson El Knucklehead       |      28.47 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      33.31 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      27.25 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      28.47 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      27.25 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      24.83 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      27.86 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      27.25 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      34.52 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      28.47 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      33.92 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      26.04 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      27.86 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      26.65 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      36.34 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      25.44 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      31.49 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      24.83 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      29.68 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      27.86 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      27.25 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      33.92 |    24.23 |
| 1936 Harley Davidson El Knucklehead       |      34.52 |    24.23 |
| 1928 Mercedes-Benz SSK                    |      94.50 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      91.13 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      79.32 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      94.50 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      84.38 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      94.50 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      74.25 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      75.94 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      86.07 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      77.63 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      86.07 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      86.07 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      84.38 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      89.44 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      72.57 |    72.56 |
| 1928 Mercedes-Benz SSK                    |      94.50 |    72.56 |
| 1999 Indy 500 Monte Carlo SS              |      69.96 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      58.08 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      68.64 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      60.72 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      73.92 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      60.72 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      68.64 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      69.96 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      58.08 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      60.72 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      58.08 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      58.08 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      69.96 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      73.92 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      62.04 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      75.24 |    56.76 |
| 1999 Indy 500 Monte Carlo SS              |      59.40 |    56.76 |
| 1992 Ferrari 360 Spider red               |      88.05 |    77.90 |
| 1992 Ferrari 360 Spider red               |      82.97 |    77.90 |
| 1992 Ferrari 360 Spider red               |      91.44 |    77.90 |
| 1992 Ferrari 360 Spider red               |      91.44 |    77.90 |
| 1992 Ferrari 360 Spider red               |      89.75 |    77.90 |
| 1992 Ferrari 360 Spider red               |      88.05 |    77.90 |
| 1992 Ferrari 360 Spider red               |      88.05 |    77.90 |
| 1992 Ferrari 360 Spider red               |      79.59 |    77.90 |
| 1992 Ferrari 360 Spider red               |      84.67 |    77.90 |
| 1992 Ferrari 360 Spider red               |      79.59 |    77.90 |
| 1992 Ferrari 360 Spider red               |      91.44 |    77.90 |
| 1992 Ferrari 360 Spider red               |      89.75 |    77.90 |
| 1992 Ferrari 360 Spider red               |      82.97 |    77.90 |
| 1992 Ferrari 360 Spider red               |      81.28 |    77.90 |
| 1992 Ferrari 360 Spider red               |      86.36 |    77.90 |
| 1992 Ferrari 360 Spider red               |      91.44 |    77.90 |
| 1992 Ferrari 360 Spider red               |      89.75 |    77.90 |
| 1992 Ferrari 360 Spider red               |      86.36 |    77.90 |
| 1992 Ferrari 360 Spider red               |      89.75 |    77.90 |
| 1992 Ferrari 360 Spider red               |      79.59 |    77.90 |
| 1992 Ferrari 360 Spider red               |      88.05 |    77.90 |
| 1976 Ford Gran Torino                     |      73.50 |    73.49 |
| 1948 Porsche Type 356 Roadster            |      63.58 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      73.47 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      70.64 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      77.71 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      74.88 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      63.58 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      70.64 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      72.06 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      77.71 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      64.99 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      77.71 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      74.88 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      72.06 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      76.29 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      70.64 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      64.99 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      69.23 |    62.16 |
| 1948 Porsche Type 356 Roadster            |      72.06 |    62.16 |
| 1932 Alfa Romeo 8C2300 Spider Sport       |      45.09 |    43.26 |
| 1932 Alfa Romeo 8C2300 Spider Sport       |      48.77 |    43.26 |
| 1932 Alfa Romeo 8C2300 Spider Sport       |      44.17 |    43.26 |
| 1932 Alfa Romeo 8C2300 Spider Sport       |      46.93 |    43.26 |
| 1932 Alfa Romeo 8C2300 Spider Sport       |      48.77 |    43.26 |
| 1932 Alfa Romeo 8C2300 Spider Sport       |      48.77 |    43.26 |
| 1932 Alfa Romeo 8C2300 Spider Sport       |      47.85 |    43.26 |
| 1939 Cadillac Limousine                   |      24.15 |    23.14 |
| 1939 Cadillac Limousine                   |      24.15 |    23.14 |
| 1939 Cadillac Limousine                   |      23.15 |    23.14 |
| 1939 Cadillac Limousine                   |      24.65 |    23.14 |
| 1939 Cadillac Limousine                   |      25.66 |    23.14 |
| 1939 Cadillac Limousine                   |      26.67 |    23.14 |
| 1939 Cadillac Limousine                   |      26.67 |    23.14 |
| 1939 Cadillac Limousine                   |      23.15 |    23.14 |
| 1939 Cadillac Limousine                   |      23.15 |    23.14 |
| 1957 Corvette Convertible                 |      69.94 |    69.93 |
| 1957 Corvette Convertible                 |      75.89 |    69.93 |
| 1957 Corvette Convertible                 |      72.92 |    69.93 |
| 1957 Corvette Convertible                 |      77.38 |    69.93 |
| 1957 Corvette Convertible                 |      78.87 |    69.93 |
| 1957 Ford Thunderbird                     |      35.63 |    34.21 |
| 1957 Ford Thunderbird                     |      36.35 |    34.21 |
| 1957 Ford Thunderbird                     |      37.06 |    34.21 |
| 1957 Ford Thunderbird                     |      36.35 |    34.21 |
| 1957 Ford Thunderbird                     |      36.35 |    34.21 |
| 1960 BSA Gold Star DBD34                  |      38.09 |    37.32 |
| 1960 BSA Gold Star DBD34                  |      38.09 |    37.32 |
| 1938 Cadillac V-16 Presidential Limousine |      23.74 |    20.61 |
| 1938 Cadillac V-16 Presidential Limousine |      24.19 |    20.61 |
| 1938 Cadillac V-16 Presidential Limousine |      21.50 |    20.61 |
| 1938 Cadillac V-16 Presidential Limousine |      21.50 |    20.61 |
| 1938 Cadillac V-16 Presidential Limousine |      22.85 |    20.61 |
| 1938 Cadillac V-16 Presidential Limousine |      22.40 |    20.61 |
| 1938 Cadillac V-16 Presidential Limousine |      21.50 |    20.61 |
| 1938 Cadillac V-16 Presidential Limousine |      22.40 |    20.61 |
| 1938 Cadillac V-16 Presidential Limousine |      21.95 |    20.61 |
| 1938 Cadillac V-16 Presidential Limousine |      24.19 |    20.61 |
| 1962 Volkswagen Microbus                  |      66.45 |    61.34 |
| 1962 Volkswagen Microbus                  |      66.45 |    61.34 |
| 1962 Volkswagen Microbus                  |      65.17 |    61.34 |
| 1962 Volkswagen Microbus                  |      66.45 |    61.34 |
| 1958 Chevy Corvette Limited Edition       |      18.39 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      16.27 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      16.27 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      18.74 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      18.74 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      18.04 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      18.39 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      16.97 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      17.68 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      19.10 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      17.33 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      19.45 |    15.91 |
| 1958 Chevy Corvette Limited Edition       |      16.97 |    15.91 |
| 1982 Lamborghini Diablo                   |      18.50 |    16.24 |
| 1982 Lamborghini Diablo                   |      18.12 |    16.24 |
| 1982 Lamborghini Diablo                   |      16.99 |    16.24 |
| 1982 Lamborghini Diablo                   |      18.50 |    16.24 |
| 1982 Lamborghini Diablo                   |      16.61 |    16.24 |
| 1982 Lamborghini Diablo                   |      16.99 |    16.24 |
| 1982 Lamborghini Diablo                   |      16.99 |    16.24 |
| 1982 Lamborghini Diablo                   |      21.14 |    16.24 |
| 1982 Lamborghini Diablo                   |      18.50 |    16.24 |
| 1982 Lamborghini Diablo                   |      18.50 |    16.24 |
| 1982 Lamborghini Diablo                   |      18.88 |    16.24 |
| 1982 Lamborghini Diablo                   |      21.14 |    16.24 |
| 1982 Lamborghini Diablo                   |      16.99 |    16.24 |
| 1982 Lamborghini Diablo                   |      20.76 |    16.24 |
| 1982 Lamborghini Diablo                   |      21.14 |    16.24 |
| 1982 Lamborghini Diablo                   |      20.01 |    16.24 |
| 1982 Lamborghini Diablo                   |      19.63 |    16.24 |
| 1982 Lamborghini Diablo                   |      21.14 |    16.24 |
| 1937 Horch 930V Limousine                 |      29.59 |    26.30 |
| 1937 Horch 930V Limousine                 |      36.82 |    26.30 |
| 1937 Horch 930V Limousine                 |      33.53 |    26.30 |
| 1937 Horch 930V Limousine                 |      30.25 |    26.30 |
| 1937 Horch 930V Limousine                 |      38.14 |    26.30 |
| 1937 Horch 930V Limousine                 |      39.45 |    26.30 |
| 1937 Horch 930V Limousine                 |      33.53 |    26.30 |
| 1937 Horch 930V Limousine                 |      35.51 |    26.30 |
| 1937 Horch 930V Limousine                 |      30.25 |    26.30 |
| 1937 Horch 930V Limousine                 |      34.85 |    26.30 |
| 1937 Horch 930V Limousine                 |      38.79 |    26.30 |
| 1937 Horch 930V Limousine                 |      39.45 |    26.30 |
| 1937 Horch 930V Limousine                 |      39.45 |    26.30 |
| 1937 Horch 930V Limousine                 |      38.79 |    26.30 |
| 1937 Horch 930V Limousine                 |      33.53 |    26.30 |
| 1937 Horch 930V Limousine                 |      37.48 |    26.30 |
| 1937 Horch 930V Limousine                 |      38.14 |    26.30 |
| 1937 Horch 930V Limousine                 |      28.93 |    26.30 |
| 1937 Horch 930V Limousine                 |      30.25 |    26.30 |
| 1937 Horch 930V Limousine                 |      31.56 |    26.30 |
| 1937 Horch 930V Limousine                 |      27.62 |    26.30 |
| 1937 Horch 930V Limousine                 |      36.16 |    26.30 |
| 1937 Horch 930V Limousine                 |      27.62 |    26.30 |
| 1937 Horch 930V Limousine                 |      28.27 |    26.30 |
| 1937 Horch 930V Limousine                 |      34.85 |    26.30 |
| 1937 Horch 930V Limousine                 |      32.88 |    26.30 |
| 1937 Horch 930V Limousine                 |      33.53 |    26.30 |
| Corsair F4U ( Bird Cage)                  |      32.76 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      29.35 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      34.81 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      36.17 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      32.08 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      29.35 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      36.17 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      34.12 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      38.22 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      38.90 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      32.08 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      32.76 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      30.03 |    29.34 |
| Corsair F4U ( Bird Cage)                  |      35.49 |    29.34 |
| 1961 Chevrolet Impala                     |      34.77 |    32.33 |
| 1961 Chevrolet Impala                     |      34.77 |    32.33 |
| 1961 Chevrolet Impala                     |      44.47 |    32.33 |
| 1961 Chevrolet Impala                     |      40.43 |    32.33 |
| 1961 Chevrolet Impala                     |      48.51 |    32.33 |
| 1961 Chevrolet Impala                     |      45.28 |    32.33 |
| 1961 Chevrolet Impala                     |      36.38 |    32.33 |
| 1961 Chevrolet Impala                     |      45.28 |    32.33 |
| 1961 Chevrolet Impala                     |      42.85 |    32.33 |
| 1961 Chevrolet Impala                     |      48.51 |    32.33 |
| 1961 Chevrolet Impala                     |      45.28 |    32.33 |
| 1961 Chevrolet Impala                     |      35.58 |    32.33 |
| 1961 Chevrolet Impala                     |      37.19 |    32.33 |
| 1961 Chevrolet Impala                     |      42.85 |    32.33 |
| 1961 Chevrolet Impala                     |      34.77 |    32.33 |
| 1961 Chevrolet Impala                     |      46.89 |    32.33 |
| 1961 Chevrolet Impala                     |      33.96 |    32.33 |
| 1961 Chevrolet Impala                     |      42.85 |    32.33 |
| 1961 Chevrolet Impala                     |      46.08 |    32.33 |
| 1961 Chevrolet Impala                     |      38.00 |    32.33 |
| 1961 Chevrolet Impala                     |      44.47 |    32.33 |
| 1961 Chevrolet Impala                     |      42.85 |    32.33 |
| 1961 Chevrolet Impala                     |      43.66 |    32.33 |
| 1961 Chevrolet Impala                     |      48.51 |    32.33 |
| 1961 Chevrolet Impala                     |      33.96 |    32.33 |
| 1961 Chevrolet Impala                     |      33.15 |    32.33 |
| 1961 Chevrolet Impala                     |      33.96 |    32.33 |
| 1954 Greyhound Scenicruiser               |      27.05 |    25.98 |
| 1954 Greyhound Scenicruiser               |      26.51 |    25.98 |
| 1954 Greyhound Scenicruiser               |      28.13 |    25.98 |
| 1954 Greyhound Scenicruiser               |      27.59 |    25.98 |
| 1950's Chicago Surface Lines Streetcar    |      29.83 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      33.56 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      34.18 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      34.18 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      30.45 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      28.58 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      35.42 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      32.31 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      32.31 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      28.58 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      32.31 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      31.69 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      28.58 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      29.83 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      32.93 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      33.56 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      31.69 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      28.58 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      32.31 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      34.80 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      35.42 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      29.21 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      29.21 |    26.72 |
| 1950's Chicago Surface Lines Streetcar    |      29.83 |    26.72 |
| 1928 Ford Phaeton Deluxe                  |      35.77 |    33.02 |
| 1928 Ford Phaeton Deluxe                  |      34.39 |    33.02 |
| 1928 Ford Phaeton Deluxe                  |      33.71 |    33.02 |
| 1928 Ford Phaeton Deluxe                  |      33.71 |    33.02 |
| 1928 Ford Phaeton Deluxe                  |      34.39 |    33.02 |
| 1928 Ford Phaeton Deluxe                  |      35.08 |    33.02 |
| 1928 Ford Phaeton Deluxe                  |      35.08 |    33.02 |
| 2002 Yamaha YZR M1                        |      40.68 |    34.17 |
| 2002 Yamaha YZR M1                        |      38.24 |    34.17 |
| 2002 Yamaha YZR M1                        |      44.75 |    34.17 |
| 2002 Yamaha YZR M1                        |      39.05 |    34.17 |
| 2002 Yamaha YZR M1                        |      43.94 |    34.17 |
| 2002 Yamaha YZR M1                        |      41.49 |    34.17 |
| 2002 Yamaha YZR M1                        |      40.68 |    34.17 |
| 2002 Yamaha YZR M1                        |      45.56 |    34.17 |
| 2002 Yamaha YZR M1                        |      36.61 |    34.17 |
| 2002 Yamaha YZR M1                        |      47.19 |    34.17 |
| 2002 Yamaha YZR M1                        |      44.75 |    34.17 |
| 2002 Yamaha YZR M1                        |      38.24 |    34.17 |
| 2002 Yamaha YZR M1                        |      42.31 |    34.17 |
| 2002 Yamaha YZR M1                        |      43.12 |    34.17 |
| 2002 Yamaha YZR M1                        |      39.87 |    34.17 |
| 2002 Yamaha YZR M1                        |      45.56 |    34.17 |
| 2002 Yamaha YZR M1                        |      39.87 |    34.17 |
| 2002 Yamaha YZR M1                        |      43.94 |    34.17 |
| 2002 Yamaha YZR M1                        |      43.94 |    34.17 |
| 2002 Yamaha YZR M1                        |      34.99 |    34.17 |
| 2002 Yamaha YZR M1                        |      47.19 |    34.17 |
| 2002 Yamaha YZR M1                        |      38.24 |    34.17 |
| The Mayflower                             |      43.31 |    43.30 |
| The Mayflower                             |      43.31 |    43.30 |
| HMS Bounty                                |      45.26 |    39.83 |
| HMS Bounty                                |      47.97 |    39.83 |
| HMS Bounty                                |      49.78 |    39.83 |
| HMS Bounty                                |      47.97 |    39.83 |
| HMS Bounty                                |      47.07 |    39.83 |
| HMS Bounty                                |      40.73 |    39.83 |
| HMS Bounty                                |      50.69 |    39.83 |
| HMS Bounty                                |      40.73 |    39.83 |
| HMS Bounty                                |      43.45 |    39.83 |
| HMS Bounty                                |      46.16 |    39.83 |
| HMS Bounty                                |      43.45 |    39.83 |
| HMS Bounty                                |      49.78 |    39.83 |
| HMS Bounty                                |      41.64 |    39.83 |
| HMS Bounty                                |      47.07 |    39.83 |
| HMS Bounty                                |      46.16 |    39.83 |
| HMS Bounty                                |      45.26 |    39.83 |
| HMS Bounty                                |      42.54 |    39.83 |
| The USS Constitution Ship                 |      38.31 |    33.97 |
| The USS Constitution Ship                 |      35.42 |    33.97 |
| The USS Constitution Ship                 |      35.42 |    33.97 |
| The USS Constitution Ship                 |      35.42 |    33.97 |
| The USS Constitution Ship                 |      34.70 |    33.97 |
| The USS Constitution Ship                 |      37.59 |    33.97 |
| The USS Constitution Ship                 |      34.70 |    33.97 |
| The USS Constitution Ship                 |      36.14 |    33.97 |
| The USS Constitution Ship                 |      35.42 |    33.97 |
| 1982 Camaro Z28                           |      47.54 |    46.53 |
| 1982 Camaro Z28                           |      50.57 |    46.53 |
| 1982 Camaro Z28                           |      54.62 |    46.53 |
| 1982 Camaro Z28                           |      48.55 |    46.53 |
| 1982 Camaro Z28                           |      54.62 |    46.53 |
| 1982 Camaro Z28                           |      49.56 |    46.53 |
| 1982 Camaro Z28                           |      47.54 |    46.53 |
| 1982 Camaro Z28                           |      53.61 |    46.53 |
| 1982 Camaro Z28                           |      54.62 |    46.53 |
| American Airlines: MD-11S                 |      37.76 |    36.27 |
| American Airlines: MD-11S                 |      37.02 |    36.27 |
+-------------------------------------------+------------+----------+
463 rows in set (0.010 sec)

/*Tampilkan produk yang terjual pada hari senin */
MariaDB [classicmodels]> SELECT productName, orderDate
    -> from products
    -> join orderdetails using(productCode)
    -> join orders using (orderNumber)
    -> where dayofweek(orderDate) = 2;
+---------------------------------------------+------------+
| productName                                 | orderDate  |
+---------------------------------------------+------------+
| 1917 Grand Touring Sedan                    | 2003-01-06 |
| 1911 Ford Town Car                          | 2003-01-06 |
| 1932 Alfa Romeo 8C2300 Spider Sport         | 2003-01-06 |
| 1936 Mercedes Benz 500k Roadster            | 2003-01-06 |
| 1980s Black Hawk Helicopter                 | 2003-02-17 |
| P-51-D Mustang                              | 2003-02-17 |
| 1999 Yamaha Speed Boat                      | 2003-02-17 |
| 1941 Chevrolet Special Deluxe Cabriolet     | 2003-02-17 |
| 1928 British Royal Navy Airplane            | 2003-02-17 |
| 1900s Vintage Bi-Plane                      | 2003-02-17 |
| 1937 Horch 930V Limousine                   | 2003-02-17 |
| Corsair F4U ( Bird Cage)                    | 2003-02-17 |
| 1900s Vintage Tri-Plane                     | 2003-02-17 |
| 1928 Ford Phaeton Deluxe                    | 2003-02-17 |
| 1930 Buick Marquette Phaeton                | 2003-02-17 |
| American Airlines: B767-300                 | 2003-02-17 |
| HMS Bounty                                  | 2003-02-17 |
| America West Airlines B757-200              | 2003-02-17 |
| ATA: B757-300                               | 2003-02-17 |
| F/A 18 Hornet 1/72                          | 2003-02-17 |
| American Airlines: MD-11S                   | 2003-02-17 |
| Boeing X-32A JSF                            | 2003-02-17 |
| 1969 Harley Davidson Ultimate Chopper       | 2003-02-24 |
| 1996 Moto Guzzi 1100i                       | 2003-02-24 |
| 2003 Harley-Davidson Eagle Drag Bike        | 2003-02-24 |
| 2002 Suzuki XREO                            | 2003-02-24 |
| 1936 Harley Davidson El Knucklehead         | 2003-02-24 |
| 1997 BMW R 1100 S                           | 2003-02-24 |
| 1960 BSA Gold Star DBD34                    | 2003-02-24 |
| 1997 BMW F650 ST                            | 2003-02-24 |
| 1968 Ford Mustang                           | 2003-03-03 |
| 1968 Dodge Charger                          | 2003-03-03 |
| 1970 Plymouth Hemi Cuda                     | 2003-03-03 |
| 1969 Dodge Charger                          | 2003-03-03 |
| 1948 Porsche 356-A Roadster                 | 2003-03-03 |
| 1969 Dodge Super Bee                        | 2003-03-03 |
| 1976 Ford Gran Torino                       | 2003-03-03 |
| 1957 Vespa GS150                            | 2003-03-03 |
| 1957 Corvette Convertible                   | 2003-03-03 |
| 1982 Ducati 900 Monster                     | 2003-03-03 |
| 1971 Alpine Renault 1600s                   | 2003-03-03 |
| 1956 Porsche 356A Coupe                     | 2003-03-03 |
| 1961 Chevrolet Impala                       | 2003-03-03 |
| 1982 Ducati 996 R                           | 2003-03-03 |
| 1974 Ducati 350 Mk3 Desmo                   | 2003-03-03 |
| 2002 Yamaha YZR M1                          | 2003-03-03 |
| 1993 Mazda RX-7                             | 2003-03-10 |
| 1995 Honda Civic                            | 2003-03-10 |
| 1999 Indy 500 Monte Carlo SS                | 2003-03-10 |
| 1992 Ferrari 360 Spider red                 | 2003-03-10 |
| 1948 Porsche Type 356 Roadster              | 2003-03-10 |
| 1982 Lamborghini Diablo                     | 2003-03-10 |
| 1952 Alpine Renault 1300                    | 2003-03-24 |
| 1913 Ford Model T Speedster                 | 2003-03-24 |
| The Titanic                                 | 2003-04-21 |
| 1972 Alfa Romeo GTA                         | 2003-04-28 |
| 1980s Black Hawk Helicopter                 | 2003-04-28 |
| 1999 Yamaha Speed Boat                      | 2003-04-28 |
| 1941 Chevrolet Special Deluxe Cabriolet     | 2003-04-28 |
| 1900s Vintage Bi-Plane                      | 2003-04-28 |
| 1912 Ford Model T Delivery Wagon            | 2003-04-28 |
| 1937 Horch 930V Limousine                   | 2003-04-28 |
| 1940 Ford Delivery Sedan                    | 2003-04-28 |
| Corsair F4U ( Bird Cage)                    | 2003-04-28 |
| The Schooner Bluenose                       | 2003-04-28 |
| HMS Bounty                                  | 2003-04-28 |
| The USS Constitution Ship                   | 2003-04-28 |
| American Airlines: MD-11S                   | 2003-04-28 |
| Boeing X-32A JSF                            | 2003-04-28 |
| 1999 Yamaha Speed Boat                      | 2003-06-16 |
| 1941 Chevrolet Special Deluxe Cabriolet     | 2003-06-16 |
| 1980s Black Hawk Helicopter                 | 2003-06-16 |
| 1900s Vintage Bi-Plane                      | 2003-06-16 |
| 1937 Horch 930V Limousine                   | 2003-06-16 |
| Corsair F4U ( Bird Cage)                    | 2003-06-16 |
| HMS Bounty                                  | 2003-06-16 |
| America West Airlines B757-200              | 2003-06-16 |
| American Airlines: MD-11S                   | 2003-06-16 |
| Boeing X-32A JSF                            | 2003-06-16 |
| 1917 Grand Touring Sedan                    | 2003-07-07 |
| 1911 Ford Town Car                          | 2003-07-07 |
| 1932 Model A Ford J-Coupe                   | 2003-07-07 |
| 1932 Alfa Romeo 8C2300 Spider Sport         | 2003-07-07 |
| 1957 Ford Thunderbird                       | 2003-07-07 |
| 1970 Chevy Chevelle SS 454                  | 2003-07-07 |
| 1939 Chevrolet Deluxe Coupe                 | 2003-07-07 |
| 1938 Cadillac V-16 Presidential Limousine   | 2003-07-07 |
| 1949 Jaguar XK 120                          | 2003-07-07 |
| 1952 Citroen-15CV                           | 2003-07-07 |
| 1969 Chevrolet Camaro Z28                   | 2003-07-07 |
| 2002 Chevy Corvette                         | 2003-07-07 |
| 1936 Mercedes Benz 500k Roadster            | 2003-07-07 |
| 1969 Harley Davidson Ultimate Chopper       | 2003-08-25 |
| 1996 Moto Guzzi 1100i                       | 2003-08-25 |
| 2003 Harley-Davidson Eagle Drag Bike        | 2003-08-25 |
| 2002 Suzuki XREO                            | 2003-08-25 |
| P-51-D Mustang                              | 2003-08-25 |
| 1936 Harley Davidson El Knucklehead         | 2003-08-25 |
| 1997 BMW R 1100 S                           | 2003-08-25 |
| 1928 British Royal Navy Airplane            | 2003-08-25 |
| 1960 BSA Gold Star DBD34                    | 2003-08-25 |
| 1982 Ducati 900 Monster                     | 2003-08-25 |
| 1900s Vintage Tri-Plane                     | 2003-08-25 |
| 1997 BMW F650 ST                            | 2003-08-25 |
| 1982 Ducati 996 R                           | 2003-08-25 |
| 1974 Ducati 350 Mk3 Desmo                   | 2003-08-25 |
| 2002 Yamaha YZR M1                          | 2003-08-25 |
| ATA: B757-300                               | 2003-08-25 |
| 1972 Alfa Romeo GTA                         | 2003-10-06 |
| 1980s Black Hawk Helicopter                 | 2003-10-06 |
| 1999 Yamaha Speed Boat                      | 2003-10-06 |
| 1941 Chevrolet Special Deluxe Cabriolet     | 2003-10-06 |
| 1900s Vintage Bi-Plane                      | 2003-10-06 |
| 1937 Horch 930V Limousine                   | 2003-10-06 |
| 1940 Ford Delivery Sedan                    | 2003-10-06 |
| Corsair F4U ( Bird Cage)                    | 2003-10-06 |
| HMS Bounty                                  | 2003-10-06 |
| America West Airlines B757-200              | 2003-10-06 |
| F/A 18 Hornet 1/72                          | 2003-10-06 |
| American Airlines: MD-11S                   | 2003-10-06 |
| Boeing X-32A JSF                            | 2003-10-06 |
| 1952 Alpine Renault 1300                    | 2003-10-20 |
| 1913 Ford Model T Speedster                 | 2003-10-20 |
| 1934 Ford V8 Coupe                          | 2003-10-20 |
| 18th Century Vintage Horse Carriage         | 2003-10-20 |
| 1917 Maxwell Touring Car                    | 2003-10-20 |
| 1936 Chrysler Airflow                       | 2003-10-20 |
| 1930 Buick Marquette Phaeton                | 2003-12-01 |
| American Airlines: B767-300                 | 2003-12-01 |
| F/A 18 Hornet 1/72                          | 2003-12-01 |
| P-51-D Mustang                              | 2003-12-01 |
| 1928 British Royal Navy Airplane            | 2003-12-01 |
| 1900s Vintage Tri-Plane                     | 2003-12-01 |
| 1997 BMW F650 ST                            | 2003-12-01 |
| 1928 Ford Phaeton Deluxe                    | 2003-12-01 |
| ATA: B757-300                               | 2003-12-01 |
| 1969 Harley Davidson Ultimate Chopper       | 2003-12-01 |
| 1996 Moto Guzzi 1100i                       | 2003-12-01 |
| 2003 Harley-Davidson Eagle Drag Bike        | 2003-12-01 |
| 2002 Suzuki XREO                            | 2003-12-01 |
| 1936 Harley Davidson El Knucklehead         | 2003-12-01 |
| 1997 BMW R 1100 S                           | 2003-12-01 |
| 1960 BSA Gold Star DBD34                    | 2003-12-01 |
| 1996 Moto Guzzi 1100i                       | 2004-01-12 |
| 2003 Harley-Davidson Eagle Drag Bike        | 2004-01-12 |
| 1980s Black Hawk Helicopter                 | 2004-01-12 |
| P-51-D Mustang                              | 2004-01-12 |
| 1936 Harley Davidson El Knucklehead         | 2004-01-12 |
| 1928 British Royal Navy Airplane            | 2004-01-12 |
| 1960 BSA Gold Star DBD34                    | 2004-01-12 |
| Corsair F4U ( Bird Cage)                    | 2004-01-12 |
| 1900s Vintage Tri-Plane                     | 2004-01-12 |
| 1997 BMW F650 ST                            | 2004-01-12 |
| 1928 Ford Phaeton Deluxe                    | 2004-01-12 |
| 1930 Buick Marquette Phaeton                | 2004-01-12 |
| American Airlines: B767-300                 | 2004-01-12 |
| America West Airlines B757-200              | 2004-01-12 |
| ATA: B757-300                               | 2004-01-12 |
| F/A 18 Hornet 1/72                          | 2004-01-12 |
| American Airlines: MD-11S                   | 2004-01-12 |
| 1917 Grand Touring Sedan                    | 2004-01-26 |
| 1911 Ford Town Car                          | 2004-01-26 |
| 1932 Model A Ford J-Coupe                   | 2004-01-26 |
| 1928 Mercedes-Benz SSK                      | 2004-01-26 |
| 1939 Chevrolet Deluxe Coupe                 | 2004-01-26 |
| 1938 Cadillac V-16 Presidential Limousine   | 2004-01-26 |
| 1936 Mercedes Benz 500k Roadster            | 2004-01-26 |
| 1958 Setra Bus                              | 2004-02-02 |
| 1964 Mercedes Tour Bus                      | 2004-02-09 |
| 1992 Ferrari 360 Spider red                 | 2004-02-09 |
| 1969 Corvair Monza                          | 2004-03-15 |
| 1998 Chrysler Plymouth Prowler              | 2004-03-15 |
| 1970 Triumph Spitfire                       | 2004-03-15 |
| 1970 Dodge Coronet                          | 2004-03-15 |
| 1992 Porsche Cayenne Turbo Silver           | 2004-03-15 |
| 1950's Chicago Surface Lines Streetcar      | 2004-03-15 |
| Diamond T620 Semi-Skirted Tanker            | 2004-03-15 |
| 1962 City of Detroit Streetcar              | 2004-03-15 |
| 1912 Ford Model T Delivery Wagon            | 2004-03-29 |
| The Schooner Bluenose                       | 2004-03-29 |
| The USS Constitution Ship                   | 2004-03-29 |
| 1969 Harley Davidson Ultimate Chopper       | 2004-04-05 |
| 2003 Harley-Davidson Eagle Drag Bike        | 2004-04-05 |
| 2002 Suzuki XREO                            | 2004-04-05 |
| 1957 Vespa GS150                            | 2004-04-05 |
| 1997 BMW R 1100 S                           | 2004-04-05 |
| 1982 Ducati 900 Monster                     | 2004-04-05 |
| 1982 Ducati 996 R                           | 2004-04-05 |
| 1974 Ducati 350 Mk3 Desmo                   | 2004-04-05 |
| 2002 Yamaha YZR M1                          | 2004-04-05 |
| 1969 Dodge Charger                          | 2004-04-12 |
| 1948 Porsche 356-A Roadster                 | 2004-04-12 |
| 1992 Ferrari 360 Spider red                 | 2004-04-12 |
| 1982 Lamborghini Diablo                     | 2004-04-12 |
| 1956 Porsche 356A Coupe                     | 2004-04-12 |
| 1932 Model A Ford J-Coupe                   | 2004-04-26 |
| 1939 Chevrolet Deluxe Coupe                 | 2004-04-26 |
| 1913 Ford Model T Speedster                 | 2004-06-14 |
| 1934 Ford V8 Coupe                          | 2004-06-14 |
| 18th Century Vintage Horse Carriage         | 2004-06-14 |
| 1917 Maxwell Touring Car                    | 2004-06-14 |
| 1936 Chrysler Airflow                       | 2004-06-14 |
| 1969 Harley Davidson Ultimate Chopper       | 2004-06-28 |
| 1996 Moto Guzzi 1100i                       | 2004-06-28 |
| 2003 Harley-Davidson Eagle Drag Bike        | 2004-06-28 |
| 2002 Suzuki XREO                            | 2004-06-28 |
| P-51-D Mustang                              | 2004-06-28 |
| 1936 Harley Davidson El Knucklehead         | 2004-06-28 |
| 1997 BMW R 1100 S                           | 2004-06-28 |
| 1960 BSA Gold Star DBD34                    | 2004-06-28 |
| 1900s Vintage Tri-Plane                     | 2004-06-28 |
| 1997 BMW F650 ST                            | 2004-06-28 |
| ATA: B757-300                               | 2004-06-28 |
| 1937 Lincoln Berline                        | 2004-07-12 |
| 1936 Mercedes-Benz 500K Special Roadster    | 2004-07-12 |
| 1917 Grand Touring Sedan                    | 2004-07-12 |
| 1911 Ford Town Car                          | 2004-07-12 |
| 1932 Model A Ford J-Coupe                   | 2004-07-12 |
| 1928 Mercedes-Benz SSK                      | 2004-07-12 |
| 1917 Maxwell Touring Car                    | 2004-07-12 |
| 1932 Alfa Romeo 8C2300 Spider Sport         | 2004-07-12 |
| 1939 Chevrolet Deluxe Coupe                 | 2004-07-12 |
| 1938 Cadillac V-16 Presidential Limousine   | 2004-07-12 |
| 1936 Mercedes Benz 500k Roadster            | 2004-07-12 |
| 1952 Alpine Renault 1300                    | 2004-07-19 |
| 1962 LanciaA Delta 16V                      | 2004-07-19 |
| 1958 Setra Bus                              | 2004-07-19 |
| 1940 Ford Pickup Truck                      | 2004-07-19 |
| 1913 Ford Model T Speedster                 | 2004-07-19 |
| 18th Century Vintage Horse Carriage         | 2004-07-19 |
| 1940s Ford truck                            | 2004-07-19 |
| 1939 Cadillac Limousine                     | 2004-07-19 |
| 1980?s GM Manhattan Express                 | 2004-07-19 |
| 1996 Peterbilt 379 Stake Bed with Outrigger | 2004-07-19 |
| 1982 Camaro Z28                             | 2004-07-19 |
| 1968 Ford Mustang                           | 2004-08-02 |
| 2002 Suzuki XREO                            | 2004-08-02 |
| 1968 Dodge Charger                          | 2004-08-02 |
| 1970 Plymouth Hemi Cuda                     | 2004-08-02 |
| 1969 Dodge Super Bee                        | 2004-08-02 |
| 1976 Ford Gran Torino                       | 2004-08-02 |
| 1957 Vespa GS150                            | 2004-08-02 |
| 1957 Corvette Convertible                   | 2004-08-02 |
| 1982 Ducati 900 Monster                     | 2004-08-02 |
| 1971 Alpine Renault 1600s                   | 2004-08-02 |
| 1961 Chevrolet Impala                       | 2004-08-02 |
| 1982 Ducati 996 R                           | 2004-08-02 |
| 1974 Ducati 350 Mk3 Desmo                   | 2004-08-02 |
| 2002 Yamaha YZR M1                          | 2004-08-02 |
| 1957 Ford Thunderbird                       | 2004-08-09 |
| 1970 Chevy Chevelle SS 454                  | 2004-08-09 |
| 1949 Jaguar XK 120                          | 2004-08-09 |
| 1952 Citroen-15CV                           | 2004-08-09 |
| 1969 Chevrolet Camaro Z28                   | 2004-08-09 |
| 2002 Chevy Corvette                         | 2004-08-09 |
| 1968 Ford Mustang                           | 2004-08-30 |
| 1968 Dodge Charger                          | 2004-08-30 |
| 1970 Plymouth Hemi Cuda                     | 2004-08-30 |
| 1969 Dodge Charger                          | 2004-08-30 |
| 1993 Mazda RX-7                             | 2004-08-30 |
| 1948 Porsche 356-A Roadster                 | 2004-08-30 |
| 1995 Honda Civic                            | 2004-08-30 |
| 1999 Indy 500 Monte Carlo SS                | 2004-08-30 |
| 1992 Ferrari 360 Spider red                 | 2004-08-30 |
| 1969 Dodge Super Bee                        | 2004-08-30 |
| 1976 Ford Gran Torino                       | 2004-08-30 |
| 1948 Porsche Type 356 Roadster              | 2004-08-30 |
| 1957 Corvette Convertible                   | 2004-08-30 |
| 1982 Lamborghini Diablo                     | 2004-08-30 |
| 1971 Alpine Renault 1600s                   | 2004-08-30 |
| 1956 Porsche 356A Coupe                     | 2004-08-30 |
| 1961 Chevrolet Impala                       | 2004-08-30 |
| 1996 Moto Guzzi 1100i                       | 2004-09-27 |
| 1936 Harley Davidson El Knucklehead         | 2004-09-27 |
| 1917 Grand Touring Sedan                    | 2003-10-06 |
| 1932 Alfa Romeo 8C2300 Spider Sport         | 2003-10-06 |
| 1957 Ford Thunderbird                       | 2003-10-06 |
| 1949 Jaguar XK 120                          | 2003-10-06 |
| 1952 Citroen-15CV                           | 2003-10-06 |
| 1969 Chevrolet Camaro Z28                   | 2003-10-06 |
| 1952 Alpine Renault 1300                    | 2004-10-11 |
| 1958 Setra Bus                              | 2004-10-11 |
| 1940 Ford Pickup Truck                      | 2004-10-11 |
| 1937 Lincoln Berline                        | 2004-10-11 |
| 1936 Mercedes-Benz 500K Special Roadster    | 2004-10-11 |
| 1932 Model A Ford J-Coupe                   | 2004-10-11 |
| 1928 Mercedes-Benz SSK                      | 2004-10-11 |
| 1913 Ford Model T Speedster                 | 2004-10-11 |
| 1934 Ford V8 Coupe                          | 2004-10-11 |
| 18th Century Vintage Horse Carriage         | 2004-10-11 |
| 1917 Maxwell Touring Car                    | 2004-10-11 |
| 1939 Cadillac Limousine                     | 2004-10-11 |
| 1939 Chevrolet Deluxe Coupe                 | 2004-10-11 |
| 1938 Cadillac V-16 Presidential Limousine   | 2004-10-11 |
| 1936 Chrysler Airflow                       | 2004-10-11 |
| 1996 Peterbilt 379 Stake Bed with Outrigger | 2004-10-11 |
| 1982 Camaro Z28                             | 2004-10-11 |
| 1972 Alfa Romeo GTA                         | 2004-11-01 |
| 1980s Black Hawk Helicopter                 | 2004-11-01 |
| 1999 Yamaha Speed Boat                      | 2004-11-01 |
| 1941 Chevrolet Special Deluxe Cabriolet     | 2004-11-01 |
| 1928 British Royal Navy Airplane            | 2004-11-01 |
| 1900s Vintage Bi-Plane                      | 2004-11-01 |
| 1937 Horch 930V Limousine                   | 2004-11-01 |
| 1940 Ford Delivery Sedan                    | 2004-11-01 |
| Corsair F4U ( Bird Cage)                    | 2004-11-01 |
| 1928 Ford Phaeton Deluxe                    | 2004-11-01 |
| 1930 Buick Marquette Phaeton                | 2004-11-01 |
| American Airlines: B767-300                 | 2004-11-01 |
| HMS Bounty                                  | 2004-11-01 |
| America West Airlines B757-200              | 2004-11-01 |
| The USS Constitution Ship                   | 2004-11-01 |
| F/A 18 Hornet 1/72                          | 2004-11-01 |
| American Airlines: MD-11S                   | 2004-11-01 |
| Boeing X-32A JSF                            | 2004-11-01 |
| 1969 Harley Davidson Ultimate Chopper       | 2004-11-15 |
| 1996 Moto Guzzi 1100i                       | 2004-11-15 |
| 2003 Harley-Davidson Eagle Drag Bike        | 2004-11-15 |
| 1968 Ford Mustang                           | 2004-11-15 |
| 2002 Suzuki XREO                            | 2004-11-15 |
| 1968 Dodge Charger                          | 2004-11-15 |
| 1970 Plymouth Hemi Cuda                     | 2004-11-15 |
| 1969 Dodge Charger                          | 2004-11-15 |
| 1948 Porsche 356-A Roadster                 | 2004-11-15 |
| 1936 Harley Davidson El Knucklehead         | 2004-11-15 |
| 1969 Dodge Super Bee                        | 2004-11-15 |
| 1997 BMW R 1100 S                           | 2004-11-15 |
| 1960 BSA Gold Star DBD34                    | 2004-11-15 |
| 1997 BMW F650 ST                            | 2004-11-15 |
| Boeing X-32A JSF                            | 2004-11-15 |
| 1980s Black Hawk Helicopter                 | 2004-11-22 |
| 1999 Yamaha Speed Boat                      | 2004-11-22 |
| 1941 Chevrolet Special Deluxe Cabriolet     | 2004-11-22 |
| 1937 Lincoln Berline                        | 2004-11-29 |
| 1949 Jaguar XK 120                          | 2004-11-29 |
| 1952 Citroen-15CV                           | 2004-11-29 |
| 1969 Chevrolet Camaro Z28                   | 2004-11-29 |
| 2002 Chevy Corvette                         | 2004-11-29 |
| 1936 Mercedes Benz 500k Roadster            | 2004-11-29 |
| 1952 Alpine Renault 1300                    | 2004-11-29 |
| 1962 LanciaA Delta 16V                      | 2004-11-29 |
| 1958 Setra Bus                              | 2004-11-29 |
| 1940 Ford Pickup Truck                      | 2004-11-29 |
| 1936 Mercedes-Benz 500K Special Roadster    | 2004-11-29 |
| 1926 Ford Fire Engine                       | 2004-11-29 |
| 1928 Mercedes-Benz SSK                      | 2004-11-29 |
| 1913 Ford Model T Speedster                 | 2004-11-29 |
| 1934 Ford V8 Coupe                          | 2004-11-29 |
| 18th Century Vintage Horse Carriage         | 2004-11-29 |
| 1917 Maxwell Touring Car                    | 2004-11-29 |
| 1940s Ford truck                            | 2004-11-29 |
| 2001 Ferrari Enzo                           | 2004-11-01 |
| 1969 Corvair Monza                          | 2004-11-01 |
| 1939 Cadillac Limousine                     | 2004-11-01 |
| 1962 Volkswagen Microbus                    | 2004-11-01 |
| 1936 Chrysler Airflow                       | 2004-11-01 |
| 1980?s GM Manhattan Express                 | 2004-11-01 |
| 1996 Peterbilt 379 Stake Bed with Outrigger | 2004-11-01 |
| 1982 Camaro Z28                             | 2004-11-01 |
| 1995 Honda Civic                            | 2005-01-10 |
| 1999 Indy 500 Monte Carlo SS                | 2005-01-10 |
| 1992 Ferrari 360 Spider red                 | 2005-01-10 |
| 1972 Alfa Romeo GTA                         | 2005-01-31 |
| 1980s Black Hawk Helicopter                 | 2005-01-31 |
| 1999 Yamaha Speed Boat                      | 2005-01-31 |
| 1941 Chevrolet Special Deluxe Cabriolet     | 2005-01-31 |
| 1900s Vintage Bi-Plane                      | 2005-01-31 |
| 1912 Ford Model T Delivery Wagon            | 2005-01-31 |
| 1937 Horch 930V Limousine                   | 2005-01-31 |
| 1940 Ford Delivery Sedan                    | 2005-01-31 |
| Corsair F4U ( Bird Cage)                    | 2005-01-31 |
| The Schooner Bluenose                       | 2005-01-31 |
| HMS Bounty                                  | 2005-01-31 |
| The USS Constitution Ship                   | 2005-01-31 |
| The Titanic                                 | 2005-01-31 |
| The Queen Mary                              | 2005-01-31 |
| American Airlines: MD-11S                   | 2005-01-31 |
| Boeing X-32A JSF                            | 2005-01-31 |
| Pont Yacht                                  | 2005-01-31 |
| 1940 Ford Delivery Sedan                    | 2005-02-28 |
| The Schooner Bluenose                       | 2005-02-28 |
| The Mayflower                               | 2005-03-28 |
| The USS Constitution Ship                   | 2005-03-28 |
| The Titanic                                 | 2005-03-28 |
| The Queen Mary                              | 2005-03-28 |
| Pont Yacht                                  | 2005-03-28 |
| 1941 Chevrolet Special Deluxe Cabriolet     | 2005-05-09 |
| 1900s Vintage Bi-Plane                      | 2005-05-09 |
| 1937 Horch 930V Limousine                   | 2005-05-09 |
| HMS Bounty                                  | 2005-05-09 |
| Boeing X-32A JSF                            | 2005-05-09 |
| 1969 Dodge Super Bee                        | 2005-05-16 |
| 1976 Ford Gran Torino                       | 2005-05-16 |
| 1957 Vespa GS150                            | 2005-05-16 |
| 1957 Corvette Convertible                   | 2005-05-16 |
| 1982 Ducati 900 Monster                     | 2005-05-16 |
| 1961 Chevrolet Impala                       | 2005-05-16 |
| 1982 Ducati 996 R                           | 2005-05-16 |
| 1974 Ducati 350 Mk3 Desmo                   | 2005-05-16 |
| 2002 Yamaha YZR M1                          | 2005-05-16 |
| 1937 Lincoln Berline                        | 2005-05-30 |
| 1936 Mercedes-Benz 500K Special Roadster    | 2005-05-30 |
| 1913 Ford Model T Speedster                 | 2005-05-30 |
| 1934 Ford V8 Coupe                          | 2005-05-30 |
| 18th Century Vintage Horse Carriage         | 2005-05-30 |
| 1917 Maxwell Touring Car                    | 2005-05-30 |
| 1936 Chrysler Airflow                       | 2005-05-30 |
+---------------------------------------------+------------+
407 rows in set (0.068 sec)

SELECT productName, DAYNAME(orderDate)
    -> from products
    -> join orderdetails using(productCode)
    -> join orders using (orderNumber)
    -> where dayofweek(orderDate) = 2;
+---------------------------------------------+--------------------+
| productName                                 | DAYNAME(orderDate) |
+---------------------------------------------+--------------------+
| 1917 Grand Touring Sedan                    | Monday             |
| 1911 Ford Town Car                          | Monday             |
| 1932 Alfa Romeo 8C2300 Spider Sport         | Monday             |
| 1936 Mercedes Benz 500k Roadster            | Monday             |
| 1980s Black Hawk Helicopter                 | Monday             |
| P-51-D Mustang                              | Monday             |
| 1999 Yamaha Speed Boat                      | Monday             |
| 1941 Chevrolet Special Deluxe Cabriolet     | Monday             |
| 1928 British Royal Navy Airplane            | Monday             |
| 1900s Vintage Bi-Plane                      | Monday             |
| 1937 Horch 930V Limousine                   | Monday             |
| Corsair F4U ( Bird Cage)                    | Monday             |
| 1900s Vintage Tri-Plane                     | Monday             |
| 1928 Ford Phaeton Deluxe                    | Monday             |
| 1930 Buick Marquette Phaeton                | Monday             |
| American Airlines: B767-300                 | Monday             |
| HMS Bounty                                  | Monday             |
| America West Airlines B757-200              | Monday             |
| ATA: B757-300                               | Monday             |
| F/A 18 Hornet 1/72                          | Monday             |
| American Airlines: MD-11S                   | Monday             |
| Boeing X-32A JSF                            | Monday             |
| 1969 Harley Davidson Ultimate Chopper       | Monday             |
| 1996 Moto Guzzi 1100i                       | Monday             |
| 2003 Harley-Davidson Eagle Drag Bike        | Monday             |
| 2002 Suzuki XREO                            | Monday             |
| 1936 Harley Davidson El Knucklehead         | Monday             |
| 1997 BMW R 1100 S                           | Monday             |
| 1960 BSA Gold Star DBD34                    | Monday             |
| 1997 BMW F650 ST                            | Monday             |
| 1968 Ford Mustang                           | Monday             |
| 1968 Dodge Charger                          | Monday             |
| 1970 Plymouth Hemi Cuda                     | Monday             |
| 1969 Dodge Charger                          | Monday             |
| 1948 Porsche 356-A Roadster                 | Monday             |
| 1969 Dodge Super Bee                        | Monday             |
| 1976 Ford Gran Torino                       | Monday             |
| 1957 Vespa GS150                            | Monday             |
| 1957 Corvette Convertible                   | Monday             |
| 1982 Ducati 900 Monster                     | Monday             |
| 1971 Alpine Renault 1600s                   | Monday             |
| 1956 Porsche 356A Coupe                     | Monday             |
| 1961 Chevrolet Impala                       | Monday             |
| 1982 Ducati 996 R                           | Monday             |
| 1974 Ducati 350 Mk3 Desmo                   | Monday             |
| 2002 Yamaha YZR M1                          | Monday             |
| 1993 Mazda RX-7                             | Monday             |
| 1995 Honda Civic                            | Monday             |
| 1999 Indy 500 Monte Carlo SS                | Monday             |
| 1992 Ferrari 360 Spider red                 | Monday             |
| 1948 Porsche Type 356 Roadster              | Monday             |
| 1982 Lamborghini Diablo                     | Monday             |
| 1952 Alpine Renault 1300                    | Monday             |
| 1913 Ford Model T Speedster                 | Monday             |
| The Titanic                                 | Monday             |
| 1972 Alfa Romeo GTA                         | Monday             |
| 1980s Black Hawk Helicopter                 | Monday             |
| 1999 Yamaha Speed Boat                      | Monday             |
| 1941 Chevrolet Special Deluxe Cabriolet     | Monday             |
| 1900s Vintage Bi-Plane                      | Monday             |
| 1912 Ford Model T Delivery Wagon            | Monday             |
| 1937 Horch 930V Limousine                   | Monday             |
| 1940 Ford Delivery Sedan                    | Monday             |
| Corsair F4U ( Bird Cage)                    | Monday             |
| The Schooner Bluenose                       | Monday             |
| HMS Bounty                                  | Monday             |
| The USS Constitution Ship                   | Monday             |
| American Airlines: MD-11S                   | Monday             |
| Boeing X-32A JSF                            | Monday             |
| 1999 Yamaha Speed Boat                      | Monday             |
| 1941 Chevrolet Special Deluxe Cabriolet     | Monday             |
| 1980s Black Hawk Helicopter                 | Monday             |
| 1900s Vintage Bi-Plane                      | Monday             |
| 1937 Horch 930V Limousine                   | Monday             |
| Corsair F4U ( Bird Cage)                    | Monday             |
| HMS Bounty                                  | Monday             |
| America West Airlines B757-200              | Monday             |
| American Airlines: MD-11S                   | Monday             |
| Boeing X-32A JSF                            | Monday             |
| 1917 Grand Touring Sedan                    | Monday             |
| 1911 Ford Town Car                          | Monday             |
| 1932 Model A Ford J-Coupe                   | Monday             |
| 1932 Alfa Romeo 8C2300 Spider Sport         | Monday             |
| 1957 Ford Thunderbird                       | Monday             |
| 1970 Chevy Chevelle SS 454                  | Monday             |
| 1939 Chevrolet Deluxe Coupe                 | Monday             |
| 1938 Cadillac V-16 Presidential Limousine   | Monday             |
| 1949 Jaguar XK 120                          | Monday             |
| 1952 Citroen-15CV                           | Monday             |
| 1969 Chevrolet Camaro Z28                   | Monday             |
| 2002 Chevy Corvette                         | Monday             |
| 1936 Mercedes Benz 500k Roadster            | Monday             |
| 1969 Harley Davidson Ultimate Chopper       | Monday             |
| 1996 Moto Guzzi 1100i                       | Monday             |
| 2003 Harley-Davidson Eagle Drag Bike        | Monday             |
| 2002 Suzuki XREO                            | Monday             |
| P-51-D Mustang                              | Monday             |
| 1936 Harley Davidson El Knucklehead         | Monday             |
| 1997 BMW R 1100 S                           | Monday             |
| 1928 British Royal Navy Airplane            | Monday             |
| 1960 BSA Gold Star DBD34                    | Monday             |
| 1982 Ducati 900 Monster                     | Monday             |
| 1900s Vintage Tri-Plane                     | Monday             |
| 1997 BMW F650 ST                            | Monday             |
| 1982 Ducati 996 R                           | Monday             |
| 1974 Ducati 350 Mk3 Desmo                   | Monday             |
| 2002 Yamaha YZR M1                          | Monday             |
| ATA: B757-300                               | Monday             |
| 1972 Alfa Romeo GTA                         | Monday             |
| 1980s Black Hawk Helicopter                 | Monday             |
| 1999 Yamaha Speed Boat                      | Monday             |
| 1941 Chevrolet Special Deluxe Cabriolet     | Monday             |
| 1900s Vintage Bi-Plane                      | Monday             |
| 1937 Horch 930V Limousine                   | Monday             |
| 1940 Ford Delivery Sedan                    | Monday             |
| Corsair F4U ( Bird Cage)                    | Monday             |
| HMS Bounty                                  | Monday             |
| America West Airlines B757-200              | Monday             |
| F/A 18 Hornet 1/72                          | Monday             |
| American Airlines: MD-11S                   | Monday             |
| Boeing X-32A JSF                            | Monday             |
| 1952 Alpine Renault 1300                    | Monday             |
| 1913 Ford Model T Speedster                 | Monday             |
| 1934 Ford V8 Coupe                          | Monday             |
| 18th Century Vintage Horse Carriage         | Monday             |
| 1917 Maxwell Touring Car                    | Monday             |
| 1936 Chrysler Airflow                       | Monday             |
| 1930 Buick Marquette Phaeton                | Monday             |
| American Airlines: B767-300                 | Monday             |
| F/A 18 Hornet 1/72                          | Monday             |
| P-51-D Mustang                              | Monday             |
| 1928 British Royal Navy Airplane            | Monday             |
| 1900s Vintage Tri-Plane                     | Monday             |
| 1997 BMW F650 ST                            | Monday             |
| 1928 Ford Phaeton Deluxe                    | Monday             |
| ATA: B757-300                               | Monday             |
| 1969 Harley Davidson Ultimate Chopper       | Monday             |
| 1996 Moto Guzzi 1100i                       | Monday             |
| 2003 Harley-Davidson Eagle Drag Bike        | Monday             |
| 2002 Suzuki XREO                            | Monday             |
| 1936 Harley Davidson El Knucklehead         | Monday             |
| 1997 BMW R 1100 S                           | Monday             |
| 1960 BSA Gold Star DBD34                    | Monday             |
| 1996 Moto Guzzi 1100i                       | Monday             |
| 2003 Harley-Davidson Eagle Drag Bike        | Monday             |
| 1980s Black Hawk Helicopter                 | Monday             |
| P-51-D Mustang                              | Monday             |
| 1936 Harley Davidson El Knucklehead         | Monday             |
| 1928 British Royal Navy Airplane            | Monday             |
| 1960 BSA Gold Star DBD34                    | Monday             |
| Corsair F4U ( Bird Cage)                    | Monday             |
| 1900s Vintage Tri-Plane                     | Monday             |
| 1997 BMW F650 ST                            | Monday             |
| 1928 Ford Phaeton Deluxe                    | Monday             |
| 1930 Buick Marquette Phaeton                | Monday             |
| American Airlines: B767-300                 | Monday             |
| America West Airlines B757-200              | Monday             |
| ATA: B757-300                               | Monday             |
| F/A 18 Hornet 1/72                          | Monday             |
| American Airlines: MD-11S                   | Monday             |
| 1917 Grand Touring Sedan                    | Monday             |
| 1911 Ford Town Car                          | Monday             |
| 1932 Model A Ford J-Coupe                   | Monday             |
| 1928 Mercedes-Benz SSK                      | Monday             |
| 1939 Chevrolet Deluxe Coupe                 | Monday             |
| 1938 Cadillac V-16 Presidential Limousine   | Monday             |
| 1936 Mercedes Benz 500k Roadster            | Monday             |
| 1958 Setra Bus                              | Monday             |
| 1964 Mercedes Tour Bus                      | Monday             |
| 1992 Ferrari 360 Spider red                 | Monday             |
| 1969 Corvair Monza                          | Monday             |
| 1998 Chrysler Plymouth Prowler              | Monday             |
| 1970 Triumph Spitfire                       | Monday             |
| 1970 Dodge Coronet                          | Monday             |
| 1992 Porsche Cayenne Turbo Silver           | Monday             |
| 1950's Chicago Surface Lines Streetcar      | Monday             |
| Diamond T620 Semi-Skirted Tanker            | Monday             |
| 1962 City of Detroit Streetcar              | Monday             |
| 1912 Ford Model T Delivery Wagon            | Monday             |
| The Schooner Bluenose                       | Monday             |
| The USS Constitution Ship                   | Monday             |
| 1969 Harley Davidson Ultimate Chopper       | Monday             |
| 2003 Harley-Davidson Eagle Drag Bike        | Monday             |
| 2002 Suzuki XREO                            | Monday             |
| 1957 Vespa GS150                            | Monday             |
| 1997 BMW R 1100 S                           | Monday             |
| 1982 Ducati 900 Monster                     | Monday             |
| 1982 Ducati 996 R                           | Monday             |
| 1974 Ducati 350 Mk3 Desmo                   | Monday             |
| 2002 Yamaha YZR M1                          | Monday             |
| 1969 Dodge Charger                          | Monday             |
| 1948 Porsche 356-A Roadster                 | Monday             |
| 1992 Ferrari 360 Spider red                 | Monday             |
| 1982 Lamborghini Diablo                     | Monday             |
| 1956 Porsche 356A Coupe                     | Monday             |
| 1932 Model A Ford J-Coupe                   | Monday             |
| 1939 Chevrolet Deluxe Coupe                 | Monday             |
| 1913 Ford Model T Speedster                 | Monday             |
| 1934 Ford V8 Coupe                          | Monday             |
| 18th Century Vintage Horse Carriage         | Monday             |
| 1917 Maxwell Touring Car                    | Monday             |
| 1936 Chrysler Airflow                       | Monday             |
| 1969 Harley Davidson Ultimate Chopper       | Monday             |
| 1996 Moto Guzzi 1100i                       | Monday             |
| 2003 Harley-Davidson Eagle Drag Bike        | Monday             |
| 2002 Suzuki XREO                            | Monday             |
| P-51-D Mustang                              | Monday             |
| 1936 Harley Davidson El Knucklehead         | Monday             |
| 1997 BMW R 1100 S                           | Monday             |
| 1960 BSA Gold Star DBD34                    | Monday             |
| 1900s Vintage Tri-Plane                     | Monday             |
| 1997 BMW F650 ST                            | Monday             |
| ATA: B757-300                               | Monday             |
| 1937 Lincoln Berline                        | Monday             |
| 1936 Mercedes-Benz 500K Special Roadster    | Monday             |
| 1917 Grand Touring Sedan                    | Monday             |
| 1911 Ford Town Car                          | Monday             |
| 1932 Model A Ford J-Coupe                   | Monday             |
| 1928 Mercedes-Benz SSK                      | Monday             |
| 1917 Maxwell Touring Car                    | Monday             |
| 1932 Alfa Romeo 8C2300 Spider Sport         | Monday             |
| 1939 Chevrolet Deluxe Coupe                 | Monday             |
| 1938 Cadillac V-16 Presidential Limousine   | Monday             |
| 1936 Mercedes Benz 500k Roadster            | Monday             |
| 1952 Alpine Renault 1300                    | Monday             |
| 1962 LanciaA Delta 16V                      | Monday             |
| 1958 Setra Bus                              | Monday             |
| 1940 Ford Pickup Truck                      | Monday             |
| 1913 Ford Model T Speedster                 | Monday             |
| 18th Century Vintage Horse Carriage         | Monday             |
| 1940s Ford truck                            | Monday             |
| 1939 Cadillac Limousine                     | Monday             |
| 1980?s GM Manhattan Express                 | Monday             |
| 1996 Peterbilt 379 Stake Bed with Outrigger | Monday             |
| 1982 Camaro Z28                             | Monday             |
| 1968 Ford Mustang                           | Monday             |
| 2002 Suzuki XREO                            | Monday             |
| 1968 Dodge Charger                          | Monday             |
| 1970 Plymouth Hemi Cuda                     | Monday             |
| 1969 Dodge Super Bee                        | Monday             |
| 1976 Ford Gran Torino                       | Monday             |
| 1957 Vespa GS150                            | Monday             |
| 1957 Corvette Convertible                   | Monday             |
| 1982 Ducati 900 Monster                     | Monday             |
| 1971 Alpine Renault 1600s                   | Monday             |
| 1961 Chevrolet Impala                       | Monday             |
| 1982 Ducati 996 R                           | Monday             |
| 1974 Ducati 350 Mk3 Desmo                   | Monday             |
| 2002 Yamaha YZR M1                          | Monday             |
| 1957 Ford Thunderbird                       | Monday             |
| 1970 Chevy Chevelle SS 454                  | Monday             |
| 1949 Jaguar XK 120                          | Monday             |
| 1952 Citroen-15CV                           | Monday             |
| 1969 Chevrolet Camaro Z28                   | Monday             |
| 2002 Chevy Corvette                         | Monday             |
| 1968 Ford Mustang                           | Monday             |
| 1968 Dodge Charger                          | Monday             |
| 1970 Plymouth Hemi Cuda                     | Monday             |
| 1969 Dodge Charger                          | Monday             |
| 1993 Mazda RX-7                             | Monday             |
| 1948 Porsche 356-A Roadster                 | Monday             |
| 1995 Honda Civic                            | Monday             |
| 1999 Indy 500 Monte Carlo SS                | Monday             |
| 1992 Ferrari 360 Spider red                 | Monday             |
| 1969 Dodge Super Bee                        | Monday             |
| 1976 Ford Gran Torino                       | Monday             |
| 1948 Porsche Type 356 Roadster              | Monday             |
| 1957 Corvette Convertible                   | Monday             |
| 1982 Lamborghini Diablo                     | Monday             |
| 1971 Alpine Renault 1600s                   | Monday             |
| 1956 Porsche 356A Coupe                     | Monday             |
| 1961 Chevrolet Impala                       | Monday             |
| 1996 Moto Guzzi 1100i                       | Monday             |
| 1936 Harley Davidson El Knucklehead         | Monday             |
| 1917 Grand Touring Sedan                    | Monday             |
| 1932 Alfa Romeo 8C2300 Spider Sport         | Monday             |
| 1957 Ford Thunderbird                       | Monday             |
| 1949 Jaguar XK 120                          | Monday             |
| 1952 Citroen-15CV                           | Monday             |
| 1969 Chevrolet Camaro Z28                   | Monday             |
| 1952 Alpine Renault 1300                    | Monday             |
| 1958 Setra Bus                              | Monday             |
| 1940 Ford Pickup Truck                      | Monday             |
| 1937 Lincoln Berline                        | Monday             |
| 1936 Mercedes-Benz 500K Special Roadster    | Monday             |
| 1932 Model A Ford J-Coupe                   | Monday             |
| 1928 Mercedes-Benz SSK                      | Monday             |
| 1913 Ford Model T Speedster                 | Monday             |
| 1934 Ford V8 Coupe                          | Monday             |
| 18th Century Vintage Horse Carriage         | Monday             |
| 1917 Maxwell Touring Car                    | Monday             |
| 1939 Cadillac Limousine                     | Monday             |
| 1939 Chevrolet Deluxe Coupe                 | Monday             |
| 1938 Cadillac V-16 Presidential Limousine   | Monday             |
| 1936 Chrysler Airflow                       | Monday             |
| 1996 Peterbilt 379 Stake Bed with Outrigger | Monday             |
| 1982 Camaro Z28                             | Monday             |
| 1972 Alfa Romeo GTA                         | Monday             |
| 1980s Black Hawk Helicopter                 | Monday             |
| 1999 Yamaha Speed Boat                      | Monday             |
| 1941 Chevrolet Special Deluxe Cabriolet     | Monday             |
| 1928 British Royal Navy Airplane            | Monday             |
| 1900s Vintage Bi-Plane                      | Monday             |
| 1937 Horch 930V Limousine                   | Monday             |
| 1940 Ford Delivery Sedan                    | Monday             |
| Corsair F4U ( Bird Cage)                    | Monday             |
| 1928 Ford Phaeton Deluxe                    | Monday             |
| 1930 Buick Marquette Phaeton                | Monday             |
| American Airlines: B767-300                 | Monday             |
| HMS Bounty                                  | Monday             |
| America West Airlines B757-200              | Monday             |
| The USS Constitution Ship                   | Monday             |
| F/A 18 Hornet 1/72                          | Monday             |
| American Airlines: MD-11S                   | Monday             |
| Boeing X-32A JSF                            | Monday             |
| 1969 Harley Davidson Ultimate Chopper       | Monday             |
| 1996 Moto Guzzi 1100i                       | Monday             |
| 2003 Harley-Davidson Eagle Drag Bike        | Monday             |
| 1968 Ford Mustang                           | Monday             |
| 2002 Suzuki XREO                            | Monday             |
| 1968 Dodge Charger                          | Monday             |
| 1970 Plymouth Hemi Cuda                     | Monday             |
| 1969 Dodge Charger                          | Monday             |
| 1948 Porsche 356-A Roadster                 | Monday             |
| 1936 Harley Davidson El Knucklehead         | Monday             |
| 1969 Dodge Super Bee                        | Monday             |
| 1997 BMW R 1100 S                           | Monday             |
| 1960 BSA Gold Star DBD34                    | Monday             |
| 1997 BMW F650 ST                            | Monday             |
| Boeing X-32A JSF                            | Monday             |
| 1980s Black Hawk Helicopter                 | Monday             |
| 1999 Yamaha Speed Boat                      | Monday             |
| 1941 Chevrolet Special Deluxe Cabriolet     | Monday             |
| 1937 Lincoln Berline                        | Monday             |
| 1949 Jaguar XK 120                          | Monday             |
| 1952 Citroen-15CV                           | Monday             |
| 1969 Chevrolet Camaro Z28                   | Monday             |
| 2002 Chevy Corvette                         | Monday             |
| 1936 Mercedes Benz 500k Roadster            | Monday             |
| 1952 Alpine Renault 1300                    | Monday             |
| 1962 LanciaA Delta 16V                      | Monday             |
| 1958 Setra Bus                              | Monday             |
| 1940 Ford Pickup Truck                      | Monday             |
| 1936 Mercedes-Benz 500K Special Roadster    | Monday             |
| 1926 Ford Fire Engine                       | Monday             |
| 1928 Mercedes-Benz SSK                      | Monday             |
| 1913 Ford Model T Speedster                 | Monday             |
| 1934 Ford V8 Coupe                          | Monday             |
| 18th Century Vintage Horse Carriage         | Monday             |
| 1917 Maxwell Touring Car                    | Monday             |
| 1940s Ford truck                            | Monday             |
| 2001 Ferrari Enzo                           | Monday             |
| 1969 Corvair Monza                          | Monday             |
| 1939 Cadillac Limousine                     | Monday             |
| 1962 Volkswagen Microbus                    | Monday             |
| 1936 Chrysler Airflow                       | Monday             |
| 1980?s GM Manhattan Express                 | Monday             |
| 1996 Peterbilt 379 Stake Bed with Outrigger | Monday             |
| 1982 Camaro Z28                             | Monday             |
| 1995 Honda Civic                            | Monday             |
| 1999 Indy 500 Monte Carlo SS                | Monday             |
| 1992 Ferrari 360 Spider red                 | Monday             |
| 1972 Alfa Romeo GTA                         | Monday             |
| 1980s Black Hawk Helicopter                 | Monday             |
| 1999 Yamaha Speed Boat                      | Monday             |
| 1941 Chevrolet Special Deluxe Cabriolet     | Monday             |
| 1900s Vintage Bi-Plane                      | Monday             |
| 1912 Ford Model T Delivery Wagon            | Monday             |
| 1937 Horch 930V Limousine                   | Monday             |
| 1940 Ford Delivery Sedan                    | Monday             |
| Corsair F4U ( Bird Cage)                    | Monday             |
| The Schooner Bluenose                       | Monday             |
| HMS Bounty                                  | Monday             |
| The USS Constitution Ship                   | Monday             |
| The Titanic                                 | Monday             |
| The Queen Mary                              | Monday             |
| American Airlines: MD-11S                   | Monday             |
| Boeing X-32A JSF                            | Monday             |
| Pont Yacht                                  | Monday             |
| 1940 Ford Delivery Sedan                    | Monday             |
| The Schooner Bluenose                       | Monday             |
| The Mayflower                               | Monday             |
| The USS Constitution Ship                   | Monday             |
| The Titanic                                 | Monday             |
| The Queen Mary                              | Monday             |
| Pont Yacht                                  | Monday             |
| 1941 Chevrolet Special Deluxe Cabriolet     | Monday             |
| 1900s Vintage Bi-Plane                      | Monday             |
| 1937 Horch 930V Limousine                   | Monday             |
| HMS Bounty                                  | Monday             |
| Boeing X-32A JSF                            | Monday             |
| 1969 Dodge Super Bee                        | Monday             |
| 1976 Ford Gran Torino                       | Monday             |
| 1957 Vespa GS150                            | Monday             |
| 1957 Corvette Convertible                   | Monday             |
| 1982 Ducati 900 Monster                     | Monday             |
| 1961 Chevrolet Impala                       | Monday             |
| 1982 Ducati 996 R                           | Monday             |
| 1974 Ducati 350 Mk3 Desmo                   | Monday             |
| 2002 Yamaha YZR M1                          | Monday             |
| 1937 Lincoln Berline                        | Monday             |
| 1936 Mercedes-Benz 500K Special Roadster    | Monday             |
| 1913 Ford Model T Speedster                 | Monday             |
| 1934 Ford V8 Coupe                          | Monday             |
| 18th Century Vintage Horse Carriage         | Monday             |
| 1917 Maxwell Touring Car                    | Monday             |
| 1936 Chrysler Airflow                       | Monday             |
+---------------------------------------------+--------------------+
407 rows in set (0.039 sec)

/*Menampilkan jumlah produk yang masih berstatus 'On Hold' */
SELECT SUM(quantityOrdered) as Jumlah
    -> from orders join orderdetails using (orderNumber)
    -> where status = 'On Hold';
+--------+
| Jumlah |
+--------+
|   1994 |
+--------+
1 row in set (0.002 sec)
