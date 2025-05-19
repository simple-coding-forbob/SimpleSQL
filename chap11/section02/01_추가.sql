-- CRUD : select(조회)/Insert(추가)
-- DML: CRUD 명령어
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
-- 트랜잭션: DML 명령어를 실행해서 COMMIT/ROLLBACK 되기까지의 작업을 말합니다.
-- COMMIT/ROLLBACK 되는 순간을 1 트랜잭션이라고 합니다.
-- TCL: 트랜잭션 명령어들
-- 취소 : ROLLBACK;
ROLLBACK;

-- 확정 : COMMIT;
COMMIT;

-- SQLD 대비
-- ACID : 트랜잭션 작업은 1) DB에 모두 반영되던가 아니면 모두 취소되어야 합니다.(A: 원자성)
--                     예) 돈을 100원 넣었습니다.
--                         돈을 200원 넣었습니다.
--                         DB 에 문제가 발생하면 모든 COMMIT 전 작업은 취소되어야 합니다. 이렇게 관리해야 예외없이 깔끔합니다.
--                     2) 커밋되기 전에는 항상 커밋되기 전 데이터를 일관성있게 보여주는 것을 보장합니다.(C:일관성)
--                       예) 다른사람이 INSERT 후 커밋하기 전에는 다른 사람의 작업이 일관성 있게 보이지 않게 합니다.
--                           어떤 행을 UPDATE 수정시 다른사람이 같은 행을 수정하지 못하게 합니다.(행 락: DML LOCK) 
--                     3) 커밋 전에 작업을 다른 사람이 보게해서 그 사람에 작업에 방해를 하거나 영향을 미치면 안됩니다.(I:독립성)
--                       예) 커밋되기 전 INSERT 작업은 자기만 볼수 있게하고 다른 사람은 작업을 볼 수 없게 해야 합니다.
--                     4) 커밋되면 영구적으로 반영되어야 합니다.(D: 지속성)
--                       예) COMMIT/ROLLBACK을 하면 모든 작업은 메모리말고 문서(파일)에 저장되어서 관리되어야 합니다.

-- SAVEPOINT
INSERT INTO DEPT_COPY(DNO, DNAME, LOC)
VALUES(10, '회계부', '뉴욕');

-- 사용법) SAVEPOINT 이름;
SAVEPOINT A;

INSERT INTO DEPT_COPY(DNO, DNAME, LOC)
VALUES(10, '회계부2', '뉴욕2');

-- 확인 :
SELECT * FROM DEPT_COPY;

-- 세이브포이트 뒤에 실행된 명령만 취소됨
-- 사용법) ROLLBACK TO SAVEPOINT 이름;
ROLLBACK TO SAVEPOINT A;

ROLLBACK;



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