SELECT Studenci.imie, Studenci.nazwisko, 
(
SELECT COUNT(*) 
FROM Podania 
WHERE Podania.studid = Konta.studid) AS LiczbaPodan
FROM Konta
INNER JOIN Studenci
ON Konta.studid = Studenci.studid
ORDER BY LiczbaPodan DESC