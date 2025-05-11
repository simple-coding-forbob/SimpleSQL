-- 16_조인_연습문제.sql
-- 1) = 조인을 이용해서 SCOTT 사원의(ENAME)(조건) 부서번호와(DNO) 
--    부서이름을(DNAME) 출력하시오.
-- 대상 : EMPLOYEE(사원) EMP, DEPARTMENT(부서) DEP
-- 공통컬럼 : EMP.DNO = DEP.DNO
-- 힌트) 1) = 조인 : EMPLOYEE(사원) EM, DEPARTMENT(부서) DE
--       2) AND EM.ENAME = 'SCOTT'
SELECT DE.DNO, DE.DNAME
FROM   EMPLOYEE   EM
      ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO
AND   EM.ENAME = 'SCOTT';


-- 2) 모든 사원의 사원이름과(ENAME) 그 사원이 소속된 부서이름(DNAME)과 
--   지역명(LOC)을 출력하시오
-- 사원테이블 : EMPLOYEE
-- 부서테이블 : DEPARTMENT 
-- 조인 : 공통컬럼 : 1) 이름이 똑같은 컬럼 + 자료형도 똑같은 컬럼
-- 부서:DNO(부서번호) , 사원:DNO(부서번호)
-- 힌트) 1) = 조인 : EMPLOYEE(사원) EM, DEPARTMENT(부서) DE
SELECT EM.ENAME, 
       DE.DNAME,
       DE.LOC
FROM EMPLOYEE   EM
    ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO;

-- 3) 10번 부서에(DNO) 속하는(조건) 사원(번호)에(ENO)(사원) 대해 직급과(JOB)(사원) 
--      지역명(LOC)(부서)을 출력하시오. 
-- 사원테이블 : EMPLOYEE
-- 부서테이블 : DEPARTMENT
-- 공통컬럼 : DNO(부서번호)
-- 힌트) 1) = 조인 : EMPLOYEE(사원) EM, DEPARTMENT(부서) DE
--       2) AND  EM.DNO = 10
SELECT EM.*, DE.*
FROM EMPLOYEE   EM
    ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO
AND   DE.DNO = 10;