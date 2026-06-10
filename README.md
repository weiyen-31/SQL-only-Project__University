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
- GPA and completion rate show consistent relationship across cohorts
Performance distribution is not uniform across year levels, indicating possible differences in academic difficulty or student adaptation are classified as “Good” performance groups
- GPA and completion rate show consistent relationship across cohorts
- Performance distribution is not uniform across year levels, indicating possible differences in academic difficulty or  student adaptation

### Faculty Salaries Analysis
