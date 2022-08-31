SELECT N AS num,
CASE 
    WHEN P IS NULL THEN 'Root'
    WHEN (SELECT COUNT(*) FROM BST WHERE num=P)=0 THEN 'Leaf'
    ELSE 'Inner'
END
FROM BST ORDER BY N ASC;
