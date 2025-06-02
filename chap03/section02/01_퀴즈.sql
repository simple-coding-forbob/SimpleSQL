-- 간단연습 13) 부서번호(DNO)가 10 ~ 20 번 사이에 있는 
--          사원들을 출력하세요(전체조회: *), 단 BETWEEN ~ AND 사용하세요
-- 사원 : EMPLOYEE
SELECT * FROM EMPLOYEE
WHERE DNO BETWEEN 10 AND 20;

-- 연습) 1982 년에 입사한(HIREDATE) 사원 조회하기
-- 단 BETWEEN ~ AND 사용해서 작성하세요
-- 사원 : EMPLOYEE
-- 힌트 : '1982' => 82/01/01 ~ 82/12/31
SELECT * FROM EMPLOYEE
WHERE HIREDATE BETWEEN '82/01/01' AND '82/12/31';