SELECT SUM(duration) as total_duration
FROM students JOIN assignment_submissions on students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';