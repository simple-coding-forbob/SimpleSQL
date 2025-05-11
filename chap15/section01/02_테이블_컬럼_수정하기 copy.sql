-- 예제 2) 부서테이블에(DEPT20) 부서명(DNAME) 의 크기를 변경
-- 사용법) ALTER TABLE 테이블명 MODIFY 컬럼명 자료형(자리수)
ALTER TABLE DEPT20 MODIFY DNAME VARCHAR2(30);

-- 구조 보기
DESC DEPT20;