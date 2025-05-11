-- 예제 9) 부서번호가(DNO) 10이거나(OR) 또는 
--             직급이(JOB) 'MANAGER' 인 사원만 출력하기
-- 비교연산자 : < , > 등
-- 논리연산자 : OR
-- 사원 테이블   : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE DNO = 10
OR    JOB = 'MANAGER';