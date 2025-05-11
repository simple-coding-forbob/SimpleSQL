-- 3) 부분데이터 집계에서 조건절2 사용하기 : HAVING (그룹함수만 사용가능) 
-- 예제 9) 부서번호별(DNO) 최고급여가(SALARY) 3000 이상인 부서의 번호(DNO)와
--       최고급여금액 구하기
--     1) 부서번호별(DNO) 최고급여(MAX) : ?
--     2) 최고급여를 각각 비교해서 3000 이상인 값만 화면 출력
SELECT DNO
      ,MAX(SALARY)
FROM EMPLOYEE
GROUP BY DNO
HAVING MAX(SALARY) >= 3000;