-- 예제 8) 예약어 : IN ()
-- 상여금(COMMISSION) 300 이거나 500 이거나 1400 인 사원 조회하기
-- 사원 : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE COMMISSION = 300
OR    COMMISSION = 500
OR    COMMISSION = 1400;

-- 개선) SQL 길이가 김 => IN 사용(*)
-- 사용법 : SELECT * FROM 테이블명
--          WHERE 컬럼명 IN (값, 값2...);
SELECT * FROM EMPLOYEE
WHERE COMMISSION IN (300, 500, 1400);

-- 예제 9) NOT IN ()
-- 상여금(COMMISSION) 300 이 아니고 500 이 아니고 1400 이 아닌 사원 조회하기
-- 사원 : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE COMMISSION NOT IN (300, 500, 1400);