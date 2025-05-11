-- 예제 3) 입사일(HIREDATE) 이 '1981/01/01' 이전인(이하) 사원만 출력
-- 사원 테이블   : EMPLOYEE
-- 전체 출력 : * 
SELECT * FROM EMPLOYEE
WHERE HIREDATE <= '81/01/01';