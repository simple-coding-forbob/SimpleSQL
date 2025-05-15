-- 5-1) 오라클 조인 : 아우터 조인 
-- (+) 반대쪽 테이블이 모든 데이터가 나옵니다. 
SELECT D.DNO AS 부서DNO 
       ,E.DNO AS 사원DNO
FROM DEPARTMENT D
   , EMPLOYEE E
WHERE D.DNO = E.DNO(+);

-- 5-2) 안시(ANSI) 조인 표준 표기법 
-- LEFT OUTER JOIN(왼쪽에 모든 데이터)
SELECT D.DNO AS 부서DNO 
       ,E.DNO AS 사원DNO
FROM DEPARTMENT D
LEFT OUTER JOIN EMPLOYEE E
ON D.DNO = E.DNO;

-- 5-2) 안시(ANSI) 조인 표준 표기법 
-- (+) 반대쪽 테이블이 모든 데이터가 나옵니다. 
SELECT D.DNO AS 부서DNO 
       ,E.DNO AS 사원DNO
FROM DEPARTMENT D
   , EMPLOYEE E
WHERE D.DNO(+) = E.DNO;

-- RIGHT OUTER JOIN(오른쪽에 모든 데이터)
SELECT D.DNO AS 부서DNO 
       ,E.DNO AS 사원DNO
FROM DEPARTMENT D
RIGHT OUTER JOIN EMPLOYEE E
ON D.DNO = E.DNO;

-- SQLD 대비
-- 이퀄조인된것과 이퀄조인 안되는 데이터도 모두 표시함 
-- 부서번호(DNO)가 같은것은 표시합니다.
-- 다른것도 마지막에 붙여서 표시합니다.
SELECT D.DNO AS 부서DNO 
       ,E.DNO AS 사원DNO
FROM DEPARTMENT D
FULL OUTER JOIN EMPLOYEE E
ON D.DNO = E.DNO;