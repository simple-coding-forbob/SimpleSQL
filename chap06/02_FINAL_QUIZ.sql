SELECT ENO, ENAME, JOB, SALARY
      ,DECODE(JOB, 'ANALYST', SALARY + 200
                 , 'SALESMAN',SALARY + 180
                 , 'MANAGER', SALARY + 150
                 , 'CLERK'   , SALARY + 100
                 , SALARY
      )                       AS 급여인상
FROM EMPLOYEE;

SELECT ENAME
      , TRUNC(SALARY / 21.5, 2) AS 하루급여
FROM EMPLOYEE;