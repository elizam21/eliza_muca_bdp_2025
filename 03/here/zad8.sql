CREATE TABLE public.t2019_kar_bridges AS
WITH intersections AS (
    SELECT 
        ST_Intersection(r.geom, w.geom) AS geom
    FROM public.t2019_kar_railways r
    JOIN public.t2019_kar_water_lines w
        ON ST_Intersects(r.geom, w.geom))
SELECT 
    (ST_Dump(ST_CollectionExtract(geom, 1))).geom::geometry(Point, 4326) AS geom
FROM intersections;

SELECT * FROM public.t2019_kar_bridges;
