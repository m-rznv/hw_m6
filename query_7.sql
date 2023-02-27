SELECT s.fullname, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN disciplines d ON g.discipline_id = d.id
JOIN [groups] g2 ON s.group_id = g2.id
WHERE d.name = 'Програмування' AND g2.name = 'ТП-05-1';
