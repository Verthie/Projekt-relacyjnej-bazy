SELECT DISTINCT imie, nazwisko
FROM Studenci AS S
INNER JOIN Oplaty AS O ON S.studid = O.studid
WHERE dataoplacenia IS NULL