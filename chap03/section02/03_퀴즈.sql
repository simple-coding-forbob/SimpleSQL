-- 간단연습 ) 이름에(ENAME) 'M' 이 포함된 사원 조회하기
-- 힌트 : %문자%
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%M%';

-- 간단연습 2) 이름이 'N' 으로 끝나는 사원 조회하기(전체 조회)
-- 사원 : EMPLOYEE
-- 힌트 : '%문자'
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '%N';