SELECT *
FROM ksiegowosc.pracownicy
WHERE nazwisko LIKE '%n%'   -- nazwisko zawiera literę 'n'
  AND imie LIKE '%a';       -- imię kończy się literą 'a'
