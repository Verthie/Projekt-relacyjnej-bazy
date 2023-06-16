SELECT TOP 1 O.studid, NI.ilosc, SUM(O.wysokoscoplaty) AS suma
FROM Oplaty AS O
INNER JOIN
(
SELECT TOP 1 WITH TIES studid, COUNT(wysokoscoplaty) AS ilosc
FROM Oplaty
WHERE dataoplacenia IS NULL
GROUP BY studid
ORDER BY ilosc DESC
) AS NI
ON O.studid = NI.studid
GROUP BY O.studid, NI.ilosc
ORDER BY suma DESC