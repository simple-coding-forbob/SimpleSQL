-- 4) 평균 급여가(SALARY) 가장 적은(MIN) 사원의 담당 업무(JOB)를 찾아
--    직급과(JOB) 평균(AVG) 급여를(SALARY) 표시하세요.
--  (설명) == (담당 업무별 평균 급여가 가장 적은) 사람을 찾아
--    직급과 평균 급여를 표시하세요.
-- 단, 소수점 나오면 반올림하기(첫째자리에서)
-- 4-1) 담당 업무별 평균 급여를 구한 후 그 중에서 평균급여가 가장 적은 급여
--  SELECT MIN(ROUND(AVG(SALARY))) ~ 
SELECT MIN(ROUND(AVG(SALARY)))
FROM EMPLOYEE
GROUP BY JOB;

-- 4-2) 그 급여에 해당되는 직급(JOB), 평균급여(AVG(SALARY))를 출력 : 1038
SELECT JOB, ROUND(AVG(SALARY))
FROM EMPLOYEE
GROUP BY JOB
HAVING ROUND(AVG(SALARY)) = (SELECT MIN(ROUND(AVG(SALARY)))
                            FROM EMPLOYEE
                            GROUP BY JOB);



-- 5) (각 부서의 최소(MIN) 급여(SALARY))를 받는
--   사원의 이름(ENAME), 급여(SALARY), 부서번호(DNO)를 표시하세요.
-- 5-1) 각 부서의(부서별) 최소(MIN) 급여(SALARY) : 950, 1300, 800
SELECT MIN(SALARY)
FROM EMPLOYEE
GROUP BY DNO;

-- 5-2) (950, 1300, 800) 급여를(SALARY 받는 사원의
--    이름(ENAME), 급여(SALARY), 부서번호(DNO)를 표시
SELECT ENAME, SALARY, DNO
FROM EMPLOYEE
WHERE SALARY IN (SELECT MIN(SALARY)
                    FROM EMPLOYEE
                    GROUP BY DNO);


-- 6) 매니저가(MANAGER) 없는 사원의 이름을(ENAME) 표시하세요.
-- 6-1) 매니저가(MANAGER) 없는 사원의 사원번호(ENO) : 7839
SELECT ENO
FROM EMPLOYEE
WHERE MANAGER IS NULL; 

-- 6-2) 그 사람의 이름을(ENAME) 화면에 출력 : 7839
SELECT ENAME
FROM EMPLOYEE
WHERE ENO = (SELECT ENO
            FROM EMPLOYEE
            WHERE MANAGER IS NULL);