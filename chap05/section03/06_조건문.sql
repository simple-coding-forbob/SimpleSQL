-- 2) 조건문 : DECODE / CASE WHEN (중급 함수)
-- 예제 ) DECODE 를 이용해서 부서명을 출력하세요
--    10 '회계부', 20 '연구소', 30 '판매부', 40 '운영부' 그밖에 '디폴트'
-- 사용법)      DECODE(컬럼명, 값, 출력결과
--                ,         ,값2, 출력결과2
--                , ...
--                , 기본결과)
SELECT DNO
     , DECODE(DNO, 10, '회계부'
                ,  20, '연구소'
                ,  30, '판매부'
                ,  40, '운영부'
                , '디폴트')    AS 부서명
FROM EMPLOYEE;

-- 예제 ) CASE WHEN 를 이용해서 부서명을 출력하세요
SELECT DNO
     , CASE WHEN DNO=10 THEN '회계부'
            WHEN DNO=20 THEN '연구소'
            WHEN DNO=30 THEN '판매부'
            WHEN DNO=40 THEN '운영부'
            ELSE '디폴트'
       END                 AS 부서명
FROM EMPLOYEE;

-- 사용법) CASE WHEN 컬럼1=값1 THEN 출력결과
--                   컬럼2=값2 THEN 출력결과2
--                   ...
--                   ELSE 기본결과
--         END 