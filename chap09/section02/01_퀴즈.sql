-- 간단연습 : ALLEN 사원보다 급여를(SALARY) 작게 받는 사원이 누구인지 출력
-- 1) ALLEN 사원이 급여 ? 1600
SELECT SALARY
FROM EMPLOYEE
WHERE ENAME = 'ALLEN';

-- 2) 그 급여보다 작게 받는 사원 출력 ?
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY < (SELECT SALARY
                FROM EMPLOYEE
                WHERE ENAME = 'ALLEN');

-- 간단연습 2 : SCOTT 사원과(1개) 동일한 부서에서(DNO) 근무하는 사원(ENAME)(2개) 출력하기
-- 사원 : EMPLOYEE
--     1-1) SCOTT 사원의 부서번호를 찾기  : 20
SELECT DNO
FROM   EMPLOYEE
WHERE  ENAME = 'SCOTT';

--     1-2) 위의 부서번호로 다른 사원 찾기 :
SELECT ENAME
FROM   EMPLOYEE
WHERE  DNO = (SELECT DNO
            FROM   EMPLOYEE
            WHERE  ENAME = 'SCOTT');