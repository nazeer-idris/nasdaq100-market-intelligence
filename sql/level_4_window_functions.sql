-- Add a moving average column to gold price using a 7-day window. 
CREATE TABLE level4_gold AS 
SELECT 
	DATE_VALUE,
	OPEN_VALUE,
	CLOSE_VALUE,
	AVG(CLOSE_VALUE) OVER (
		ORDER BY DATE_VALUE
		ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
	) AS moving_avg_7_day
FROM
GOLD
ORDER BY
DATE_VALUE;


-- Rank crude oil closing prices in descending order.
CREATE TABLE level4_crude_oil AS
SELECT
	DATE_VALUE,
	CLOSE_VALUE,
	RANK() OVER(
		ORDER BY CLOSE_VALUE DESC
	) AS PRICE_RANK
FROM
	CRUDE_OIL
ORDER BY 
	CLOSE_VALUE DESC;


-- Calculate a rolling average over 5 days (2 before and after) for closing price.
CREATE TABLE level4_rolling_avg AS
SELECT
	DATE_VALUE,
	CLOSE_VALUE,
	AVG(CLOSE_VALUE) OVER (
		ORDER BY DATE_VALUE
		ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING
	) AS rolling_avg_5_day
FROM
	CRUDE_OIL
ORDER BY
	DATE_VALUE;