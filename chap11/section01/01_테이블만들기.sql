-- 20_테이블만들기.sql
-- DBA(DB 관리자) : 서로 업무별로 나누어져 있음
-- => 테이블만들기, 권한, 유저 생성 등, 개발자 sql 튜닝
-- 개발자 : select , insert , update , delete, 테이블설계
-- 테이블만들기 : DDL문(데이터 정의어, Data Definition Language)
-- 실무 용어(DML): C(Create,생성(insert)) 
--                R(Read  ,조회(select))
--                U(Update,수정(update))
--                D(Delete,삭제(delete))

-- 테이블 : DB 에 자료를 저장하는 최소단위, 이름 중복금지
-- 예제 1) 테이블 생성 : Dept (부서)
-- DB 자료형 : (복습) 
--   1) 문자열 : VARCHAR2(자리수) , CHAR(자리수)
--      => 최대자리수 : 4000
--   2) 숫자   : NUMBER(자리수,소수점자리수), NUMBER
--   3) 날짜   : DATE
--   DB 에 저장되면 : 하드디스크 (쌈)
-- 사용법 : CREATE TABLE 테이블명 (
--           컬럼명 자료형(자리수),
--           ...
--          );
CREATE TABLE DEPT (
    DNO NUMBER(2),
    DNAME VARCHAR2(14),
    LOC   VARCHAR2(13)
);

-- 예제 2) 사원테이블 : EMP
CREATE TABLE EMP (
    ENO   NUMBER(4),
    ENAME VARCHAR2(10),
    JOB   VARCHAR2(9),
    MANAGER  NUMBER(4),
    HIREDATE DATE,
    SALARY NUMBER(7,2),
    COMMISSION NUMBER(7,2),
    DNO NUMBER(2)
);