-- 예제 3) 부서테이블(DEPT20) BIRTH 컬럼 삭제하기
-- 사용법) ALTER TABLE 테이블명 DROP COLUMN 컬럼명;
ALTER TABLE DEPT20 DROP COLUMN BIRTH;

-- 구조 보기
DESC DEPT20;

-- 예제 4) 테이블 명 변경 : DEPT20 -> DEPT30
-- 사용법) RENAME 원본테이블명 TO 바꿀테이블명;
RENAME DEPT20 TO DEPT30;

-- 구조 보기
DESC DEPT30;