-- 간단연습 ) 상여금을(COMMISSION) 받는 사원수 구하기
-- 상여금을 받는 사람 : 상여금이 NOT NULL 인 사람
SELECT COUNT(*) FROM EMPLOYEE
WHERE COMMISSION IS NOT NULL;