UPDATE public.t2019_kar_street_node
SET geom = ST_SetSRID(geom, 4326);

CREATE TABLE street_node_reprojected AS
SELECT *,
       ST_Transform(geom, 3068) AS geom_3068
FROM public.t2019_kar_street_node;

WITH line AS (
    SELECT ST_MakeLine(geom ORDER BY id) AS geom
    FROM input_points
),
buffer AS (
    SELECT ST_Buffer(geom, 200) AS geom
    FROM line
)
SELECT sn.*
FROM street_node_reprojected sn
JOIN buffer b
  ON ST_Intersects(sn.geom_3068, b.geom);
