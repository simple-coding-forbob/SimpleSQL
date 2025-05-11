-- 26_테이블_변경.sql
-- (참고) 테이블 설계(구조)를 변경하기 : 컬럼명, 데이터형
-- 실습 테이블 : DEPT20
--      DEPARTMENT 복사
CREATE TABLE DEPT20
AS
SELECT * FROM DEPARTMENT
WHERE 1=2;              -- 거짓조건

-- 예제 1) 부서 테이블에(DEPT20) 날짜 자료형을(DATE) 가지는 BIRTH 컬럼 추가하기
-- 사용법) ALTER TABLE 테이블명 ADD(컬럼명 자료형);
ALTER TABLE DEPT20
ADD(BIRTH DATE);

-- 구조 보기
DESC DEPT20;