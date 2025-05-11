-- 예제 2) 다른 테이블의 데이터만 복사 : 부서(DEPARTMENT)
-- 사용법 : 
-- INSERT INTO 복사될테이블명
-- SELECT * FROM 원본테이블명;
INSERT INTO DEPT_COPY
SELECT * FROM DEPARTMENT;

-- 취소/확정 결정 : COMMIT
COMMIT;