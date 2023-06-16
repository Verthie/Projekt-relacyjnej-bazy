SELECT CONCAT('Przedmiot: ', nazwaprzedmiotu, ' Sala: ', numerpokoju) AS PokojePrzedmiotow
FROM Pokoj AS PO INNER JOIN Przedmioty AS PR
ON PO.przedmiotid = PR.przedmiotid