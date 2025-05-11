-- 3) PRIMARY KEY(***) : 기본키 제약조건, (약어: PK)
-- 특징 : 1) UNIQUE(유일, 중복금지) + NOT NULL(NULL 금지)
--       2) INDEX (조회속도 향상) 도 자동 생성
-- 실무) 주로 테이블 설계시 PK 는 1개는 거의 생성함
-- 사용법 :
-- CREATE TABLE 테이블명 (
--    컬럼명 자료형(자리수),
--    ...,
--    CONSTRAINT 제약조건이름 PRIMARY KEY(컬럼명)
-- );

-- 예제 2) CUSTOMER3 테이블을 정의하고 ID 컬럼에 PK 제약조건을 지정하세요
-- (ID       VARCHAR2(20)
--  PWD     VARCHAR2(20)
--  NAME    VARCHAR2(20)
--  PHONE   VARCHAR2(30)
-- ADDRESS VARCHAR2(1000))
CREATE TABLE CUSTOMER3 (
 ID VARCHAR2(20),
 PWD VARCHAR2(20),
 NAME VARCHAR2(20),
 PHONE VARCHAR2(30),
 ADDRESS VARCHAR2(1000)
);

-- 제약조건명 : PK_DEPT_COPY_DNO
-- 사용법) ALTER TABLE 테이블명
--        ADD CONSTRAINT 제약조건명 PRIMARY KEY(컬럼)
ALTER TABLE CUSTOMER3
ADD CONSTRAINT PK_CUSTOMER3 PRIMARY KEY(ID);

-- PK 테스트 : 1) UNIQUE(유일) 2) NOT NULL
-- CUSTOMER3 : INSERT (ID) 컬럼에 NULL 값을 넣기
-- 결론 : PK 때문에 에러발생
INSERT INTO CUSTOMER3(ID, PWD,NAME,PHONE,ADDRESS)
VALUES(NULL,NULL,NULL,'010-123-4567','부산시');