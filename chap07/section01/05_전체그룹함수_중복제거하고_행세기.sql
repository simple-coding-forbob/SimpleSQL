-- 예제 5)(참고) 그룹함수 DISTINCT 예약어 사용
--       직위(JOB)의 종류가 몇개인지 출력하기
-- 사원 : EMPLOYEE
-- 중복제거 예약어 : DISTINCT 
-- 사용법) COUNT(DISTINCT 컬럼명)
SELECT COUNT(DISTINCT JOB)
FROM EMPLOYEE;