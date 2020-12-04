CREATE TABLE ROLES(
ID_ NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
ROLE_NAME VARCHAR(50),
ACTORS_ID NUMBER,

CONSTRAINT FK_ACTORS FOREIGN KEY (ACTORS_ID) REFERENCES FILM_ACTORS(ID_)ON DELETE CASCADE
);