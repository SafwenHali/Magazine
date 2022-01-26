SELECT COUNT(nordinateur) FROM ordinateur;
SELECT nordinateur, COUNT(nLog) FROM installer GROUP BY nOrdinateur;

SELECT COUNT(nsalle) FROM salle;
SELECT nSalle, nbOrdinateur FROM salle;

SELECT COUNT(nLOG) FROM Logiciel;
SELECT nLog, COUNT(nOrdinateur) FROM Installer GROUP BY nLog;

SELECT AVG(prix) FROM Logiciel L, Types T WHERE (T. numLP=L.type Log) AND (nomLP="antivirus");

SELECT MAX(dateAch) FROM Logiciel;

SELECT nOrdinateur FROM Installer GROUP by nOrdinateur HAVING (COUNT (nOrdinateur)>1);

SELECT COUNT (nOrdinateur) FROM Installer GROUP by nOrdinateur HAVING (COUNT (nOrdinateur)>1);

SELECT * FROM Types WHERE numLP IN (SELECT numLP FROM Types MINUS ((SELECT type Log FROM Logiciel) UNION (SELECT typeOrdinateur FROM ordinateur)));

select * from Types where numLP IN ((select typeOrdinateur from ordinateur where nSalle=1) INTERSECT (select typeürdinateur from ordinateur where Salle=3));

select * from Types where numLP IN ((select numLP from Types) MINUS (select typeOrdinateur From ordinateur 0, Salle S where (0.nSalle=S.nSalle) AND idSegment=(select idSegment from Segment where nomSegment='siren')));

SELECT nomLog FROM Logiciel WHERE dateAch=(select MAX (dateAch) from Logiciel);

SELECT adrIP FROM Ordinateur 0, Installer I WHERE (0.nOrdinateur=I.nOrdinateur) AND (1.nLog=6);

SELECT adrIP FROM Ordinateur 0, Installer I WHERE (0.nOrdinateur=I.nOrdinateur) AND (I.nLog=(SELECT nlog from Logiciel L where NomLog="google")); SELECT DISTINCT nomSegment FROM segment S, Salle SAL, ordinateur 0 where (S. 1dSegment=SAL.idSegment) AND (0.nSalle=SAL.nSalle)
AND (0.typeOrdinateur=(select numLP from Types where nomLP='acer'));