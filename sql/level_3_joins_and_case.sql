-- Join unemployment data with stock indices to analyze macroeconomic correlation
SELECT
	M.DATE_VALUE,
	M.UNEMPLOYMENT_RATE,
	S.VOLUME
FROM
	MACRO_ECONOMIC_INDICATORS M
	JOIN STOCK_INDICES S ON M.DATE_VALUE = S.DATE_VALUE
ORDER BY
	M.DATE_VALUE;


-- Using a join compare stock price trends of one day with a previous day, include the close price of the two days and the change between the two
SELECT
	CURR.DATE_VALUE AS CURRENT_DATE,
	PREV.DATE_VALUE AS PREVIOUS_DATE,
	CURR.CLOSE_VALUE AS CURRENT_CLOSE,
	PREV.CLOSE_VALUE AS PREVIOUS_CLOSE,
	CURR.CLOSE_VALUE - PREV.CLOSE_VALUE AS CLOSE_CHANGE
FROM
	PUBLIC.NASDAQ_100_DAILY CURR
	JOIN PUBLIC.NASDAQ_100_DAILY PREV ON CURR.DATE_VALUE = PREV.DATE_VALUE + INTERVAL '1 DAY'
ORDER BY
	CURR.DATE_VALUE;



-- Using a case statement categorise the opening oil prices for the years 2021 and 2022.
-- Use the extract function to select the years.
-- You can consider the following categories: ““High”” price greater than 90 ““Medium”” price between 60-90 ““Low”” price lower than 60
SELECT
	DATE_VALUE,
	OPEN_VALUE, 
	CASE
		WHEN OPEN_VALUE > 90 THEN 'HIGH'
		WHEN OPEN_VALUE BETWEEN 60 AND 90  THEN 'MEDIUM'
		ELSE 'LOW'
	END AS PRICE_CATEGORY
FROM
	CRUDE_OIL
WHERE
	EXTRACT(YEAR FROM DATE_VALUE) IN (2021, 2022)
ORDER BY
	DATE_VALUE;


-- Pick a ticker and for the year 2022 analyse whether the stock closed “up” “down” or “no change”
-- compared to the opening price for each day in the year. You should use a case statement to do this.
SELECT
	DATE_VALUE,
	COMPANY_PREFIX,
	OPEN_VALUE,
	CLOSE_VALUE,
	CASE
		WHEN CLOSE_VALUE > OPEN_VALUE THEN 'UP'
		WHEN CLOSE_VALUE < OPEN_VALUE THEN 'DOWN'
		ELSE 'NO CHANGE'
	END AS CLOSE_STATUS
FROM
	NASDAQ_100_DAILY
WHERE
	EXTRACT(YEAR FROM DATE_VALUE) = 2022 AND COMPANY_PREFIX = 'AAPL'
ORDER BY
	DATE_VALUE;