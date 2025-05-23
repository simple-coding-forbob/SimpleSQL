-- 10
SELECT JOB, ROUND(AVG(SALARY))
FROM EMPLOYEE
GROUP BY JOB
HAVING ROUND(AVG(SALARY)) = (SELECT MIN(ROUND(AVG(SALARY)))
                            FROM EMPLOYEE
                            GROUP BY JOB);



--11
SELECT ENAME, SALARY, DNO
FROM EMPLOYEE
WHERE SALARY IN (SELECT MIN(SALARY)
                    FROM EMPLOYEE
                    GROUP BY DNO);