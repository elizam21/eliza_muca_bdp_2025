CREATE EXTENSION IF NOT EXISTS postgis;


CREATE TABLE obiekty (
    id SERIAL PRIMARY KEY,
    nazwa VARCHAR(30),
    geometry GEOMETRY
);
-- jeżeli nie ma zdefiniowanego SRID, to znaczy, że układ jest niezdefiniowany


-- 1a, 0 na końcu oznacza niezdefiniowany SRID

INSERT INTO obiekty (nazwa, geometry)
VALUES (
    'obiekt1',
    ST_CurveToLine(
        ST_GeomFromText(
            'COMPOUNDCURVE(
                (0 1, 1 1),
                CIRCULARSTRING(1 1, 2 0, 3 1),
                CIRCULARSTRING(3 1, 4 2, 5 1),
                (5 1, 6 1)
            )', 0
        ),
		1
    )
);


-- 1b

INSERT INTO obiekty (nazwa, geometry) 
VALUES (
    'obiekt2',
    ST_CurveToLine(
        ST_GeomFromText(
            'CURVEPOLYGON(
                COMPOUNDCURVE(
                    CIRCULARSTRING(14 6, 16 4, 14 2),
                    CIRCULARSTRING(14 2, 12 0, 10 2),
                    (10 2, 10 6),
                    (10 6, 14 6)
                ),
                CIRCULARSTRING(12 3, 13 2, 12 1, 11 2, 12 3)
            )',
            0
        ),
        1
    )
);


--1c

INSERT INTO obiekty (nazwa, geometry) 
VALUES (
    'obiekt3',
    ST_GeomFromText(
        'POLYGON((10 17, 12 13, 7 15, 10 17))',
        0
    )
);


-- 1d

INSERT INTO obiekty (nazwa, geometry) 
VALUES (
    'obiekt4',
    ST_GeomFromText(
        'LINESTRING(20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5)',
        0
    )
);

-- 1e

INSERT INTO obiekty (nazwa, geometry) 
VALUES (
    'obiekt5',
    ST_GeomFromText(
        'MULTIPOINTZ((38 32 234), (30 30 59))',
        0
    )
);

-- 1f

INSERT INTO obiekty (nazwa, geometry)
VALUES (
'obiekt6',
ST_GeomFromText(
           'GEOMETRYCOLLECTION(
		    POINT(4 2),
            LINESTRING(1 1, 3 2)
			)',
			0
			)
);



