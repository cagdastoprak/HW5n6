SELECT size,count(country)
FROM 
(SELECT country,
CASE
	WHEN count(*)>20 THEN 'Big'
    WHEN count(*)>10 THEN 'Mid'
    ELSE 'Small'
    END AS 'size'
FROM customers
GROUP BY country
) a
GROUP BY size;

SELECT *
FROM customers