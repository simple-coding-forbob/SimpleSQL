-- 연습 4) DECODE(CASE WHEN) 함수로 직급에(JOB) 따라 
--    급여를(SALARY) 인상하도록 하세요.
--    직급이(JOB) 'ANALYST' 이면 200, 
--    'SALESMAN' 이면 180, 'MANAGER' 이면 150
--    'CLERK' 이면 100 을 인상하세요.
-- 출력 : ENO(사원번호), ENAME(사원명), JOB(직급), SALARY(월급),
--       급여인상 
-- 사원테이블 : EMPLOYEE
-- 힌트) DECODE(JOB, 'SALESMAN', SALARY + 180 ...)
SELECT ENO, ENAME, JOB, SALARY
      ,DECODE(JOB, 'ANALYST', SALARY + 200
                 , 'SALESMAN',SALARY + 180
                 , 'MANAGER', SALARY + 150
                 , 'CLERK'   , SALARY + 100
                 , SALARY
      )                       AS 급여인상
FROM EMPLOYEE;


-- 연습 5) 사원테이블에서(EMPLOYEE) 사원들의 월 평균 근무일 수는 21.5일입니다.
--        (working day)
-- 하루 근무 시간을 8시간으로 보았을 때 
-- 사원들의 하루 급여와 시급을 계산하여 
-- 사원번호(ENO), 사원명(ENAME), 급여(SALARY), 하루급여, 시급 결과를 출력합니다.
-- 단 하루 급여는 소수점 세 번째 자리에서 버림(절삭), 
--    시급은 두 번째 소수점에서 반올림하세요
-- 공식 : 하루 급여 : 급여(SALARY) / 21.5
--       시급     : 급여 / 21.5 / 8
-- 힌트) TRUNC(급여(SALARY) / 21.5, 자리수)
--      ROUND(급여(SALARY) / 21.5 / 8, 자리수)
SELECT ENO, ENAME, SALARY
      , TRUNC(SALARY / 21.5, 2)
      , ROUND(SALARY / 21.5 / 8, 1)
FROM EMPLOYEE;