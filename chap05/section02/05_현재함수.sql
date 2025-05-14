-- 날짜 함수 : 1) 현재 날짜 보기(*****) : SYSDATE
SELECT SYSDATE FROM DUAL;

-- 예제 ) 오늘, 어제, 내일 날짜를 출력해 보세요
-- 날짜 : 산술연산이 가능 (+,- 등)
SELECT SYSDATE     AS 오늘
     , SYSDATE - 1 AS 어제
     , SYSDATE + 1 AS 내일
FROM DUAL;

-- 예제 2) 사원테이블에서 근무일수 계산해서 조회하기
-- 공식 : 현재날짜 - 입사일(HIREDATE) : 근무일수
-- 사원 : EMPLOYEE
SELECT ROUND(SYSDATE - HIREDATE) FROM EMPLOYEE;
