-- 28_제약조건_연습문제.sql
--— 1) EMPLOYEE 테이블의 구조를 복사하여 EMP_SAMPLE 란 
--     이름의 테이블을 만드시오.
--—   사원 테이블의 사원번호 컬럼(ENO)에 
--     테이블 레벨로 PRIMARY KEY 제약조건을 지정하되,
--—   제약 조건 이름은 PK_MY_EMP 하시오.
-- 1-1) 복사본 : 제약조건 복사 안됨(기본키,외래키 직접 생성해야 함)
-- 힌트) 사용법 : CREATE TABLE 테이블명 
--               AS 
--               SELECT * FROM 원본테이블명
--               WHERE 1=2;
-- 사용법) ALTER TABLE 테이블명
--        ADD CONSTRAINT 제약조건명 PRIMARY KEY(컬럼)
CREATE TABLE EMP_SAMPLE 
AS 
SELECT * FROM EMPLOYEE
WHERE 1=2;

ALTER TABLE EMP_SAMPLE
ADD CONSTRAINT PK_MY_EMP PRIMARY KEY(ENO);

--— 2) DEPARTMENT 테이블의 구조를 복사하여 
--     DEPT_SAMPLE 란 이름의 테이블을 만드시오.
--—   부서번호 컬럼(DNO)에 PRIMARY KEY 제약조건을 지정하되,
--—   제약 조건 이름은 PK_MY_DEPT 하시오.
-- 1-1) 복사본 : 제약조건 복사 안됨(기본키,외래키 직접 생성해야 함)
CREATE TABLE DEPT_SAMPLE 
AS 
SELECT * FROM DEPARTMENT
WHERE 1=2;

ALTER TABLE DEPT_SAMPLE
ADD CONSTRAINT PK_MY_DEPT PRIMARY KEY(DNO);

