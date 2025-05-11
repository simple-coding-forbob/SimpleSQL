-- 쿼리(query == sql)
-- 서브쿼리(subquery) : sql 안에 sql 를 또 사용하기
--  예제 1) SCOTT 사원보다 급여를(SALARY) 많이 받는 사원이 누구인지 출력
--   사원 : EMPLOYEE
-- 1) SCOTT 사원이 급여 ? 3000
SELECT SALARY
FROM   EMPLOYEE
WHERE ENAME = 'SCOTT';

-- 2) 3000 보다 큰 급여를(SALARY) 받는 사원(ENAME) 출력
--   사원 : EMPLOYEE 
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY > 3000;

-- => 문제점 : select 2번 사용 - 네트웍속도 때문에 성능저하
-- => 개선 : 서브쿼리 사용
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY > (SELECT SALARY
                FROM   EMPLOYEE
                WHERE ENAME = 'SCOTT');
-- 사용법 : SELECT 컬럼명
--          FROM 테이블명
--          WHERE 비교컬럼 > (SELECT 비교컬럼
--                          FROM   테이블명2
--                          WHERE 조건절);
-- 주의점 : 1) 서브쿼리 사용시 위의 비교컬럼명은 일치해야함(좌/우)
--          2) (서브쿼리) 사용
--          3) 비교연산자 : >, <, = 등 : 단일행 서브쿼리