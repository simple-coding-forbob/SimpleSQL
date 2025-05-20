-- 간단연습 : DEPT_COPY 에서 30번(DNO) 부서의 이름을(DNAME) 수정하세요 
--  DNAME : SALES -> 판매부
UPDATE DEPT
SET
    DNAME = '판매부'
WHERE DNO = 30; -- (조건)

COMMIT;