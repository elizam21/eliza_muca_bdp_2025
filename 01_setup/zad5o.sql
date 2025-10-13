SELECT 
    pe.stanowisko,
    COUNT(w.id_premii) AS liczba_przyznanych_premii
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
WHERE w.id_premii IS NOT NULL
GROUP BY pe.stanowisko;
