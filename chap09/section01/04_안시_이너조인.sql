-- 기타 등등 : 
-- 안시 표준 표기법) 조인 :
-- 오라클, MY-SQL 모든 제품에서 동작
-- 4-1) 오라클 조인 : 등호(=, equal) 조인
SELECT D.DNO AS 부서DNO 
       ,E.DNO AS 사원DNO
FROM DEPARTMENT D
    ,EMPLOYEE E
WHERE D.DNO = E.DNO;

-- 4-2) 안시(ANSI) 조인 표준 표기법
SELECT D.DNO AS 부서DNO 
       ,E.DNO AS 사원DNO
FROM DEPARTMENT D
INNER JOIN EMPLOYEE E
ON D.DNO = E.DNO;

-- SQLD 대비
-- 이름이 같은 컬럼은 USING 사용 가능
-- E.DNO, D.DNO 는 합쳐서 DNO 1개로 표시됩니다.
SELECT *
FROM DEPARTMENT D
INNER JOIN EMPLOYEE E
USING (DNO);

-- 네츄럴 조인
-- 이름이 같은 모든 컬럼을 자동으로 이퀄조인합니다.
-- E.DNO, D.DNO 는 합쳐서 DNO 1개로 표시됩니다.
SELECT *
FROM DEPARTMENT D
NATURAL JOIN EMPLOYEE E;