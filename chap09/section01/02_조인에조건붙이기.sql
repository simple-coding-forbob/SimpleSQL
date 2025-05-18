-- 예제 2) 사원번호가(ENO) 7499 또는 7900 인 사원들에 소속된 부서정보를 모두 출력하세요
-- 부서 : DEPARTMENT
-- 사원 : EMPLOYEE
-- 힌트 : 컬럼명 IN ()
-- 풀이 : 1) 등호 조인 (=)
--        2) 조건 추가 : 7499 또는 7900
SELECT E.*, D.*
FROM EMPLOYEE   E
    ,DEPARTMENT D
WHERE E.DNO = D.DNO
AND   E.ENO IN (7499, 7900);