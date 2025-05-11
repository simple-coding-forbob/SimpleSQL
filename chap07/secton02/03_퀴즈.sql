-- 연습 1) 사원테이블에서(EMPLOYEE) JOB(직위)이 1) MANAGER 인
--       값을 제외하고 3) 급여(SALARY) 총액(SUM)이 5000 이상인
--       2) 직급별(JOB) 총액 구하기
-- 힌트 ) 
--       1) MANAGER 인 값 제외(조건1) : WHERE 컬럼 NOT LIKE '%문자%'
--       2) 직급별(JOB) 급여 총액(SUM(SALARY)) 구하기
--       3) 급여(SALARY) 총액(SUM)이 5000 이상이 사원(조건2) : HAVING
SELECT JOB
     ,SUM(SALARY)
FROM EMPLOYEE
WHERE JOB NOT LIKE '%MANAGER%'
GROUP BY JOB
HAVING SUM(SALARY) >= 5000;