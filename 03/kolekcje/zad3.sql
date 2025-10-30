-- 3
-- żeby był poligon, to obiekt musi być zamknięty, a w środku nie może być przecięć


UPDATE obiekty
SET geometry = ST_MakePolygon(ST_AddPoint(geometry, ST_StartPoint(geometry)))
WHERE nazwa = 'obiekt4' AND NOT ST_IsClosed(geometry);


