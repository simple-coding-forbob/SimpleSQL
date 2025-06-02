-- 간단연습 ) 이름에(ENAME) 'M' 이 포함된 사원 조회하기
-- 힌트 : %문자%
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE 'M%';

-- 예제 11) 이름의 두번째 글자가 'O' 인 사원 조회하기
-- LIKE 기호 : % (어떤 문자열을 의미)
--             _ (어떤 1문자을 의미)
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '_O%';