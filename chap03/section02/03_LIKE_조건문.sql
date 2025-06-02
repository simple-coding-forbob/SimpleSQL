-- 예제 10) (*****) 예약어 LIKE 검색
-- 의미 : 일부 키워드만 사용해서 비슷한 것들을 모두 조회하기
-- 이름이(ENAME) 'F' 로 시작하는 사원 조회하기(전체조회:*)
-- 사용법 : SELECT * FROM 테이블명
--          WHERE 컬럼명 LIKE '%문자%';
--     % 의미 : 아무 글자나 올 수 있음을 의미
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE 'F%';

-- 예제 11) 이름의 두번째 글자가 'A' 인 사원 조회하기
-- LIKE 기호 : % (어떤 문자열을 의미)
--             _ (어떤 1문자을 의미)
SELECT * FROM EMPLOYEE
WHERE ENAME LIKE '_A%';