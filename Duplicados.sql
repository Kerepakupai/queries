SELECT id,
   dup.name,
   customers.address
FROM customers
   INNER JOIN (SELECT name
               FROM   customers
               GROUP  BY name
               HAVING COUNT(name) > 1) dup
           ON customers.name = dup.name
ORDER BY name;

1195
1400
1400
1500
1500
1704

SELECT * from customers WHERE id IN (
  1543,
  1659,
  1468,
  1442
);

1442,Silvia  Welch,Encargada,,1442,2017-06-26 23:02:16,2017-06-26 23:02:16
1468,Jimena  Muñoz,N/A,,1468,2017-06-26 23:02:17,2017-06-26 23:02:17
1543,N/A,N/A,,1543,2017-06-26 23:02:19,2017-06-26 23:02:19
1659,Francisco Chapa,Dueño,,1659,2017-06-26 23:02:21,2017-06-26 23:02:21

SELECT * FROM phones WHERE contact_id IN (
  1442,
  1468,
  1543,
  1659
);