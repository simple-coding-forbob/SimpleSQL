-- 1-2) 문자열의 길이를 출력하는 함수 : LENGTH('문자열'), LENGTH(컬럼명)
SELECT LENGTH('Oracle mania')
      ,LENGTH('오라클 매니아')
FROM DUAL;

-- 간단연습 3 : 사원테이블에서(EMPLOYEE) 사원명(ENAME) 의 값의 각 길이를 화면에 출력하세요
SELECT LENGTH(ENAME), ENAME FROM EMPLOYEE;