-- 문제 21) 사원이름에(ENAME) E 가 포함되어 있는(조건1) 30번 부서의(DNO) 사원 중(조건2) 급여가(SALARY)
-- 1000 ~ 2000 사이가 아닌(조건3) 사원이름(ENAME), 사원번호(ENO), 급여(SALARY), 부서번호를(DNO) 출력하는
-- SQL 문을 작성해 보세요
-- 힌트) 조건 3개 AND : 1) LIKE 사용 2) 컬럼 = 30 3) 컬럼 NOT BETWEEN A AND B
SELECT ENAME, ENO, SALARY, DNO FROM EMPLOYEE
WHERE ENAME LIKE '%E%'
AND   DNO = 30
AND   SALARY NOT BETWEEN 1000 AND 2000;


-- 문제 22) 상여금이(COMMISSION) 없고(조건1) 매니저가(MANAGER) 있고(조건2) 
-- 직책이(JOB) MANAGER , CLERK 인 사원 중에서(조건3)
-- 사원이름의 두번째 글자가 L 이 아닌 사원의(조건4) 정보를 출력하는 SQL문을 작성하세요
-- 힌트) 상여금이(COMMISSION) 없고 : (상여금이 NULL 인 사원)
-- 힌트) 조건 4개 AND :  1) 상여금 IS NULL 2) 관리자 IS NOT NULL 3) 컬럼 IN (A,B) 4) 컬럼 NOT LIKE '_문자%'
SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NULL
AND   MANAGER IS NOT NULL
AND   JOB IN ('MANAGER','CLERK')
AND   ENAME NOT LIKE '_L%';