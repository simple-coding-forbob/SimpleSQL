-- 간단연습 9) 부서번호가(DNO) 20이거나(OR) 또는 
--             직급이(JOB) 'MANAGER' 인 사원만 출력하기
-- 비교연산자 : < , > 등
-- 논리연산자 : OR
-- 사원 테이블   : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE DNO = 20
OR    JOB = 'MANAGER';

-- 간단연습 11) 1)급여가(SALARY) 1000 미만이거나 또는 2)1500 초과인 사원 출력하기
-- 사원 테이블   : EMPLOYEE
-- 힌트 : OR 
SELECT * FROM EMPLOYEE
WHERE SALARY < 1000
OR    SALARY > 1500;