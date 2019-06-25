-- https://leetcode.com/submissions/detail/238426803/

SELECT * FROM cinema where (id % 2) != 0 and description != 'boring' ORDER BY rating DESC;