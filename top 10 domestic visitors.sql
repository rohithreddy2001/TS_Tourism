
SELECT 
    district, SUM(visitors) AS total_visitors
FROM
    (SELECT 
        district, visitors
    FROM
        `domestic_visitors_2016` UNION ALL SELECT 
        district, visitors
    FROM
        `domestic_visitors_2017` UNION ALL SELECT 
        district, visitors
    FROM
        `domestic_visitors_2018` UNION ALL SELECT 
        district, visitors
    FROM
        `domestic_visitors_2019`) AS combined_tables
GROUP BY district
ORDER BY total_visitors DESC
LIMIT 10;
