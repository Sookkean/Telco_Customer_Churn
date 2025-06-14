Use db_Churn;

Select * From stg_Churn;

SELECT Gender, count(*) as TotalCount, count(*)*100.0/(SELECT COUNT(*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Gender;

SELECT Contract, count(*) as TotalCount, count(*)*100.0/(SELECT COUNT(*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY Contract;

SELECT Customer_Status, count(*) as TotalCount, SUM(Total_Revenue) as TotalRev, SUM(Total_Revenue)*100.0/(SELECT SUM(Total_Revenue) FROM stg_Churn) as RevPercentage
FROM stg_Churn
GROUP BY Customer_Status;

SELECT State, count(*) as TotalCount, count(*)*100.0/(SELECT COUNT(*) FROM stg_Churn) as Percentage
FROM stg_Churn
GROUP BY State
ORDER BY Percentage DESC;