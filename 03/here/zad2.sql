--2
SELECT * FROM public.t2018_kar_poi_table LIMIT 5;
SELECT * FROM public.t2019_kar_poi_table LIMIT 5;



WITH changed_buildings AS (
    SELECT DISTINCT b2019.*
    FROM t2019_kar_buildings AS b2019
    LEFT JOIN t2018_kar_buildings AS b2018
        ON b2019.polygon_id = b2018.polygon_id
    WHERE b2018.polygon_id IS NULL
       OR NOT ST_Equals(b2019.geom, b2018.geom)
),

new_pois AS (
    SELECT p2019.*
    FROM t2019_kar_poi_table AS p2019
    LEFT JOIN t2018_kar_poi_table AS p2018
        ON p2019.poi_id = p2018.poi_id
    WHERE p2018.poi_id IS NULL
)

SELECT n.type,
       COUNT(*) AS liczba_poi
FROM new_pois AS n
JOIN changed_buildings AS b
    ON ST_DistanceSphere(n.geom, b.geom) <= 500
GROUP BY n.type
ORDER BY liczba_poi DESC;
