-- 1-6) LPAD / RPAD 함수 : 
--    컬럼에 어떤 문자를 왼쪽/오른쪽에 붙이기 함수
-- 사용법) 왼쪽 채움 : LPAD(컬럼명, 고정자리수, '채울문자')
SELECT LPAD(SALARY, 10, '*') FROM EMPLOYEE;

-- 사용법) 오른쪽 채움 : RPAD(컬럼명, 고정자리수, '채울문자')
SELECT RPAD(SALARY, 10, '*') FROM EMPLOYEE;