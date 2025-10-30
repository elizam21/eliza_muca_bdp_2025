--3

SELECT * FROM public.t2019_kar_streets LIMIT 5;

ALTER TABLE public.t2019_kar_streets
ALTER COLUMN geom TYPE geometry(MultiLineString, 25832)
USING ST_SetSRID(geom, 25832);

CREATE TABLE streets_reprojected AS
SELECT
    *,
    ST_Transform(geom, 31466) AS geom_t 
FROM public.t2019_kar_streets;
