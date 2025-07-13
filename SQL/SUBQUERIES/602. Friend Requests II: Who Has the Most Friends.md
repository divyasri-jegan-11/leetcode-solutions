# Write your MySQL query statement below
WITH AllIds AS (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL 
    SELECT accepter_id FROM RequestAccepted
)
SELECT id,
       COUNT(*) as num
       FROM AllIds
       GROUP BY 1
       ORDER BY 2 DESC
       LIMIT 1;
