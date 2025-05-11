--  간단연습 1: 부서(DEPARTMENT) 테이블에서 DNO(부서번호) 가
--            20보다 큰 부서만 출력하세요
-- 전체 출력 : * 
SELECT * FROM DEPARTMENT 
WHERE DNO > 20;

-- 간단연습 2: 사원(EMPLOYEE) 테이블에서 DNO(부서번호) 10 인
--         사원을 찾아 전체 출력하세요
-- 전체 출력 : * 
-- 힌트 : =(같다)
SELECT * FROM EMPLOYEE
WHERE DNO = 10;

-- 간단연습 3: 사원테이블에서 월급이 5000 인 사람의 이름을 출력하세요
-- 사원 테이블   : EMPLOYEE
-- 월급 컬럼     : SALARY
-- 출력 컬럼     : 사원명(ENAME)
-- 힌트 : =(같다)
SELECT ENAME FROM EMPLOYEE
WHERE SALARY = 5000;