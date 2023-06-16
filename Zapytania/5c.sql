SELECT S.imie, S.nazwisko, SO.SumaOplat
FROM Studenci AS S
INNER JOIN
(
SELECT studid, SUM(wysokoscoplaty) AS SumaOplat
FROM Oplaty
GROUP BY studid
HAVING SUM(wysokoscoplaty) > 1000
) AS SO
ON S.studid = SO.studid
ORDER BY SO.SumaOplat DESC