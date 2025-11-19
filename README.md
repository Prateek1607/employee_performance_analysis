# Employee Demographic & Performance Analysis  

This project showcases a full HR analytics pipeline built using Google BigQuery and Looker Studio. It includes data cleaning, SQL-driven analysis, performance and satisfaction evaluation, and dashboard-based insights designed to support strategic workforce planning and retention decisions.


## Project Overview

Organizations rely on strong workforce analytics to understand performance drivers, improve employee satisfaction, and reduce attrition.  
This project analyzes employee demographics, compensation, performance metrics, satisfaction scores, and manager relationships to uncover meaningful insights for HR and leadership teams.


## Key Objectives
- Clean and prepare raw HR datasets in Google BigQuery  
- Perform demographic, compensation, and performance analysis using SQL  
- Build a multi-page interactive dashboard in Looker Studio  
- Identify key predictors of satisfaction and attrition  
- Support HR strategy with actionable, data-driven insights


## Analytical Workflow

### **1. Data Cleaning & Preparation**
- Removed duplicate EmployeeID records  
- Handled null values across demographics, performance, and satisfaction fields  
- Standardized categorical values (departments, roles, education levels)  
- Validated numerical fields (age, salary, work-life balance, ratings)  
- Ensured consistency across all HR datasets  


### **2. SQL-Based Analysis**
Conducted entirely in Google BigQuery, covering:

- Demographic distributions  
- Department and job-role segmentation  
- Salary segmentation across departments  
- Manager vs. Self performance rating comparisons  
- Training participation trends vs. tenure  
- Job satisfaction analysis  
- Attrition patterns by demographics and job roles  


### **3. Dashboard Development**
Built a fully interactive Looker Studio dashboard featuring:

- Multi-page navigation  
- Dynamic filters (department, role, attrition status)  
- Clear, insight-focused visual design  
- Visual breakdowns of demographics, performance, satisfaction, and attrition


## Interactive Dashboard

**Looker Studio Dashboard:**  
[https://lookerstudio.google.com/u/0/reporting/69009158-f304-4b9e-9289-91641f36c3cc/page/pyFCE/edit](https://lookerstudio.google.com/reporting/10b9e210-9fab-4f39-8bf4-c33b1ad884c3)

### **Dashboard Highlights**
- Workforce demographics (age, gender, education)  
- Department & job role composition  
- Salary distribution and segmentation  
- Manager vs. self performance ratings  
- Job satisfaction patterns  
- Attrition breakdown across demographics and roles  


## BigQuery SQL Work

### **1. Demographics & Job Role Analysis**
Includes:
- Age distribution  
- Department share (Sales, Engineering, HR, etc.)  
- Job role segmentation  
- Salary analysis  
- Education-level breakdown  
- Attrition trends by age, gender, and marital status  

🔗 Query:  
[https://console.cloud.google.com/bigquery?sq=1069696615414:40e790031cae4b8aac11e5a2c8435c38 ](https://console.cloud.google.com/bigquery?sq=551922735090:4088a410a3534007a04d6d32ec9be009) 


### **2. Performance, Satisfaction & Rating Analysis**
Includes:
- Manager vs. self performance ratings  
- Job satisfaction patterns  
- Manager relationship satisfaction  
- Tenure vs. training participation  
- Performance differences across departments  

🔗 Query:  
[https://console.cloud.google.com/bigquery?sq=1069696615414:a6e539f9da734be99fff329710eff72e  
](https://console.cloud.google.com/bigquery?sq=551922735090:5bf6f93c6a834a2ab2826aa387db3bd8)

### **3. Cleaning Queries – Nulls, Duplicates & Standardization**
Includes:
- Duplicate removal  
- Null handling strategy design  
- Standardizing job role & department names  
- Normalizing numeric ranges (salary, age, ratings)  

🔗 Query:  
[https://console.cloud.google.com/bigquery?sq=1069696615414:8c6c4aa2ee224bc9b4d49e0a8bbc1d54 ](https://console.cloud.google.com/bigquery?sq=551922735090:59f85672900648ffa324f91792977746) 


## Key Insights

### **1. Demographics**
- Core workforce falls between ages **25–38**  
- Sales represents ~**65%** of employees  
- Most employees hold **Bachelor’s or Master’s** degrees  
- Typical salary range: **50K–150K**  

### **2. Job Role & Department Trends**
- Engineering & Data Science roles score well in satisfaction  
- HR is the smallest department  
- Work-life balance varies widely by team  

### **3. Satisfaction & Performance**
- Manager relationship is a major driver of satisfaction  
- Ratings are balanced across *Meets*, *Exceeds*, and *Above & Beyond*  
- Training participation increases with tenure and correlates with satisfaction  

### **4. Attrition Patterns**
Higher attrition found among:
- Younger employees (**18–31**)  
- High-workload roles  
- Employees reporting low satisfaction  
- Teams with inconsistent manager–employee relationships  

These insights support targeted retention strategies such as improved onboarding, leadership training, and workload adjustments.


## Tools & Technologies

- Google BigQuery  
- SQL  
- Google Looker Studio  
- Google Cloud Platform  


## Project Outcomes

Demonstrates ability to:

- Build an end-to-end analytics workflow  
- Clean and transform HR datasets in BigQuery  
- Perform complex SQL-based analysis  
- Design interactive Looker dashboards  
- Translate analytics into strategic HR insights  
- Apply storytelling techniques to workforce analytics  


## Future Enhancements

- Machine-learning attrition prediction model  
- Statistical validation (correlation, regression)  
- Python-based EDA & modeling  
- Real-time dashboards via HRIS API integration  


