
-- 문제 17) COMMISSION(상여금)이 $500 이상인 
--     사원의 이름(ENAME)과 급여(SALARY) 및 COMMISSION(상여금)을 출력하세요
-- 사원 테이블 : EMPLOYEE
-- 힌트) 컬럼명 >= 500
SELECT ENAME, SALARY, COMMISSION FROM EMPLOYEE
WHERE COMMISSION >= 500;


-- 문제 18) 사원테이블에서(EMPLOYEE) 사원 이름이(ENAME) S 로 끝나는 사원 데이터를 
-- 모두 출력하는 SQL 문을 작성해 보세요
-- 힌트) 컬럼명 LIKE '%문자'
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%S';

 -- 문제 19) 사원 테이블을(EMPLOYEE) 사용하여 30번 부서에서(DNO) 근무하고 있는 사원 중에(조건1) 
-- 직책이(JOB) SALESMAN 인 사원의(조건2) 사원번호(ENO), 이름(ENAME), 직책(JOB), 
-- 급여(SALARY), 부서번호를(DNO) 출력하는 SQL 문을 작성해 보세요.
-- 힌트) 조건 2개 AND 연결
SELECT ENO, ENAME, JOB, SALARY, DNO FROM EMPLOYEE
WHERE DNO = 30
AND   JOB = 'SALESMAN';



-- 문제 20) 사원 테이블을(EMPLOYEE) 사용하여 20번, 30번 부서에(DNO) 근무하고 있는 사원 중(조건1)
-- 급여가(SALARY) 2000 초과인 사원을(조건2) 조회하세요
-- 힌트) 컬럼 IN (A, B) AND 조건2
SELECT * FROM EMPLOYEE
WHERE DNO IN (20,30)
AND   SALARY > 2000;