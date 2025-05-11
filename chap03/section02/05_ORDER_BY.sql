-- 예제 15) ORDER BY : 정렬(오름차순)
-- 사원(EMPLOYEE) 테이블 오름차순 정렬하기
--  단, 월급(SALARY)으로 정렬하세요
-- 사용 : 속도저하
-- 오름차순 : 낮은것부터 큰순으로 
-- 사용법 : SELECT * FROM 테이블명
--          ORDER BY 컬럼명 ASC
-- (참고) : ASC 생략가능
SELECT * FROM EMPLOYEE
ORDER BY SALARY; -- ASC(오름차순:ASCENDING)

-- 예제 16) ORDER BY : 정렬(내림차순)
-- 사원(EMPLOYEE) 테이블 내림차순 정렬하기
--  단, 월급(SALARY)으로 정렬하세요
SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC; -- DESC(내림차순, DESCENDING), 생략불가

-- 연습 ) 사원테이블에서(EMPLOYEE) 급여는(SALARY) 내림차순으로 정렬하고,
--         급여가 동일하면 
--         사원명에 대해(ENAME) 오름차순으로 정렬하세요
-- 힌트 : ORDER BY 컬럼명 ASC, 컬럼명2 DESC ...
SELECT * FROM EMPLOYEE
ORDER BY SALARY DESC, ENAME ASC;