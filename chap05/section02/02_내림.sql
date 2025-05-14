-- 2) 버림(내림) :  TRUNC(숫자,자리수) 또는 TRUNC(컬럼명, 자리수)
SELECT TRUNC(12.345) -- 1째자리 버림(절삭)
      , TRUNC(12.345, 1) -- 2째자리 버림(절삭)
FROM DUAL;

-- 3) 내림 :  무조건 1째자리 내림입니다.
SELECT FLOOR(12.345)
FROM DUAL;