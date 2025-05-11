-- 예제 2) 컬럼 값을 여러개 수정
--    10 번 부서의(DNO) 부서명을(DNAME) 'PROGRAMMING2'
--    , 부서위치를(LOC) 'SEOUL' 로 수정하세요
UPDATE DEPT_COPY
SET
    DNAME = 'PROGRAMMING2'
    ,LOC  = 'SEOUL'
WHERE DNO = 10; -- (조건)

SELECT * FROM DEPT_COPY;

COMMIT;

-- (참고) UPDATE 문에 서브쿼리(SQL안에 SQL) 사용 (고급)
-- 예제 4) 10 번 부서의 지역명을 (20번 부서의 지역명으로) 수정하기
-- 1) 20번(DNO) 부서의 부서위치(지역명)(LOC) : DALLAS
SELECT LOC
FROM DEPT_COPY
WHERE DNO = 20;

-- 2)  10 번 부서의 지역명 수정 : DALLAS
UPDATE DEPT_COPY
SET
    LOC    = (SELECT LOC
                FROM DEPT_COPY
                WHERE DNO = 20)
WHERE DNO = 10; -- (조건)

COMMIT;

SELECT * FROM DEPT_COPY;