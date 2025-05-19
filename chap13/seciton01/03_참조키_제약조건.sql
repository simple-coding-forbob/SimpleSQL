-- 4) FOREIGN KEY(*) : 외래키(참조키) 제약조건, (약어: FK)
-- 참조키(외래키) : 부서테이블 (부모테이블, 10 ~ 40 : DNO(부서번호))
--       사원테이블(자식테이블, DNO(10~40) 까지만 INSERT 할수 있게하는 것)
-- 관계 : 1) 회사에서는 사원들은 무조건 1개의 부서에 소속됨
--        2) 회사에 있는 부서만 소속될 수 있음
-- 특징 : 1) 부모테이블의 컬럼의 데이터만 자식테이블의 데이터로 입력될 수 있게
--           제약조건을 거는것 
--        2) 그 때 부모테이블의 컬럼은 반드시 유일한 값이어야함(기본키(PK), UNIQUE)
--        3) 데이터 삭제 시 순서가 중요함 : 자식테이블을 먼저 삭제하고, 부모테이블을 삭제해야함
-- (실무) : 1) 반은 사용하고(데이터 중요), 
--             반은 사용안함(성능 저하, 테스트시 어려움) : 자바로 검증이 가능
-- 예제 3) EMP_SECOND 테이블을 만들고, 
--         ENO NUMBER(4) (기본키 #2)
--         ENAME VARCHAR2(10), 
--         JOB VARCHAR2(9)
--         DNO NUMBER(2) (참조키 : 부모(DEPARTMENT)) 지정하세요
-- 사용법 : 
CREATE TABLE EMP2 (
    ENO NUMBER(4),
    ENAME VARCHAR2(10), 
    DNO NUMBER(2) CONSTRAINT FK_EMP2_DNO FOREIGN KEY(DNO) REFERENCES DEPARTMENT
    JOB VARCHAR2(9)
);

-- 사용법) ALTER TABLE 테이블명
--        ADD CONSTRAINT 제약조건명
--        FOREIGN KEY(컬럼명) REFERENCES 부모테이블명(부모컬럼명);
ALTER TABLE EMP2
ADD CONSTRAINT FK_EMP2_DNO
FOREIGN KEY(DNO) REFERENCES DEPARTMENT(DNO);

CREATE TABLE EMP2 (
    ENO NUMBER(4),
    ENAME VARCHAR2(10), 
    DNO NUMBER(2),
    JOB VARCHAR2(9),
    CONSTRAINT FK_EMP2_DNO
    FOREIGN KEY(DNO) REFERENCES DEPARTMENT(DNO)
);