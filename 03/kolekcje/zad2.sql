SELECT 
    ST_Area(
        ST_Buffer(
            ST_ShortestLine(
                (SELECT geometry FROM obiekty WHERE nazwa = 'obiekt3'),
                (SELECT geometry FROM obiekty WHERE nazwa = 'obiekt4')
            ),
            5
        )
    ) AS pole;
