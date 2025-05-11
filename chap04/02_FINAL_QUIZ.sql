-- 문제5) 급여가(SALARY) 2000을 넘는 사원의 이름과(ENAME) 급여를 
--       급여가 많은 것부터 작은 순으로 출력하세요(내림차순)
-- 사원테이블 : EMPLOYEE
-- 힌트) 급여 > 2000
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY > 2000
ORDER BY SALARY DESC;

-- 문제6) 사원번호가(ENO) 7788 인 사원의 이름과(ENAME) 
--        부서번호를(DNO) 출력하세요
-- 사원테이블 : EMPLOYEE
SELECT ENAME, DNO
FROM EMPLOYEE
WHERE ENO = 7788;

-- 문제7) 급여가(SALARY) 2000에서 3000 사이에 포함되지 않는 
--        사원의 이름과(ENAME) 급여를 출력하세요.
-- 힌트) 컬럼명 NOT BETWEEN A AND B 
-- 사원테이블 : EMPLOYEE
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY NOT BETWEEN 2000 AND 3000;


-- 문제 8) 1981년 2월 20일 부터 1981년 5월 1일 사이에 입사한 사원의 
-- 이름(ENAME), 담당 업무(JOB), 입사일(HIREDATE)을 출력하세요
-- 힌트) 컬럼명 BETWEEN A AND B 
-- 사원테이블 : EMPLOYEE
-- 1981년 2월 20일 : '81/02/20'
-- 1981년 5월 1일 : '81/05/01'
SELECT ENAME, JOB, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE BETWEEN '81/02/20' AND '81/05/01';
