CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(100),
    telefon VARCHAR(15)
);

COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela z danymi pracowników.';

CREATE TABLE ksiegowosc.pensja (
    id_pensji SERIAL PRIMARY KEY,
    stanowisko VARCHAR(30) NOT NULL,
    kwota NUMERIC(11,2) NOT NULL
);

COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela z pensjami.';


CREATE TABLE ksiegowosc.premia (
    id_premii SERIAL PRIMARY KEY,
    rodzaj VARCHAR(30),
    kwota NUMERIC(11,2)
);


COMMENT ON TABLE ksiegowosc.premia IS 'Tabela  z premiami';


CREATE TABLE ksiegowosc.godziny (
    id_godziny SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    liczba_godzin NUMERIC(5,2) NOT NULL,
    id_pracownika INT NOT NULL REFERENCES ksiegowosc.pracownicy(id_pracownika)
);


COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela z godzinami.';



CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    id_pracownika INT NOT NULL REFERENCES ksiegowosc.pracownicy(id_pracownika),
    id_godziny INT NOT NULL REFERENCES ksiegowosc.godziny(id_godziny),
    id_pensji INT NOT NULL REFERENCES ksiegowosc.pensja(id_pensji),
    id_premii INT NOT NULL REFERENCES ksiegowosc.premia(id_premii)
);

COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Łączone dane.';



