# sql-sales-analytics
SQLite sales database + KPI analysis in SQL (revenue, top products, CLV).

--
run it locally:
sqlite3 sales.db < sql/01_schema.sql
sqlite3 sales.db < sql/02_seed.sql
sqlite3 sales.db < sql/03_kpi_revenue.sql
