UPDATE input_points
SET geom = ST_Transform(ST_SetSRID(geom, 4326), 31466);

SELECT ST_AsText(geom) AS geom_text, ST_SRID(geom) AS srid
FROM input_points;
