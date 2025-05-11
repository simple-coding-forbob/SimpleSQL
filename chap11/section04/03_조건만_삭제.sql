-- (참고) DELETE 에 서브쿼리(SQL 안에 SQL) 사용하기 : 고급
-- 예제 2) 영업부에(SALES) 에 근무하는 사원(부서번호:DNO) 삭제하기
-- 1) 영업부에(SALES)(DNAME) 근무하는 사원의 부서번호(DNO) : 30
SELECT DNO
FROM DEPARTMENT
WHERE DNAME = 'SALES';

-- 2) 30번 부서에 해당하는 부서 삭제하기
DELETE DEPT_COPY
WHERE DNO = (SELECT DNO
            FROM DEPARTMENT
            WHERE DNAME = 'SALES');  -- 조건

ROLLBACK;   -- 취소