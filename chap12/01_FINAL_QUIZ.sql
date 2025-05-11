-- 25_연습문제.sql
-- 1) EMPLOYEE 테이블의 구조만 복사하여 
--    EMP_INSERT 란 이름의 빈 테이블을 만드시오.
-- 사용법) CREATE TABLE 테이블명 
--        AS 
--        SELECT * FROM 원본테이블명
--        WHERE 1=2;             -- 거짓조건
CREATE TABLE EMP_INSERT 
AS 
SELECT * FROM EMPLOYEE
WHERE 1=2;             -- 거짓조건

-- 2) EMP_INSERT 테이블에 추가하되 SYSDATE를 이용해서 입사일을 
--    오늘로 입력하세요.
--   사용법) INSERT INTO 테이블명(컬럼명, 컬럼명2, ...)
--           VALUES(값, 값2, ...);
--   예) ENO(사번) : 1, 
--       ENAME(사원명) : 'KTG'
--      , JOB(직위): 'STUDENT',
--      MANAGER(관리자) : NULL
--     , HIREDATE(입사일) : SYSDATE, 
--      SALARY(월급): 2700
--    , COMMISSION(상여금): 230
--    , DNO(부서번호):10
INSERT INTO EMP_INSERT(ENO, ENAME, JOB, MANAGER, HIREDATE, SALARY, COMMISSION, DNO)
VALUES(1, 'KTG', 'STUDENT', NULL, SYSDATE, 2700, 230, 10);

COMMIT;


-- 3) EMPLOYEE 테이블의 구조와 내용을 복사하여 
--    EMP_COPY 란 이름의 테이블을 만드세요.
-- 단, EMP_COPY 테이블이 있으면 테이블을 삭제하고 다시 만드세요
-- 테이블 삭제 사용법) DROP TABLE 테이블명
-- 힌트) CREATE TABLE ~ AS SELECT ~ ; (WHERE 필요없음)
DROP TABLE EMP_COPY;

CREATE TABLE EMP_COPY 
AS 
SELECT * FROM EMPLOYEE;


-- 4) 사원번호가(ENO) 7788 인 사원의 부서번호를(DNO) 10번으로 수정하세요.
--   ( 대상테이블 : EMP_COPY )
-- 힌트) UPDATE 테이블명 SET 컬러명 = 값 WHERE 조건;
UPDATE EMP_COPY 
SET 
    DNO = 10 
WHERE ENO = 7788;

-- 데이터 확인
SELECT * FROM EMP_COPY;

-- 확정
COMMIT;