-- 5
SELECT nazwa, ST_GeometryType(geometry)
FROM obiekty;

SELECT 
    nazwa,
    ST_Area(ST_Buffer(geometry, 5)) AS pole_bufora
FROM obiekty
WHERE ST_Equals(geometry, ST_CurveToLine(geometry));

