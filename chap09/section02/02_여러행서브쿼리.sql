-- 3) 다중행 서브쿼리 : 결과가 여러건이 출력되는 서브쿼리
--   => 비교연산자(X) => IN 예약어
-- 예제4) (1)부서별 최소 급여를 받는 사원 중에서 (2) 사원번호와 이름을 출력하세요
-- (1) 부서별(DNO) 최소 급여(MIN(SALARY)) : 950 , 1300, 800
SELECT MIN(SALARY)
FROM EMPLOYEE
GROUP BY DNO;

-- (2) 그 값들 중에서 같은 급여를 받는 사원번호, 이름 출력 : 
SELECT ENO, ENAME
FROM EMPLOYEE
WHERE SALARY IN (SELECT MIN(SALARY)
                FROM EMPLOYEE
                GROUP BY DNO);