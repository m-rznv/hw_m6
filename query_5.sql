SELECT t.fullname, d.name as discipline_name
FROM disciplines d
JOIN teachers t ON d.teacher_id = t.id
WHERE t.fullname = 'Jacqueline Lee';
