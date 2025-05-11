-- 예제 3) 권한들의 집합 == ROLE(롤, 역할)
-- 1) Role(롤) 종류
--    1-1) 접속 권한들의 집합 : CONNECT 
--    1-2) 테이블,인덱스,함수등을 사용할수 있는 권한집합 : RESOURCE 
--    1-3) View 생성 권한 : CREATE VIEW 권한
GRANT CONNECT, RESOURCE, CREATE VIEW TO usertest01;