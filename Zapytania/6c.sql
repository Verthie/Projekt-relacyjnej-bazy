SELECT nazwawydzialu
FROM Wydzialy
WHERE EXISTS (
SELECT S.wydzialid, COUNT(S.studid) AS IloscStudentowNaWydziale
FROM Studenci AS S
WHERE S.wydzialid = Wydzialy.wydzialid
GROUP BY S.wydzialid
HAVING COUNT(S.studid) > 90
)