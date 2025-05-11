-- 3) 문자자료형 -> 날짜자료형 변환하는 함수 : TO_DATE(문자, '날짜포맷')
SELECT ENAME, HIREDATE
FROM EMPLOYEE
WHERE HIREDATE = TO_DATE('19810220','YYYYMMDD'); -- 오라클에서 자동으로 날짜형으로 변환함