--Total Penjualan dan Revenue pada Quarter-1 (Jan, Feb, Mar) dan Quarter-2 (Apr,Mei,Jun)
SELECT SUM(quantity) as total_penjualan,
SUM(quantity*priceEach) as revenue
FROM orders_1
WHERE status = 'Shipped';
SELECT SUM(quantity) as total_penjualan,
SUM(quantity*priceEach) as revenue
FROM orders_2
WHERE status = 'Shipped';

--Menghitung persentasi keseluruhan penjualan
SELECT 1 AS quarter,
SUM(quantity) AS total_penjualan,
SUM(quantity*priceEach) AS revenue
FROM orders_1
WHERE status = 'Shipped'
UNION
SELECT 2 AS quarter,
SUM(quantity) AS total_penjualan,
SUM(quantity*priceEach) AS revenue
FROM orders_2
WHERE status = 'Shipped';
