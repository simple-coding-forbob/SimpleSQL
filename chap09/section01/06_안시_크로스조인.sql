-- 14 x 4 = 56건
-- 카티션 프로덕트: 성능 저하 주범
SELECT D.DNO
FROM DEPARTMENT D
    ,EMPLOYEE E;

-- 안시 조인
-- 크로스 조인(카티션 프로덕트)
SELECT D.DNO
FROM DEPARTMENT D
CROSS JOIN EMPLOYEE E;