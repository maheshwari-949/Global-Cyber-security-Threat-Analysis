--Check the data
select * from cyber limit 20;

--How many total rows
SELECT COUNT(*) FROM cyber;

--What are the columns
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'cyber';

--Business Analysis: Key Questions and Insights

--1.Which attack type caused the highest financial loss?

SELECT attack_category, 
       SUM(financial_loss_m) AS total_loss
FROM cyber
GROUP BY attack_category
ORDER BY total_loss DESC;

--2.Which industry is most affected by cyber attacks?

SELECT target_industry,
       COUNT(*) AS attack_count
FROM cyber
GROUP BY target_industry
ORDER BY attack_count DESC;
	   
--3.What is the average resolution time by attack type?

SELECT attack_category,
       AVG(resolution_time_h) AS avg_time
FROM cyber
GROUP BY attack_category;

--4.Show only high severity attacks with financial loss greater than 50M.

SELECT * FROM cyber 
WHERE loss_severity = 'high' AND financial_loss_m > 50
ORDER BY financial_loss_m DESC;

--5.Which country has the most affected users?

SELECT country, SUM(affected_users) as total_users
FROM cyber
GROUP BY country
ORDER BY total_users DESC LIMIT 5;

--6.What is the year-wise total financial loss trend?

SELECT year, SUM (financial_loss_m) as yearly_loss
FROM cyber
GROUP BY year
ORDER BY year;

--7.What is the attack type vs average loss per user?

SELECT attack_category,
       AVG(financial_loss_m * 1000000.0 /affected_users) AS
avg_loss_per_user
FROM cyber
GROUP BY attack_category;

--8.What are the top 3 most expensive attacks in each industry?

-- using rank()
WITH ranked_attacks AS (
    SELECT
	    target_industry,
		attack_category,
		financial_loss_m,
		RANK() OVER (
            PARTITION BY target_industry
			ORDER BY financial_loss_m
DESC
      ) AS rnk
	FROM cyber
)
SELECT *
FROM ranked_attacks
WHERE rnk <= 3
ORDER BY target_industry, rnk;

--9.How does financial loss differ between fast and slow- resolved attacks?

SELECT 
    CASE
	   WHEN resolution_time_h < 24
THEN 'Fast'
         ELSE 'Slow'
	END AS speed,
	AVG(financial_loss_m) AS avg_loss
FROM cyber
GROUP BY speed;

--10.Which attacks have a loss greater than the average loss?

SELECT * FROM cyber
WHERE financial_loss_m > (SELECT AVG(financial_loss_m) FROM cyber);
