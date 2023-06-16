SELECT DISTINCT S.panstwo 
FROM Studenci AS S
WHERE EXISTS(
SELECT P.panstwo
FROM Pracownicy AS P
WHERE S.panstwo=P.panstwo)