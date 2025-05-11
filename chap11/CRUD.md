# 24_CRUD.md
# C(Create, Insert) : 데이터 추가
# R(Read  , Select) : 데이터 조회
# U(Update, Update) : 데이터 수정
# D(Delete, Delete) : 데이터 삭제
# => 최종 취소/확정 : ROLLBACK/COMMIT;

### Insert 사용법 : 
### INSERT INTO 테이블명(컬럼명, 컬럼명2...)
### VALUES(값, 값2...);

### Select 사용법 : 
### Select * FROM 테이블명
### WHERE 조건절;

### Update 사용법 : 
### UPDATE 테이블명
### SET
###     컬럼명   = 수정될값
###     ,컬럼명2 = 수정될값2
###     ...
### WHERE 컬럼명 = 값; -- (조건)

### Delete 사용법 : 
### DELETE FROM 테이블명
### WHERE 컬럼명 = 값;  -- 조건

### 테이블 만들기 : 
### CREATE TABLE 테이블명 (
###          컬럼명 자료형(자리수),
###           ...
###          );