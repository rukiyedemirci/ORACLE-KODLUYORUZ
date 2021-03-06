--JOIN �RNEKLER�

--1)INNER JOIN FILM T�R�,�SM�,G�STER�M YER�,V�ZYON TARIHI,OYUNCULARINI VE ROLLERININ �S�MLER�N� BULUNUZ
SELECT F.NAME_ "FILM NAME",A.NAME_ "ACTORS NAME",R.ROLE_NAME "ROLE NAME",S.NAME_"LOCATION NAME",V.DATE_ "VISION DATE" FROM FILMS F
INNER JOIN SHOW_LOCATION S ON F.FILM_ID =S.f�lm_�d
INNER JOIN v�s�on_date V ON V.�d_ =F.FILM_ID
INNER JOIN FILM_ACTORS A ON F.actors_�d = A.�d_
INNER JOIN ROLES R  ON A.�d_ = R.actors_�d;

--2) NULL OLMAYAN FILMIN ACTORLER�N�N �S�MLER�N� BULUNUZ
SELECT *  FROM f�lm_actors A
LEFT JOIN FILMS F ON A.ID_ = F.FILM_ID
WHERE F.NAME_ IS NOT NULL;

--3)B�T�N F�LMLER� G�STER�LD��� LOKASYONLARI BULUNUZ.
SELECT *  FROM FILMS F
CROSS JOIN SHOW_LOCATION S;

--4)HANG� OYUNCULAR  KA� TANE FILM DE OYNAMI�
SELECT DISTINCT A.NAME_, A.SURNAME,COUNT(F.FILM_ID) "OYNADIGI FILM SAYISI"  FROM FILMS F
JOIN f�lm_actors A ON  F.FILM_ID = A.ID_
GROUP BY A.NAME_, A.SURNAME, F.NAME_;







,
