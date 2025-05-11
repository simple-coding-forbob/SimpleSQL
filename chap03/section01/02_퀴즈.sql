-- 간단연습 4) : 사원명(ENAME) 이 ALLEN 인 사원의 정보를 출력하세요
-- 사원 테이블   : EMPLOYEE
-- 전체 출력 : * 
SELECT * FROM EMPLOYEE
WHERE ENAME = 'ALLEN';

-- 간단연습 5) JOB(직위) 이 CLERK 인 사원을 출력하세요 (전체출력)
-- 사원 테이블   : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE JOB = 'CLERK';