SELECT DISTINCT S.studid, S.imie, S.nazwisko, 
(
SELECT numeralbumu
FROM NumeryAlbumu AS NA
WHERE S.studid = NA.studid
) AS NumerAlbumu
FROM Studenci AS S
INNER JOIN Frekwencja AS F
ON S.studid = F.studid