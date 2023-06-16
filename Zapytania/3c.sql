SELECT DISTINCT S.imie, S.nazwisko, INF.nazwakierunku
FROM Studenci AS S
LEFT JOIN
(
SELECT S.studid, S.imie, S.nazwisko, K.kierunekid, K.nazwakierunku
FROM Studenci AS S
INNER JOIN Kierunki AS K
ON S.kierunekid = K.kierunekid
WHERE nazwakierunku = 'Informatyka'
) AS INF
ON S.kierunekid = INF.kierunekid
ORDER BY INF.nazwakierunku DESC
