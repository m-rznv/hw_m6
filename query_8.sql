SELECT t.fullname, AVG(g.grade) as avg_grade
FROM grades g
JOIN disciplines d ON g.discipline_id = d.id
JOIN teachers t ON d.teacher_id = t.id
GROUP BY t.id;