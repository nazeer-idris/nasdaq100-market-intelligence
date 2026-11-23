# Data

All data was provided by Breda University of Applied Sciences for the Year 1 Block D project. It covers the NASDAQ-100, ASML, commodities and US macroeconomic indicators from 2015 to early 2025.

## Included files

| File | Description | Used in |
|------|-------------|---------|
| `ASML.csv` | ASML daily OHLCV prices and number of transactions (2015-2025) | Notebook 01 |
| `NASDAQ100.csv` | NASDAQ-100 index daily prices | Notebook 01 |
| `CrudeOil.csv` | Crude oil futures daily prices | Notebook 01 |
| `Gold.csv` | Gold futures daily prices | Notebook 01 |
| `MacroEconomicIndicators.csv` | Monthly US macro data: GDP, unemployment, CPI, Fed funds rate, VIX, treasury yields, housing | Notebook 01 |
| `nasdaq100_daily_return_volatility.csv` | Mean daily return and volatility per NASDAQ-100 company (output of the clustering data preparation step) | Notebook 01 |

## Not included (too large for GitHub)

| File | Size | How to get it |
|------|------|---------------|
| `ASML_minute_data.csv` | ~33 MB | ASML minute-level prices from the course's NASDAQ-100 minute dataset. Only the first cells of notebook 01 (resampling, time zones) use it. |
| `model_input_data.csv` | ~69 MB | Minute-level data for AAPL, AMZN and GOOG joined with index, VIX and macro data. Created by the first code cell of notebook 02 from the group's PostgreSQL warehouse (table `model_input_data`). |
| `nasdaq100_daily/` | folder | One daily price CSV per NASDAQ-100 company, used to build `nasdaq100_daily_return_volatility.csv` in the clustering section of notebook 01. |

To run those parts of the notebooks, place the files in this folder with the names above. They are listed in `.gitignore`, so they will not be committed by accident.
