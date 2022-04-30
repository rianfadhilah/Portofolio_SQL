
EDA with classicModels database from Mysql Database Schema

show tables;
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

describe customers
+------------------------+---------------+------+-----+---------+-------+
| Field                  | Type          | Null | Key | Default | Extra |
+------------------------+---------------+------+-----+---------+-------+
| customerNumber         | int(11)       | NO   | PRI | NULL    |       |
| customerName           | varchar(50)   | NO   |     | NULL    |       |
| contactLastName        | varchar(50)   | NO   |     | NULL    |       |
| contactFirstName       | varchar(50)   | NO   |     | NULL    |       |
| phone                  | varchar(50)   | NO   |     | NULL    |       |
| addressLine1           | varchar(50)   | NO   |     | NULL    |       |
| addressLine2           | varchar(50)   | YES  |     | NULL    |       |
| city                   | varchar(50)   | NO   |     | NULL    |       |
| state                  | varchar(50)   | YES  |     | NULL    |       |
| postalCode             | varchar(15)   | YES  |     | NULL    |       |
| country                | varchar(50)   | NO   |     | NULL    |       |
| salesRepEmployeeNumber | int(11)       | YES  | MUL | NULL    |       |
| creditLimit            | decimal(10,2) | YES  |     | NULL    |       |
+------------------------+---------------+------+-----+---------+-------+

describe employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeNumber | int(11)      | NO   | PRI | NULL    |       |
| lastName       | varchar(50)  | NO   |     | NULL    |       |
| firstName      | varchar(50)  | NO   |     | NULL    |       |
| extension      | varchar(10)  | NO   |     | NULL    |       |
| email          | varchar(100) | NO   |     | NULL    |       |
| officeCode     | varchar(10)  | NO   | MUL | NULL    |       |
| reportsTo      | int(11)      | YES  | MUL | NULL    |       |
| jobTitle       | varchar(50)  | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+

/*Menampilkan sales representatif dari setiap customer*/
 select concat(firstName," ",lastName), jobTitle,customerName
    -> from customers join employees
    -> on customers.salesRepEmployeeNumber = employees.employeeNumber;
+--------------------------------+-----------+------------------------------------+
| concat(firstName," ",lastName) | jobTitle  | customerName                       |
+--------------------------------+-----------+------------------------------------+
| Leslie Jennings                | Sales Rep | Mini Gifts Distributors Ltd.       |
| Leslie Jennings                | Sales Rep | Mini Wheels Co.                    |
| Leslie Jennings                | Sales Rep | Technics Stores Inc.               |
| Leslie Jennings                | Sales Rep | Corporate Gift Ideas Co.           |
| Leslie Jennings                | Sales Rep | The Sharp Gifts Warehouse          |
| Leslie Jennings                | Sales Rep | Signal Collectibles Ltd.           |
| Leslie Thompson                | Sales Rep | Signal Gift Stores                 |
| Leslie Thompson                | Sales Rep | Toys4GrownUps.com                  |
| Leslie Thompson                | Sales Rep | Boards & Toys Co.                  |
| Leslie Thompson                | Sales Rep | Collectable Mini Designs Co.       |
| Leslie Thompson                | Sales Rep | Men 'R' US Retailers, Ltd.         |
| Leslie Thompson                | Sales Rep | West Coast Collectables Co.        |
| Julie Firrelli                 | Sales Rep | Cambridge Collectables Co.         |
| Julie Firrelli                 | Sales Rep | Online Mini Collectables           |
| Julie Firrelli                 | Sales Rep | Mini Creations Ltd.                |
| Julie Firrelli                 | Sales Rep | Classic Gift Ideas, Inc            |
| Julie Firrelli                 | Sales Rep | Collectables For Less Inc.         |
| Julie Firrelli                 | Sales Rep | Diecast Collectables               |
| Steve Patterson                | Sales Rep | Diecast Classics Inc.              |
| Steve Patterson                | Sales Rep | Auto-Moto Classics Inc.            |
| Steve Patterson                | Sales Rep | Marta's Replicas Co.               |
| Steve Patterson                | Sales Rep | Gifts4AllAges.com                  |
| Steve Patterson                | Sales Rep | Online Diecast Creations Co.       |
| Steve Patterson                | Sales Rep | FunGiftIdeas.com                   |
| Foon Yue Tseng                 | Sales Rep | Muscle Machine Inc                 |
| Foon Yue Tseng                 | Sales Rep | American Souvenirs Inc             |
| Foon Yue Tseng                 | Sales Rep | Vitachrome Inc.                    |
| Foon Yue Tseng                 | Sales Rep | Québec Home Shopping Network       |
| Foon Yue Tseng                 | Sales Rep | Classic Legends Inc.               |
| Foon Yue Tseng                 | Sales Rep | Super Scale Inc.                   |
| Foon Yue Tseng                 | Sales Rep | Microscale Inc.                    |
| George Vanauf                  | Sales Rep | Land of Toys Inc.                  |
| George Vanauf                  | Sales Rep | Gift Depot Inc.                    |
| George Vanauf                  | Sales Rep | Canadian Gift Exchange Network     |
| George Vanauf                  | Sales Rep | Royal Canadian Collectables, Ltd.  |
| George Vanauf                  | Sales Rep | Mini Classics                      |
| George Vanauf                  | Sales Rep | Tekni Collectables Inc.            |
| George Vanauf                  | Sales Rep | Gift Ideas Corp.                   |
| George Vanauf                  | Sales Rep | Motor Mint Distributors Inc.       |
| Loui Bondur                    | Sales Rep | Saveley & Henriot, Co.             |
| Loui Bondur                    | Sales Rep | La Corne D'abondance, Co.          |
| Loui Bondur                    | Sales Rep | Lyon Souveniers                    |
| Loui Bondur                    | Sales Rep | Marseille Mini Autos               |
| Loui Bondur                    | Sales Rep | Reims Collectables                 |
| Loui Bondur                    | Sales Rep | Auto Canal+ Petit                  |
| Gerard Hernandez               | Sales Rep | Atelier graphique                  |
| Gerard Hernandez               | Sales Rep | La Rochelle Gifts                  |
| Gerard Hernandez               | Sales Rep | Euro+ Shopping Channel             |
| Gerard Hernandez               | Sales Rep | Daedalus Designs Imports           |
| Gerard Hernandez               | Sales Rep | Mini Caravy                        |
| Gerard Hernandez               | Sales Rep | Alpha Cognac                       |
| Gerard Hernandez               | Sales Rep | Auto Associés & Cie.               |
| Pamela Castillo                | Sales Rep | Danish Wholesale Imports           |
| Pamela Castillo                | Sales Rep | Heintze Collectables               |
| Pamela Castillo                | Sales Rep | Amica Models & Co.                 |
| Pamela Castillo                | Sales Rep | Rovelli Gifts                      |
| Pamela Castillo                | Sales Rep | Petit Auto                         |
| Pamela Castillo                | Sales Rep | Royale Belge                       |
| Pamela Castillo                | Sales Rep | Salzburg Collectables              |
| Pamela Castillo                | Sales Rep | L'ordine Souveniers                |
| Pamela Castillo                | Sales Rep | Mini Auto Werke                    |
| Pamela Castillo                | Sales Rep | Frau da Collezione                 |
| Larry Bott                     | Sales Rep | Toys of Finland, Co.               |
| Larry Bott                     | Sales Rep | AV Stores, Co.                     |
| Larry Bott                     | Sales Rep | UK Collectables, Ltd.              |
| Larry Bott                     | Sales Rep | giftsbymail.co.uk                  |
| Larry Bott                     | Sales Rep | Oulu Toy Supplies, Inc.            |
| Larry Bott                     | Sales Rep | Stylish Desk Decors, Co.           |
| Larry Bott                     | Sales Rep | Suominen Souveniers                |
| Larry Bott                     | Sales Rep | Double Decker Gift Stores, Ltd     |
| Barry Jones                    | Sales Rep | Baane Mini Imports                 |
| Barry Jones                    | Sales Rep | Blauer See Auto, Co.               |
| Barry Jones                    | Sales Rep | Volvo Model Replicas, Co           |
| Barry Jones                    | Sales Rep | Herkku Gifts                       |
| Barry Jones                    | Sales Rep | Clover Collections, Co.            |
| Barry Jones                    | Sales Rep | Toms Spezialitäten, Ltd            |
| Barry Jones                    | Sales Rep | Norway Gifts By Mail, Co.          |
| Barry Jones                    | Sales Rep | Bavarian Collectables Imports, Co. |
| Barry Jones                    | Sales Rep | Scandinavian Gift Ideas            |
| Andy Fixter                    | Sales Rep | Australian Collectors, Co.         |
| Andy Fixter                    | Sales Rep | Anna's Decorations, Ltd            |
| Andy Fixter                    | Sales Rep | Souveniers And Things Co.          |
| Andy Fixter                    | Sales Rep | Australian Gift Network, Co        |
| Andy Fixter                    | Sales Rep | Australian Collectables, Ltd       |
| Peter Marsh                    | Sales Rep | Handji Gifts& Co                   |
| Peter Marsh                    | Sales Rep | Down Under Souveniers, Inc         |
| Peter Marsh                    | Sales Rep | GiftsForHim.com                    |
| Peter Marsh                    | Sales Rep | Extreme Desk Decorations, Ltd      |
| Peter Marsh                    | Sales Rep | Kelly's Gift Shop                  |
| Mami Nishi                     | Sales Rep | Dragon Souveniers, Ltd.            |
| Mami Nishi                     | Sales Rep | Osaka Souveniers Co.               |
| Mami Nishi                     | Sales Rep | King Kong Collectables, Co.        |
| Mami Nishi                     | Sales Rep | Cruz & Sons Co.                    |
| Mami Nishi                     | Sales Rep | Tokyo Collectables, Ltd            |
| Martin Gerard                  | Sales Rep | Enaco Distributors                 |
| Martin Gerard                  | Sales Rep | Vida Sport, Ltd                    |
| Martin Gerard                  | Sales Rep | CAF Imports                        |
| Martin Gerard                  | Sales Rep | Precious Collectables              |
| Martin Gerard                  | Sales Rep | Corrida Auto Replicas, Ltd         |
| Martin Gerard                  | Sales Rep | Iberia Gift Imports, Corp.         |
+--------------------------------+-----------+------------------------------------+


/*Menampilkan total pembayaran dari atelier graphique*/
select sum(amount) from payments join customers
    -> using(customerNumber)
    -> where customerName = "Atelier graphique";
+-------------+
| sum(amount) |
+-------------+
|    22314.36 |
+-------------+


/*Menampilkan total pembayaran per tanggal */
select sum(amount), paymentDate from payments
    -> group by paymentDate;
+-------------+-------------+
| sum(amount) | paymentDate |
+-------------+-------------+
|    10223.83 | 2003-01-16  |
|    10549.01 | 2003-01-28  |
|     5494.78 | 2003-01-30  |
|    50218.95 | 2003-02-16  |
|    53959.21 | 2003-02-20  |
|    40206.20 | 2003-02-25  |
|    52151.81 | 2003-03-02  |
|    51001.22 | 2003-03-09  |
|    22292.62 | 2003-03-12  |
|    25833.14 | 2003-03-20  |
|    48425.69 | 2003-03-27  |
|    24212.79 | 2003-04-09  |
|    11044.30 | 2003-04-11  |
|    21665.98 | 2003-04-16  |
|     1627.56 | 2003-04-19  |
|    33383.14 | 2003-04-20  |
|    44380.15 | 2003-04-22  |
.
.
.
|    17928.09 | 2005-05-17  |
|      615.45 | 2005-05-18  |
|    75396.26 | 2005-05-19  |
|    29070.38 | 2005-05-20  |
|    75020.13 | 2005-05-23  |
|    30253.75 | 2005-05-25  |
|    12432.32 | 2005-06-03  |
|    46656.94 | 2005-06-09  |
+-------------+-------------+



/*Menampilkan produk yang belum pernah terhual */
Select productCode, productName from products
    -> where productCode not in ( select productCode from orderDetails);
+-------------+-------------------+
| productCode | productName       |
+-------------+-------------------+
| S18_3233    | 1985 Toyota Supra |
+-------------+-------------------+


/*Menampilkan jumlah yang ter tiap customer*/
select customerName, sum(amount) from customers inner join
    -> payments using(customerNumber)
    -> group by customerName;
+------------------------------------+-------------+
| customerName                       | sum(amount) |
+------------------------------------+-------------+
| Alpha Cognac                       |    60483.36 |
| Amica Models & Co.                 |    82223.23 |
| Anna's Decorations, Ltd            |   137034.22 |
| Atelier graphique                  |    22314.36 |
| Australian Collectables, Ltd       |    44920.76 |
| Australian Collectors, Co.         |   180585.07 |
| Australian Gift Network, Co        |    55190.16 |
| Auto Associés & Cie.               |    58876.41 |
| Auto Canal+ Petit                  |    86436.97 |
| Auto-Moto Classics Inc.            |    21554.26 |
| AV Stores, Co.                     |   148410.09 |
| Baane Mini Imports                 |   104224.79 |
| Bavarian Collectables Imports, Co. |    31310.09 |
| Blauer See Auto, Co.               |    75937.76 |
| Boards & Toys Co.                  |     7918.60 |
| CAF Imports                        |    46751.14 |
| Cambridge Collectables Co.         |    32198.69 |
| Canadian Gift Exchange Network     |    70122.19 |
| Classic Gift Ideas, Inc            |    57939.34 |
| Classic Legends Inc.               |    69214.33 |
| Clover Collections, Co.            |    49898.27 |
| Collectable Mini Designs Co.       |    80375.24 |
| Collectables For Less Inc.         |    73533.65 |
| Corporate Gift Ideas Co.           |   132340.78 |
| Corrida Auto Replicas, Ltd         |   112440.09 |
| Cruz & Sons Co.                    |    87468.30 |
| Daedalus Designs Imports           |    61781.70 |
| Danish Wholesale Imports           |   107446.50 |
| Diecast Classics Inc.              |    98509.25 |
| Diecast Collectables               |    65541.74 |
| Double Decker Gift Stores, Ltd     |    29586.15 |
| Down Under Souveniers, Inc         |   154622.08 |
| Dragon Souveniers, Ltd.            |   156251.03 |
| Enaco Distributors                 |    68520.47 |
| Euro+ Shopping Channel             |   715738.98 |
| Extreme Desk Decorations, Ltd      |    66704.94 |
| Frau da Collezione                 |    25358.32 |
| FunGiftIdeas.com                   |    88627.49 |
| Gift Depot Inc.                    |    95424.63 |
| Gift Ideas Corp.                   |    49967.78 |
| Gifts4AllAges.com                  |    33533.47 |
| giftsbymail.co.uk                  |    71783.75 |
| GiftsForHim.com                    |    56662.38 |
| Handji Gifts& Co                   |   105420.57 |
| Heintze Collectables               |    89909.80 |
| Herkku Gifts                       |    97562.47 |
| Iberia Gift Imports, Corp.         |    50987.85 |
| Kelly's Gift Shop                  |   114497.19 |
| King Kong Collectables, Co.        |    45480.79 |
| L'ordine Souveniers                |    90143.31 |
| La Corne D'abondance, Co.          |    86553.52 |
| La Rochelle Gifts                  |   116949.68 |
| Land of Toys Inc.                  |   107639.94 |
| Lyon Souveniers                    |    67659.19 |
| Marseille Mini Autos               |    71547.53 |
| Marta's Replicas Co.               |    90545.37 |
| Men 'R' US Retailers, Ltd.         |    41506.19 |
| Microscale Inc.                    |    29230.43 |
| Mini Auto Werke                    |    51059.99 |
| Mini Caravy                        |    75859.32 |
| Mini Classics                      |    78432.16 |
| Mini Creations Ltd.                |   101872.52 |
| Mini Gifts Distributors Ltd.       |   584188.24 |
| Mini Wheels Co.                    |    66710.56 |
| Motor Mint Distributors Inc.       |    77726.59 |
| Muscle Machine Inc                 |   177913.95 |
| Norway Gifts By Mail, Co.          |    69059.04 |
| Online Diecast Creations Co.       |   116449.29 |
| Online Mini Collectables           |    55577.26 |
| Osaka Souveniers Co.               |    62361.22 |
| Oulu Toy Supplies, Inc.            |    95706.15 |
| Petit Auto                         |    62253.85 |
| Québec Home Shopping Network       |    68977.67 |
| Reims Collectables                 |   126983.19 |
| Rovelli Gifts                      |   127529.69 |
| Royal Canadian Collectables, Ltd.  |    66812.00 |
| Royale Belge                       |    29217.18 |
| Salzburg Collectables              |    85060.00 |
| Saveley & Henriot, Co.             |   130305.35 |
| Scandinavian Gift Ideas            |    76776.44 |
| Signal Collectibles Ltd.           |    42570.37 |
| Signal Gift Stores                 |    80180.98 |
| Souveniers And Things Co.          |    91655.61 |
| Stylish Desk Decors, Co.           |    80556.73 |
| Suominen Souveniers                |   103896.74 |
| Super Scale Inc.                   |    70378.65 |
| Technics Stores Inc.               |   104545.22 |
| Tekni Collectables Inc.            |    38281.51 |
| The Sharp Gifts Warehouse          |    59551.38 |
| Tokyo Collectables, Ltd            |   105548.73 |
| Toms Spezialitäten, Ltd            |    89223.14 |
| Toys of Finland, Co.               |    95546.46 |
| Toys4GrownUps.com                  |    93803.30 |
| UK Collectables, Ltd.              |    61167.18 |
| Vida Sport, Ltd                    |   108777.92 |
| Vitachrome Inc.                    |    72497.64 |
| Volvo Model Replicas, Co           |    43680.65 |
| West Coast Collectables Co.        |    43748.72 |
+------------------------------------+-------------+


/*Menampilkan berapa order yang sudah pernah dibuat oleh herkku gifts*/
SELECT customerName, count(orderNumber) from customers
    -> inner join orders using(customerNumber)
    -> where customerName = "Herkku Gifts";
+--------------+--------------------+
| customerName | count(orderNumber) |
+--------------+--------------------+
| Herkku Gifts |                  3 |
+--------------+--------------------+


/*Menampilkan karyawan di boston*/
SELECT employeeNumber, city from employees
    -> inner join offices using(officeCode)
    -> where city = "Boston";
+----------------+--------+
| employeeNumber | city   |
+----------------+--------+
|           1188 | Boston |
|           1216 | Boston |
+----------------+--------+

/*Menampilkan Pembayaran atas customer yang lebih dari 100.000
  dengan urutan pembayaran dari yang tertinggi*/
SELECT customerName, amount from customers inner join
    -> payments using(customerNumber)
    -> where amount >100000
    -> order by amount desc;
+------------------------------+-----------+
| customerName                 | amount    |
+------------------------------+-----------+
| Euro+ Shopping Channel       | 120166.58 |
| Euro+ Shopping Channel       | 116208.40 |
| Mini Gifts Distributors Ltd. | 111654.40 |
| Dragon Souveniers, Ltd.      | 105743.00 |
| Mini Gifts Distributors Ltd. | 101244.59 |
+------------------------------+-----------+


/*Menampilkan nilai dari order yang statusnya 'On Hold'*/
select orderNumber,sum(quantityOrdered*priceEach) as nilai, status
    -> from orderdetails inner join orders using(orderNumber)
    -> where status = 'on Hold'
    -> group by orderNumber;
+-------------+----------+---------+
| orderNumber | nilai    | status  |
+-------------+----------+---------+
|       10334 | 23014.17 | On Hold |
|       10401 | 43525.04 | On Hold |
|       10407 | 52229.55 | On Hold |
|       10414 | 50806.85 | On Hold |
+-------------+----------+---------+

/*Menampilkan jumlah order 'On Hold' untuk tiap customers*/
select customerName, status from customers
    -> inner join orders using(customerNumber)
    -> where status = 'On Hold'
    -> group by customerName;
+---------------------------+---------+
| customerName              | status  |
+---------------------------+---------+
| Gifts4AllAges.com         | On Hold |
| Tekni Collectables Inc.   | On Hold |
| The Sharp Gifts Warehouse | On Hold |
| Volvo Model Replicas, Co  | On Hold |
+---------------------------+---------+

select customerName, count(*) from customers
    -> inner join orders using(customerNumber)
    -> where status = 'On Hold'
    -> group by customerName;
+---------------------------+----------+
| customerName              | count(*) |
+---------------------------+----------+
| Gifts4AllAges.com         |        1 |
| Tekni Collectables Inc.   |        1 |
| The Sharp Gifts Warehouse |        1 |
| Volvo Model Replicas, Co  |        1 |
+---------------------------+----------+






