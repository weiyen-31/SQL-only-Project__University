WITH base AS (
    	SELECT S.year_level,
          	 S.gpa,
           	 E.status
    	FROM STUDENTS S
    	JOIN ENROLLMENTS E ON S.id = E.student_id
    	),

enrollemt_stats AS (
    	SELECT year_level,
          	 AVG(gpa) AS avg_gpa, 
           	 COUNT(*) AS total_enrollment,
           	 SUM (CASE
                   		WHEN status = 'Completed' THEN 1
                    	ELSE 0
                 END) AS completed_courses
    	FROM base
    	GROUP BY year_level
    	),

CAL AS (    
    	SELECT *,
             (completed_courses/total_enrollment)*100 AS course_completion_rate
    	FROM enrollemt_stats
    	),

score_and_classification AS (
    	SELECT year_level,
           	 avg_gpa,
             course_completion_rate,
             NTILE(2)OVER(ORDER BY course_completion_rate) AS score,
             CASE
              		WHEN NTILE(2)OVER(ORDER BY course_completion_rate) = 1 THEN 'normal'
              		WHEN NTILE(2)OVER(ORDER BY course_completion_rate) = 2 THEN 'good'
           	 END AS class
    	FROM CAL
    	)

SELECT *
FROM score_and_classification
