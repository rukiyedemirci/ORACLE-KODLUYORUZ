CREATE TABLE ADDRESS
(
    ID_          NUMBER GENERATED BY DEFAULT AS IDENTITY START WITH 1 PRIMARY KEY,
    MEMBER_ID    NUMBER NOT NULL,
    COUNTRY      VARCHAR2(50) NOT NULL,
    CITY         VARCHAR2(50) NOT NULL,
    TOWN         VARCHAR2(50) NOT NULL,
    DISTRICT     VARCHAR2(50) NOT NULL,
    ADDRESS_TEXT VARCHAR2(500) NOT NULL
);