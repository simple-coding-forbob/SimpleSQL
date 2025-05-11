--  연습문제 4) 관리자(MANAGER) 수를 출력하세요 
--  (MANAGER 컬럼의 데이터 개수를 나열하세요.)
--  사원 : EMPLOYEE
SELECT COUNT(MANAGER)
FROM EMPLOYEE;

--  연습문제 5) 급여(SALARY) 최고액, 급여 최저액의 차액을 출력하세요.
--  컬럼의 별칭은 "차액"으로 표기하세요
--  사원 : EMPLOYEE
-- 힌트) SELECT 최고액(급여) - 최저액(급여)
SELECT MAX(SALARY) - MIN(SALARY) AS 차액
FROM EMPLOYEE;

--  연습문제 6) 각 부서에 대해(부서번호별로)(DNO) 부서번호(DNO), 사원수(COUNT), 
--        부서 내의 모든 사원의 평균 급여를(ROUND(AVG(),2)) 출력하세요
--       (부서별 사원수, 평균급여 출력)
--  컬럼별칭을 사용해서 부서번호, 사원수,  평균급여를 출력하세요.
--  평균급여는 소수점 3째자리에서 반올림하세요
--  힌트) 부분집계 : GROUP BY 컬럼명
SELECT DNO
      ,COUNT(*)             AS 사원수
      ,ROUND(AVG(SALARY),2) AS 평균급여
FROM EMPLOYEE
GROUP BY DNO;