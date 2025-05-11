-- 일반 함수들 : 1) NVL() : NULL 값 -> 특정 문자로(숫자) 변경하는 함수 : NVL(컬럼명, 바꿀문자[숫자])
-- 연봉 + 보너스 구하기 : SALARY(급여) * 12 + COMMISSION(보너스)
-- 사원 : EMPLOYEE
SELECT ENAME, SALARY
     , SALARY * 12 + NVL(COMMISSION, 0)
FROM EMPLOYEE;