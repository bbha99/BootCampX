SELECT COUNT(assistance_requests.*) as total_assistances, students.name as name
FROM students JOIN assistance_requests on student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;