SELECT 
    p.imie, 
    p.nazwisko, 
    pe.kwota AS pensja,
    pr.kwota AS premia,
    (pe.kwota + COALESCE(pr.kwota, 0)) AS laczne_wynagrodzenie
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pracownicy p ON w.id_pracownika = p.id_pracownika
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
ORDER BY (pe.kwota + COALESCE(pr.kwota, 0)) DESC;

