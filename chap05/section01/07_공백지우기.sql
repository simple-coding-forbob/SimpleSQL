-- 1-7) 문자열의 양옆에 공백을 제거하는 함수 : LTRIM/RTRIM/TRIM
SELECT LTRIM('  Oracle mania   ')
     , RTRIM('  Oracle mania   ')
     , TRIM('  Oracle mania   ')
FROM DUAL;