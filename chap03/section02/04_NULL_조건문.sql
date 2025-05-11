-- 예제 13) NULL 조회 : 
-- NULL : 아무것도 없는 공간, 산술연산 안됨, 비교연산(=, >) 안됨
--  상여금(COMMISSION) 이 NULL 인 사원을 조회
-- 사원 : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE COMMISSION = NULL; -- X

-- => NULL 검색 키워드 : IS NULL
SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NULL; -- O

-- 예제 14) IS NOT NULL : NULL 이 아닌 데이터 조회
-- 상여금(COMMISSION) 이 NOT NULL 인 사람 조회
SELECT * FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL;
