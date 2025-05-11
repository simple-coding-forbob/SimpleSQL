-- 연습 1) 입사일(HIREDATE)을 날짜포맷 'YYYY-MM-DD HH24:MI:SS' 
--        에 맞게 출력
-- TO_CHAR(날짜컬럼, '날짜포맷') : 날짜 -> 문자로 바꾸는 함수 사용
-- 사원테이블 : EMPLOYEE
SELECT TO_CHAR(HIREDATE, 'YYYY-MM-DD HH24:MI:SS')
FROM EMPLOYEE;

-- 연습 2) 올해 며칠이 지났는지 출력하시오. 
--    현재 날짜에서 올해 1월1일을 뺀 결과를 출력하고 
--    TO_DATE 함수를 사용하여 데이터 형을 일치시켜서 연산하세요
-- 힌트) 현재날짜(SYSDATE) - TO_DATE('2024/01/01', 'YYYY/MM/DD') (날짜로 변환)
-- 단, 포맷은 'YYYY/MM/DD' (참고), 버림 적용(TRUNC())
SELECT TRUNC(SYSDATE - TO_DATE('2024/01/01', 'YYYY/MM/DD'))
FROM DUAL;

-- 연습 3) 사원들의(EMPLOYEE) 매니저(MANAGER) 사번을(ENO) 출력하되 매니저가 없는 
--    사원에 대해서는 NULL값 대신에 0을 출력하세요. ( NVL함수 사용하라, 전체출력 )
-- 화면 출력 : select 위치에 작성
-- 함수 사용 위치 : select 다음 작성 , where 절 에 가능
-- 힌트) 출력컬럼 : ENO, NVL(MANAGER,숫자)
--       NVL(컬럼, 숫자[문자])
SELECT ENO, NVL(MANAGER, 0) FROM EMPLOYEE;