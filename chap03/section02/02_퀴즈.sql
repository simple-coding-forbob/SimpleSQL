-- 간단연습 : 부서번호가(DNO) 10 이거나 20 인 사원들 조회하기(전체조회: *)
--        단, IN 예약어 사용하세요
-- 사원 테이블 : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE DNO IN (10,20);

-- 간단연습 9) NOT IN ()
-- 부서번호가(DNO) 10 이거나 20 이 아닌 사원들 조회하기(전체조회: *)
-- 사원 : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE DNO NOT IN (10, 20);
