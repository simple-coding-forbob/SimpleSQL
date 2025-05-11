-- 인덱스 : INDEX 
-- 용도 : 컬럼에 생성해서 조회속도를 높임

-- 예제 3) 어떤 사이트에서 조회시 이름검색이(ENAME) 많다고 합니다.
-- 그런데 속도가 많이 느리다고 합니다. 인덱스를 생성해주세요
-- 사용법) CREATE INDEX 인덱스명 ON 테이블명(컬럼명);
-- 이름 조회 :
-- SELECT * FROM EMPLOYEE
-- WHERE ENAME LIKE 'SCOTT%'; -- 속도 느림

CREATE INDEX IX_EMPLOYEE_ENAME ON EMPLOYEE(ENAME);