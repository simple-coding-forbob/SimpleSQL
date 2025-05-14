-- 간단연습 ) 사원테이블(EMPLOYEE)에 MANAGER(관리자) 컬럼이 있습니다.
--           관리자가(MANAGER) NULL 인 사원을 출력하세요
-- 답 : 사장님
SELECT * FROM EMPLOYEE
WHERE MANAGER IS NULL;