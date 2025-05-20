-- 예제 2) 컬럼 값을 여러개 수정
--    10 번 부서의(DNO) 부서명을(DNAME) 'PROGRAMMING2'
--    , 부서위치를(LOC) 'SEOUL' 로 수정하세요
UPDATE DEPT
SET
    DNAME = 'PROGRAMMING2'
    ,LOC  = 'SEOUL'
WHERE DNO = 10; 

COMMIT;