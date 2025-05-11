-- 문제 1) 1)사원 테이블에서 JOB이(직위) 'MANAGER' 인 사원의 데이터를 뽑아서
--     2) ENAME(사원명)으로 오름차순 정렬하세요
-- 사원테이블 : EMPLOYEE
-- 사원명    : ENAME
-- 직위      : JOB
-- 모든 컬럼 : *
SELECT * FROM EMPLOYEE
WHERE JOB = 'MANAGER'
ORDER BY ENAME;

-- 문제 2) 1)사원테이블에서 JOB 이 'CLERK' 인 사원의 데이터를 뽑아서
-- 2) ENAME(사원명)으로 내림차순 정렬하세요
-- 힌트) ORDER BY 컬럼명 DESC[ASC]
-- 사원테이블 : EMPLOYEE
-- 사원명 : ENAME
-- 직위 : JOB
-- 모든 컬럼 : *
SELECT * FROM EMPLOYEE
WHERE JOB = 'CLERK'
ORDER BY ENAME DESC;

-- 문제 3) 덧셈 연산자를 이용하여 모든 사원에 대해서 300 의 급여 인상을
--      계산한 후 사원의 이름(ENAME), 급여(SALARY), "인상된 급여"(별명)를 출력하세요
-- 급여 인상 : 급여(SALARY) + 300
-- 힌트) 컬럼명 AS "인상된 급여"
--      조건절 없음 , 전체조회
-- 사원테이블 : EMPLOYEE
-- 사원명 컬럼: ENAME
-- 급여 컬럼: SALARY
SELECT ENAME, SALARY + 300 AS "인상된 급여"
FROM EMPLOYEE;

-- 문제4) 사원의 이름(ENAME), 급여(SALARY), 연간 총수입을 
--       총 수입이 많은 것부터 작은 순으로 출력하세요.(내림정렬)
-- ( 연간 총수입은 월급에 12를 곱한 후 $100의 상여금을 더해서 계산하세요 )
-- 힌트) 월급 * 12 + 100 AS "연간 총수입"
-- 사원테이블 : EMPLOYEE
-- (참고)SQL 명령문 실행 시점 : ORDER BY(재일 마지막에 실행됨)
SELECT ENAME, SALARY, SALARY * 12 + 100 AS "연간 총수입"
FROM EMPLOYEE
ORDER BY "연간 총수입" DESC;
