-- 14_조인.sql(*****)
-- 왜?  1) 네트웍으로 SELECT 문을 전송함 : 명령실행시 (성능이 느려짐)
--      2) 그래서 조인을 사용해서 SELECT 사용을 줄임
-- 예제1) 사원번호가(ENO) 7788 인 사원의 부서명은(DNAME) 뭘까요?
-- 사원 : EMPLOYEE
-- 부서 : DEPARTMENT
-- 
SELECT DNO FROM EMPLOYEE
WHERE ENO = 7788;
-- 부서명 없음 : 부서명은(DNAME) 부서테이블에 있음(DEPARTMENT)
-- 사원테이블에서 부서번호를 찾아서 부서테이블에서 다시 재조회 : 20(dno)
SELECT DNAME FROM DEPARTMENT
WHERE DNO = 20;

-- => SELECT(조회) 최소화할수록 성능이 좋아짐
--     왜? 1) 네트웍으로 SELECT 문을 전송함 : 명령실행시

-- => 개선 : 조인사용(*)
-- 1) =(equal) 조인 : *** (성능 좋음)
-- 사용법 : SELECT 테이블1.*, 테이블2.*
--          FROM 테이블1
--              ,테이블2
--          WHERE 테이블1.공통컬럼 = 테이블2.공통컬럼;
SELECT EMPLOYEE.*, DEPARTMENT.*
FROM EMPLOYEE
    ,DEPARTMENT
WHERE EMPLOYEE.DNO = DEPARTMENT.DNO
AND   EMPLOYEE.ENO = 7788;

-- 위의 있는 테이블 => 별명 : 효율적으로 코딩
SELECT EM.*, DE.*
FROM EMPLOYEE   EM
    ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO
AND   EM.ENO = 7788;

-- 예제 2) 사원번호가(ENO) 7499 또는 7900 인 사원들에 소속된 부서정보를 모두 출력하세요
-- 부서 : DEPARTMENT
-- 사원 : EMPLOYEE
-- 힌트 : 컬럼명 IN ()
-- 풀이 : 1) 등호 조인 (=)
--        2) 조건 추가 : 7499 또는 7900
SELECT EM.*, DE.*
FROM EMPLOYEE   EM
    ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO
AND   EM.ENO IN (7499, 7900);