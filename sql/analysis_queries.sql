CREATE DATABASE student_analysis;
use student_analysis;
-- 1. Data Cleaning & Handling Missing Values
-- In many placement datasets, unplaced students have a NULL salary. Let's handle that.
SELECT 
    student_id,
    specialization,
    placement_status,
    COALESCE(salary, 0) AS cleaned_salary
FROM students_data;

-- 2. Advanced Window Function: Rank top 3 earners within each specialization
WITH RankedStudents AS (
    SELECT 
        student_id,
        specialization,
        degree_percentage,
        salary,
        DENSE_RANK() OVER (PARTITION BY specialization ORDER BY salary DESC) as salary_rank
    FROM students_data
    WHERE placement_status = 'Placed'
)
SELECT * 
FROM RankedStudents 
WHERE salary_rank <= 3;

-- 3. Case When & Categorization Aggregation
-- Group students into academic tiers and find placement percentages
SELECT 
    CASE 
        WHEN degree_percentage >= 80 THEN 'High Achiever (80%+)'
        WHEN degree_percentage >= 60 THEN 'Average (60-79%)'
        ELSE 'Needs Improvement (<60%)'
    END AS academic_tier,
    COUNT(student_id) AS total_students,
    ROUND(SUM(CASE WHEN placement_status = 'Placed' THEN 1 ELSE 0 END) * 100.0 / COUNT(student_id), 2) AS placement_rate_percentage,
    ROUND(AVG(salary), 2) AS average_salary
FROM students_data
GROUP BY 1
ORDER BY average_salary DESC;