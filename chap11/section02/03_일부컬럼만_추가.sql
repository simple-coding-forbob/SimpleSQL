-- 예제 3) INSERT 할때 일부 컬럼은 제외하고 추가하기
-- 생략된 컬럼값 : NULL 이 추가됨
INSERT INTO DEPT_COPY(DNO, DNAME)
VALUES(30, '판매부');

SELECT * FROM DEPT_COPY;

-- 예제 4) INSERT 할때 NULL 명시적으로 표시하고 추가
INSERT INTO DEPT_COPY(DNO, DNAME, LOC)
VALUES(40,'영업부',NULL);

-- 확정 :
COMMIT;