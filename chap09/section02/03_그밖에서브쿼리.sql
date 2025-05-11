-- 그 밖에 서브쿼리 사용하기

-- 예제 2) 30번 부서에서 최소급여를(MIN) 구한 후) 2)그 최소 급여보다(MIN) 
-- 부서별(DNO) 최소 급여가 큰 부서만 출력하세요.
-- 서브쿼리를 사용하세요.
-- 1) 30번 부서에서 최소급여를(MIN(SALARY)) 구한 후 : 950
SELECT MIN(SALARY)
FROM EMPLOYEE
WHERE DNO = 30;

-- 2) 그 최소 급여보다(MIN) 부서별(DNO) 최소 급여가 큰 부서 구하기 :
SELECT MIN(SALARY)
FROM EMPLOYEE
GROUP BY DNO
HAVING MIN(SALARY) > (SELECT MIN(SALARY)
                        FROM EMPLOYEE
                        WHERE DNO = 30);

-- 그 밖에 2)
SELECT 2*3 , (SELECT 4*3 FROM DUAL)
FROM DUAL;

-- 그 밖에 3) 
SELECT EM.ENAME, EM.ENO
FROM (SELECT * FROM EMPLOYEE) EM;