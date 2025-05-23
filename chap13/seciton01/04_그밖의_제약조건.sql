
CREATE TABLE EMP3 (
   ENO NUMBER(4),
   SALARY NUMBER(7,2) DEFAULT 1000
);

-- INSERT 테스트 
INSERT INTO EMP3(ENO)
VALUES(8000);

COMMIT;

-- 6) CHECK 제약조건 : 컬럼에 조건식을 지정가능
-- 예제) EMP4 SALARY 컬럼에 CHECK 제약조건 추가하세요(SALARY>0)
--         ENO NUMBER(4) (기본키 #2)
--         SALARY NUMBER(7,2) CHECK (SALARY>0)
CREATE TABLE EMP4 (
    ENO NUMBER(4),
    SALARY NUMBER(7,2) CONSTRAINT CK_EMP4_SALARY CHECK(SALARY>0)
);

-- INSERT 테스트
INSERT INTO EMP4(ENO, SALARY)
VALUES(8000, -200);             -- 에러발생