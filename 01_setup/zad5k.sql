
SELECT 
    pe.stanowisko,
    COUNT(w.id_pracownika) AS liczba_pracownikow
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
GROUP BY pe.stanowisko
ORDER BY liczba_pracownikow DESC;
