-- 31_뷰.sql
-- 뷰(View) : 1개 이상의 테이블이나 다른 뷰를 이용해서
--        조회가 되게하는 가상의 테이블
-- 목적? 1) 테이블 중에 일부컬럼이 보안이 적용되야 할경우
--         예) 주민번호, 패스워드, 급여
-- 예제 1) ENO(사원번호), ENAME(사원명), DNO(부서번호), JOB(직위) 
--        컬럼만 화면에 출력하는 뷰생성
-- 사용법) CREATE OR REPLACE VIEW 뷰이름(컬럼명, 컬럼명2,...)
--         AS
--         SELECT 문장;
CREATE OR REPLACE VIEW VW_EMPLOYEE(ENO, ENAME, DNO, JOB)
AS
SELECT ENO, ENAME, DNO, JOB
FROM EMPLOYEE;

-- 뷰 2 생성 : 뷰이름 뒤에 컬럼명 생략가능
CREATE OR REPLACE VIEW VW_EMPLOYEE
AS
SELECT ENO, ENAME, DNO, JOB
FROM EMPLOYEE;

-- 오라클 DB 에서 미리 만들어둔 뷰(딕셔너리 뷰): 관리자용
SELECT * FROM VW_EMPLOYEE; -- 뷰 조회