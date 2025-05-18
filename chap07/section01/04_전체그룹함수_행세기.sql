-- 예제 4) 상여금을(COMMISSION) 못받는 사원수 구하기
-- 상여금이 NULL 인 사람 구하기입니다.
SELECT COUNT(*) FROM EMPLOYEE
WHERE COMMISSION IS NULL;