-- 권한, 롤(역할)
-- 주로 DBA 가 하는 일
-- 1) 유저 만들기
-- Oracle DB 관리자 : system(sys(최고관리자))
-- 예제 1) usertest01 유저 생성
--         패스워드 : pass1 지정
-- 사용법) CREATE USER 계정명 IDENTIFIED BY 패스워드;
CREATE USER usertest01 IDENTIFIED BY pass1;