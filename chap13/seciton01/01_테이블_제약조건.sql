-- 27_테이블_제약조건.sql
-- DDL: 테이블 만들기, 데이터/컬럼 수정하기
-- 제약조건 : 테이블에 입력될 값을 제한하는 것
-- 제약조건은 컬럼별로 각각 지정할 수 있음
-- 1) UNIQUE(유일한) 제약조건 : 유일한 값만 추가될 수 있음(중복 금지), NULL 은 허용
-- 2) NOT NULL 제약조건(*)    : 입력될 값으로 NULL 은 허용 않함
-- 사용법 : 
-- CREATE TABLE 테이블명 (
--    컬럼명 자료형(자리수) 제약조건,
--    ...
-- );

-- 예제 1) CUSTOMER 테이블을 정의하고 ID 컬럼에 UNIQUE 제약조건을 지정하세요
--    그리고, PWD, NAME 에는 NOT NULL 제약조건을 추가하세요
-- (ID       VARCHAR2(20) -> UNIQUE 제약조건 지정
--  PWD     VARCHAR2(20)
--  NAME    VARCHAR2(20)
--  PHONE   VARCHAR2(30)
-- ADDRESS VARCHAR2(1000))
-- 테이블 처음 만들때 제약조건 걸기
CREATE TABLE CUSTOMER (
 ID VARCHAR2(20) CONSTRAINT UK_CUSTOMER_ID UNIQUE,
 PWD VARCHAR2(20) NOT NULL,
 NAME VARCHAR2(20) NOT NULL,
 PHONE VARCHAR2(30),
 ADDRESS VARCHAR2(1000)
);

-- SQLD 대비
-- 테이블 만든 후에 제약조건 걸기
ALTER TABLE CUSTOMER
ADD CONSTRAINT UK_CUSTOMER_ID UNIQUE(ID);


CREATE TABLE CUSTOMER (
 ID VARCHAR2(20),
 PWD VARCHAR2(20) NOT NULL,
 NAME VARCHAR2(20) NOT NULL,
 PHONE VARCHAR2(30),
 ADDRESS VARCHAR2(1000),
 CONSTRAINT UK_CUSTOMER_ID UNIQUE(ID)
);