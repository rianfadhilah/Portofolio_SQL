select * from ms_produk
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

select nama_produk from ms_produk;
+------------------------------------+
| nama_produk                        |
+------------------------------------+
| Kotak Pensil DQLab                 |
| Flashdisk DQLab 64 GB              |
| Gift Voucher DQLab 100rb           |
| Flashdisk DQLab 32 GB              |
| Gift Voucher DQLab 250rb           |
| Pulpen Multifunction + Laser DQLab |
| Tas Travel Organizer DQLab         |
| Gantungan Kunci DQLab              |
| Buku Planner Agenda DQLab          |
| Sticky Notes DQLab 500 sheets      |
+------------------------------------+

select kode_produk, nama_produk from ms_produk;
+-------------+------------------------------------+
| kode_produk | nama_produk                        |
+-------------+------------------------------------+
| prod-01     | Kotak Pensil DQLab                 |
| prod-02     | Flashdisk DQLab 64 GB              |
| prod-03     | Gift Voucher DQLab 100rb           |
| prod-04     | Flashdisk DQLab 32 GB              |
| prod-05     | Gift Voucher DQLab 250rb           |
| prod-06     | Pulpen Multifunction + Laser DQLab |
| prod-07     | Tas Travel Organizer DQLab         |
| prod-08     | Gantungan Kunci DQLab              |
| prod-09     | Buku Planner Agenda DQLab          |
| prod-10     | Sticky Notes DQLab 500 sheets      |
+-------------+------------------------------------+

select nama_produk from ms_produk limit 3;
+--------------------------+
| nama_produk              |
+--------------------------+
| Kotak Pensil DQLab       |
| Flashdisk DQLab 64 GB    |
| Gift Voucher DQLab 100rb |
+--------------------------+

select distinct nama_customer, alamat from ms_pelanggan;
+---------------------+------------------------------------------+
| nama_customer       | alamat                                   |
+---------------------+------------------------------------------+
| Eva Novianti, S.H.  | Vila Sempilan, No. 67 - Kota B           |
| Heidi Goh           | Vila Sempilan, No. 11 - Kota B           |
| Unang Handoko       | Vila Sempilan, No. 1 - Kota B            |
| Jokolono Sukarman   | Vila Permata Intan Berkilau, Blok C5-7   |
| Tommy Sinaga        | Vila Permata Intan Berkilau, Blok A1/2   |
| Irwan Setianto      | Vila Gunung Seribu, Blok O1 - No. 1      |
| Agus Cahyono        | Vila Gunung Seribu, Blok F4 - No. 8      |
| Maria Sirait        | Vila Bukit Sagitarius, Gang. Sawit No. 3 |
| Ir. Ita Nugraha     | Vila Bukit Sagitarius, Gang Kelapa No. 6 |
| Djoko Wardoyo, Drs. | Vila Bukit Sagitarius, Blok A1 No. 1     |
+---------------------+------------------------------------------+

select ms_produk.kode_produk from ms_produk;
+-------------+
| kode_produk |
+-------------+
| prod-01     |
| prod-02     |
| prod-03     |
| prod-04     |
| prod-05     |
| prod-06     |
| prod-07     |
| prod-08     |
| prod-09     |
| prod-10     |
+-------------+

select no_urut as nomor, nama_produk as nama from ms_produk;
+-------+------------------------------------+
| nomor | nama                               |
+-------+------------------------------------+
|     1 | Kotak Pensil DQLab                 |
|     2 | Flashdisk DQLab 64 GB              |
|     3 | Gift Voucher DQLab 100rb           |
|     4 | Flashdisk DQLab 32 GB              |
|     5 | Gift Voucher DQLab 250rb           |
|     6 | Pulpen Multifunction + Laser DQLab |
|     7 | Tas Travel Organizer DQLab         |
|     8 | Gantungan Kunci DQLab              |
|     9 | Buku Planner Agenda DQLab          |
|    10 | Sticky Notes DQLab 500 sheets      |
+-------+------------------------------------+

select no_urut nomor, nama_produk nama from ms_produk;
+-------+------------------------------------+
| nomor | nama                               |
+-------+------------------------------------+
|     1 | Kotak Pensil DQLab                 |
|     2 | Flashdisk DQLab 64 GB              |
|     3 | Gift Voucher DQLab 100rb           |
|     4 | Flashdisk DQLab 32 GB              |
|     5 | Gift Voucher DQLab 250rb           |
|     6 | Pulpen Multifunction + Laser DQLab |
|     7 | Tas Travel Organizer DQLab         |
|     8 | Gantungan Kunci DQLab              |
|     9 | Buku Planner Agenda DQLab          |
|    10 | Sticky Notes DQLab 500 sheets      |
+-------+------------------------------------+

select ms_produk.harga as harga_jual from ms_produk;
+------------+
| harga_jual |
+------------+
|      62500 |
|      55000 |
|     100000 |
|      40000 |
|     250000 |
|      92500 |
|      48000 |
|      15800 |
|      92000 |
|      55000 |
+------------+

select * from ms_produk as t1;
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

select t1.kode_produk as product_code, t1.nama_produk as product_name from ms_produk as t1;
+--------------+------------------------------------+
| product_code | product_name                       |
+--------------+------------------------------------+
| prod-01      | Kotak Pensil DQLab                 |
| prod-02      | Flashdisk DQLab 64 GB              |
| prod-03      | Gift Voucher DQLab 100rb           |
| prod-04      | Flashdisk DQLab 32 GB              |
| prod-05      | Gift Voucher DQLab 250rb           |
| prod-06      | Pulpen Multifunction + Laser DQLab |
| prod-07      | Tas Travel Organizer DQLab         |
| prod-08      | Gantungan Kunci DQLab              |
| prod-09      | Buku Planner Agenda DQLab          |
| prod-10      | Sticky Notes DQLab 500 sheets      |
+--------------+------------------------------------+

select * from ms_produk where nama_produk = 'Gantungan Kunci DQLab';
+---------+-------------+-----------------------+-------+
| no_urut | kode_produk | nama_produk           | harga |
+---------+-------------+-----------------------+-------+
|       8 | prod-08     | Gantungan Kunci DQLab | 15800 |
+---------+-------------+-----------------------+-------+

select * from ms_produk where nama_produk = 'Gantungan Kunci DqLab' or nama_produk = 'Tas Travel Organizer DQLab';
+---------+-------------+----------------------------+-------+
| no_urut | kode_produk | nama_produk                | harga |
+---------+-------------+----------------------------+-------+
|       7 | prod-07     | Tas Travel Organizer DQLab | 48000 |
|       8 | prod-08     | Gantungan Kunci DQLab      | 15800 |
+---------+-------------+----------------------------+-------+

select * from ms_produk where harga <50000;
+---------+-------------+----------------------------+-------+
| no_urut | kode_produk | nama_produk                | harga |
+---------+-------------+----------------------------+-------+
|       4 | prod-04     | Flashdisk DQLab 32 GB      | 40000 |
|       7 | prod-07     | Tas Travel Organizer DQLab | 48000 |
|       8 | prod-08     | Gantungan Kunci DQLab      | 15800 |
+---------+-------------+----------------------------+-------+

select * from ms_produk where nama_produk = 'gantungan kunci dqlab' and harga < 50000;
+---------+-------------+-----------------------+-------+
| no_urut | kode_produk | nama_produk           | harga |
+---------+-------------+-----------------------+-------+
|       8 | prod-08     | Gantungan Kunci DQLab | 15800 |
+---------+-------------+-----------------------+-------+

select kode_transaksi, kode_pelanggan, no_urut, kode_produk, nama_produk, qty,harga, qty*harga as total
from tr_penjualan 
where qty*harga >=100000 
order by total desc;
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+
| kode_transaksi | kode_pelanggan | no_urut | kode_produk | nama_produk                   | qty  | harga  | total   |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+
| tr-006         | dqlabcust02    |       1 | prod-05     | Gift Voucher DQLab 250rb      |    4 | 250000 | 1000000 |
| tr-001         | dqlabcust07    |       1 | prod-01     | Kotak Pensil DQLab            |    5 |  62500 |  312500 |
| tr-001         | dqlabcust07    |       3 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |  276000 |
| tr-005         | dqlabcust05    |       1 | prod-09     | Buku Planner Agenda DQLab     |    3 |  92000 |  276000 |
| tr-004         | dqlabcust03    |       1 | prod-10     | Sticky Notes DQLab 500 sheets |    5 |  55000 |  275000 |
| tr-002         | dqlabcust01    |       2 | prod-10     | Sticky Notes DQLab 500 sheets |    4 |  55000 |  220000 |
| tr-002         | dqlabcust01    |       1 | prod-03     | Gift Voucher DQLab 100rb      |    2 | 100000 |  200000 |
| tr-004         | dqlabcust03    |       2 | prod-04     | Flashdisk DQLab 32 GB         |    4 |  40000 |  160000 |
| tr-001         | dqlabcust07    |       4 | prod-04     | Flashdisk DQLab 32 GB         |    3 |  40000 |  120000 |
| tr-003         | dqlabcust03    |       1 | prod-02     | Flashdisk DQLab 64 GB         |    2 |  55000 |  110000 |
| tr-001         | dqlabcust07    |       2 | prod-03     | Flash disk DQLab 32 GB        |    1 | 100000 |  100000 |
+----------------+----------------+---------+-------------+-------------------------------+------+--------+---------+

