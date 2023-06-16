SELECT S.studid, S.imie, S.nazwisko, O.ocena, 
ROUND(CAST(AVG(O.Ocena) OVER(PARTITION BY S.studid ORDER BY S.studid) AS FLOAT), 2) AS Srednia
FROM Oceny AS O
INNER JOIN Studenci AS S
ON O.studid = S.studid
