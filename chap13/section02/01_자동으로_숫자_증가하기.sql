-- 시퀀스(***) : 실행할때마다 1씩 또는 몇개씩 숫자를 증가시키는 것(객체)
-- 예) 1++, 2++ 등
-- 용도) 자유게시판의 No(1 ~ n), 중복없음, null 아님(기본키:PK)
-- 예제 1) SAMPLE_SEQ 시퀀스를 1부터 시작해서 10씩 증가시키는 시퀀스 생성
-- 사용법) CREATE SEQUENCE 시퀀스명
--         INCREMENT BY 증가값
--         START WITH 시작값
--         MINVALUE   최소값 [생략가능]
--         MAXVALUE   최대값 [생략가능]
CREATE SEQUENCE SAMPLE_SEQ
INCREMENT BY 10
START WITH 1;

-- 최초 1번은 아래와 같이 증가시켜야함
-- 실행 방법) 시퀀스명.NEXTVAL : 시퀀스가 증가함
SELECT SAMPLE_SEQ.NEXTVAL FROM DUAL;

-- (참고) 현재 시퀀스의 값을 보기 : 시퀀스명.CURRVAL
SELECT SAMPLE_SEQ.CURRVAL FROM DUAL;