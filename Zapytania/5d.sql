SELECT ROUND([2015],2) AS SredniaWszystkich2015, ROUND([2016],2) AS SredniaWszystkich2016, ROUND([2017],2) AS SredniaWszystkich2017
FROM (
SELECT P.rok, AVG(S.srednia) AS SredniaSrednich
FROM PoprzednieRokiSzkolne AS P
INNER JOIN SredniaKoncowa AS S
ON P.rokid = S.rokid
GROUP BY P.rok
) AS Tymczas
PIVOT(
AVG(SredniaSrednich)
FOR rok IN ([2015], [2016], [2017])) AS PV