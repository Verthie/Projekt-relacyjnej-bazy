SELECT S.imie, S.nazwisko,
CASE WHEN O.ocena >= 3 THEN 'Zaliczone'
WHEN O.ocena < 3 THEN 'Niezaliczone'
ELSE 'Do zaliczenia' END AS StatusPrzedmiotu
FROM Oceny AS O
LEFT JOIN Studenci AS S
ON O.studid = S.studid