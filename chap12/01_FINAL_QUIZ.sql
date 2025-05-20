
CREATE TABLE EMP_INSERT 
AS 
SELECT * FROM EMPLOYEE
WHERE 1=2;            


INSERT INTO EMP_INSERT(ENO, ENAME, JOB, MANAGER, HIREDATE, SALARY, COMMISSION, DNO)
VALUES(1, 'KTG', 'STUDENT', NULL, SYSDATE, 2700, 230, 10);

COMMIT;


-- 3) EMPLOYEE 테이블의 구조와 내용을 복사하여 
--    EMP_COPY 란 이름의 테이블을 만드세요.
-- 단, EMP_COPY 테이블이 있으면 테이블을 삭제하고 다시 만드세요
-- 테이블 삭제 사용법) DROP TABLE 테이블명
-- 힌트) CREATE TABLE ~ AS SELECT ~ ; (WHERE 필요없음)
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