INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Kowalski', 'Warszawa, ul. Lipowa 10', '600100200'),
('Anna', 'Nowak', 'Kraków, ul. Długa 5', '601101201'),
('Piotr', 'Wiśniewski', 'Poznań, ul. Krótka 3', '602102202'),
('Katarzyna', 'Mazur', 'Gdańsk, ul. Słoneczna 7', '603103203'),
('Tomasz', 'Wójcik', 'Łódź, ul. Jesienna 2', '604104204'),
('Agnieszka', 'Kowalczyk', 'Wrocław, ul. Leśna 8', '605105205'),
('Paweł', 'Kamiński', 'Szczecin, ul. Polna 12', '606106206'),
('Ewa', 'Zielińska', 'Lublin, ul. Spacerowa 1', '607107207'),
('Marek', 'Szymański', 'Bydgoszcz, ul. Parkowa 14', '608108208'),
('Joanna', 'Woźniak', 'Katowice, ul. Ogrodowa 6', '609109209');

INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('Księgowy', 6000),
('Asystent', 4000),
('Specjalista', 7000),
('Manager', 9000),
('Dyrektor', 12000),
('Magazynier', 4500),
('Sprzedawca', 5000),
('Recepcjonista', 3500),
('Kierowca', 5500),
('Sekretarka', 3800);

INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('Uznaniowa', 500),
('Roczna', 2000),
('Projektowa', 1500),
('Frekwencyjna', 300),
('Motywacyjna', 800),
('Okolicznościowa', 400),
('Specjalna', 1000),
('Za wyniki', 1200),
('Świąteczna', 700),
('Za staż', 900);



INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-10-01', 8, 1),
('2025-10-01', 7.5, 2),
('2025-10-01', 8, 3),
('2025-10-01', 8, 4),
('2025-10-01', 6, 5),
('2025-10-01', 8, 6),
('2025-10-01', 7, 7),
('2025-10-01', 8, 8),
('2025-10-01', 8, 9),
('2025-10-01', 8, 10);


INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-05', 1, 1, 1, 1),
('2025-10-05', 2, 2, 2, 2),
('2025-10-05', 3, 3, 3, 3),
('2025-10-05', 4, 4, 4, 4),
('2025-10-05', 5, 5, 5, 5),
('2025-10-05', 6, 6, 6, 6),
('2025-10-05', 7, 7, 7, 7),
('2025-10-05', 8, 8, 8, 8),
('2025-10-05', 9, 9, 9, 9),
('2025-10-05', 10, 10, 10, 10);
