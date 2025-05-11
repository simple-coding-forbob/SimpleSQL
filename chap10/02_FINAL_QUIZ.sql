-- 4) 커미션을(COMMISSION) 받는 
--     모든사원의 이름(ENAME), [EMPLOYEE] 
--      부서이름(DNAME), 
--      지역명(LOC)을 출력하시오. [DEPARTMENT]
-- 힌트) 커미션 받는다 의미 : COMMISSION 이 NULL 이 아니다라는 의미
-- 공통컬럼 : DNO(부서번호)
SELECT EM.*, DE.*
FROM EMPLOYEE   EM
    ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO
AND   EM.COMMISSION IS NOT NULL;

-- 5) = 조인과 Like 검색(와일드카드(%))를 사용하여 
--     이름에(ENAME) A가 포함된(조건) 
--     모든 사원의 이름과(ENAME) [EMPLOYEE]
--    부서명을(DNAME) 출력하시오. [DEPARTMENT]
SELECT EM.*, DE.*
FROM EMPLOYEE   EM
    ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO
AND   EM.ENAME LIKE '%A%';



-- 6) NEW YORK 에 근무하는(LOC)(부서, 조건) 
--     모든 사원의 이름(ENAME),      [EMPLOYEE]
--     업무(JOB),                   [EMPLOYEE] 
--     부서번호(DNO)                 [EMPLOYEE, DEPARTEMNT]
--     및 부서명을(DNAME) 출력하시오. [DEPARTEMNT]
-- 사원테이블 : EMPLOYEE
-- 부서테이블 : DEPARTMENT
SELECT EM.ENAME
     , EM.JOB
     , EM.DNO
     , DE.DNAME
FROM EMPLOYEE   EM
    ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO
AND   DE.LOC = 'NEW YORK';






