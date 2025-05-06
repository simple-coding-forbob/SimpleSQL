-- 간단연습 1) 사원테이블 JOB(직위) 컬럼에 중복을 제거해서 출력하세요.
--    사원 : EMPLOYEE
--  부장 : 부서의 장(짱) MANAGER 
--     (사원 - 대리 - 과장 - 차장 - 부장 : 상무/전무/이사) 
SELECT DISTINCT JOB FROM EMPLOYEE;