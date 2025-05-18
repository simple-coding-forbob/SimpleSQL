-- 간단연습 ) 사원번호가 7499 인 사원들에 소속된 부서정보를 모두 출력하세요
-- 단, 테이블 별명을 이용해서 조인하세요
-- 사원 : EMPLOYEE
-- 부서 : DEPARTMENT
SELECT D.*
FROM EMPLOYEE   E
    ,DEPARTMENT D
WHERE E.DNO = D.DNO
AND   E.ENO = 7499;