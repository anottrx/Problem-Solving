-- 프로그래머스 자동차 대여 기록에서 장기/단기 대여 구분하기 https://school.programmers.co.kr/learn/courses/30/lessons/151138?language=oracle

SELECT HISTORY_ID, CAR_ID, TO_CHAR(START_DATE, 'YYYY-MM-DD') START_DATE, TO_CHAR(END_DATE, 'YYYY-MM-DD') END_DATE,
    CASE WHEN END_DATE-START_DATE >= 29 THEN '장기 대여'
    ELSE '단기 대여'
    END AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE TO_CHAR(START_DATE, 'YYYYMM') = '202209'
ORDER BY HISTORY_ID DESC;
