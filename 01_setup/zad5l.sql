
SELECT 
    pe.stanowisko,
    AVG(pe.kwota) AS srednia_placa,
    MIN(pe.kwota) AS minimalna_placa,
    MAX(pe.kwota) AS maksymalna_placa
FROM ksiegowosc.pensja pe
WHERE LOWER(pe.stanowisko) = 'manager'  
GROUP BY pe.stanowisko;
