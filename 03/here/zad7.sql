SELECT COUNT(*)
FROM t2019_kar_poi_table
JOIN land_use_a_2019
  ON ST_DWithin(t2019_kar_poi_table.geom, land_use_a_2019.geom, 300)
WHERE t2019_kar_poi_table.type = 'Sporting Goods Store'
  AND land_use_a_2019.type = 'Park';
