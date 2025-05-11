-- 간단연습 : DEPT_COPY 테이블에 INSERT 로 아래 데이터를 추가하세요
-- 값 : (20, '개발부', '부산')
INSERT INTO DEPT_COPY(DNO, DNAME, LOC)
VALUES(20, '개발부', '부산');

-- 데이터 넣기(추가) : 1번째 (현재 접속한 사람만 확인)
-- 취소 : ROLLBACK;
ROLLBACK;

-- 확정 : COMMIT;
COMMIT;

-- 정리 : 데이터조작(Insert 등) -> 취소/확정 (ROLLBACK/COMMIT)
--       확정 : 다른 사용자가 결과를 볼수 있음

-- 연습) EMP_COPY 테이블에 또 데이터 입력하기
--  ENO - 7020, 
--  ENAME - 'CANDY3', 
--  JOB - 'MANAGER',
--  HIREDATE - SYSDATE, 
--  DNO - 10
INSERT INTO EMP_COPY(ENO,ENAME,JOB,HIREDATE,DNO)
VALUES(7020, 'CANDY3','MANAGER',SYSDATE, 10);

-- 조회
SELECT * FROM EMP_COPY;

COMMIT;