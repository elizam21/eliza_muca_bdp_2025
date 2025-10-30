--4
INSERT INTO obiekty (nazwa, geometry)
VALUES (
    'obiekt7',
    ST_Collect(
        (SELECT geometry FROM obiekty WHERE nazwa = 'obiekt3'),
        (SELECT geometry FROM obiekty WHERE nazwa = 'obiekt4')
    )
);
