-- 간단연습 : 직위별(JOB) 평균 급여를(SALARY) 출력하세요
-- EMPLOYEE
-- 평균 : 버림(절삭)
SELECT JOB
      , TRUNC(AVG(SALARY))  AS 평균급여
    --   , ENAME              -- X (일반컬럼)
FROM EMPLOYEE
GROUP BY JOB;