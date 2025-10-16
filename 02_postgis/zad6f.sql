SELECT ST_Area(
           ST_Difference(
               bC.geometry,
               ST_Buffer(bB.geometry, 0.5)
           )
       ) AS area_outside
FROM buildings bC
JOIN buildings bB
ON bC.name = 'Budynek C' AND bB.name = 'Budynek B';

