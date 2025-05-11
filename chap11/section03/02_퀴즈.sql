-- 간단연습 : DEPT_COPY 에서 40 번 부서의(DNO) 
--           부서명을(DNAME) '운영부'
--          , 부서위치를(LOC) '대구' 로 수정하세요
UPDATE DEPT_COPY
SET
    DNAME   = '운영부'
    ,LOC    = '대구'
WHERE DNO = 40; -- (조건)

COMMIT;