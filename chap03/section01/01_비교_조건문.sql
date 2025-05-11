-- 검색할때 조건을 붙여 조회하기(***) : 성능향상
-- 1) 비교연산자로 조건절(Where) 사용하기
--  sql : >, <, >=, <=, =(같다), <>(같지않다)
-- 예제 1) SALARY(월급) 이 1500 이상인 사원 조회하기
--   사원 : EMPLOYEE
--    SALARY(월급), ENAME(사원명)
-- 사용법) SELECT 컬럼명, 컬럼명2... FROM 테이블명
--         WHERE 컬럼명 >= 값;
SELECT ENAME, SALARY FROM EMPLOYEE
WHERE SALARY >= 1500;