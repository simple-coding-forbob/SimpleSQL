-- oracleXE는 아래 명령어 실행할것 : 모든 명령어 실행 가능하게 하는 것
-- 이름앞에 접두어를 붙여야하는데 안붙여도 실행하게 만들어 주는 명령어: c##계정명
ALTER SESSION SET "_ORACLE_SCRIPT"=true;

-- 주석 : CTRL + /
-- 예제1) 계정만들기
-- 사용법 : 
-- CREATE USER 계정명 IDENTIFIED BY 암호
-- DEFAULT TABLESPACE 작업공간(USERS)
-- TEMPORARY TABLESPACE 임시공간(TEMP);
CREATE USER SCOTT IDENTIFIED BY "!Ds1234567890"
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- 예제2) 권한 부여 : 접속, DB 테이블 사용권한 
-- 나중 자세히 권한 설명 : 챕터 따로 있음
-- 사용법) GRANT 권한명,권한명2... TO 계정명;
GRANT CONNECT, RESOURCE, CREATE VIEW TO SCOTT;
GRANT UNLIMITED TABLESPACE TO SCOTT;