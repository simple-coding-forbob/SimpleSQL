-- 간단연습 7) 부서테이블(DEPARTMENT) 에서 부서번호(DNO) 30이고,
--             DNAME(부서명) 이 SALES 인 부서를 출력하세요
-- 부서 테이블   : DEPARTMENT
SELECT * FROM DEPARTMENT
WHERE DNO = 30
AND   DNAME = 'SALES';

-- 간단연습 8) 급여가(SALARY) 1000 과 1500 사이의 사원 조회하기(전체 조회 : *)
-- 사원 테이블   : EMPLOYEE
-- 힌트 : 급여가(SALARY) 1000 보다 크고 급여가(SALARY) 1500 보다 작은 사원
SELECT * FROM EMPLOYEE
WHERE SALARY >= 1000
AND   SALARY <= 1500;