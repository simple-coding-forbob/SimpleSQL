-- 예제 1) 데이터의 중복을 제거하고 출력하세요
--    사원 : EMPLOYEE
--    DNO(부서번호)
-- 사용법) SELECT DISTINCT 컬럼명 FROM 테이블명;
SELECT DISTINCT DNO FROM EMPLOYEE;

-- 현재날짜 : SYSDATE
SELECT SYSDATE FROM DUAL;

-- (참고) 테스트용 테이블 : DUAL 
--  활용 : 간단한 계산, 문자열 출력용 
--    2345 * 5435 + 432
SELECT 2345 * 5435 + 432 FROM DUAL;

-- (참고) 문자열 : '' (주의: 홑따옴표임)
SELECT '홍길동' FROM DUAL;

-- 참고) 테이블의 컬럼(열)을 조회하는데,같은것을 여러번 조회도 가능
SELECT ENAME, ENAME,ENAME FROM EMPLOYEE;