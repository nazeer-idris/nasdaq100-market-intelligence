-- Retrieve EUR/USD and GBP/USD exchange rates for the year 2020 to observe yearly trends
SELECT
	DATE_VALUE,
	EURUSD,
	GBPUSD
FROM
	EXCHANGE_RATES
WHERE
	DATE_VALUE BETWEEN '2020-01-01' AND '2020-12-31';
	

-- Identify all unique stock indices present in the dataset
SELECT DISTINCT
	STOCK_INDEX
FROM
	STOCK_INDICES;


-- Find days when the gold price closed higher than it opened, indicating gains
SELECT
	DATE_VALUE,
	OPEN_VALUE,
	CLOSE_VALUE
FROM
	GOLD
WHERE
	CLOSE_VALUE > OPEN_VALUE;


-- Compute the daily gain in crude oil by subtracting open from close price
SELECT
	DATE_VALUE,
	OPEN_VALUE,
	CLOSE_VALUE,
	CLOSE_VALUE - OPEN_VALUE AS DAILY_GAIN
FROM
	CRUDE_OIL;