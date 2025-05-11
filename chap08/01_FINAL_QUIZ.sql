-- 연습문제 1) 모든 사원의 급여(SALARY) 최고액, 최저액, 총액 및 평균 급여를 출력하세요.
--   컬럼의 별칭은 : 최고액, 최저액, 총액, 평균급여
--  단 실수가 나오면 반올림 해주세요(ROUND)
--  사원 : EMPLOYEE
--  힌트 : 전체 그룹함수 : sum, avg, min, max
SELECT MAX(SALARY)        AS 최고액
      ,MIN(SALARY)        AS 최저액
      ,SUM(SALARY)        AS 총액
      ,ROUND(AVG(SALARY)) AS 평균급여
FROM EMPLOYEE;

--  연습문제 2) 각 담당 업무(직위)(JOB) 유형별로 급여(SALARY) 최고액, 최저액, 
--              총액 및 평균액을 출력하세요.
--   컬럼의 별칭은 : 최고액, 최저액, 총액, 평균급여
--  단 실수가 나오면 반올림 해주세요(ROUND)
--  사원 : EMPLOYEE
--  힌트 : ~ 컬럼 별 => group by 컬럼 : 사용
SELECT JOB
      ,MAX(SALARY)        AS 최고액
      ,MIN(SALARY)        AS 최저액
      ,SUM(SALARY)        AS 총액
      ,ROUND(AVG(SALARY)) AS 평균급여
FROM EMPLOYEE
GROUP BY JOB;


--  연습문제 3) 담당업무별로(JOB) count(*) 함수를 이용하여  
--             사원 수를 출력하세요.
--  사원 : EMPLOYEE
--  힌트 : ~ 컬럼 별 => group by 컬럼 : 사용
SELECT JOB
      ,COUNT(*)
FROM EMPLOYEE
GROUP BY JOB;