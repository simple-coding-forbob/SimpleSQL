-- 예제 1) sql 에서 컬럼(열)에 산술연산을(+,-,*,/)  할 수 있습니다.
--      참고 : %(나머지 연산자 없음)
--        부서번호(DNO) * 10 화면 출력
--     부서 : DEPARTMENT
SELECT DNO * 10 FROM DEPARTMENT;

-- 예제 2) 사원테이블에서 COMMISSION(보너스, 인센티브, 상여금) 을 더한 연봉 구하기
--  사원 :  EMPLOYEE
--  SALARY(월급), ENAME(사원명)
--  주의점) 1) 컬럼끼리 사칙연산 또는 숫자와 사칙연산 가능하나
--              null 인 값은 사칙연산이 안되고 결과는 null 이 됨
--          2) null : 아무것도 없는 것(공간)
SELECT ENAME, SALARY * 12 + COMMISSION, SALARY *12, COMMISSION FROM EMPLOYEE;

-- 예제 3) 4번 개선 COMMISSION(보너스) 컬럼의 값에 null 이 포함되어 산술연산이 안됨 
--   sql 함수 : 사용법) NVL(컬럼, 바꿀값) => null 값을 바꿀값으로 대체함
SELECT ENAME, SALARY * 12 + NVL(COMMISSION,0) FROM EMPLOYEE;

-- 예제 4) 위의 테이블 제목 정보가 너무 길어서 짧게 바꾸시오 
-- 컬럼(열) 의 별칭(별명) : 
-- 사용법 ) SELECT 컬럼명 AS 별명 FROM 테이블명;
SELECT ENAME, SALARY * 12 + NVL(COMMISSION,0) AS 연봉 FROM EMPLOYEE;

-- (참고) 컬럼 별명 2 : 
-- 사용법 ) SELECT 컬럼명 AS "별 명" FROM 테이블명;
SELECT ENAME, SALARY * 12 + NVL(COMMISSION,0) AS "연 봉" FROM EMPLOYEE;