SELECT K.kierunekid, K.nazwakierunku, IIF(S.nazwaspecjalnosci IS NULL, 'nie posiada specjalnosci', S.nazwaspecjalnosci) AS NazwaSpecjalnosci
FROM Kierunki AS K
LEFT JOIN Specjalnosci AS S
ON K.kierunekid = S.kierunekid