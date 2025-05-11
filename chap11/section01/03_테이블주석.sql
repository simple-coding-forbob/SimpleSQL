-- 예제 5) 테이블에 컬럼 설명(주석) 추가함(실무)
-- 1) 테이블 주석(설명) 달기 : 
-- 사용법 : COMMENT ON TABLE 테이블명 IS '설명';
COMMENT ON TABLE DEPT IS '부서정보';

-- 2) 컬럼 주석(설명) 달기 : 
-- 사용법 : COMMENT ON COLUMN 테이블명.컬럼명 IS '설명';
COMMENT ON COLUMN DEPT.DNO IS '부서번호';
COMMENT ON COLUMN DEPT.DNAME IS '부서명';
COMMENT ON COLUMN DEPT.LOC IS '부서위치';