SELECT count(id)
FROM students
WHERE cohort_id >= 1 AND cohort_id <= 3;
-- WHERE cohort_id IN (1,2,3);