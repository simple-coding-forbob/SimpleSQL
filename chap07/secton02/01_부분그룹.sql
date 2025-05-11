-- 2) 부분 데이터 집계하는 그룹함수 : GROUP BY (예약어)
-- 사용법 : SELECT 그룹핑컬럼1
--                ,그룹핑컬럼2
--                ...
--       , AVG(컬럼)
--         FROM 테이블명
--         GROUP BY 그룹핑컬럼1, 그룹핑컬럼2, ...
--         HAVING AVG(컬럼) >= 값;
--   특징 : 1) 그룹핑컬럼 : 그룹(같은 데이터 끼리 뽑아냄을 의미)
--          2) 같은 데이터끼리 뽑아내서 그 개수가 몇개인가? COUNT
--             같은 데이터끼리 뽑아내서 그 합계가 얼마인가? SUM
--          3) 그룹핑 컬럼은 SELECT 에서 그룹함수와 사용가능 
-- 예제 7) 소속 부서(번호)별(DNO) 평균 급여를(SALARY) 부서번호와 함계 출력
-- 평균 : 버림(절삭)
SELECT DNO
      , TRUNC(AVG(SALARY))  AS 평균급여
FROM EMPLOYEE
GROUP BY DNO;