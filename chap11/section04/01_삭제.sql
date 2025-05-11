-- 23_Delete.sql
-- CRUD : select(조회)/insert(추가)/update(수정)/delete(삭제)
-- Drop table(테이블 삭제) vs Delete (데이터만 삭제)
-- 예제 1) 10번 부서를 삭제하세요
-- 사용법 : FROM 생략가능
-- DELETE FROM 테이블명
-- WHERE 컬럼명 = 값;  -- 조건
DELETE FROM DEPT_COPY
WHERE DNO = 10;

SELECT * FROM DEPT_COPY;

-- 취소/확정 결정 :
COMMIT;