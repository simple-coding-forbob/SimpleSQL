-- 예제 2) 위에서 만든 usertest01 유저에 접속 권한을 주세요
-- DCL: 권한을 주고 뺒는 명령어들
-- 사용법) GRANT 권한명 TO 유저명;
--  CREATE SESSION : 접속 권한
GRANT CREATE SESSION TO usertest01;
-- CREATE TABLE : 테이블 생성 권한
GRANT CREATE TABLE TO usertest01;
-- UNLIMITED TABLESPACE : 하드디스크 사용 권한(무한) 
GRANT UNLIMITED TABLESPACE TO usertest01;