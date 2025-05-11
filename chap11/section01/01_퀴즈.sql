-- 간단연습 : 위의 테이블과 유사한 DEPT2 테이블을 만드세요
CREATE TABLE DEPT2 (
    DNO NUMBER(2),
    DNAME VARCHAR2(14),
    LOC   VARCHAR2(13)
);

-- 간단연습 : 위의 컬럼으로 EMP2 테이블을 만드세요 
--        만들고 좌측 트리에 나오는지 확인하세요
CREATE TABLE EMP2 (
    ENO   NUMBER(4),
    ENAME VARCHAR2(10),
    JOB   VARCHAR2(9),
    MANAGER  NUMBER(4),
    HIREDATE DATE,
    SALARY NUMBER(7,2),
    COMMISSION NUMBER(7,2),
    DNO NUMBER(2)
);