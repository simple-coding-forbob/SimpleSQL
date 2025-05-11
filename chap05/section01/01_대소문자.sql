-- 07_오라클함수1.sql
-- 함수 : 어떤 기능을 나타낸것, 예) 최대값 구해주기 등 
-- 1) 문자 함수
-- 1-1) 대/소문자/첫글자대문자 변환 함수
-- 사용법 : UPPER('문자열'), UPPER(컬럼명) - 대문자
--         LOWER('문자열'), LOWER(컬럼명) - 소문자
--         INITCAP('문자열'), INITCAP(컬럼명) - 첫글자대문자
 SELECT 'Oracle mania' 
      , UPPER('Oracle mania') AS 대문자
      , LOWER('Oracle mania') AS 소문자
      , INITCAP('Oracle mania') AS 첫글자대문자
FROM DUAL;
