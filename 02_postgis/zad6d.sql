SELECT name, 
       ST_Perimeter(geometry) AS perimeter,
       ST_Area(geometry) AS area
FROM (
    SELECT name, geometry,
           DENSE_RANK() OVER (ORDER BY ST_Area(geometry) DESC) AS rank
    FROM buildings
) ranked
WHERE rank <= 2;
