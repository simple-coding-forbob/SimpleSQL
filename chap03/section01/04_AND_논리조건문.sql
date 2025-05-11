-- 예제 4) 조건식 + 논리 연산자와 함께 사용하기
-- 논리 연산자 : AND(그리고 ***(성능좋음)), OR(또는), NOT(부정)
--  부서번호(DNO) 가 10이고(AND) 2) 직급이(JOB) 'MANAGER' 사원을 출력하세요
-- 사원 테이블   : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE DNO = 10
AND   JOB = 'MANAGER';