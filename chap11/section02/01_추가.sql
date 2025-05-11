-- CRUD : select(조회)/Insert(추가)
-- 예제 1) DEPT_COPY 테이블을 만들고 INSERT 로 데이터를 추가하세요
-- DEPT_COPY 테이블 : 테이블 복사(데이터 제외)
CREATE TABLE DEPT_COPY
AS
SELECT * FROM DEPARTMENT
WHERE 1=2;

-- 사용법 :
-- INSERT INTO 테이블명(컬럼명, 컬럼명2...)
-- VALUES(값, 값2...);
INSERT INTO DEPT_COPY(DNO, DNAME, LOC)
VALUES(10, '회계부', '뉴욕');

-- 확인 :
SELECT * FROM DEPT_COPY;

-- 데이터 넣기(추가) : 1번째 (현재 접속한 사람만 확인)
-- 취소 : ROLLBACK;
ROLLBACK;

-- 확정 : COMMIT;
COMMIT;

-- 연습용 사원 테이블 복사(데이터 제외) : EMP_COPY
-- EMPLOYEE
CREATE TABLE EMP_COPY
AS
SELECT * FROM EMPLOYEE
WHERE 1=2;

-- 예제 2) EMP_COPY 테이블에 데이터 입력하기
--  ENO - 7000, 
--  ENAME - 'CANDY', 
--  JOB - 'MANAGER',
--  HIREDATE - '2012/05/01', 
--  DNO - 10
INSERT INTO EMP_COPY(ENO,ENAME,JOB,HIREDATE,DNO)
VALUES(7000, 'CANDY','MANAGER','2012/05/01', 10);

-- 조회
SELECT * FROM EMP_COPY;

COMMIT;

-- (참고) INSERT INTO 테이블명(컬럼...)
--        VALUES(값...)
-- 컬럼명 생략기능 : INSERT 시 전체 컬럼일 경우 생략가능
-- INSERT INTO 테이블명
--        VALUES(값...)
INSERT INTO DEPT_COPY
VALUES(60,'개발부2', '서울');