-- 12_그룹함수.sql (***)
-- 그룹 함수 : 통계, 집계하는 함수, (합계, 평균,최대값 등)
-- 1) 전체 데이터 집계(그룹) 함수 :
--    특징 : 가) 항상 결과가 1건이 나옴
--           나) 그룹함수는 그룹함수 끼리 사용가능 (다른 일반컬럼과 사용 불가)
-- 사용법) SUM(컬럼명) : 총액
--         AVG(컬럼명) : 평균
--         MAX(컬럼명) : 최대값
--         MIN(컬럼명) : 최소값
--         COUNT(컬럼명) : 전체 데이터 개수
-- 예제 1) 사원들의 급여(SALARY) 총액, 평균, 최고, 최소액을 출력
SELECT SUM(SALARY) AS 총액
     , AVG(SALARY) AS 평균
     , MAX(SALARY) AS 최고액
     , MIN(SALARY) AS 최저액    
    --  , ENAME               X(일반컬럼)
FROM EMPLOYEE;

-- 예제 2) 최근에 입사한(HIREDATE) 사원과(EMPLOYEE) 
--        가장 오래전에 입사한 사원의 입사일 출력하기
-- => 최근에 입사        : 입사일이 최고값(max)
-- => 가장 오래전에 입사 : 입사일이 최저값(min)
SELECT MAX(HIREDATE) AS 최근
      ,MIN(HIREDATE) AS 오래전
FROM EMPLOYEE;

-- 예제 3) 사원들의(EMPLOYEE) 상여금(COMMISSION) 총액 출력하기
-- 사원 : EMPLOYEE
-- SUM(컬럼)
-- (참고) 자동으로 NULL 값은 제외하고 계산
SELECT SUM(COMMISSION) FROM EMPLOYEE;

-- 예제3) 사원들의(EMPLOYEE) 총인원을 출력하세요
-- 사용법) COUNT(컬럼명), COUNT(*)
-- 답 : 14명
-- 단, 그룹함수는 NULL 값 자동 제외하기때문에 총개수가 달라질수있음
SELECT COUNT(*) FROM EMPLOYEE;

-- 예제 4) 상여금을(COMMISSION) 못받는 사원수 구하기
-- 상여금을 못받는 사람 : 상여금이 NULL 인 사람
SELECT COUNT(*) FROM EMPLOYEE
WHERE COMMISSION IS NULL;

-- 예제 5)(참고) 그룹함수 DISTINCT 예약어 사용
--       직위(JOB)의 종류가 몇개인지 출력하기
-- 사원 : EMPLOYEE
-- 중복제거 예약어 : DISTINCT 
-- 사용법) COUNT(DISTINCT 컬럼명)
SELECT COUNT(DISTINCT JOB) AS 직업개수
FROM EMPLOYEE;