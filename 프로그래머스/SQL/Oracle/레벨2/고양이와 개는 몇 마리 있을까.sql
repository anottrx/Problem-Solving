--프로그래머스 고양이와 개는 몇 마리 있을까 https://school.programmers.co.kr/learn/courses/30/lessons/59040?language=oracle

SELECT ANIMAL_TYPE, count(*) AS COUNT
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE
;
