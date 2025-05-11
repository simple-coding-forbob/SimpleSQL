-- 간단연습 1: 대문자/소문자로 지시된 문자열을 바꾸세요
--  'Java'
SELECT UPPER('Java') AS 대문자
      ,LOWER('Java') AS 소문자
FROM DUAL;

-- 간단연습 2: 사원테이블에서(EMPLOYEE) 사원명(ENAME)의 
--        값들을 소문자로 출력하고,
--        직위(JOB) 은 첫글자만 대문자로 출력하세요
-- 힌트) SELECT UPPER(컬럼명) FROM 테이블명 => 대문자로 바뀜
SELECT LOWER(ENAME) AS 소문자
      , INITCAP(JOB) AS 첫글자대문자
FROM EMPLOYEE;