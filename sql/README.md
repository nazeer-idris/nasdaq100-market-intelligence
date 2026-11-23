# SQL Queries (PostgreSQL)

PostgreSQL queries written against the project's financial data warehouse. The tables hold NASDAQ-100 daily prices, global stock indices, exchange rates, gold, crude oil and macroeconomic indicators. The four levels build on each other, from simple filters to window functions.

| File | Topics | Example questions answered |
|------|--------|----------------------------|
| [`level_1_filtering_and_selection.sql`](level_1_filtering_and_selection.sql) | `SELECT`, `WHERE`, `DISTINCT`, calculated columns | EUR/USD and GBP/USD rates in 2020; days gold closed higher than it opened; daily crude oil gain |
| [`level_2_aggregation.sql`](level_2_aggregation.sql) | `AVG`, `COUNT`, `SUM`, `MAX`, `GROUP BY`, `ORDER BY`, `LIMIT` | Average CPI inflation; days gold closed above $1800; top 5 stocks with the largest daily price range |
| [`level_3_joins_and_case.sql`](level_3_joins_and_case.sql) | `JOIN`, self-join, `CASE`, `EXTRACT`, `INTERVAL` | Unemployment vs. index volume; day-over-day close change; oil price categories for 2021-2022; daily up/down status for AAPL in 2022 |
| [`level_4_window_functions.sql`](level_4_window_functions.sql) | `AVG() OVER`, `RANK() OVER`, `ROWS BETWEEN`, `CREATE TABLE AS` | 7-day moving average of gold; ranking crude oil closes; centred 5-day rolling average |
