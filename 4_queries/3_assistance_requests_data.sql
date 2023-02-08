SELECT teachers.name as teacher, students.name as student, 
assignments.name as assignment, (assistance_requests.completed_at - assistance_requests.started_at) as durations
FROM assistance_requests JOIN students on student_id = students.id JOIN
teachers on teacher_id = teachers.id JOIN assignments on assignment_id = assignments.id
ORDER BY durations;