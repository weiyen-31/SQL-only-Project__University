# University Data Analysis (EDA Project)

## Project Overview
This project analyzes university data to understand student academic performance and faculty salary distribution. The objective is identify the performance of students in different year levels and evaluate professor salary distribution by department and position.

Note: This project focuses on Exploratory Data Analysis (EDA) only, and does not include dedicated data cleaning phase, as the dataset was assumed to be pre-cleaned for analytical purposes.

## Business Questions
- How does student performance (GPA and completion rate) vary by year level?
- Which year levels demonstrate higher academic success?
- How are faculty salaries distributed across departments and positions?
- Are there noticeable salary gaps between roles or departments?

## Dataset
- Students
- Enrollments
- Departments
- Professors

## SQL Workflow
### Analysis 1: Student Academic Performance by Year Level
- Measured average GPA per year level, total enrollments and course completed
- Derived course completion rate (%)
- Classified year levels using quartile ranking (NTILE)
- Segmented performance into categories (Normal / Good)

### Analysis 2: Faculty Salaries Analysis
- Aggregated salary statistics by department and position
- Calculated minimum, maximum, average, and total salary expenditure
- Compared salary distribution across organizational structure

## Key Result
### Student Academic Performance by Year Level
- “Sophomore" and "Freshman" are classified as “Good” performance groups with higher completion rates
- As students progressed to higher year levels, course completion rates declined.
- Students' GPA remained relatively stable on all cohorts with less than 0.5 points difference between the highest and lowest-performing year levels.

### Faculty Salaries Analysis
- Faculty compensation varied considerably across departments and academic positions.
- Computer Science, Physics, and Biology reported the highest salary levels in the dataset.
- Humanities-related departments generally showed lower salary levels compared to STEM disciplines.

## Insights
- Lower-year students (Freshman and Sophomore) demonstrated stronger course completion performance compared to upper-year students.
- The decline in completion rates among Junior and Senior students may suggest increasing academic difficulty, workload, or graduation-related challenges.
- GPA alone may not fully capture academic success, as completion rates reflect student's ability to navigate and sustain effort through a learning environment.
- Salary disparities across departments suggest that market demand and specialization may influence compensation levels.
- High differences in salary among Associate Professors indicate that compensation policies may vary between departments.

## Recommendations
- Investigate factors contributing to lower completion rates in upper-year courses and identify potential barriers to successful completion.
- Provide additional academic support programs for Junior and Senior students, such as tutoring, mentoring, or academic advising.
- Evaluate retention risks in lower-paying departments and assess whether compensation adjustments are needed to remain competitive in faculty recruitment.
- Review salary disparities among equivalent academic ranks to determine whether differences are justified by discipline-specific factors.

## Tools Used
- SQL (CTE, JOIN, Aggregation)
- Window Functions (NTILE)
- Date & statistical calculations
- Data segmentation & classification techniques (CASE WHEN logic)

