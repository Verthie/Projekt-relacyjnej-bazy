SELECT S.imie, S.nazwisko, SO.SumaOcen
FROM Studenci AS S
INNER JOIN
(
SELECT studid, SUM(ocena) AS SumaOcen
FROM Oceny
GROUP BY studid
HAVING SUM(ocena) > 11
) AS SO
ON S.studid = SO.studid
ORDER BY S.studid ASC