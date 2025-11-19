-- Performance Rating & Rating Level & Satisfaction Level Table 
CREATE TABLE `hr--employee-analytics.Data.table2` AS
SELECT 
EmployeeID, 
PerformanceID, 
ReviewDate, 
E5.SatisfactionLevel AS EnvironmentSatisfaction, 
E6.SatisfactionLevel AS JobSatisfaction, 
E7.SatisfactionLevel AS RelationshipSatisfaction, 
TrainingOpportunitiesWithinYear, 
TrainingOpportunitiesTaken, 
WorkLifeBalance, 
E3.RatingLevel AS SelfRating, 
E4.RatingLevel AS ManagerRating

FROM `hr--employee-analytics.Data.PerformanceRating` E2
JOIN `hr--employee-analytics.Data.RatingLevel` E3
ON E2.SelfRating = E3.RatingID

JOIN `hr--employee-analytics.Data.RatingLevel` E4
ON E2.ManagerRating = E4.RatingID

JOIN `hr--employee-analytics.Data.SatisfiedLevel` E5
ON E2.EnvironmentSatisfaction = E5.SatisfactionID

JOIN `hr--employee-analytics.Data.SatisfiedLevel` E6
ON E2.JobSatisfaction = E6.SatisfactionID

JOIN `hr--employee-analytics.Data.SatisfiedLevel` E7
ON E2.RelationshipSatisfaction = E7.SatisfactionID


