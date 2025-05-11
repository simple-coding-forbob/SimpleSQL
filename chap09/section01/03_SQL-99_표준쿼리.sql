-- 기타 등등 : 
-- SQL-99 표준 표기법) 조인 :
-- 오라클, MY-SQL 모든 제품에서 동작
-- 4-1) 오라클 조인 : 등호(=, equal) 조인
SELECT EM.*, DE.*
FROM EMPLOYEE   EM
    ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO;

-- 4-2) SQL-99 표준 표기법
SELECT EM.*, DE.*
FROM EMPLOYEE   EM 
JOIN DEPARTMENT DE 
ON   EM.DNO = DE.DNO;

-- 5-1) 오라클 조인 : 아우터 조인 
SELECT EM.ENAME, MA.ENAME
FROM EMPLOYEE EM
    ,EMPLOYEE MA
WHERE EM.MANAGER = MA.MANAGER(+);

-- 5-2) SQL-99 표준 표기법 
-- (+) 방향 반대로 예약어 작성 : 
-- (+) 오른쪽 : LEFT OUTER JOIN
-- (+) 왼쪽   : RIGHT OUTER JOIN
SELECT EM.ENAME, MA.ENAME
FROM            EMPLOYEE EM
LEFT OUTER JOIN EMPLOYEE MA
ON EM.MANAGER = MA.MANAGER;