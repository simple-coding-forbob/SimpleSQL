
SELECT ENAME, SALARY
FROM EMPLOYEE
WHERE SALARY > (SELECT SALARY
                FROM   EMPLOYEE
                WHERE ENAME = 'SCOTT');