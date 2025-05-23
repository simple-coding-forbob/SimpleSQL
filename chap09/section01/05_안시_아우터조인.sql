SELECT D.DNO  
       ,E.DNO 
FROM DEPARTMENT D
   , EMPLOYEE E
WHERE D.DNO = E.DNO(+);

-- 5-2) 안시(ANSI) 왼쪽 조인 
SELECT D.DNO  
       ,E.DNO 
FROM DEPARTMENT D
LEFT OUTER JOIN EMPLOYEE E
ON D.DNO = E.DNO;

-- 5-2) 안시(ANSI) 오른쪽 조인
SELECT D.DNO  
       ,E.DNO 
FROM DEPARTMENT D
   , EMPLOYEE E
WHERE D.DNO(+) = E.DNO;

-- RIGHT OUTER JOIN(오른쪽에 모든 데이터)
SELECT D.DNO  
       ,E.DNO 
FROM DEPARTMENT D
RIGHT OUTER JOIN EMPLOYEE E
ON D.DNO = E.DNO;

-- SQLD 대비
SELECT D.DNO  
       ,E.DNO 
FROM DEPARTMENT D
FULL OUTER JOIN EMPLOYEE E
ON D.DNO = E.DNO;