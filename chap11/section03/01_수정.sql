-- CRUD : Select(조회)/Insert(추가)/Update(수정)
-- 수정
-- 사용법 : 어떤 조건에 해당되는 값만 수정함
-- UPDATE 테이블명
-- SET
--     컬럼명   = 수정될값
--     ,컬럼명2 = 수정될값2
--     ...
-- WHERE 컬러명 = 값; -- (조건)
UPDATE DEPT_COPY
SET
    DNAME = '연구소'
WHERE DNO = 20;

-- 취소/확정 결정 : 결과를 다른 사람이 볼 수 있음
COMMIT;