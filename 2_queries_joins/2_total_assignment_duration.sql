SELECT SUM(duration) as total_duration
FROM students JOIN cohorts on cohort_id = cohorts.id JOIN
assignment_submissions on students.id = student_id
WHERE cohorts.name = 'FEB12'