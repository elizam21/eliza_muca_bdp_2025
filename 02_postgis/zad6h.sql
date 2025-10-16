SELECT ST_Area(
           ST_SymDifference(
               bC.geometry,
               ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))')
           )
       ) AS area_diff
FROM buildings bC
WHERE bC.name = 'Budynek C';

