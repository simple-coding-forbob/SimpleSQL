-- 예제 8) 부서번호별(DNO), 직위별(JOB) 급여(SALARY) 총액(SUM) 구하기
-- 사원 : EMPLOYEE
-- 힌트 : GROUP BY DNO, JOB
SELECT DNO
      ,JOB
      ,SUM(SALARY)
FROM EMPLOYEE
GROUP BY DNO, JOB;