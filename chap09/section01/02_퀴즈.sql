-- 간단연습 2) 조인하고 아래 조건을 추가하세요
--     사원번호가(테이블명.ENO) 7500 ~ 7700 사이에 있는 사원들의 소속된 부서정보를 출력
--      조건(범위) : 테이블명.컬럼명 BETWEEN A AND B
SELECT EM.*, DE.*
FROM EMPLOYEE   EM
    ,DEPARTMENT DE
WHERE EM.DNO = DE.DNO
AND   EM.ENO BETWEEN 7500 AND 7700;