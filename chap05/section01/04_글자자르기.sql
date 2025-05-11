-- 1-4) 문자열 자르기 : 
-- 사용법 : SUBSTR('문자열', 시작위치, 자를개수), SUBSTR(컬럼명, 시작위치, 자를개수)
-- 인덱스번호 : 1 부터 시작
-- (참고) 인덱스번호 음수이면 뒤에서 앞으로 셈
SELECT SUBSTR('Oracle mania', 4, 3) 
      ,SUBSTR('Oracle mania', -1, 1)
FROM DUAL;