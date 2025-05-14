-- 문제 13) COMMISSION(상여금)을 받을 수 있는 자격이 되는 (COMMISSION NULL 이 아닌사람)
--         사원의 이름(ENAME), 급여(SALARY), 상여금(COMMISSION)을 출력하되
--         급여 및 커미션을 기준으로 내림차순 정렬하여 출력하세요
-- 사원테이블 : EMPLOYEE
-- 힌트) 컬럼명 IS NOT NULL
SELECT ENAME, SALARY, COMMISSION
FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL
ORDER BY SALARY DESC, COMMISSION DESC;

-- 문제 14) 이름(ENAME)이 S로 시작하는 사원의 이름을 표시하세요.
-- 사원테이블 : EMPLOYEE
SELECT ENAME FROM EMPLOYEE
WHERE ENAME LIKE 'S%';


-- 문제 15) 이름에(ENAME) A와(1번조건) E를(2번조건) 모두 포함하고 있는(동시조건:교집합) 
--         사원의 이름을 표시하세요.
-- 사원 테이블 : EMPLOYEE
-- 힌트) WHERE 컬럼명 LIKE '%문자%'
--      AND    컬럼명 LIKE '%문자2%'
SELECT ENAME FROM EMPLOYEE
WHERE ENAME LIKE '%A%'
AND   ENAME LIKE '%E%';

-- 문제 16) 담당업무(JOB)가 사무원(CLERK) 또는 영업사원(SALESMAN)이면서(1번)
--     급여가 $1600, $950 또는 $1300이 아닌 (2번)
--     사원의 이름(ENAME), 담당업무(JOB), 급여(SALARY)를 출력하세요
-- 힌트) WHERE 컬럼명 IN (A,B) AND 컬럼명2 NOT IN(A,B,C)
-- 사원 테이블 : EMPLOYEE
SELECT ENAME, JOB, SALARY
FROM EMPLOYEE
WHERE JOB IN ('CLERK', 'SALESMAN')
AND   SALARY NOT IN (1600, 950, 1300);