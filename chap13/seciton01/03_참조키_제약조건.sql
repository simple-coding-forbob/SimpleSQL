
CREATE TABLE EMP (
    ENO NUMBER(4),
    DNO NUMBER(2) CONSTRAINT FK_EMP_DNO REFERENCES DEPARTMENT(DNO)
    ENAME VARCHAR2(10)
);

DROP TABLE EMP;

CREATE TABLE EMP (
    ENO NUMBER(4),
    DNO,
    ENAME VARCHAR2(10),
    CONSTRAINT FK_EMP_DNO FOREIGN KEY(DNO) REFERENCES DEPARTMENT(DNO)
);

DROP TABLE EMP;

ALTER TABLE EMP
ADD CONSTRAINT FK_EMP_DNO
FOREIGN KEY(DNO) REFERENCES DEPARTMENT(DNO);
