SELECT ROUND(AVG(srednia),2) AS SredniaSrednichZ2016Roku
FROM SredniaKoncowa
WHERE EXISTS(
SELECT rokid
FROM PoprzednieRokiSzkolne
WHERE SredniaKoncowa.rokid = PoprzednieRokiSzkolne.rokid AND rok = 2016
)