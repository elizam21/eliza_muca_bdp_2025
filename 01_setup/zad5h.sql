SELECT 
    p.imie, 
    p.nazwisko,
    SUM(g.liczba_godzin) AS przepracowane_godziny,
    GREATEST(SUM(g.liczba_godzin) - 160, 0) AS nadgodziny
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
WHERE w.id_premii IS NULL
GROUP BY p.id_pracownika, p.imie, p.nazwisko
HAVING SUM(g.liczba_godzin) > 160;
