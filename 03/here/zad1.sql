-- 1 
SELECT COUNT(*) FROM t2018_kar_buildings;
SELECT COUNT(*) FROM t2019_kar_buildings;

SELECT * FROM public.t2018_kar_buildings LIMIT 5;
SELECT * FROM public.t2019_kar_buildings LIMIT 5;


SELECT DISTINCT b2019.*
FROM t2019_kar_buildings AS b2019
LEFT JOIN t2018_kar_buildings AS b2018
    ON b2019.polygon_id = b2018.polygon_id
WHERE b2018.polygon_id IS NULL
   OR NOT ST_Equals(b2019.geom, b2018.geom);
