-- 예제 1) 데이터의 중복을 제거하고 출력하세요
--    사원 : EMPLOYEE
--    DNO(부서번호)
-- 사용법) SELECT DISTINCT 컬럼명 FROM 테이블명;
SELECT DISTINCT DNO FROM EMPLOYEE;

-- 현재날짜 : SYSDATE
SELECT SYSDATE FROM DUAL;

-- (참고) 테스트용 테이블 : DUAL 
--  활용 : 간단한 계산, 문자열 출력용 
SELECT 2 * 3 + 4  FROM DUAL;