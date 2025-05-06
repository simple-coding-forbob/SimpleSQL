--  예제 1) 부서정보 테이블을 전체 조회 하세요
--     부서 : DEPARTMENT
SELECT * FROM DEPARTMENT;
 
-- 예제 2) 부서 테이블의 열(컬럼) 중에 DNO, LOC 만 조회하세요
--   부서 : DEPARTMENT, 
--    DNO(부서번호), LOC(부서위치)
-- 사용법) SELECT 컬럼명,컬럼명2... FROM 테이블명;
SELECT DNO, LOC FROM DEPARTMENT;