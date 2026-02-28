-- Total customers
SELECT COUNT(*) FROM churn;

-- Overall churn rate
SELECT 
    SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS churn_rate
FROM churn;

-- Churn by Contract
SELECT Contract,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS churn_rate
FROM churn
GROUP BY Contract;

-- Churn by Tenure
SELECT Tenure_Group,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS churn_rate
FROM churn
GROUP BY Tenure_Group;

-- Churn by Internet Service
SELECT InternetService,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*) AS churn_rate
FROM churn
GROUP BY InternetService;
