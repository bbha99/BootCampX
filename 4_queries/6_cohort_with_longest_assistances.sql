SELECT cohorts.name as name, AVG(completed_at-started_at) as average_assistance_time
FROM cohorts JOIN students on cohort_id = cohorts.id 
JOIN assistance_requests on student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC 
LIMIT 1;