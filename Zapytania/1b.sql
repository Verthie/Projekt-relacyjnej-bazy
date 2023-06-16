SELECT DISTINCT TOP 1 WITH TIES studid, COUNT(ocena) AS iloscocen
FROM Oceny
WHERE ocena = 3
GROUP BY studid
ORDER BY iloscocen DESC