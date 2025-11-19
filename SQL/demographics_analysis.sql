-- Employee Dataset--
-- Comining first and last name as full employee name--
SELECT 
FirstName,
LastName,
CONCAT(FirstName, ' ', LastName) AS Employee_Name
FROM `hr--employee-analytics.Data.Employee`;


-- Age Bins --
SELECT
AGE,
  CASE 
    WHEN Age BETWEEN 18 AND 24 THEN '18-24'
    WHEN Age BETWEEN 25 AND 31 THEN '25-31'
    WHEN Age BETWEEN 32 AND 38 THEN '32-38'
    WHEN Age BETWEEN 39 AND 45 THEN '39-45'
    WHEN Age BETWEEN 46 AND 51 THEN '46-51'
    ELSE 'Other'
  END AS Age_Group
FROM `hr--employee-analytics.Data.Employee`;


--  State Full Name --
SELECT
EmployeeID,
State, 
  CASE 
    WHEN State = 'CA' THEN 'California'
    WHEN State = 'IL' THEN 'Illinois'
    WHEN State = 'NY' THEN 'New York'
    ELSE 'Unknown'
  END AS Full_State_Name
FROM `hr--employee-analytics.Data.Employee`;


-- Salary Bins (20387-547204) --
SELECT 
EmployeeID,
Salary, 
  CASE 
    WHEN Salary BETWEEN 20387 AND 50000 THEN 'Under 50K'
    WHEN Salary BETWEEN 50001 AND 150000 THEN '50K-150K'
    WHEN Salary BETWEEN 150001 AND 300000 THEN '150K-300K'
    WHEN Salary BETWEEN 300001 AND 500000 THEN '300K-500K'
    WHEN Salary > 500000 THEN 'Above 5Lac'
    ELSE 'Unknown'
  END AS Salary_Bin
FROM `hr--employee-analytics.Data.Employee`;


-- Selecting Column from Employee Table--
SELECT 
EmployeeID,
CONCAT(FirstName, ' ', LastName) AS Employee_Name,
Gender, 
BusinessTravel, 
Department, 
`DistanceFromHome KM`, 
Ethnicity, 
Education, 
EducationField, 
JobRole, 
MaritalStatus, 
StockOptionLevel, 
OverTime, 
HireDate, 
Attrition, 
YearsAtCompany, 
YearsInMostRecentRole, 
YearsSinceLastPromotion, 
YearsWithCurrManager,
AGE,
  CASE 
    WHEN Age BETWEEN 18 AND 24 THEN '18-24'
    WHEN Age BETWEEN 25 AND 31 THEN '25-31'
    WHEN Age BETWEEN 32 AND 38 THEN '32-38'
    WHEN Age BETWEEN 39 AND 45 THEN '39-45'
    WHEN Age BETWEEN 46 AND 51 THEN '46-51'
    ELSE 'Other'
  END AS Age_Group,
CASE 
    WHEN State = 'CA' THEN 'California'
    WHEN State = 'IL' THEN 'Illinois'
    WHEN State = 'NY' THEN 'New York'
    ELSE 'Unknown'
  END AS Full_State_Name,
Salary, 
  CASE 
    WHEN Salary BETWEEN 20387 AND 50000 THEN 'Under 50K'
    WHEN Salary BETWEEN 50001 AND 150000 THEN '50K-150K'
    WHEN Salary BETWEEN 150001 AND 300000 THEN '150K-300K'
    WHEN Salary BETWEEN 300001 AND 500000 THEN '300K-500K'
    WHEN Salary > 500000 THEN 'Above 5Lac'
    ELSE 'Unknown'
  END AS Salary_Bin
FROM `hr--employee-analytics.Data.Employee`;


-- Create Table 1 by Joining Employee Table and EducationLevel Tabel based on primiry key as Education and EducationLevelID--
CREATE TABLE `hr--employee-analytics.Data.table1` AS
SELECT 
EmployeeID,
CONCAT(FirstName, ' ', LastName) AS Employee_Name,
Gender, 
BusinessTravel, 
Department, 
`DistanceFromHome KM`, 
Ethnicity,  
EducationField, 
JobRole, 
MaritalStatus, 
StockOptionLevel, 
OverTime, 
HireDate, 
Attrition, 
YearsAtCompany, 
YearsInMostRecentRole, 
YearsSinceLastPromotion, 
YearsWithCurrManager,
AGE,
  CASE 
    WHEN Age BETWEEN 18 AND 24 THEN '18-24'
    WHEN Age BETWEEN 25 AND 31 THEN '25-31'
    WHEN Age BETWEEN 32 AND 38 THEN '32-38'
    WHEN Age BETWEEN 39 AND 45 THEN '39-45'
    WHEN Age BETWEEN 46 AND 51 THEN '46-51'
    ELSE 'Other'
  END AS Age_Group,
CASE 
    WHEN State = 'CA' THEN 'California'
    WHEN State = 'IL' THEN 'Illinois'
    WHEN State = 'NY' THEN 'New York'
    ELSE 'Unknown'
  END AS Full_State_Name,
Salary, 
  CASE 
    WHEN Salary BETWEEN 20387 AND 50000 THEN 'Under 50K'
    WHEN Salary BETWEEN 50001 AND 150000 THEN '50K-150K'
    WHEN Salary BETWEEN 150001 AND 300000 THEN '150K-300K'
    WHEN Salary BETWEEN 300001 AND 500000 THEN '300K-500K'
    WHEN Salary > 500000 THEN 'Above 5Lac'
    ELSE 'Unknown'
  END AS Salary_Bin,
  E1.EducationLevel
FROM `hr--employee-analytics.Data.Employee`E
JOIN `hr--employee-analytics.Data.EducationLevel`E1
ON E.Education= E1.EducationLevelID;


