-- 2) 아우터 조인 : 
-- 예제) MANAGER 를 공통컬럼으로 등호조인하되 NULL 값도 화면에 표시하세요
-- 아래 결과: NULL 값은 조인되지 않음(화면에 안보임)
-- 사용법 : SELECT 테이블1.컬럼명, 테이블2.컬럼명
--          FROM 테이블1 
--             , 테이블2 
--          WHERE 테이블1.공통컬럼 = 테이블2.공통컬럼(+)
-- (+) 컬럼 : NULL 값이 포함된 컬럼에 붙임
SELECT EM.ENAME, MA.ENAME
FROM EMPLOYEE EM
    ,EMPLOYEE MA
WHERE EM.MANAGER = MA.MANAGER(+);