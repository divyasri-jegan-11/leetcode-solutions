DELETE P2
FROM Person AS P1
INNER JOIN Person AS P2
ON (P2.email = P1.email)
WHERE P1.id < P2.id;
