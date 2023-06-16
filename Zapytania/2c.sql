SELECT imie, nazwisko, iloscnieobecnosci, iloscwszystkichgodzin, nazwaprzedmiotu, 
CONCAT(IIF(iloscnieobecnosci IS NULL, 100, ROUND(((CAST(iloscwszystkichgodzin AS FLOAT)-CAST(iloscnieobecnosci AS FLOAT))/iloscwszystkichgodzin*100),0)),'%') AS ProcentFrekwencji
FROM Studenci AS S
INNER JOIN Frekwencja AS F ON S.studid = F.studid
INNER JOIN Przedmioty AS P ON F.przedmiotid = P.przedmiotid
WHERE nazwaprzedmiotu = 'angielski'