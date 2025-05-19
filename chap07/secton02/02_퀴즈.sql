-- 예제 8) 부서번호별(DNO), 직위별(JOB) 데이터 건수(COUNT)  구하기
-- 사원 : EMPLOYEE
-- 힌트 : GROUP BY DNO, JOB
SELECT DNO
      ,JOB
      ,COUNT(*)
FROM EMPLOYEE
GROUP BY DNO, JOB;