SELECT p.imie, p.nazwisko, pe.kwota AS pensja
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pracownicy p ON w.id_pracownika = p.id_pracownika
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
WHERE pe.kwota BETWEEN 1500 AND 3000;
