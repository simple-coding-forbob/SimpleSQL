-- 예제 4) 개월 수 더하기 함수 : ADD_MONTHS(컬럼명,더할개월수)
-- 입사일에서(HIREDATE) 6개월이 지난 시점에 날짜 구하기
SELECT ENAME, HIREDATE
    ,ADD_MONTHS(HIREDATE,6)
FROM EMPLOYEE;

-- 예제 5) 날짜컬럼에서 데이터가 최초로 도래하는 요일의 날짜 출력 : NEXT_DAY(오늘날짜, '요일')
-- 오늘을 기준으로 최초로 도래하는 토요일의 날짜 구하기
SELECT SYSDATE
     ,NEXT_DAY(SYSDATE, '토요일')
FROM DUAL;

-- 예제 6) LAST_DAY(날짜컬럼)
-- 날짜컬럼의 그 달(월)의 마지막 날의 날짜를 구해주는 함수 : 30, 31, 28, 29
-- 예제 6) 입사한(HIREDATE) 날의 마지막 날짜 구하기
SELECT ENAME, HIREDATE
     ,LAST_DAY(HIREDATE)
FROM EMPLOYEE;




