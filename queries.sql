USE mianni_sims;
##Total Revenue 
SELECT SUM(monthly_revenue) AS total_revenue
FROM financial_data;
##Revenue by Client Type
SELECT
	client_type,
    SUM(monthly_revenue) AS total_revenue
FROM financial_data
GROUP BY client_type 
ORDER BY total_revenue DESC;
##Average Reporting Turnaround
SELECT
	AVG(report_turnaround_days) AS avg_turnaround
FROM financial_data;
##High Risk Client 
SELECT * 
FROM financial_data
WHERE churn_risk = 'High';