SELECT AVG(cohort_sums.total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, SUM(completed_at - started_at) as total_duration
  FROM assistance_requests JOIN students on student_id = students.id 
  JOIN cohorts on cohort_id = cohorts.id
  GROUP BY cohort
) as cohort_sums