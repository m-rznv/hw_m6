SELECT d.name as discipline_name
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN disciplines d ON g.discipline_id = d.id
WHERE s.fullname = 'Cassandra Drake';