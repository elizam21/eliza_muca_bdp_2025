SELECT wn.id_pracownika
FROM ksiegowosc.wynagrodzenie wn
JOIN ksiegowosc.pensja pn ON wn.id_pensji = pn.id_pensji
WHERE pn.kwota > 1000;
