-- 예제 4) INSERT 할때 NULL 명시적으로 표시하고 추가
INSERT INTO DEPT(DNO, DNAME, LOC)
VALUES(40,'영업부',NULL);

-- 확정 :
COMMIT;