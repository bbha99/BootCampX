SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, 
assignments.duration as average_estimated_duration
FROM students JOIN assignment_submissions on student_id = students.id JOIN assignments on assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY student, average_estimated_duration
HAVING AVG(assignment_submissions.duration) < assignments.duration
ORDER BY average_assignment_duration;