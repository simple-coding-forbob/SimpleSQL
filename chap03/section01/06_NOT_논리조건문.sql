-- 예제 5) 10번 부서(DNO) 에 소속된 사원은 제외하고(NOT) 출력하기
-- NOT : 부정
-- 1) NOT : 논리연산자
SELECT * FROM EMPLOYEE
WHERE NOT DNO = 10;

-- 2) 비교연산자 : <>(같지않다), !=(같지않다)
SELECT * FROM EMPLOYEE
WHERE DNO != 10;
