-- 예제 3) 테이블 복사 : 테스트용도
-- 원본 : DEPARTMENT 
-- 사용법 : 
-- CREATE TABLE 복사테이블명
-- AS
-- SELECT * FROM 원본테이블명;
-- CTAS : 테이블 복사를 줄여서 말합니다.
CREATE TABLE DEPT_COPY
AS
SELECT * FROM DEPARTMENT;

-- 예제 4) 테이블 복사 : 데이터는 제외하고 설계만 복사
CREATE TABLE DEPT_COPY2
AS
SELECT * FROM DEPARTMENT
WHERE 1=2;               -- 거짓조건 추가(데이터제외)