DELETE FROM ksiegowosc.pracownicy
WHERE id_pracownika IN (
    SELECT w.id_pracownika
    FROM ksiegowosc.wynagrodzenie w
    JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
    WHERE pe.kwota < 1200
);
