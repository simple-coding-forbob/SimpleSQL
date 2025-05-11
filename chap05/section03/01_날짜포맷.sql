-- 09_오라클함수3.sql
-- 자료형 변환 함수(*)
-- DB 자료형 : 문자열 표시 : ''(홑따옴표)
--             숫자       : 1 (그냥 사용)
-- 정리 :  (컬럼(제목)) 자료형 : 
--         1) 문자열(*) : VARCHAR2(가변문자열)
--                      , CHAR(고정문자열)
--         2) 숫자(*)   : NUMBER(실수, 정수, 자연수 등)
--         3) 날짜      : DATE
--         기타         : CLOB(큰 문자열), BLOB(이미지 저장)
-- 1) 날짜자료형 -> 문자자료형으로 변환 함수 : TO_CHAR(컬럼명, '날짜포맷')
-- 날짜포맷 : 예) 'YYYY-MM-DD HH24:MI:SS'
--            YYYY(년도(YEAR, 4자리)), YY(년도(2자리))
--            MM(월(MONTH, 2자리))
--            DD(일(DAY, 2자리))
--            HH(시(HOUR, 1~12까지 시간, 2자리))
--            HH24(시(HOUR, 1~24까지 시간, 2자리))
--            MI(분(MINUTE, 2자리))
--            SS(초(SECOND, 2자리))
SELECT ENAME, HIREDATE
    ,TO_CHAR(HIREDATE, 'YYYY-MM-DD HH24:MI:SS') AS 날짜
    ,TO_CHAR(HIREDATE, 'YYYY/MM/DD HH24/MI/SS') AS 날짜
FROM EMPLOYEE;