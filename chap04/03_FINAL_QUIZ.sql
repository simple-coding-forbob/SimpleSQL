-- 문제 9)부서번호(DNO)가 20 및 30에 속한 (이거나,또는 OR, IN)
--       사원의 이름(ENAME)과 부서번호(DNO)를 출력하되
--        이름을 기준으로 내림차순 출력하세요(정렬)
-- 힌트) 컬럼명 IN (A, B)
-- 사원테이블 : EMPLOYEE
SELECT ENAME, DNO
FROM EMPLOYEE
WHERE DNO IN (20,30)
ORDER BY ENAME DESC;

-- 문제 10) 사원의 급여(SALARY)가 2000 에서 3000 사이에 포함되고 (1번이고)
--          부서번호(DNO)가 20 또는 30인 (2번)
--         사원의 이름(ENAME), 급여와(SALARY) 부서번호를(DNO) 출력하되 
--         이름순(오름차순)으로 출력하세요
-- 사원테이블 : EMPLOYEE
SELECT ENAME, SALARY, DNO
FROM EMPLOYEE
WHERE SALARY BETWEEN 2000 AND 3000
AND   DNO IN (20,30)
ORDER BY ENAME;

-- 문제 11) 1981년도에 입사한 사원의 이름(ENAME)과 
--         입사일(HIREDATE)을 출력하세요
-- 단, LIKE 연산자와 와일드카드(%, _)를 사용하세요
-- 힌트 : 컬럼명 LIKE '81%'
-- 사원테이블 : EMPLOYEE
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE LIKE '81%';

-- 문제 12) 관리자가(MANAGER) 없는 사원의 이름(ENAME)과 
--         담당 업무를(JOB) 출력하세요
-- 힌트) 관리자가(MANAGER) 없는 사원 : MANAGER 컬럼에 NULL로 표시됨
-- 사원테이블 : EMPLOYEE
-- 직위 컬럼 : JOB
-- 직원의 관리자가 있음
-- NULL 비교(=) : IS NULL, IS NOT NULL
SELECT ENAME, JOB FROM EMPLOYEE
WHERE MANAGER IS NULL;