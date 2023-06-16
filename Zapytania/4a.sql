SELECT (SELECT imie FROM Studenci AS S WHERE S.studid = K.studid) AS ImieStudenta, nazwisko , email, CONVERT(VARCHAR, ostatnielogowanie, 108) AS GodzinaLogowania
FROM Konta AS K
INNER JOIN Studenci AS S
ON K.studid = S.studid
WHERE DATEPART(HOUR, ostatnielogowanie) < 10