-- 1) (사원번호가(ENO) 7788인 사원)과
--   담당 업무가(JOB) 같은 사원을(사원이름(ENAME),담당업무(JOB)) 표시하세요.
-- 대상 : EMPLOYEE
-- 1-1) (사원번호가(ENO) 7788인 사원의 업무(JOB) : ANALYST
SELECT JOB
FROM EMPLOYEE
WHERE ENO = 7788;

-- 1-2) 위의 결과와 같은 업무을 가진 사원 출력 : 
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE JOB = ();

-- 2) (사원번호가(ENO) 7499인 사원)보다
--   급여가(SALARY) 많은 사원을(사원이름(ENAME),담당업무(JOB)) 표시하세요.
-- 대상 : EMPLOYEE
-- 2-1) 사원번호가(ENO) 7499인 사원의 급여 : 1600
SELECT SALARY
FROM EMPLOYEE
WHERE ENO = 7499;

-- 2-2)위의 결과보다 급여가 많은 사원을(사원이름(ENAME),담당업무(JOB)) 표시
-- 비교연산자 : SALARY > (서브쿼리)
SELECT ENAME, JOB
FROM EMPLOYEE
WHERE SALARY > (SELECT SALARY
                FROM EMPLOYEE
                WHERE ENO = 7499);

-- 3) (최소(MIN) 급여를(SALARY) 받는 사원)의 이름,(ENAME)
--    담당 업무(JOB) 및 급여(SALARY)를 표시하세요.
-- 대상 : EMPLOYEE
-- 3-1) 최소(MIN) 급여(SALARY) : 800
SELECT MIN(SALARY)
FROM EMPLOYEE;

-- 3-2) 그 회사의 최소급여를 받는 사원명(ENAME)
--     , 담당 업무(JOB), 급여(SALARY) 표시하세요
-- 비교연산자 : SALARY = (서브쿼리)
SELECT ENAME, JOB, SALARY
FROM EMPLOYEE
WHERE SALARY = (SELECT MIN(SALARY)
                FROM EMPLOYEE);