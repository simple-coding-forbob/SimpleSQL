-- 기타 : 결합 인덱스 : 컬럼 여러개에 인덱스 생성하기
-- 사용법) CREATE INDEX 인덱스명 ON 테이블명(컬럼, 컬럼2, ...);

-- 예제 ) 아래의 sql 문이 자바에서 실행되는데 느리다고 합니다.
--        개선해주세요
SELECT * FROM DEPARTMENT
WHERE DNAME = 'SALES'
AND   LOC   = 'NEW YORK';

CREATE INDEX IX_DEPARTMENT_DNAME_LOC ON DEPARTMENT(DNAME, LOC);