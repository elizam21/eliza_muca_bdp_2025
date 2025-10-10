SELECT 
    SUM(pe.kwota + COALESCE(pr.kwota, 0)) AS suma_wszystkich_wynagrodzen
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii;

