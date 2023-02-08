SELECT COUNT(assistance_requests.*) as total_assistances, teachers.name as name
FROM teachers JOIN assistance_requests on teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY name;